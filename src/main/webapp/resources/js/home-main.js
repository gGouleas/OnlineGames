
function showGames(field) {
    $('#games').prepend('<div class="col-lg-3 col-md-4 col-6"><a id="gameSrc" class="d-block mb-4 h-100">\n\
                    <img id="gameImg" class="img-fluid img-thumbnail"></a></div>');
    $('#gameImg').attr('src', field.imgSrc);
    $('#gameImg').attr('title', field.name);
    $('#gameImg').attr('alt', field.name);
    window.location.pathname === "/OnlineGames/home" ?
            $('#gameSrc').attr('href', 'home?unregistered') : $('#gameSrc')
            .attr('href', 'game-page?mainSrc=' + field.mainSrc + "&title=" + field.name);
    $('#gameImg').tooltip();
    $(".selector").tooltip("classes.tooltip");
}

function getAllGames() {
    $.getJSON("game/", function (result) {
        $.each(result, function (i, field) {
            showGames(field);
        });
    });
}

function getCategoryFilter() {
    $.getJSON("category/", function (result) {
        $.each(result, function (i, field) {
            $('#categories').prepend('<option id="catOption" class="dropdown-item link"></option>');
            $('#catOption').html(field.name);
            $('#catOption').click(function () {
                $('#games').empty();
                $('#current-category').replaceWith('<span id="current-category">' + field.name + '</span>');
                $.getJSON("game/category/id/" + field.id, function (result) {
                    $.each(result, function (i, field) {
                        showGames(field);
                    });
                });
            });
        });
        $('#categories').prepend('<option id="catOption" class="dropdown-item link"></option>');
        $('#catOption').html('All');
        $('#catOption').click(function () {
            getAllGames();
            $('#current-category').replaceWith('<span id="current-category">All</span>');
        });
    });
}

function getUserHighscores(user) {
    $.getJSON("highscore/user/"+user, function (result) {
        console.log(result);
        $.each(result, function (i, field) {
            $('#highscores').prepend('<tr id="highscore-row"></tr>');
            $('#highscore-row').html('<td>' + field.game.name + '</td>' + '<td>' + field.highscore + '</td>');
        });
        $('#highscores').prepend('<tr><th>Game</th><th>Your Highscore</th></tr>');
    });
}