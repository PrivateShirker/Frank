$(document).ready(function () {

    var africaShow = setInterval(function () { africaSlideshow() }, 4000);
    var icelandShow = setInterval(function () { iceSlideshow() }, 4000);
    var turkeyShow = setInterval(function () { turkSlideshow() }, 4000);
    var chinaShow = setInterval(function () { chinaSlideshow() }, 4000);
    var peruShow = setInterval(function () { peruPeopleSlideshow() }, 4000);
    var machuPicchuShow = setInterval(function () { machuPicchuSlideshow() }, 4000);
    var peruFlowersShow = setInterval(function () { peruFlowersSlideshow() }, 4000);

    clearInterval(africaShow);
    clearInterval(icelandShow);
    clearInterval(chinaShow);
    clearInterval(turkeyShow);
    clearInterval(peruShow);
    clearInterval(machuPicchuShow);
    clearInterval(peruFlowersShow);

    var currentAfricaPic = 0;
    var currentIcelandPic = 0;
    var currentTurkPic = 0;
    var currentChinaPic = 0;
    var currentPeruPic = 0;
    var currentMachuPicchuPic = 0;
    var currentPeruFlowersPic = 0;

    $('#africaNextBut').click(function () {
        var nextPic

        stopall();

        currentAfricaPic = currentAfricaPic + 1;

        if (currentAfricaPic > 13) {
            currentAfricaPic = 0
        };

        nextPic = '#africaPic' + (currentAfricaPic + 1);
        //alert(nextPic)
        $('#africaPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pauseAfricaBut').attr('value') == ' Pause Slideshow ') {
            africaShow = setInterval(function () { africaSlideshow() }, 8000);
        };
    });

    $('#iceNextBut').click(function () {
        var nextPic

        stopall();

        currentIcelandPic = currentIcelandPic + 1;

        if (currentIcelandPic > 17) {
            currentIcelandPic = 0
        };

        nextPic = '#icePic' + (currentIcelandPic + 1);
        $('#icePhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pauseIceBut').attr('value') == ' Pause Slideshow ') {
            icelandShow = setInterval(function () { iceSlideshow() }, 8000);
        };
    });

    $('#turkNextBut').click(function () {
        var nextPic

        stopall();

        currentTurkPic = currentTurkPic + 1;

        if (currentTurkPic > 22) {
            currentTurkPic = 0
        };

        nextPic = '#turkPic' + (currentTurkPic + 1);

        $('#turkPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pauseTurkBut').attr('value') == ' Pause Slideshow ') {
            turkeyShow = setInterval(function () { turkSlideshow() }, 8000);
        };
    });

    $('#chinaNextBut').click(function () {
        var nextPic

        stopall();

        currentChinaPic = currentChinaPic + 1;

        if (currentChinaPic > 26) {
            currentChinaPic = 0
        };

        nextPic = '#chinaPic' + (currentChinaPic + 1);
        //alert(nextPic)
        $('#chinaPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pauseChinaBut').attr('value') == ' Pause Slideshow ') {
            chinaShow = setInterval(function () { chinaSlideshow() }, 8000);
        };
    });

    $('#peruNextBut').click(function () {
        var nextPic

        stopall();

        currentPeruPic = currentPeruPic + 1;

        if (currentPeruPic > 32) {
            currentPeruPic = 0
        };

        nextPic = '#peruPic' + (currentPeruPic + 1);

        $('#peruPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pausePeruBut').attr('value') == ' Pause Slideshow ') {
            peruShow = setInterval(function () { peruPeopleSlideshow() }, 8000);
        };
    });

    $('#machuPicchuNextBut').click(function () {
        var nextPic

        stopall();

        currentMachuPicchuPic = currentMachuPicchuPic + 1;

        if (currentMachuPicchuPic > 39) {
            currentMachuPicchuPic = 0
        };

        nextPic = '#MP' + (currentMachuPicchuPic + 1);

        $('#machuPicchuPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pauseMachuPicchuBut').attr('value') == ' Pause Slideshow ') {
            MachuPicchuShow = setInterval(function () { MachuPicchuSlideshow() }, 8000);
        };
    });

    $('#peruFlowersNextBut').click(function () {
        var nextPic

        stopall();

        currentPeruFlowersPic = currentPeruFlowersPic + 1;

        if (currentPeruFlowersPic > 21) {
            currentPeruFlowersPic = 0
        };

        nextPic = '#PF' + (currentPeruFlowersPic + 1);

        $('#peruFlowerPhotos img').css('display', 'none');
        $(nextPic).css('display', 'block');

        if ($('#pausePeruFlowersBut').attr('value') == ' Pause Slideshow ') {
            peruFlowersShow = setInterval(function () { peruFlowersSlideshow() }, 8000);
        };
    });

    $('#africaPreviousBut').click(function () {
        var prevPic
        clearInterval(africaShow);

        currentAfricaPic = currentAfricaPic - 1;

        if (currentAfricaPic < 0) {
            currentAfricaPic = 13
        };

        prevPic = '#africaPic' + (currentAfricaPic + 1);

        $('#africaPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pauseAfricaBut').attr('value')  == ' Pause Slideshow '){
            africaShow = setInterval(function () { africaSlideshow() }, 8000);
        };
    });

    $('#icePreviousBut').click(function () {
        var prevPic
        clearInterval(icelandShow);

        currentIcelandPic = currentIcelandPic - 1;

        if (currentIcelandPic < 0) {
            currentIcelandPic = 17
        };

        prevPic = '#icePic' + (currentIcelandPic + 1);

        $('#icePhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pauseIceBut').attr('value') == ' Pause Slideshow ') {
            icelandShow = setInterval(function () { iceSlideshow() }, 8000);
        };
    });

    $('#turkPreviousBut').click(function () {
        var prevPic
        clearInterval(turkeyShow);

        currentTurkPic = currentTurkPic - 1;

        if (currentTurkPic < 0) {
            currentTurkPic = 22
        };

        prevPic = '#turkPic' + (currentTurkPic + 1);

        $('#turkPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pauseTurkBut').attr('value') == ' Pause Slideshow ') {
            turkeyShow = setInterval(function () { turkSlideshow() }, 8000);
        };
    });

    $('#chinaPreviousBut').click(function () {
        var prevPic
        clearInterval(chinaShow);

        currentChinaPic = currentChinaPic - 1;

        if (currentChinaPic < 0) {
            currentChinaPic = 26
        };

        prevPic = '#chinaPic' + (currentChinaPic + 1);

        $('#chinaPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pauseChinaBut').attr('value') == ' Pause Slideshow ') {
            chinaShow = setInterval(function () { chinaSlideshow() }, 8000);
        };
    });

    $('#peruPreviousBut').click(function () {
        var prevPic
        clearInterval(peruShow);

        currentPeruPic = currentPeruPic - 1;

        if (currentPeruPic < 0) {
            currentPeruPic = 32
        };

        prevPic = '#peruPic' + (currentPeruPic + 1);

        $('#peruPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pausePeruBut').attr('value') == ' Pause Slideshow ') {
            peruShow = setInterval(function () { peruPeopleSlideshow() }, 8000);
        };
    });

    $('#machuPicchuPreviousBut').click(function () {
        var prevPic
        clearInterval(machuPicchuShow);

        currentMachuPicchuPic = currentMachuPicchuPic - 1;

        if (currentMachuPicchuPic < 0) {
            currentMachuPicchuPic = 39
        };

        prevPic = '#MP' + (currentMachuPicchuPic + 1);

        $('#machuPicchuPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pauseMachuPicchuBut').attr('value') == ' Pause Slideshow ') {
            machuPicchuShow = setInterval(function () { machuPicchuSlideshow() }, 8000);
        };
    });

    $('#peruFlowersPreviousBut').click(function () {
        var prevPic
        clearInterval(peruFlowersShow);

        currentPeruFlowersPic = currentPeruFlowersPic - 1;

        if (currentPeruFlowersPic < 0) {
            currentPeruFlowersPic = 21
        };

        prevPic = '#PF' + (currentPeruFlowersPic + 1);

        $('#peruFlowerPhotos img').css('display', 'none');
        $(prevPic).css('display', 'block');

        if ($('#pausePeruFlowersBut').attr('value') == ' Pause Slideshow ') {
            peruFlowersShow = setInterval(function () { peruFlowersSlideshow() }, 8000);
        };
    });

    $('#pauseAfricaBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ')
        {
            clearInterval(africaShow);
            $(this).attr('value',' Resume Slideshow ')
        }
        else
        {
            africaShow = setInterval(function () { africaSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pauseIceBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(icelandShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            icelandShow = setInterval(function () { iceSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pauseTurkBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(turkeyShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            turkeyShow = setInterval(function () { turkSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pauseChinaBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(chinaShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            chinaShow = setInterval(function () { chinaSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pausePeruBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(peruShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            peruShow = setInterval(function () { peruPeopleSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pauseMachuPicchuBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(machuPicchuShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            machuPicchuShow = setInterval(function () { machuPicchuSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#pausePeruFlowersBut').click(function () {
        if ($(this).attr('value') == ' Pause Slideshow ') {
            clearInterval(peruFlowersShow);
            $(this).attr('value', ' Resume Slideshow ')
        }
        else {
            peruFlowersShow = setInterval(function () { peruFlowersSlideshow() }, 8000);
            $(this).attr('value', ' Pause Slideshow ')
        };
    });

    $('#homeSpan').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectHome').addClass('block');
    });

    $('#h3Home').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectHome').addClass('block');
    });

    $('#h3Tours').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTours').addClass('block');
    });

    $('#h3Videos').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectVideos').addClass('block');
    });

    $('#h3Contact').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectContact').addClass('block');
    });

    $('#Africa1').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectAfrica1').addClass('block');
    });

    $('#Africa2').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectAfrica2').addClass('block');
    });

    $('#AfricaGo2').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectAfrica2').addClass('block');
    });

    $('#AfricaGoBack1').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectAfrica1').addClass('block');
    });


    $('#Iceland1').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectIceland').addClass('block');
    });

    $('#River1').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectRiver').addClass('block');
    });

    $('#Turkey1').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTurkey1').addClass('block');
    });

    $('#Turkey2').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTurkey2').addClass('block');
    });

    $('#Turkey3').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTurkey3').addClass('block');
    });

    $('#TurkeyGo2').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTurkey2').addClass('block');
    });

    $('#TurkeyGo3').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectTurkey3').addClass('block');
    });

    $('#selAfrica').click(function () {
        //alert("Africa");
        $('.myTourItem').removeClass('block').addClass('noDisplay');
        $('#africaMenu').removeClass('noDisplay').addClass('block');
    });

    $('#selIceLand').click(function () {
        $('.myTourItem').removeClass('block').addClass('noDisplay');
        $('#iceLandMenu').removeClass('noDisplay').addClass('block');
    });

    $('#selRiver').click(function () {
        $('.myTourItem').removeClass('block').addClass('noDisplay');
        $('#riverMenu').removeClass('noDisplay').addClass('block');
    });

    $('#selTurkey').click(function () {
        $('.myTourItem').removeClass('block').addClass('noDisplay');
        $('#turkeyMenu').removeClass('noDisplay').addClass('block');
    });

    //##################################################################
    //The following hides all the picture in each slide show except fpr the first picture
    $('#africaPhotos img').css('display', 'none');
    $('#africaPic1').css('display', 'block');

    $('#icePhotos img').css('display', 'none');
    $('#icePic1').css('display', 'block');

    $('#turkPhotos img').css('display', 'none');
    $('#turkPic1').css('display', 'block');

    $('#chinaPhotos img').css('display', 'none');
    $('#chinaPic1').css('display', 'block');

    $('#peruPhotos img').css('display', 'none');
    $('#peruPic1').css('display', 'block');

    $('#machuPicchuPhotos img').css('display', 'none');
    $('#MP1').css('display', 'block');

    $('#peruFlowerPhotos img').css('display', 'none');
    $('#PF1').css('display', 'block');

    $('.mySlides').css('display', 'none');
    $('#mainMess').css('display', 'block');
    //##################################################################


    $('#africaChoice').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pauseAfricaBut').attr('value', ' Pause Slideshow ')
        $('#africaPhotos img').css('display', 'none');
        $('#africaPic1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentAfricaPic = 0;
        africaShow = setInterval(function () { africaSlideshow() }, 8000);
        $('#slideShow1').css('display', 'block');
    });

    $('#iceChoice').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pauseIceBut').attr('value', ' Pause Slideshow ')
        $('#icePhotos img').css('display', 'none');
        $('#icePic1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentIcelandPic = 0;
        icelandShow = setInterval(function () { iceSlideshow() }, 8000);
        $('#slideShow2').css('display', 'block');
    });

    $('#turkChoice').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pauseTurkBut').attr('value', ' Pause Slideshow ')
        $('#turkPhotos img').css('display', 'none');
        $('#turkPic1').css('display', 'block');
        $('#turkChoices').removeClass('displayBlock').addClass('displayNone');
        currentTurkPic = 0;
        turkeyShow = setInterval(function () { turkSlideshow() }, 8000);
        $('#slideShow3').css('display', 'block');
    });

    $('#chinaChoice').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pauseChinaBut').attr('value', ' Pause Slideshow ')
        $('#chinaPhotos img').css('display', 'none');
        $('#chinaPic1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentChinaPic = 0;
        chinaShow = setInterval(function () { chinaSlideshow() }, 8000);
        $('#slideShow4').css('display', 'block');
    });

    $('#peruChoice').click(function () {
        if ($('#peruChoices').hasClass('displayNone')) {
            $('#peruChoices').removeClass('displayNone').addClass('displayBlock');
        }
        else {
            $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        };
    });

    $('#peruPeople').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pausePeruPeopleBut').attr('value', ' Pause Slideshow ')
        $('#peruPhotos img').css('display', 'none');
        $('#peruPic1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentPeruPic = 0;
        peruShow = setInterval(function () { peruPeopleSlideshow() }, 8000);
        $('#slideShow5').css('display', 'block');
    });

    $('#machuPicchu').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pauseMachuPicchuBut').attr('value', ' Pause Slideshow ')
        $('#machuPicchuPhotos img').css('display', 'none');
        $('#MP1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentMachuPicchuPic = 0;
        machuPicchuShow = setInterval(function () { machuPicchuSlideshow() }, 8000);
        $('#slideShow6').css('display', 'block');
    });

    $('#peruFlowers').click(function () {
        $('.mySlides').css('display', 'none');
        stopall();
        $('#pausePeruFlowersBut').attr('value', ' Pause Slideshow ')
        $('#peruFlowerPhotos img').css('display', 'none');
        $('#PF1').css('display', 'block');
        $('#peruChoices').removeClass('displayBlock').addClass('displayNone');
        currentPeruFlowersPic = 0;
        peruFlowersShow = setInterval(function () { peruFlowersSlideshow() }, 8000);
        $('#slideShow7').css('display', 'block');
    });

    $('#noChoice').click(function () {
        $('.mySlides').css('display', 'none');
        $('#mainMess').css('display', 'block');
        stopall()
    });

    $('#pMyTitle').click(function () {
        if ($('#hitCount').hasClass('noDisplay')) {
            $('#hitCount').removeClass('noDisplay');
            $('#hitCount').addClass('block');
        }
        else {
            $('#hitCount').removeClass('block');
            $('#hitCount').addClass('noDisplay');
        };
    });

    function HideMenus() {
        $('.tourMenuItem').removeClass('block').addClass('noDisplay');
    };

    function stopall() {
        clearInterval(africaShow);
        clearInterval(icelandShow);
        clearInterval(chinaShow);
        clearInterval(turkeyShow);
        clearInterval(peruShow);
        clearInterval(machuPicchuShow);
        clearInterval(peruFlowersShow);
    };

    //Slide Shows
    //##################################################################
    function africaSlideshow() {
        var oldpic;
        var newpic;

        if (currentAfricaPic < 13) {
            currentAfricaPic += 1;
        }
        else {
            currentAfricaPic = 0;
        };

        if (currentAfricaPic == 0) {
            oldpic = '#africaPic14';
            newpic = '#africaPic1';
        }
        else {
            oldpic = '#africaPic' + currentAfricaPic;
            newpic = '#africaPic' + (currentAfricaPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function iceSlideshow() {
        var oldpic;
        var newpic;

        if (currentIcelandPic < 17) {
            currentIcelandPic += 1;
        }
        else {
            currentIcelandPic = 0;
        };

        if (currentIcelandPic == 0) {
            oldpic = '#icePic18';
            newpic = '#icePic1';
        }
        else {
            oldpic = '#icePic' + currentIcelandPic;
            newpic = '#icePic' + (currentIcelandPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function turkSlideshow() {
        var oldpic;
        var newpic;

        if (currentTurkPic < 22) {
            currentTurkPic += 1;
        }
        else {
            currentTurkPic = 0;
        };

        if (currentTurkPic == 0) {
            oldpic = '#turkPic23';
            newpic = '#turkPic1';
        }
        else {
            oldpic = '#turkPic' + currentTurkPic;
            newpic = '#turkPic' + (currentTurkPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function chinaSlideshow() {
        var oldpic;
        var newpic;

        if (currentChinaPic < 26) {
            currentChinaPic += 1;
        }
        else {
            currentChinaPic = 0;
        };

        if (currentChinaPic == 0) {
            oldpic = '#chinaPic27';
            newpic = '#chinaPic1';
        }
        else {
            oldpic = '#chinaPic' + currentChinaPic;
            newpic = '#chinaPic' + (currentChinaPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function peruPeopleSlideshow() {
        var oldpic;
        var newpic;

        if (currentPeruPic < 32) {
            currentPeruPic += 1;
        }
        else {
            currentPeruPic = 0;
        };

        if (currentPeruPic == 0) {
            oldpic = '#peruPic33';
            newpic = '#peruPic1';
        }
        else {
            oldpic = '#peruPic' + currentPeruPic;
            newpic = '#peruPic' + (currentPeruPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function machuPicchuSlideshow() {
        var oldpic;
        var newpic;

        if (currentMachuPicchuPic < 39) {
            currentMachuPicchuPic += 1;
        }
        else {
            currentMachuPicchuPic = 0;
        };

        if (currentMachuPicchuPic == 0) {
            oldpic = '#MP40';
            newpic = '#MP1';
        }
        else {
            oldpic = '#MP' + currentMachuPicchuPic;
            newpic = '#MP' + (currentMachuPicchuPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };

    function peruFlowersSlideshow() {
        var oldpic;
        var newpic;

        if (currentPeruFlowersPic < 21) {
            currentPeruFlowersPic += 1;
        }
        else {
            currentPeruFlowersPic = 0;
        };

        if (currentPeruFlowersPic == 0) {
            oldpic = '#PF22';
            newpic = '#PF1';
        }
        else {
            oldpic = '#PF' + currentPeruFlowersPic;
            newpic = '#PF' + (currentPeruFlowersPic + 1);
        };

        $(oldpic).fadeOut(500, function () { $(newpic).fadeIn(1000); });
    };
    //##################################################################


    //Video functions for Video Section
    //##############################################################################################################
    var select1 = '<iframe class="embed-container regBorder lightBlueBack" width="700" height="700" autoplay="1" autohide="0" src="http://www.youtube.com/embed/3UHt-tOJmJc"></iframe>'
    var select2 = '<iframe class="embed-container regBorder lightBlueBack" width="700" height="700" autoplay="1" autohide="0" src="http://www.youtube.com/embed/mgLcbFV4iUs"></iframe>'
    var select3 = '<iframe class="embed-container regBorder lightBlueBack" width="700" height="700" autoplay="1" autohide="0" src="http://www.youtube.com/embed/UetIGUk3oDY"></iframe>'
    var select4 = '<iframe class="embed-container regBorder lightBlueBack" width="700" height="700" autoplay="1" autohide="0" src="http://www.youtube.com/embed/dDvt2zQ0K08"></iframe>'

    $('#videoDiv').html(select1);

    $('#videoSelect1').click(function () {
        $('#videoDiv').html(select1);
    });

    $('#videoSelect2').click(function () {
        $('#videoDiv').html(select2);
    });

    $('#videoSelect3').click(function () {
        $('#videoDiv').html(select3);
    });

    $('#videoSelect4').click(function () {
        $('#videoDiv').html(select4);
    });

    //##############################################################################################################

});
