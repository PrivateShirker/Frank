var select1 = '<iframe class="regBorder lightBlueBack" width="700" height="600" autoplay="1" autohide="0" src="http://www.youtube.com/embed/3UHt-tOJmJc"></iframe>'
var select2 = '<iframe class="regBorder lightBlueBack" width="700" height="600" autoplay="1" autohide="0" src="http://www.youtube.com/embed/mgLcbFV4iUs"></iframe>'
var select3 = '<iframe class="regBorder lightBlueBack" width="700" height="600" autoplay="1" autohide="0" src="http://www.youtube.com/embed/UetIGUk3oDY"></iframe>'
var select4 = '<iframe class="regBorder lightBlueBack" width="700" height="600" autoplay="1" autohide="0" src="http://www.youtube.com/embed/dDvt2zQ0K08"></iframe>'

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
