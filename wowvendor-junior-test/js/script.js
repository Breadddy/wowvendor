function send(rockPosition, time, jumpPos, rockSize, isWin) {
    let data = 'rockPosition=' + encodeURIComponent(rockPosition) + `&time=` + encodeURIComponent(time) + `&jumpPos=` + encodeURIComponent(jumpPos) + `&rockSize=` + encodeURIComponent(rockSize) + `&isWin=` + encodeURIComponent(isWin);
    let request = new XMLHttpRequest();
    request.open('POST', 'sendToMySQL.php', true);
    request.addEventListener('readystatechange', function () {
        if ((request.readyState === 4) && (request.status === 200)) {
            console.log(request.responseText);
        }
    });
    request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded')
    request.send(data);
}

function play() {
    let start = new Date().getTime();
    window.character.run();
    const rockPosition = window.terrain.rockPosition;
    const rockSize = window.terrain.rockSize;
    let jumped = false;
    let jumpPos;
    let previousPosition = 0;
    let timerId = setInterval(function () {
        if (window.character.victory) {
            let end = new Date().getTime();
            let time = end - start;
            send(rockPosition, time, jumpPos, rockSize, window.character.victory);
            window.character.victory = false;
            clearTimeout(timerId);
        } else if ((window.character.characterPosition === 0) && (previousPosition !== window.character.characterPosition)) {
            let end = new Date().getTime();
            let time = end - start;
            send(rockPosition, time, jumpPos, rockSize, false);
            clearTimeout(timerId);
        }
        previousPosition = window.character.characterPosition;
        if (window.terrain.rockPosition - window.character.characterPosition < 45 + window.terrain.rockSize && !jumped) {
            jumpPos = window.character.characterPosition;
            window.character.jump();
            jumped = true;
        }
    }, 1);
}
