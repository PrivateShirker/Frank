$(document).ready(function () {

    $('#homeSpan').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectHome').addClass('block');
    });

    $('#h3Home').click(function () {
        $('.mySects').removeClass('block').addClass('noDisplay');
        $('#sectHome').addClass('block');
        $('.mySlides').css('display', 'none');
        $('#mainMess').css('display', 'block');
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
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow1').css('display', 'block');
    });

    $('#iceChoice').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow2').css('display', 'block');
    });

    $('#turkChoice').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow3').css('display', 'block');
    });

    $('#chinaChoice').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow4').css('display', 'block');
    });

    $('#peruChoice').click(function () {
        if ($('#peruMenu').hasClass('noDisplay')) {
            $('#peruMenu').removeClass('noDisplay').addClass('block');
        }
        else {
            $('#peruMenu').removeClass('block').addClass('noDisplay');
        };
    });

    $('#peruPeople').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow5').css('display', 'block');
    });

    $('#machuPicchu').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow6').css('display', 'block');
    });

    $('#peruFlowers').click(function () {
        $('#peruMenu').removeClass('block').addClass('noDisplay');
        $('.mySlides').css('display', 'none');
        $('#slideShow7').css('display', 'block');
    });

    $('#noChoice').click(function () {
        $('.mySlides').css('display', 'none');
        $('#mainMess').css('display', 'block');
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

    //Slide Shows
    //##################################################################
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
