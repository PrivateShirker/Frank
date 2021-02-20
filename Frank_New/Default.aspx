<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Frank_New._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Frank's Adventure - Africa Adventures, Iceland Adventures and Turkey Adventures</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>    <link href="_Styles/BasicStyles.css" rel="stylesheet" />
   
    <link href="_Styles/myStyles.css" rel="stylesheet" />
    <meta name="viewport"  content="width=device-width, maximum-scale=1.0, minimum-scale=.2, initial-scale=1.0" />
    <meta name="description" content="Frank's Adventure - Africa Adventures, Iceland Adventures and Turkey Adventures"/>

    <style>
        .h3Menu {
            cursor:pointer
        }

        #homeSpan, .selList 
        {
            cursor:pointer
        }

        h4, h5 
        {
            cursor:pointer;
        }

        h4 
        {
            color:green;
        }

        .ssPic 
        {
            box-shadow:black 10px 10px 15px;
            width:80%;
        } 

        .ssPicPort 
        {
            box-shadow:black 10px 10px 15px;
            width:50%;
        } 

    </style>
</head>

<body>
    <form runat="server">
    <div class="pageWrapper regBorder centerDiv">
        <header class="padding10">
            <div class="floatLeft lightBlueBack width25">
                <img class="regBorder width90" alt="Frank and Edna" src="_Images/HeaderPhoto.jpg" />
            </div>

            <div class="floatLeft lightBlueBack centerDiv width70">
                <div class=" regBorder autoMargin topMargin1em padding10 width70">
                    <p id="pMyTitle" class="pTitle">Frank's Adventure</p>
                    <p class="pTitle">with Frank and Edna</p>
                    <p class="autoMargin">Why don't you join us on some great worldwide tours?</p>
                </div>

                <div id="hitCount" class="autoMargin topMargin1em noDisplay lightBlueBack centerDiv">
                    <div id="hitDiv" class="width80 autoMargin">
                        <div class="floatLeft">
                            <asp:Label ID="lblGoodHits" BackColor="LightBlue" BorderStyle="None" runat="server" Text="Good Hits:"></asp:Label>
                        </div>

                        <div class="floatLeft leftMargin1em">
                            <a class="lightBlueBack" href="DailyTotals.aspx">Daily Totals</a> 
                        </div>

                        <div class="floatLeft leftMargin1em">
                            <a class="lightBlueBack" href="IP_Addresses.aspx">IP Addresses</a> 
                        </div>

                        <div class="floatLeft leftMargin1em">
                            <asp:Button ID="btnRemoveHit" Font-Bold="true" Font-Size=".8em" runat="server" OnClick="btnRemoveHit_Click" Text=" Remove Hit "/>
                        </div>

                    </div>
                </div>

                <div class="clear"></div>

                <nav id="menuPlaceHolder" class="centerDiv topMargin2em">
                    <div class="mainMenu autoMargin lightBlueBack">
                        <h3 id="h3Home" class="h3Menu inline colorRed fontSize1_Halfem">Home</h3>
                        <h3 id="h3Tours" class="h3Menu inline colorRed fontSize1_Halfem leftMargin1em">Tours</h3>
                        <h3 id="h3Videos" class="h3Menu inline colorRed fontSize1_Halfem leftMargin1em">Videos</h3>
                        <h3 id="h3Contact" class="h3Menu inline colorRed fontSize1_Halfem leftMargin1em">Contact Us</h3>
                    </div>
                </nav>
            </div>
        </header>

        <div class="clear"></div>
        <section id="sectHome" class="mySects block width90 autoMarginLeftRight">
            <nav id="slideMenu" class="centerDiv topMargin1em">
                <div class="mainMenu autoMarginleftRight lightBlueBack regBorder showShadow" style="margin-left:2em;margin-right:2em;">
                    <p class="fontSize1_Halfem bold">Select a Slide Show</p>
                    <hr class="smallHr" />
                    <div class="centerDiv lightBlueBack">
                        <h4 id="africaChoice" class="myH3 inline fontSize1Point2em bold">Africa Adventure</h4>
                        <h4 id="iceChoice" class="myH3 inline fontSize1Point2em leftMarginHalfem bold">Iceland Adventure</h4>
                        <h4 id="turkChoice" class="myH3 inline fontSize1Point2em leftMarginHalfem bold">Turkey Adventure</h4>
                        <h4 id="chinaChoice" class="myH3 inline fontSize1Point2em leftMarginHalfem bold">China Adventure</h4>
                    </div>

                    <div class="centerDiv topMarginHalfem lightBlueBack">
                        <div class="lightBlueBack autoMarginLeftRight topMarginHalfem width60">
                            <div class="floatLeft aRight width50 lightBlueBack">
                                <h4 id="peruChoice" class="myH3 fontSize1Point2em bold">Peru Adventure</h4>
                                <div id="peruMenu" class="noDisplay lightBlueBack">
                                    <h4 id="peruPeople" class="leftMargin1em" style="color:green;">Peru People</h4>
                                    <h4 id="machuPicchu" class="leftMargin1em" style="color:green;">Machu Picchu</h4>
                                    <h4 id='peruFlowers' class="leftMargin1em" style="color:green;">Peru Flowers</h4>
                                </div>
                            </div>
                            <div class="floatLeft aLeft lightBlueBack width50">
                                <h4 id="noChoice" class="myH3 leftMargin1em fontSize1Point2em bold">Close Slideshows</h4>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>

            </nav>

            <section class="centerDiv">

            <article id="mainMess" class="mySlides block topMargin3em autoMargin width75">

                <div class="autoMargin bold regBorder topMargin1em whiteBack padding10 left">

                    <p class="topMarginHalfem">
                        &nbsp;&nbsp;&nbsp;&nbsp;Travel is one nice thing you can do for yourself, not only when you retire but also when you’re young and able.
                        This web page has been developed to offer you some insights to some of the travel we’ve been fortunate enough to enjoy,
                        but also as a means of inviting you to join us in some of our travel.  We generally use
                        <a class="redText underLine" href="https://www.oattravel.com/" target="_blank">Overseas Adventure Travel (OAT)</a>
                        as the company of choice.  Their tours are limited to a maximum of 16 people, their costs are reasonable and
                        provide the best return for your travel investment and they’re good…really good.  Their middle name “Adventure” says
                        it all.
                    </p>

                    <p class="topMarginHalfem">
                        &nbsp;&nbsp;&nbsp;&nbsp;If you’re interested in any of the listed venues, please select “Tours” and pick the one you want to learn about.
                    </p>

                    <p class="topMarginHalfem">
                        &nbsp;&nbsp;&nbsp;&nbsp;Remember, this site constantly under construction so new information will be added over the next few months.
                        Come back and visit periodically.
                    </p>

                    <p class="topMarginHalfem">
                        &nbsp;&nbsp;&nbsp;&nbsp;For general tour information, or to book a tour, 
                        call Overseas Adventure Travel directly at <span class="redText">1-800-955-1925</span>. Provide them my 
                        Customer Number <span class="redText">504182</span> and my name, and each person will receive $100 off of their first tour with OAT.
                    </p>

                    <p class="topMarginHalfem centerText">
                        For all other information contact:
                    </p>

                    <div class="centerText whiteBack">
                        <p class="topMarginHalfem">
                            Frank & Edna Calenda<br />
                            321-773-2046<br />
                            <a class="colorRed underLine" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                        </p>
                    </div>
                </div>

            </article>

                <article id="slideShow1" class="mySlides noDisplay whiteBack autoMargin padding5 width90 regBorder">
                    <div id="africaPhotos" class="whiteBack centerDiv width100">

                        <p class="pTitle topMargin1em" style="text-align:center">Africa</p>

                        <div class="container-lg my14">
                            <div id="AfricanCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa1.jpg" alt="_Images/Montage/Africa/Africa1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa2.jpg" alt="_Images/Montage/Africa/Africa2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa3.jpg" alt="_Images/Montage/Africa/Africa3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa4.jpg" alt="_Images/Montage/Africa/Africa4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa5.jpg" alt="_Images/Montage/Africa/Africa5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa6.jpg" alt="_Images/Montage/Africa/Africa6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa7.jpg" alt="_Images/Montage/Africa/Africa7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa8.jpg" alt="_Images/Montage/Africa/Africa8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa9.jpg" alt="_Images/Montage/Africa/Africa9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa10.jpg" alt="_Images/Montage/Africa/Africa10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa11.jpg" alt="_Images/Montage/Africa/Africa11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa12.jpg" alt="_Images/Montage/Africa/Africa12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa13.jpg" alt="_Images/Montage/Africa/Africa13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Africa/Africa14.jpg" alt="_Images/Montage/Africa/Africa14.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#AfricanCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#AfricanCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>

                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow2" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="icePhotos" class="whiteBack centerDiv padding10 regBorder">

                        <p class="pTitle topMargin1em bottomMargin1em" style="text-align:center">Iceland</p>

                         <div class="container-lg my18">
                            <div id="IcelandCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL1.jpg" alt="_Images/Montage/Iceland/IL1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL2.jpg" alt="_Images/Montage/Iceland/IL2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL3.jpg" alt="_Images/Montage/Iceland/IL3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL4.jpg" alt="_Images/Montage/Iceland/IL4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL5.jpg" alt="_Images/Montage/Iceland/IL5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL6.jpg" alt="_Images/Montage/Iceland/IL6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL7.jpg" alt="_Images/Montage/Iceland/IL7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL8.jpg" alt="_Images/Montage/Iceland/IL8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL9.jpg" alt="_Images/Montage/Iceland/IL9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL10.jpg" alt="_Images/Montage/Iceland/IL10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL11.jpg" alt="_Images/Montage/Iceland/IL11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL12.jpg" alt="_Images/Montage/Iceland/IL12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL13.jpg" alt="_Images/Montage/Iceland/IL13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL14.jpg" alt="_Images/Montage/Iceland/IL14.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL15.jpg" alt="_Images/Montage/Iceland/IL15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL16.jpg" alt="_Images/Montage/Iceland/IL16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL17.jpg" alt="_Images/Montage/Iceland/IL17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Iceland/IL18.jpg" alt="_Images/Montage/Iceland/IL18.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#IcelandCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#IcelandCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow3" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="turkPhotos" class="whiteBack centerDiv regBorder">

                        <p class="pTitle topMargin1em bottomMargin1em" style="text-align:center">Turkey</p>

                         <div class="container-lg my23">
                            <div id="TurkeyCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk1.jpg" alt="_Images/Montage/Turkey/Turk1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk2.jpg" alt="_Images/Montage/Turkey/Turk2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk3.jpg" alt="_Images/Montage/Turkey/Turk3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk4.jpg" alt="_Images/Montage/Turkey/Turk4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk5.jpg" alt="_Images/Montage/Turkey/Turk5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk6.jpg" alt="_Images/Montage/Turkey/Turk6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk7.jpg" alt="_Images/Montage/Turkey/Turk7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk8.jpg" alt="_Images/Montage/Turkey/Turk8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk9.jpg" alt="_Images/Montage/Turkey/Turk9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk10.jpg" alt="_Images/Montage/Turkey/Turk10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk11.jpg" alt="_Images/Montage/Turkey/Turk11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk12.jpg" alt="_Images/Montage/Turkey/Turk12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk13.jpg" alt="_Images/Montage/Turkey/Turk13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk14.jpg" alt="_Images/Montage/Turkey/Turk14.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk15.jpg" alt="_Images/Montage/Turkey/Turk15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk16.jpg" alt="_Images/Montage/Turkey/Turk16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk17.jpg" alt="_Images/Montage/Turkey/Turk17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk18.jpg" alt="_Images/Montage/Turkey/Turk18.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk19.jpg" alt="_Images/Montage/Turkey/Turk19.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk20.jpg" alt="_Images/Montage/Turkey/Turk20.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk21.jpg" alt="_Images/Montage/Turkey/Turk21.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk22.jpg" alt="_Images/Montage/Turkey/Turk22.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Montage/Turkey/Turk23.jpg" alt="_Images/Montage/Turkey/Turk23.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#TurkeyCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#TurkeyCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow4" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="chinaPhotos" class="whiteBack centerDiv regBorder">

                        <p class="pTitle topMargin1em bottomMargin1em" style="text-align:center">China</p>

                         <div class="container-lg my27">
                            <div id="ChinaCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/China/China1.jpg" alt="_Images/China/China1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China2.jpg" alt="_Images/China/China2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China3.jpg" alt="_Images/China/China3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China4.jpg" alt="_Images/China/China4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China5.jpg" alt="_Images/China/China5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China6.jpg" alt="_Images/China/China6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China7.jpg" alt="_Images/China/China7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China8.jpg" alt="_Images/China/China8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China9.jpg" alt="_Images/China/China9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China10.jpg" alt="_Images/China/China10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China11.jpg" alt="_Images/China/China11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China12.jpg" alt="_Images/China/China12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China13.jpg" alt="_Images/China/China13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China14.jpg" alt="_Images/China/China14.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China15.jpg" alt="_Images/China/China15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China16.jpg" alt="_Images/China/China16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China17.jpg" alt="_Images/China/China17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China18.jpg" alt="_Images/China/China18.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China19.jpg" alt="_Images/China/China19.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China20.jpg" alt="_Images/China/China20.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China21.jpg" alt="_Images/China/China21.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China22.jpg" alt="_Images/China/China22.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China23.jpg" alt="_Images/China/China23.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China24.jpg" alt="_Images/China/China24.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China25.jpg" alt="_Images/China/China25.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China26.jpg" alt="_Images/China/China26.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/China/China27.jpg" alt="_Images/China/China27.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#ChinaCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#ChinaCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow5" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="peruPhotos" class="whiteBack centerDiv regBorder">

                        <h1 id="peruTitle" class="myH1 centerText topMargin1em bottomMargin1em" style="font-size:2em;">People of Peru</h1>

                         <div class="container-lg my33">
                            <div id="PeruPeopleCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople1.jpg" alt="_Images/Peru People/PeruPeople1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople2.jpg" alt="_Images/Peru People/PeruPeople2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople3.jpg" alt="_Images/Peru People/PeruPeople3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople4.jpg" alt="_Images/Peru People/PeruPeople4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople5.jpg" alt="_Images/Peru People/PeruPeople5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople6.jpg" alt="_Images/Peru People/PeruPeople6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople7.jpg" alt="_Images/Peru People/PeruPeople7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople8.jpg" alt="_Images/Peru People/PeruPeople8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople9.jpg" alt="_Images/Peru People/PeruPeople9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople10.jpg" alt="_Images/Peru People/PeruPeople10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople11.jpg" alt="_Images/Peru People/PeruPeople11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople12.jpg" alt="_Images/Peru People/PeruPeople12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople13.jpg" alt="_Images/Peru People/PeruPeople13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople14.jpg" alt="_Images/Peru People/PeruPeople14.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople15.jpg" alt="_Images/Peru People/PeruPeople15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople16.jpg" alt="_Images/Peru People/PeruPeople16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople17.jpg" alt="_Images/Peru People/PeruPeople17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople18.jpg" alt="_Images/Peru People/PeruPeople1.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople19.jpg" alt="_Images/Peru People/PeruPeople18.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople20.jpg" alt="_Images/Peru People/PeruPeople19.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople21.jpg" alt="_Images/Peru People/PeruPeople20.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople22.jpg" alt="_Images/Peru People/PeruPeople21.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople23.jpg" alt="_Images/Peru People/PeruPeople22.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople24.jpg" alt="_Images/Peru People/PeruPeople23.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople25.jpg" alt="_Images/Peru People/PeruPeople24.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople26.jpg" alt="_Images/Peru People/PeruPeople25.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople27.jpg" alt="_Images/Peru People/PeruPeople26.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople28.jpg" alt="_Images/Peru People/PeruPeople27.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople29.jpg" alt="_Images/Peru People/PeruPeople28.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople30.jpg" alt="_Images/Peru People/PeruPeople29.jpg"/>
                                    </div>                                
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople1.jpg" alt="_Images/Peru People/PeruPeople30.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople31.jpg" alt="_Images/Peru People/PeruPeople31.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople32.jpg" alt="_Images/Peru People/PeruPeople32.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru People/PeruPeople33.jpg" alt="_Images/Peru People/PeruPeople33.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#PeruPeopleCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#PeruPeopleCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow6" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="machuPicchuPhotos" class="whiteBack centerDiv regBorder">

                        <h1 class="myH1 centerText topMargin1em bottomMargin1em" style="font-size:2em;">Machu Picchu and the Surrounding Area</h1>

                         <div class="container-lg my40">
                            <div id="MachuPicchuCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP1.jpg" alt="_Images/Machu Pichu/MP1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP2.jpg" alt="_Images/Machu Pichu/MP2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP3.jpg" alt="_Images/Machu Pichu/MP3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP4.jpg" alt="_Images/Machu Pichu/MP4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP5.jpg" alt="_Images/Machu Pichu/MP5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP6.jpg" alt="_Images/Machu Pichu/MP6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP7.jpg" alt="_Images/Machu Pichu/MP7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP8.jpg" alt="_Images/Machu Pichu/MP8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP9.jpg" alt="_Images/Machu Pichu/MP9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP10.jpg" alt="_Images/Machu Pichu/MP10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP11.jpg" alt="_Images/Machu Pichu/MP11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP12.jpg" alt="_Images/Machu Pichu/MP12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP13.jpg" alt="_Images/Machu Pichu/MP13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP14.jpg" alt="_Images/Machu Pichu/MP14.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP15.jpg" alt="_Images/Machu Pichu/MP15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP16.jpg" alt="_Images/Machu Pichu/MP16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP17.jpg" alt="_Images/Machu Pichu/MP17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP18.jpg" alt="_Images/Machu Pichu/MP18.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP19.jpg" alt="_Images/Machu Pichu/MP19.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP20.jpg" alt="_Images/Machu Pichu/MP20.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP21.jpg" alt="_Images/Machu Pichu/MP21.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP22.jpg" alt="_Images/Machu Pichu/MP22.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP23.jpg" alt="_Images/Machu Pichu/MP23.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP24.jpg" alt="_Images/Machu Pichu/MP24.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP25.jpg" alt="_Images/Machu Pichu/MP25.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP26.jpg" alt="_Images/Machu Pichu/MP26.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP27.jpg" alt="_Images/Machu Pichu/MP27.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP28.jpg" alt="_Images/Machu Pichu/MP28.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP29.jpg" alt="_Images/Machu Pichu/MP29.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP30.jpg" alt="_Images/Machu Pichu/MP30.jpg"/>
                                    </div>                                
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP31.jpg" alt="_Images/Machu Pichu/MP31.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP32.jpg" alt="_Images/Machu Pichu/MP32.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP33.jpg" alt="_Images/Machu Pichu/MP33.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP34.jpg" alt="_Images/Machu Pichu/MP34.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP35.jpg" alt="_Images/Machu Pichu/MP35.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP36.jpg" alt="_Images/Machu Pichu/MP36.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP37.jpg" alt="_Images/Machu Pichu/MP37.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP38.jpg" alt="_Images/Machu Pichu/MP38.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP39.jpg" alt="_Images/Machu Pichu/MP39.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Machu Pichu/MP40.jpg" alt="_Images/Machu Pichu/MP40.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#MachuPicchuCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#MachuPicchuCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>

                </article>

                <article id="slideShow7" class="mySlides noDisplay whiteBack autoMargin width90">
                    <div id="peruFlowerPhotos" class="whiteBack centerDiv regBorder">

                        <h1 class="myH1 centerText topMargin1em bottomMargin1em" style="font-size:2em;">Flowers of Peru</h1>

                         <div class="container-lg my22">
                            <div id="peruFlowerCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF1.jpg" alt="_Images/Peru Flowers/PF1.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF2.jpg" alt="_Images/Peru Flowers/PF2.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF3.jpg" alt="_Images/Peru Flowers/PF3.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF4.jpg" alt="_Images/Peru Flowers/PF4.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF5.jpg" alt="_Images/Peru Flowers/PF5.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF6.jpg" alt="_Images/Peru Flowers/PF6.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF7.jpg" alt="_Images/Peru Flowers/PF7.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF8.jpg" alt="_Images/Peru Flowers/PF8.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF9.jpg" alt="_Images/Peru Flowers/PF9.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF10.jpg" alt="_Images/Peru Flowers/PF10.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF11.jpg" alt="_Images/Peru Flowers/PF11.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF12.jpg" alt="_Images/Peru Flowers/PF12.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF13.jpg" alt="_Images/Peru Flowers/PF13.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF14.jpg" alt="_Images/Peru Flowers/PF14.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF15.jpg" alt="_Images/Peru Flowers/PF15.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF16.jpg" alt="_Images/Peru Flowers/PF16.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF17.jpg" alt="_Images/Peru Flowers/PF17.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF18.jpg" alt="_Images/Peru Flowers/PF18.jpg"/>
                                    </div>
                                   <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF19.jpg" alt="_Images/Peru Flowers/PF19.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF20.jpg" alt="_Images/Peru Flowers/PF20.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF21.jpg" alt="_Images/Peru Flowers/PF21.jpg"/>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="_Images/Peru Flowers/PF22.jpg" alt="_Images/Peru Flowers/PF22.jpg"/>
                                    </div>
                                </div>
                                <a class="carousel-control-prev bold" href="#peruFlowerCarousel" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next bold" href="#peruFlowerCarousel" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>            
                        </div>
                    </div>

                    <div class="clear bottomMargin2em"></div>
                </article>

                <div class="clear bottomMargin3em"></div>

            </section>
        </section> <%--End of Home Section--%>

        <section id="sectTours" class="mySects noDisplay">
            <section class="mainSection">
                <div class="centerDiv lightBlueBack">
                    <div class="autoMargin lightBlueBack">
                        <p class="pTitle myTours underLine" style="width:auto">Our Tours</p>
                    </div>

                    <div class="myTourSelection autoMargin whiteBack regBorder topMargin2em padding5 left">
                        <div>
                            <p id="selAfrica" class="pTitle myTours autoMargin whiteBack">Africa Adventure</p>
                            <div id="africaMenu" class="myTourItem whiteBack noDisplay">
                                <ul class="whiteBack fontSize1em">
                                    <li><h3 id="Africa1" class="selList colorRed topMarginHalfem fontSize1em">Part 1</h3></li>
                                    <li><h3 id="Africa2" class="selList colorRed topMarginHalfem fontSize1em">Part 2</h3></li>
                                </ul>
                            </div>
                        </div>

                        <div>
                            <p id="selIceLand" class="pTitle myTours autoMargin whiteBack">Iceland Adventure</p>
                            <div id="iceLandMenu" class="myTourItem whiteBack noDisplay">
                                <ul class="whiteBack fontSize1em">
                                    <li><h3 id="Iceland1" class="selList colorRed topMarginHalfem fontSize1em">Day Tripping in Iceland</h3></li>
                                </ul>
                            </div>
                        </div>

                         <div>
                            <p id="selRiver" class="pTitle myTours autoMargin whiteBack">River Cruise Europe</p>
                            <div id="riverMenu" class="myTourItem whiteBack noDisplay">
                                <ul class="whiteBack fontSize1em">
                                    <li><h3 id="River1" class="selList colorRed topMarginHalfem fontSize1em">Rhine and Danube River Cruise</h3></li>
                                </ul>
                            </div>
                        </div>


                        <div>
                            <p id="selTurkey" class="pTitle myTours autoMargin whiteBack">Turkey Adventure</p>
                            <div id="turkeyMenu" class="myTourItem whiteBack noDisplay">
                                <ul class="whiteBack fontSize1em">
                                    <li><h3 id="Turkey1" class="selList colorRed topMarginHalfem fontSize1em">The Best of Turkey - Part 1</h3></li>
                                    <li><h3 id="Turkey2" class="selList colorRed topMarginHalfem fontSize1em">The Best of Turkey - Part 2</h3></li>
                                    <li><h3 id="Turkey3" class="selList colorRed topMarginHalfem fontSize1em">The Best of Turkey - Part 3</h3></li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <div class="myTourSelection autoMargin whiteBack regBorder topMargin2em padding5 left">
                        <div class="autoWidth autoMargin whiteBack">
                            <p class="pTitle redText underLine whiteBack centerText">Coming Tours</p>
                        </div>
                        <div class="autoWidth autoMargin whiteBack">
                            <p class="pTitle whiteBack centerText">China, Clipper Ship, Peru,</p>
                            <p class="pTitle whiteBack centerText">South America</p>
                        </div>
                    </div>
                </div>
            </section>
        </section> <%--End of Tours Section--%>

        <section id="sectVideos" class="mySects noDisplay">
            <div class="lightBlueBack width45 autoMargin bottomMargin2em">
                <p class="pTitle lightBlueBack">Videos</p>
            </div>

            <aside class="floatLeft regBorder leftMargin10px" style="width:25%;">
                <p class="pTitle">Select Video</p>
                <hr class="myHr" />
                <div class="left topMargin1em lightBlueBack">
                    <h2 class="myH2 leftMarginHalfem">Turkey (2013)</h2>
                    <h3 id="videoSelect1" class="videoSelect myH3 leftMargin2em">October 2nd - 3rd, 2014</h3>
                    <h3 id="videoSelect2" class="videoSelect myH3 leftMargin2em">October 4th - 5th, 2014</h3>
                    <h3 id="videoSelect3" class="videoSelect myH3 leftMargin2em">October 6th - 7th, 2014</h3>
                    <h2 class="myH2 leftMarginHalfem topMargin1em">Iceland</h2>
                    <h3 id="videoSelect4" class="videoSelect myH3 leftMargin2em">Iceland - August 1 - 18, 2015</h3>
                </div>
            </aside>

            <div class="lightBlueBack leftMargin1em floatLeft width70">
                <div id="videoDiv" class="autoMargin lightBlueBack width90">
                    <!--Place Holder for the video-->
                </div>
            </div>

            <div class="clear bottomMargin2em"></div>
        </section> <%--End of Video Section--%>

        <section id="sectContact" class="mySects noDisplay">
            <section class="mainSection centerDiv">
                <div class="autoMargin whiteBack regBorder topMargin3em padding5" style="width:50%">
                    <p class="pTitle">Frank Calenda</p>
                    <p class="pTitle">306 Markley Court</p>
                    <p class="pTitle">Indian Harbour Beach</p>
                    <p class="pTitle">Florida 32937</p>
                    <p class="pTitle">Phone: 321-773-2046</p>
                    <p class="pTitle"><a href="mailto:fcalenda@aol.com">Email Frank by clicking here.</a></p>
                </div>
            
                <div class="clear"></div>

            </section>
        </section> <%--End of Contact Section--%>

        <section id="sectAfrica1" class="mySects noDisplay">
            <article class="padding10 bold left topMargin1em whiteBack regBorder" style="margin-left:10px;margin-right:10px;">

                <div class="centerDiv whiteBack">

                    <div class="clear bottomMargin1em"></div>

                    <div class="clear bottomMargin1em"></div>

                    <div class="centerDiv">
                        <p class="pTitle underLine autoMargin">Part 1</p>
                        <p class="pTitle underLine autoMargin">Day Tripping in Africa</p>
                    </div>

                    <div class="topMargin2em floatLeft left">
                        <img class="regBorder floatLeft width30" alt="Africa1.jpg" src="_Images/Africa/Africa1.jpg" />
                        <p class="floatLeft topMargin4em regBorder padding5" style=" width:50%;">
                            Picture yourself in the deepest, darkest Africa.  You’re following your guide on an early morning walking safari.
                            You round a bend in the trail.  Staring you in the face is a lioness with a look that says, <span class="mySpan italic">
                            “One step closer to my cub and
                            you’ll be our breakfast!”</span>
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <div class="padding10 floatLeft ">
                        <p class="floatLeft topMargin4em regBorder padding5 left" style=" width:50%;">
                            You hear your armed guide whisper, <span class="mySpan italic">“Don’t run, just be calm and she won’t bother you.”</span>
                            You check your urge to flee.  You watch. Then slowly and carefully take a few photos and gratefully follow your guide away,
                            but not without a few anxious glances over your shoulder.  You can’t help but wonder, “What’s next???”
                        </p>
                        <img class="regBorder floatLeft leftMargin1em width40" alt="Africa2.jpg" src="_Images/Africa/Africa2.jpg" />
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>


                    <div class="topMargin2em floatLeft width50">
                        <img class="regBorder width90" alt="Africa3.jpg" src="_Images/Africa/Africa3.jpg" />
                        <img class="topMargin1em regBorder width90" alt="Africa4.jpg" src="_Images/Africa/Africa4.jpg" />
                    </div>

                    <div class="topMargin2em floatLeft left width40">
                        <p class="topMargin3em regBorder padding5 left">
                            On this safari, you’ll never really know what’s next.  It could be two juvenile elephants, still young enough to 
                            enjoy wrestling in the nearest water hole.
                        </p>
                        <p class="topMargin10em regBorder padding5 left">
                            It could be coming on to a herd of water buffalo, one of the most dangerous and formidable animals to roam the jungle.  
                            Your guide will fill you full of stories of these animals being hunted and wounded, but then circling around to make 
                            the hunter the object of the hunt and, many times coming out the winner.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="topMargin2em  left">
                        <div class="floatLeft width55  left">
                            <img class="regBorder width100" alt="Africa5.jpg" src="_Images/Africa/Africa5.jpg" />
                        </div>
                        <div class="topMargin2em floatLeft  left" style="width:40%">
                            <p class="topMargin3em regBorder padding5 left">
                                A Cheetah could be basking in the
                                warm morning sun, having already filled its stomach on a misshapen antelope.
                            </p>
                        </div>
                    </div>

                    <div class="clear"></div>

                    <div class="topMargin2em  left">
                        <div class="topMargin2em floatLeft width40 left">
                            <p class="regBorder padding5 left">
                                Or you could come upon the King himself.  Being inherently shy, he stays away from the main pride, especially 
                                during the time that the young cubs are active.  He quietly lies in the high grass where he can’t be spotted, 
                                except at the last minute when you turn and there he is.
                            </p>
                        </div>
                        <div class="floatLeft left leftMargin2em width55">
                            <img class="regBorder width100" alt="Africa6.jpg" src="_Images/Africa/Africa6.jpg" />
                        </div>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

               </div>


                <div class="clear"></div>

                <div class=" regBorder autoMargin centerText padding5" style="width:30%;">
                    <h2 id="AfricaGo2" class="redText">Proceed to Part 2</h2>
                </div>

                <div class=" regBorder autoMargin topMarginHalfem centerText padding5 width35">
                    <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                </div>

                <div class="clear"></div>

            </article>
            <div class="clear"></div>

            <div class="autoMargin bold left topMargin1em regBorder  padding10" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Africa, their travels have taken them to
                    China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Turkey, Iceland, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.  
                </p>

                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>

        </section> <%--End of Africa1 Section--%>

        <section id="sectAfrica2" class="mySects noDisplay">
            <article class="padding10 bold left topMargin1em whiteBack regBorder leftMargin1em rightMargin1em">

                <div class="centerDiv ">

                    <div class="clear bottomMargin1em"></div>

<%--                    <hr class="myHr" />--%>

                    <div class="clear bottomMargin1em"></div>

                    <div class="centerDiv ">
                        <p class="pTitle underLine autoMargin">Part 2<br />Zimbabwe and Botswana</p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <div class="topMargin2em floatLeft centerDiv">
                        <div class="width80 autoMarginLeftRight">
                            <img class="regBorder floatLeft width45 leftMargin2em" alt="Africa7.jpg" src="_Images/Africa/Africa7.jpg" />
                            <img class="regBorder floatLeft width45 leftMargin2em" alt="Africa8.jpg" src="_Images/Africa/Africa8.jpg" />
                        </div>

                        <div class="clear bottomMargin1em"></div>

                        <p class="topMargin1em regBorder autoMargin padding5 width70">
                            We flew into our first camp at Lake Kariba, deep in Zimbabwe.  After getting settled in our tented camp, 
                            we were provided a boat ride to locate the hippos and later, to watch the sun set over the lake.  
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="floatLeft  left">
                        <img class="regBorder floatLeft width45" alt="Africa9.jpg" src="_Images/Africa/Africa9.jpg" />

                        <p class="regBorder floatLeft autoMargin padding5 leftMargin1em width45">
                            These tents are what I like to refer to as 5-star tents. Not all the camps were tents, some were thatched roof cottages.  
                            They are all well appointed with a private bathroom in each facility.  In one camp, we had to notify our guide the 
                            night before that we would be showering in the morning.  That was because the wood-burning hot water heaters had to be 
                            lit several hours before sun-up in order to have hot water. 
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="clear bottomMargin2em"></div>

                    <div class="floatLeft centerDiv left">
                        <div class="autoMarginLeftRight width80">
                            <img class="regBorder floatLeft width45 leftMargin2em" alt="Africa10.jpg" src="_Images/Africa/Africa10.jpg" />
                            <img class="regBorder floatLeft width45 leftMargin3em" alt="Africa11.jpg" src="_Images/Africa/Africa11.jpg" />
                        </div>

                        <div class="clear bottomMargin1em"></div>

                        <p class="topMargin1em regBorder autoMargin padding5" style=" width:70%;">
                            Land Rovers were usually provided in the mornings and afternoons for extensive safari rides.  One also had the option 
                            to lie in the hammock and survey the lake with all its activities from the elephants feeding to the hippos lazily 
                            basking in the water.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="floatLeft centerDiv left">
                        <div class="autoMarginLeftRight width80">
                            <img class="regBorder floatLeft width45 leftMargin2em" alt="Africa12.jpg" src="_Images/Africa/Africa12.jpg" />
                            <img class="regBorder floatLeft width45 leftMargin3em" alt="Africa13.jpg" src="_Images/Africa/Africa13.jpg" />
                        </div>

                        <div class="clear bottomMargin1em"></div>

                        <p class="topMargin1em regBorder autoMargin padding5" style=" width:70%;">
                            Travel from camp to camp was not always possible by road.  They might be available but certainly not what one 
                            would want to ride over for seven to eight hours.  Instead we travelled using small aircraft.  Mostly they were 
                            Piper aircraft and the flight was usually in to order of 30 to 45 minutes in duration.  Most of the landing strips 
                            were runways carved into the jungle floor, a full half mile of dirt.  During this particular post-monsoon season, 
                            some of these strips were flooded and alternate transportation was needed
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="floatLeft left">
                        <img class="regBorder floatLeft width45" alt="Africa14.jpg" src="_Images/Africa/Africa14.jpg" />

                        <p class="regBorder floatLeft autoMargin padding5 leftMargin1em width45">
                            Next our safari took us to one of the most beautiful places in the world.  The famed Victoria Falls.  
                            Originating in Angola to the North, the Zambezi River flows for 600 miles through the African plains until it comes 
                            to the rift created by volcanic action millions of years ago.  This is more than just a sight to see, you will 
                            actually feel its massive vibrations long before you see it.  The roar of falling water resonates to your very core.
                        </p>
                    </div>

                    <div class="floatLeft  left">
                        <img class="regBorder floatLeft topMargin2em width45" alt="Africa15.jpg" src="_Images/Africa/Africa15.jpg" />

                        <p class="regBorder floatLeft autoMargin padding5 topMargin2em leftMargin1em width45">
                            Time passes quickly because you never want to move your eyes from the ever-changing views.  You’ll need a water-proof 
                            cover for your stroll along the face of the falls.  If you’ve seen Niagara Falls, you’ve seen only but a brief 
                            image of what you’ll view at Victoria.  Niagara Falls is impressive but Victoria is the grandfather of all falls.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <p class="regBorder topMargin2em padding5 left">
                        And so it goes from camp to camp for 3 weeks.  When you wake each morning you ask yourselves, <span class="italic darkBlueText" style="font-size:1em;"> “Do I want to be jostled 
                        and bumped around again today?  Haven’t I seen enough animals to last a life time?”</span> &nbsp;Then, as you recall the sounds 
                        of the night, the grunting of the hippo’s as they passed your window.  The mighty roar of the lion that has made its 
                        catch.  The answer flashes into your mind that you haven’t seen enough. This is wild Africa.  This is the trip of a 
                        lifetime and you rush into the day with renewed vigour wondering what amazing sights await you today.  There’ll be tears 
                        in your eyes when you have to leave and you’ll promise yourself that you’ll return some day.  That’s exactly what we’re doing. 
                    </p>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="regBorder autoMargin centerText padding5" style="width:40%;">
                        <h2 id="AfricaGoBack1" class="redText">Go Back to Part 1</h2>
                    </div>

                    <div class=" regBorder topMarginHalfem autoMargin centerText padding5 width35">
                        <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                </div>
            </article>

            <div class="autoMargin bold left topMargin1em regBorder  padding10 bottomMargin3em" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Africa, their travels have taken them to
                    China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Turkey, Iceland, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.
                </p>
                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>

        </section> <%--End of Africa2 Section--%>

        <section id="sectIceland" class="mySects noDisplay">
            <article class="padding10 bold left topMargin1em whiteBack regBorder" style="margin-left:10px;margin-right:10px;">
                <p style="text-align:center;">
                    <span class="italic darkBlueText autoMargin">Iceland? Iceland??  Who could possibly want to go to Iceland?</span>
                </p>  

                <p>
                    Any traveler considering this will invariably be faced 
                    with this question. My wife and I had considered going there for many years but when we found it would become a reality, 
                    we were not only asked this question, but also many more.  “Isn’t it cold there?” or “Don’t you have to travel by snow-mobile?” 
                    were additional questions, amongst many more, that we had to field. Most inquires seemed to be designed to discourage us from 
                    going although no one we spoke to had ever been there.
                </p>

                <p class="topMarginHalfem">
                    We went anyway and will happily state that we’re glad we did.  
                </p>

                <p class="topMarginHalfem">
                    We’ve made many trips with our favorite travel company, Overseas Adventure Travel (OAT).  We used them for this trip.
                    Oh, there are other companies out there that provide travel to Iceland, but this company always delivers.
                    The middle name says it all, “Adventure”.  Read on to see what we mean.
                </p>

                <div class="centerDiv ">

                    <div class="clear bottomMargin1em"></div>

                    <hr class="myHr" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="centerDiv ">
                        <p class="pTitle underLine autoMargin">Day Tripping in Iceland</p>
                    </div>

                    <div class=" left">
                        <img class="regBorder floatLeft topMargin2em width45" alt="IL1.jpg" src="_Images/Iceland/IL1.jpg" />
                        <p class="floatLeft topMargin3em padding5 regBorder width50">
                            Yes, it is cold in Iceland.  Not all the time but admittedly, a lot of the time.  It can also be windy and rainy. 
                            Have you ever heard of people golfing in the rain or going to a football game on a blustery day?  That’s the 
                            mind-set you need to travel this uniquely wonderful land.  Once you get over your fear of getting wet or cold, 
                            you’re ready to see all the wonders it has to offer.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" centerDiv">
                        <img class="regBorder autoMargin block topMargin2em width50 " alt="IL2.jpg" src="_Images/Iceland/IL2.jpg" />
                        <p class="topMargin1em padding5 autoMargin regBorder width75">
                            Our initial introduction to this land was seeing miles and miles of black, porous, ugly lava rock.  In fact, so ugly the landscape 
                            was beautiful.  That sounds like an oxymoron but you really need to experience it. You’ll spend more than a few minutes, 
                            by the side of the road looking at a landscape that’s right out of the Lord of The Rings movie.  Just when you’re sure that 
                            you don’t like it, you’ll find that you really do.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left">
                        <img class="regBorder floatLeft topMargin2em width45" alt="IL3.jpg" src="_Images/Iceland/IL3.jpg" />
                        <p class="floatLeft topMargin4em padding5 regBorder width50">
                            Waterfalls??  We’ve all seen them.  Niagara, Victoria, Yosemite, and many others.  Well you won’t see any like 
                            the literally hundreds and hundreds that dot this land.  There’s the thin and high, the narrow and forceful 
                            and the wide and spectacular.  It’s difficult to travel more than a few miles without seeing one.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class="floatLeft centerDiv left">
                        <div class="autoMarginLeftRight width80">
                            <img class="regBorder floatLeft width45 leftMargin2em" alt="IL4.jpg" src="_Images/Iceland/IL4.jpg" />
                            <img class="regBorder floatLeft width45 leftMargin3em" alt="IL5.jpg" src="_Images/Iceland/IL4.jpg" />
                        </div>

                        <div class="clear"></div>
                        <p class="topMargin1em padding5 regBorder autoMargin width75">
                            Do you want to see whales in the waters of the Arctic Ocean?  For this adventure, 
                            Overseas Adventure Travel took us to Akureyri, the second largest city in Iceland.
                            There’s usually not a concern if you’ll spot them or not.  These goliaths 
                            come right up to the boat and seemingly love to flip their massive tails at you.  On our journey, we fully saw 
                            more than fifteen, some of them families with mom, dad and baby, or so it seemed.  I guess it could have been 
                            grandma, mom and baby.  It really didn’t matter, the excitement was high and everyone was thrilled at the adventure.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left centerDiv">
                        <div class="topMargin1em  floatLeft width45">
                            <img class="regBorder block width100" alt="IL6.jpg" src="_Images/Iceland/IL6.jpg" />
                            <img class="regBorder block width100 topMargin1em" alt="IL7.jpg" src="_Images/Iceland/IL7.jpg" />
                        </div>

                        <p class="topMargin3em leftMargin2em padding5 regBorder floatLeft width45">
                            How do they stay warm in Iceland?  Well it may surprise some people that they are one of the most ecologically 
                            resource rich countries in the world.  Most of their heating and electricity come from the turbulence of the 
                            underground lava heated water and steam.  All over the country you can see the great steam vents hissing forth 
                            from the ground.  They have learned to harness this great natural resource and use it wisely.  They pipe the hot 
                            water to city distribution centers losing only several degrees every 15 miles. Houses in the city can expect hot 
                            water piped in to their home at about 180F degrees. They also capture the great steam vents, driving massive turbines 
                            to produce a good portion of electricity needed throughout the country.  They use these natural resources and 
                            return them to the earth and lose very little or nothing in the process.
                        </p>
                    </div>


                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left centerDiv">
                        <div class="topMargin1em centerDiv ">
                            <img class="regBorder autoMarginLeftRight width45" alt="IL8.jpg" src="_Images/Iceland/IL8.jpg" />
                            <div class="autoMarginLeftRight topMargin1em width80">
                                <img class="regBorder floatLeft leftMargin2em width45" alt="IL9.jpg" src="_Images/Iceland/IL9.jpg" />
                                <img class="regBorder floatLeft leftMargin2em topMargin2em width45" alt="IL10.jpg" src="_Images/Iceland/IL10.jpg" />
                            </div>
                        </div>
                        <div class="clear"></div>
                        <p class="topMargin1em  padding5 regBorder autoMargin" style=" width:75%;">
                            Do flowers grow in Iceland?  Well yeah, we noticed a couple eking out a living in the cold cliffs hugging the northern ocean.  
                            But wait, we saw beautiful flower arrangements in the stores and restaurants.  Could they possibly be imported and look 
                            that beautiful?  Well, with all the thermal activity here, they have hot houses where they grow the most amazing flowers and 
                            vegetables.  All I could think of was how healthy the flowers looked.  Stems that would droop under the weight of large flowers, 
                            were standing straight, tall and seemingly proud.  The veggie’s were large and we were lucky enough to sample some in the cooking.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left centerDiv">
                        <div class="topMargin1em ">
                            <div class="centerDiv ">
                                <img class="regBorder autoMarginLeftRight width60" alt="IL12.jpg" src="_Images/Iceland/IL12.jpg" />
                            </div>
                            <div class="autoMarginLeftRight topMargin1em width80">
                                <img class="regBorder floatLeft width45" alt="IL11.jpg" src="_Images/Iceland/IL11.jpg"/>
                                <img class="regBorder floatLeft width45 leftMargin2em" alt="IL13.jpg" src="_Images/Iceland/IL13.jpg" />
                            </div>
                        </div>
                        <div class="clear"></div>
                        <p class="topMargin1em  padding5 regBorder autoMargin width75">
                            Well, let’s see.  Most cold countries with high mountains have glaciers.  Does Iceland have them?  You bet your 
                            ice cube they do, and some mighty ones at that.  These goliaths are often visible from the road and a short trip 
                            by jeep will get you up close and personal with them.  Even pictures of them can’t describe the grandeur of seeing 
                            one from the base.  At one point on the ring road (Iceland Route 1), you can stop and view the large icebergs that 
                            break off from them and make their way to the ocean.  Looking at this wonder will make you forget you’re cold until 
                            you realize you’ve seen enough.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>


                    <div class=" left centerDiv">
                        <div class="topMargin1em ">
                            <div class="centerDiv ">
                                <img class="regBorder autoMarginLeftRight width45" alt="IL16.jpg" src="_Images/Iceland/IL16.jpg" />
                            </div>
                            <div class="topMargin1em width80 autoMarginLeftRight">
                                <img class="regBorder floatLeft leftMargin2em width45" alt="IL14.jpg" src="_Images/Iceland/IL14.jpg" />
                                <img class="regBorder floatLeft leftMargin2em width45" alt="IL15.jpg" src="_Images/Iceland/IL15.jpg" />
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="clear"></div>
                        <p class="topMargin1em  padding5 regBorder autoMargin" style=" width:75%;">
                            How about birds?  Does Iceland have birds?  Silly question.  It most likely has more species of birds 
                            than an aviary in any zoo.  What did we see?  How about Snipes, the Common Raven or the Tern…and the common 
                            gulls that inhabit the great cliffs in the thousands?  Which did I like the best?  The puffin was the best. 
                            From a distance they look like a little clown hugging the shear walls.  But in Iceland, you can get up close.  
                            They are a beautiful bird and, when they look at you, they seem to demand respect.  They got ours.  They are 
                            certainly survivors in this harsh environment
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left centerDiv">
                        <div class="topMargin1em floatLeft width45">
                            <img class="regBorder block width100" alt="IL17.jpg" src="_Images/Iceland/IL17.jpg" />
                            <img class="regBorder block width100 topMargin1em" alt="IL18.jpg" src="_Images/Iceland/IL18.jpg" />
                        </div>

                        <p class="topMargin7em leftMargin2em padding5 regBorder floatLeft width45">
                            Want more adventure?  This tour took us to a wild ride on the rapids in a rubber raft.  Some say the rapids 
                            reached Class 3 level.  Whatever it was, it was thrilling and exciting.  We were outfitted with the proper 
                            clothing and gear.  Safety briefings were thorough and often, before we left.  You can’t explain the thrill of 
                            this ride.  It has to be experienced.
                        </p>
                    </div>


                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" left centerDiv">
                        <div class="centerDiv ">
                            <img class="regBorder autoMargin width80" alt="IL19.jpg" src="_Images/Iceland/IL19.jpg" />
                        </div>
                        <div class="clear"></div>
                        <p class="topMargin1em  padding5 regBorder autoMargin width80">
                            Finally, remember the part about the thermal power?  Well when all is said and done, much of the warm water 
                            is piped to an area called the Blue Lagoon.  It’s a heavenly place for relaxing after an adventurous tour and a 
                            break from the chilling weather.  You’re required, at the hot pools, to bathe before and after you enter these 
                            embryonically warm waters. It permeates your bones and sooths your flesh. It was a great culmination to our trip.
                        </p>
                    </div>

                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <p>
                        This has been just a little insight into our travels in the unique country. Most of the venues described were included 
                        on our OAT trip.  All transportation, most meals, lodging in minimum 4 star hotels and entry to parks were a part of the 
                        package with them.  We spent a week on our own and saw a lot of wonderful things but our tour with OAT brought us to 
                        places that we would have never ventured on our own.  Don’t hesitate to give it a try.  Put it on your bucket list and 
                        don’t worry if you’ll enjoy it…you will.
                    </p>
                    <div class="clear bottomMargin1em"></div>

                    <img alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    <div class="clear bottomMargin1em"></div>

                    <div class=" regBorder autoMargin centerText padding5 width35">
                        <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                    </div>

                </div>
            </article>

            <div class="autoMargin bold left topMargin1em regBorder  padding10" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Iceland, their travels have taken them to
                    Africa, China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Turkey, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.
                </p>

                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>
        </section> <%--End of Iceland Section--%>

        <section id="sectTurkey1" class="mySects noDisplay">
            <article class="padding10 bold left whiteBack topMargin1em centerDiv regBorder" style="margin-left:10px;margin-right:10px;">

                <div class="centerDiv">
                    <div class="autoMargin regBorder" style="width:40%;">
                        <p class="pTitle underLine centerText">The Best of Turkey<br />Part 1</p>
                    </div>
                </div>

                <div class="clear bottomMargin1em"></div>

                <hr class="myHr" />

                <div class="clear"></div>

                <div class="topMargin1em left">
                    <img class="regBorder floatLeft topMargin4em" alt="Thanksgiving.jpg" src="_Images/Turkey/Thanksgiving.jpg" />
                    <div class="floatLeft leftMargin2em" style=" width:50%;">
                        <p class="topMargin1em padding5 regBorder">
                            When people talk of turkey, thoughts turn to Thanksgiving and yummy feasts with mashed potatoes, yams, stuffing and
                            lots of gravy to pour over everything.  Not too few glasses of wine may also be consumed.
                        </p>
                        <p class="topMargin1em padding5 regBorder">
                            This isn’t the kind of turkey we’re talking about here.  This Turkey is a country that has existed as long as time 
                            itself, or so you’ll think when you look at the many wonders you’ll see in the Overseas Adventure Travel tour to 
                            this land.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em centerDiv left">
                    <div>
                        <img class="regBorder floatLeft topMargin2em leftMargin3em" alt="Turkey1.jpg" src="_Images/Turkey/Turkey1.jpg" />
                        <img class="regBorder floatLeft topMargin2em leftMargin3em" alt="Turkey1.jpg" src="_Images/Turkey/Turkey2.jpg" />
                    </div>
                    <div class="clear"></div>
                    <div class="width75 padding5 autoMargin">
                        <p class="topMargin1em padding5 regBorder">
                            Our initial introduction to Turkey was in Istanbul.  Our hotel, although small, was clean and located in the central
                            part of town.  Looking out of our window we, had a grand view of the famous Blue Mosque.  I was actually happy to
                            just stand there and let my mind wander, trying to imagine the building of this structure and what its history was.
                            Our guide took care of those questions and more. We found that it was built in 1616, just under 400 years ago.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em left">
                    <img class="regBorder floatLeft topMargin6em" alt="Turkey3.jpg" src="_Images/Turkey/Turkey3.jpg" />
                    <div class="floatLeft leftMargin2em" style=" width:50%;">
                        <p class="topMargin1em padding5 regBorder">
                            After our arrival, we didn’t stay long in our hotel.  The pace of this tour was quite good.  We didn’t spend time 
                            milling around but, on the other hand, enough time was spent at each venue to see it’s wonder and find out a little 
                            bit about it.  We spent 3 days in Istanbul seeing the touristy but very interesting places.  Of course, our first 
                            stop was the Blue Mosque.  Everybody wants to see that and I must say we were not disappointed.  As we strolled down 
                            the traffic crowded streets on our way there, the call to prayer (Adhan) came wafting over the sounds of the traffic.  
                            It’s an eerie, melancholic sound. You’ve just got to stop walking and listen. We would hear this five times a day.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em centerDiv left">
                    <div>
                        <img class="regBorder floatLeft topMargin5em leftMargin2em" alt="Turkey4.jpg" src="_Images/Turkey/Turkey4.jpg" />
                        <img class="regBorder floatLeft topMargin2em leftMargin2em" alt="Turkey5.jpg" src="_Images/Turkey/Turkey5.jpg" />
                    </div>
                    <div class="clear"></div>
                    <div class="width75 padding5 autoMargin">
                        <p class="topMargin1em padding5 regBorder">
                            The mosque was beautiful to say the least.  You have to remove your shoes when you go in and the woman must cover their 
                            head.  With the hundreds of shoes sitting outside the doors, one can only hope that theirs will be there when you 
                            come out.  As impressive as it is on the outside, the awe at seeing the inside is even more intense.  It almost seems 
                            like the room is just a big shell but it is so ornate, you forget about the openness.  The Turkish rug that is spread 
                            over a large part of the room is immense, well over 2000 square feet.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em centerDiv left">
                    <div class="floatLeft padding5 autoMargin" style="width:45%;">
                        <p class="topMargin1em padding5 regBorder">
                            Also, while in Istanbul, we visited the Kapalicarsi Grand Bazaar.  This market would rival any flea market you’d 
                            visit in the states.  Usually, we find that the vendors in foreign countries pester you to tears trying to sell 
                            you something.  In one country one time, we physically had to remove their hands from our arms.  Not so in this bazar.  
                            The salespeople were actually friendly, most of the time asking where we were from and if we liked Turkey.  
                            It was all done with a smile and we even found that we would mention how nice it was to talk to them when we left.  
                            It didn’t seem to matter if we bought something or not.  There was a LOT to buy and you might wish you’d brought an 
                            extra, empty suitcase with you.
                        </p>
                    </div>
                    <div class="floatLeft leftMargin3em" style="width:45%">
                        <img class="regBorder topMargin2em" alt="Turkey6.jpg" src="_Images/Turkey/Turkey6.jpg" />
                        <img class="regBorder topMargin1em" alt="Turkey7.jpg" src="_Images/Turkey/Turkey7.jpg" />
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em left">
                    <img class="regBorder floatLeft topMargin3em" alt="Turkey8.jpg" src="_Images/Turkey/Turkey8.jpg" />
                    <div class="floatLeft leftMargin2em" style=" width:50%;">
                        <p class="topMargin1em padding5 regBorder">
                            Of course, while in Istanbul, your visit would not be complete without a stop at the spice market.  Any chef would 
                            meet this dreams just walking around these shops that sell everything from curry powder to Nigella seeds 
                            (look them up).  The smells that attack your nasal passages sometimes are so powerful, they also affect your 
                            taste buds. It’s no wonder we had lunch immediately after leaving this market.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em left">
                    <div class="floatLeft" style=" width:50%;">
                        <p class="topMargin1em padding5 regBorder">
                            Then there was the fantastic Basicila cistern, a great subterranean pool that supplied Istanbul with water.  
                            You will descend down some dark, dank stone steps into a wonderland of sights.  One might ask themselves if Disney 
                            was here and built another park.  Although there are many people down here, the atmosphere is hushed, mostly because 
                            people were admiring the beauty.  One question that seemed to be frequently asked was, “How in the devil did they 
                            build this thing so many years ago.”
                        </p>
                    </div>
                    <img class="regBorder floatLeft leftMargin2em topMargin4em" alt="Turkey9.jpg" src="_Images/Turkey/Turkey9.jpg" />
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="centerDiv topMargin2em">
                    <div class="width75 autoMargin left regBorder padding5">
                        <p>
                            I could go on and on about the sights seen in the very old, very unique city but our time there was only 3 days and we saw
                            way too many things to discuss and display here.  Let me list a few of those places.  The Hagia Sophia, Topkapi Palace,
                            Sleymaniye Mosque, Taksim Square, a sit down at the Gulluoglu Baklava store (and a generous sampling of their product),
                            and a cruise down the famous Bosphorus River.  Take a look at the photos on this web site to view some of these places.
                        </p>
                        <p class="topMarginHalfem">
                            Our further journeys take us to many places in Turkey including a 4 day cruise of the Mediterranean on a Gullet boat.
                            Please read Part two and three for a further insight to the wonderful OAT tour.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="regBorder autoMargin centerText padding5" style="width:30%;">
                    <h2 id="TurkeyGo2" class="redText">Proceed to Part 2</h2>
                </div>

                <div class="regBorder autoMargin topMarginHalfem centerText padding5 width35">
                    <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                </div>

                <div class="clear bottomMargin2em"></div>

            </article>

            <div class="autoMargin bold left topMargin1em regBorder padding10 bottomMargin3em" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Turkey, their travels have taken them to
                    Africa, China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Iceland, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.  
                </p>

                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>

        </section> <%--End of Turkey1 Section--%>

        <section id="sectTurkey2" class="mySects noDisplay">
            <article class="padding10 bold whiteBack left topMargin1em centerDiv regBorder" style="margin-left:10px;margin-right:10px;">

                <div class="centerDiv">
                    <div class="autoMargin regBorder" style="width:40%;">
                        <p class="pTitle underLine centerText">The Best of Turkey<br />Part 2</p>
                    </div>
                </div>

                <div class="clear bottomMargin1em"></div>

                <hr class="myHr" />

                <div class="clear"></div>

                <div class="topMargin1em regBorder left">
                    <p>
                        Just the three days we spent in Istanbul with the OAT tour was enough to make us happy.  What made us even happier was
                        the knowledge that there was a lot more to come.
                    </p>
                </div>

                <div class="topMargin1em left">
                    <img class="regBorder floatLeft leftMargin2em topMargin2em" alt="Turkey10.jpg" src="_Images/Turkey/Turkey10.jpg" />
                    <div class="floatLeft leftMargin2em" style=" width:50%;">
                        <p class="topMargin1em padding5 regBorder whiteBack">
                            The next morning we flew to Izmir on an early morning flight. The flight was a good one and we hit the ground with 
                            our feet running. An early morning flight didn’t mean we were going to sit back for the rest of the day recovering.  OAT doesn’t
                                work that way.  
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>


                <div class="topMargin1em left">
                    <div>
                        <img class="regBorder floatLeft leftMargin2em topMargin2em" alt="Turkey14.jpg" src="_Images/Turkey/Turkey14.jpg" />
                        <img class="regBorder floatLeft leftMargin4em topMargin1em" alt="Turkey15.jpg" src="_Images/Turkey/Turkey15.jpg" />
                    </div>
                    <div class="clear"></div>
                    <div class="leftMargin2em whiteBack">
                        <img class="regBorder floatLeft topMargin7em" alt="Turkey16.jpg" src="_Images/Turkey/Turkey16.jpg" />
                        <div class="floatLeft whiteBack leftMargin1em" style="width:50%;">
                            <p class="topMargin1em padding5 regBorder">
                                The bus took us directly from the airport to a glass bead factory where we were entranced by 
                                not only the product but also by the ancient way they made them. We were told that this process hadn’t changed 
                                in hundreds of years. The beads themselves were called the “Evil Eyes” and were purported to ward off evil if 
                                you hung them from the mirror of your car or wore them as jewelry.  They were cheap enough so we bought some for 
                                all of our friends. We keep one in our lottery envelope although it hasn’t helped yet. Hey, who knows??
                            </p>
                        </div>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>


                <div class="topMargin1em left">
                    <div>
                        <img class="regBorder floatLeft leftMargin2em topMargin1em" alt="Turkey11.jpg" src="_Images/Turkey/Turkey11.jpg" />
                        <img class="regBorder floatLeft leftMargin4em topMargin1em" alt="Turkey12.jpg" src="_Images/Turkey/Turkey12.jpg" />
                    </div>
                    <div class="clear"></div>
                    <div class="leftMargin2em whiteBack">
                        <img class="regBorder floatLeft topMargin4em" alt="Turkey13.jpg" src="_Images/Turkey/Turkey13.jpg" />
                        <div class="floatLeft leftMargin1em" style="width:70%;">
                            <p class="topMargin1em padding5 regBorder">
                                By now it was lunch time and on our way to Kusadasi we stopped at the small village of Dogancilar.  OAT usually 
                                provides a home-hosted meal on their tours.  We enjoy these because it gives us a chance to interact with the 
                                locals and to taste some of the local home-made food.  Here we were hosted by Semra and her family.  
                                The table had been set but not before we sat and tried to communicate with these people.  It was fun and, at times, 
                                hilarious in our feeble attempts to pronounce their words. No matter, we always got out points across and, of 
                                course, had our guide to interpret when needed.  The food?  It was indescribable. They provided the names for 
                                all of it but not only couldn’t we pronounce it, we’d never remember it.  Everyone had a taste of everything and, 
                                in the final, nothing was left.  We left promising that someday we’d return.  
                            </p>
                        </div>
                    </div>
                    <div>
                        <img class="regBorder floatLeft leftMargin2em topMargin1em" alt="Turkey17.jpg" src="_Images/Turkey/Turkey17.png" />
                        <img class="regBorder floatLeft leftMargin4em topMargin1em" alt="Turkey18.jpg" src="_Images/Turkey/Turkey18.jpg" />
                    </div>

                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em left">
                    <div class="floatLeft" style="width:45%;">
                        <img class="regBorder leftMargin2em topMargin1em" alt="Turkey19.jpg" src="_Images/Turkey/Turkey19.jpg" />
                        <img class="regBorder leftMargin2em topMargin1em" alt="Turkey20.jpg" src="_Images/Turkey/Turkey20.jpg" />
                    </div>
                    <div class="leftMargin2em floatLeft" style="width:45%;">
                        <p class="topMargin7em padding5 regBorder">
                            We continued to the Charisma hotel  in Kusadasi.  This was at least a 5 star hotel.  Our view of the Mediterranean 
                            was spectacular to say the least. Our guide took us on a brief tour and we returned for supper at the hotel that night.
                        </p>
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="topMargin1em left">
                    <div class="centerDiv">
                        <img class="regBorder leftMargin2em topMargin1em" alt="Turkey21.jpg" src="_Images/Turkey/Turkey21.jpg" />
                    </div>
                    <div class="clear"></div>
                    <div class="leftMargin2em floatLeft" style="width:45%;">
                        <p class="topMargin3em padding5 regBorder">
                            In the morning, we were up early.  Our guide told us that there were five cruise ships in port and that if we wanted to 
                            miss the crowds, we had to beat them there.  Our destination was Ephesus, an ancient city about 30km from Kusadasi.  
                            The wonders found here are too numerous to list.  I can show you a few photos but best go to a site and read about 
                            it <a class="redText" href="http://www.ephesus.us/ephesus/ephesus_history.htm" target="_blank">by clicking here.</a>
                            We walked the House of the Virgin Mary, the Basilica of Saint John and so much more.  Our guide was right, we did beat the crowds.  
                            By 11am, we almost had to walk sideways to keep from bumping into everyone.  That’s the nice thing about the OAT guide, they are 
                            really street wise on everything within their country.
                        </p>
                    </div>
                    <div class="leftMargin2em floatLeft" style="width:45%;">
                        <img class="regBorder leftMargin2em topMargin1em" alt="Turkey22.jpg" src="_Images/Turkey/Turkey22.jpg" />
                        <img class="regBorder leftMargin2em topMargin1em" alt="Turkey23.jpg" src="_Images/Turkey/Turkey23.jpg" />
                    </div>
                </div>

                <div class="clear centerDiv">

                    <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                </div>

                <div class="regBorder autoMargin centerText padding5" style="width:30%;">
                    <h2 id="TurkeyGo3" class="redText">Proceed to Part 3</h2>
                </div>

                <div class="regBorder topMargin2em autoMargin centerText padding5 width35">
                    <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                </div>

            </article>

            <div class="autoMargin bold left topMargin1em regBorder padding10 bottomMargin3em" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Turkey, their travels have taken them to
                    Africa, China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Iceland, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.  
                </p>

                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>

        </section> <%--End of Turkey2 Section--%>

        <section id="sectTurkey3" class="mySects noDisplay">
            <article class="padding10 bold left topMargin1em lightBlueBack centerDiv regBorder" style="margin-left:10px;margin-right:10px;">

                <div class="centerDiv lightBlueBack padding5">
                    <div class="autoMargin regBorder padding10 showShadow" style="width:50%;">
                        <p class="pTitle underLine centerText">The Best of Turkey Part 3</p>
                    </div>
                </div>

                <div class="clear bottomMargin1em"></div>

                <hr class="myHr" />

                <div class="clear"></div>

                <div class="topMargin1em regBorder left">
                    <div class="padding5">
                        <p class="topMargin1em padding5 regBorder">
                            After we had lunch at the carpet factory, we drove to Marmaris to start out four-night Gulet experience.
                            The Gullet is a 3 masted schooner type boat. It comfortably accommodated our entire group.
                        </p>
                    </div>

                    <div class="clear"></div>

                    <div>
                        <img class="regBorder floatLeft leftMargin2em topMargin2em" alt="Turkey24.jpg" style="width:390px;" src="_Images/Turkey/Turkey24.jpg" />
                        <img class="regBorder floatLeft leftMargin2em topMargin2em" alt="Turkey25.jpg" style="width:390px;" src="_Images/Turkey/Turkey25.jpg" />
                    </div>

                    <div class="clear"></div>

                    <div>
                        <img class="regBorder floatLeft leftMargin2em topMargin2em" alt="Turkey26.jpg" style="width:390px;" src="_Images/Turkey/Turkey26.jpg" />
                        <div class="floatLeft padding5 leftMargin2em topMargin1em width45">
                            <p class="topMargin1em padding5 regBorder">
                                Not only sail, but as much swimming as we cared to do. It was cold when you went in but then you’d find that you
                                didn’t want to get out. Of course sailing and swimming were not the only activities on this part of the journey.
                            </p>
                        </div>
                    </div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div>
                        <div class="padding5 floatLeft topMargin2em width45">
                            <p class="topMargin3em padding5 regBorder">
                                We boated into
                                Cleopatra’s baths, explored remote islands, stopped at herder’s homes and enjoyed gourmet meals served by
                                the crew. There were never rough seas and, in fact, these were some of the best night sleeps we experienced in
                                a long while.  The gentle rocking of the boat was all it took to put us to sleep after an exciting day.
                            </p>
                        </div>

                        <div class="leftMargin5em floatLeft width45">
                            <img class="regBorder topMargin2em" alt="Turkey27.jpg" style="width:390px;" src="_Images/Turkey/Turkey27.jpg" />
                            <img class="regBorder topMargin2em" alt="Turkey28.jpg" style="width:390px;" src="_Images/Turkey/Turkey28.jpg" />
                        </div>
                    </div>

                    <div class="clear"></div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div>
                        <div class="padding5 autoMargin topMargin2em width75">
                            <p class="padding5 regBorder whiteBack">
                                And so it went on this fabulous Turkey trip.  There we so many things to follow they are too many
                                to list in this brief synopsis.
                            </p>
                        </div>

                    </div>
                    <div class="clear"></div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div>
                        <div>
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey29.jpg" style="width:350px;" src="_Images/Turkey/Turkey29.jpg" />
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey30.jpg" style="width:350px;" src="_Images/Turkey/Turkey30.jpg" />
                        </div>

                        <div class="clear"></div>

                        <div class="padding5 topMargin2em floatLeft width45">
                            <p class="padding5 regBorder topMargin8em">
                                The Ancient City of Myra and its cliff dwellings.  Scrumptious food all along the way.
                            </p>
                        </div>

                        <div class="topMargin2em floatLeft width45">
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey31.jpg" style="width:350px;" src="_Images/Turkey/Turkey31.jpg" />
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey32.jpg" style="width:350px;" src="_Images/Turkey/Turkey32.jpg" />
                        </div>

                    </div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div>
                        <div>
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey33.jpg" style="width:350px;" src="_Images/Turkey/Turkey33.jpg" />
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey34.jpg" style="width:350px;" src="_Images/Turkey/Turkey34.jpg" />
                        </div>

                        <div class="clear"></div>

                        <div class="padding5 topMargin2em autoMargin width45">
                            <p class="padding5 regBorder">
                                Brief stops at the many mosques and to watch an Imam offer prayer.
                            </p>
                        </div>

                    </div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div>
                        <div>
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey35.jpg" style="width:350px;" src="_Images/Turkey/Turkey35.jpg" />
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey36.jpg" style="width:350px;" src="_Images/Turkey/Turkey36.jpg" />
                        </div>

                        <div class="clear"></div>

                        <div class="floatLeft width45">
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey37.jpg" style="width:350px;" src="_Images/Turkey/Turkey37.jpg" />
                       </div>
                        <div class="regBorder padding5 topMargin2em leftMargin4em floatLeft width45">
                            <p>
                                We spent a night on the way to Cappadocia “roughing” it in a private home in a small village where
                                the local children not only followed us on our short hikes but entertained us with their playtime
                                songs and dances.  Truly wonderful.
                            </p>
                        </div>
                    </div>

                    <div class="clear centerDiv">

                        <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                    </div>

                    <div class="clear"></div>

                    <div>
                        <div>
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey38.jpg" style="width:350px;" src="_Images/Turkey/Turkey38.jpg" />
                            <img class="regBorder leftMargin5em topMargin2em" alt="Turkey39.jpg" style="width:350px;" src="_Images/Turkey/Turkey39.jpg" />
                        </div>

                        <div class="clear"></div>

                        <div class="regBorder padding5 topMargin2em autoMargin width75">
                            <p>
                                Then there was Cappadocia.  A natural wonder unparalleled by other things we experienced on this venture. 
                                It would take several more pages of detailed text to describe a wonder that should be seen by all adventure 
                                travelers.  We were quartered in a very unique Cave Hotel.  The photos of the rock formations, balloon 
                                spectacular, the underground city and the region in itself, speak for themselves
                            </p>
                        </div>

                        <div class="clear centerDiv">

                            <div class="floatLeft leftMargin1em" style="width:30%;">
                                <img class="regBorder topMargin2em" alt="Turkey40.jpg" style="width:275px;" src="_Images/Turkey/Turkey40.jpg" />
                            </div>

                            <div class="floatLeft leftMargin1em" style="width:30%;">
                                <img class="regBorder topMargin2em" alt="Turkey41.jpg" style="width:275px;" src="_Images/Turkey/Turkey41.jpg" />
                                <img class="regBorder topMargin2em" alt="Turkey42.jpg" style="width:275px;" src="_Images/Turkey/Turkey42.jpg" />
                            </div>

                            <div class="floatLeft leftMargin1em" style="width:30%;">
                                <img class="regBorder topMargin2em" alt="Turkey43.jpg" style="width:275px;" src="_Images/Turkey/Turkey43.jpg" />
                                <img class="regBorder topMargin2em" alt="Turkey44.jpg" style="width:275px;" src="_Images/Turkey/Turkey44.jpg" />
                            </div>

                            <div class="clear"></div>

                            <div class="floatLeft leftMargin1em" style="width:25%;">
                                <img class="regBorder topMargin2em" alt="Turkey45.jpg" style="width:275px;" src="_Images/Turkey/Turkey45.jpg" />
                            </div>

                            <div class="floatLeft leftMargin4em" style="width:35%;">
                                <img class="regBorder topMargin2em" alt="Turkey46.jpg" style="width:300px;" src="_Images/Turkey/Turkey46.jpg" />
                            </div>

                            <div class="floatLeft leftMargin1em" style="width:25%;">
                                <img class="regBorder topMargin2em" alt="Turkey47.jpg" style="width:225px;" src="_Images/Turkey/Turkey47.jpg" />
                            </div>

                            <div class="clear"></div>

                            <div>
                                <img class="regBorder topMargin2em" alt="Turkey48.jpg" style="width:90%;" src="_Images/Turkey/Turkey48.jpg" />
                                <img class="regBorder topMargin2em" alt="Turkey49.jpg" src="_Images/Turkey/Turkey49.jpg" />
                            </div>
                        </div>

                        <div class="clear centerDiv">

                            <img class="autoMargin topMargin2em" alt="PageDivider.jpg" src="_Images/PageDivider.jpg" />

                        </div>
                    </div>

                </div>

                <div class="regBorder topMargin2em autoMargin centerText padding5 width35">
                    <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                </div>

            </article>

            <div class="autoMargin bold left topMargin1em regBorder padding10 bottomMargin3em" style="margin-left:10px;margin-right:10px;">
                <p>
                    Frank and Edna Calenda have travelled six of the seven continents.   In addition to Turkey, their travels have taken them to
                    Africa, China, Vietnam, Tibet, Peru, South America, Australia, New Zealand, Iceland, throughout Europe and a 44 day Clipper
                    Ship venture around the world.  They have recently organized a trip to the Serengeti National Park in Africa.
                </p>

                <p class="topMarginHalfem">
                    You can be part of this group or get additional information by contacting Frank and Edna at 321-773-2046 or email <a class="redText" href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>
                </p>
            </div>

        </section> <%--End of Turkey3 Section--%>

        <section id="sectRiver" class="mySects noDisplay">
            <article class="padding10 bold left topMargin1em lightBlueBack centerDiv regBorder" style="margin-left:10px;margin-right:10px;">
                <div class="centerDiv lightBlueBack padding5">

                    <div class="autoMargin regBorder padding10 showShadow" style="width:95%;">
                        <p class="pTitle underLine centerText">Canal Tripping Through the Netherlands, Germany and Austria</p>

                        <hr class="myHr" />

                        <figure class="topMargin1em">
                            <img alt="River1.jpg" class="showShadow width30" src="_Images/RiverCruise/River1.jpg" />
                            <figcaption class="topMargin1em">Frank and Edna Calenda – Indian Harbour Beach, Florida</figcaption>
                        </figure>

                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <p class="padding10 regBorder aLeft">
                            Do you remember when you were a kid, standing on the bank of your favorite stream?  You had just made a little boat 
                            of sticks and string.  You put a little flag on a stick pole and pushed your boat off the shore to sail adventures 
                            unknown.  There it goes, taken by the current.  You imagine yourself standing on the deck, sailing to exotic lands 
                            and colorful cities.  But then, your trip is short lived as the stream pulls your boat away…along with your dreams. 
                            You watch it disappear and can only wonder where it will go and what it will see.                        
                        </p>
 
                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <div class="clear"></div>

                        <div class="topMargin1em">
                            <img alt="River2.jpeg" class="width90 autoMargin showShadow" src="_Images/RiverCruise/River2.jpg" />
                        </div>

                        <p class="padding10 regBorder aLeft topMargin1em width80">
                            My wife Edna and I relived those childhood dreams in June.  We signed on with Grand Circle Travel to sail with 
                            one of their riverboats, the River Aria, from Amsterdam to Vienna. The trip was called The Great Rivers of Europe.  
                            For fourteen fantastic days we idled down two of the most famous rivers in the world, the Rhine and the Danube.  
                            On this trip we landed in Amsterdam and spending a couple days there was a fascinating introduction to the 
                            adventures that were to come. <img alt="River3.jpeg" class="floatRight showShadow topMargin1em bottomMargin1em leftMargin1em rightMargin1em"  src="_Images/RiverCruise/River3.jpg"/> Amsterdam, a canal city in itself, is alive with history, unparalleled architecture 
                            and friendly smiling people.  
                            An included tour on a canal boat took us to many of the famous buildings there, from Ann Frank’s hiding place to 
                            one of the diamond centers glittering with diamonds of all sizes and shapes.  Nope, no samples available, thank you.  
                            We also had plenty of time to walk the streets at our own pace and see some of the sights away from the canals.  
                            It’s a photographers dream. 
                        </p>
 
                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <p class="padding10 regBorder aLeft">
                            We boarded Grand Circles own river boat, the River Aria and in good time settled into our very comfortable cabin 
                            with a large window which, we were to find out, would be a great place to sit and watch the wonders of these 
                            countries as they silently slid by.  We also spent much time viewing these sights from the large, open upper deck. 
                            There is nothing quite like sitting there watching the mountain-side castles come into view.  Europeans are 
                            great walkers.  They strolled the shores and waved to us as we sailed by.  We all knew where we were going but 
                            we couldn’t fully realize the sights that awaited us.  Although we visited too many ports to describe here, 
                            <img alt="River4.jpeg" class="floatLeft showShadow topMargin1em bottomMargin1em leftMargin1em rightMargin1em width30" src="_Images/RiverCruise/River4.jpg" /> let me 
                            list some of them. Cologne, where the grand sandstone cathedral sits.  Koblenz and Mainz.  Frankfurt, Wurtzburg, 
                            Nuremberg, Passu and Vienna were also some of the stops.  There were at least eight more beautiful cities visited 
                            and, at most all of them, we were offered an included guided tour of the main attractions of those towns and villages.  No two cruises, like no two days, are ever the same.  You’ll most likely have rain days but hey, it was just as much fun in the rain.  We took a number of the optional tours, but they are quite personal in nature and need to be considered on their own merits and as to what each individual enjoys.  We will say don’t miss the optional “Musical Vienna” show.  That definitely was one of the highlights.
                        </p>
 
                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <p class="padding10 regBorder aLeft">
                            How to describe this tour in a nutshell is not possible.  It would suffice to say that the boat was well appointed 
                            and comfortable. 
                            <img alt="River5.jpeg" src="_Images/RiverCruise/River5.jpg" class="floatRight showShadow topMargin1em bottomMargin1em leftMargin1em rightMargin1em" />
                            The food scores in the outstanding category.  It was very well prepared, had many good selections and 
                            was served in an excellent manner.  If you go away hungry from one of these meals, you’re on the wrong cruise.  
                            The staff alone was worth the trip.  So many smiles and constantly asking how they can help and are we enjoying 
                            ourselves. By the time you leave, you can’t help but feel that you’ve made more friends, and that’s not only with 
                            the crew.  Your fellow travelers will likely be people that you communicate with for years to come.   
                        </p>


                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <p class="padding10 regBorder aLeft">
                            Finally, the sights and things we experienced.  They were second to none.  Castles from days of old, wineries 
                            and beer gardens where you can sample their wares, quaint villages that mark their histories in the hundreds of 
                            years.  Vistas that compare with those National Geographic photos that we all ohh and ahh over.  Will you 
                            remember all these things?  Well, if you take your camera, you’ll have enough memories to last a lifetime.  
                            We took ours and we’ve got over a thousand pictures to prove it.    
                        </p>

                        <img class="topMargin1em bottomMargin1em" src="_Images/PageDivider.jpg" />

                        <p class="padding10 regBorder aLeft">
                            Frank and Edna have traveled extensively with Grand Circle Travel (GCT) and Overseas Adventure Travel (OAT).  
                            They are one company but both divisions offer top notch international travel.  If interested in travel with them, 
                            Grand Circle Travel can be viewed at <a href="www.gct.com"></a> and Overseas Adventure Travel at 
                            <a href="http://www.oattravel.com">www.oattravel.com</a>.  
                            Mention my name and provide my Customer Number 000504182 and receive $100 per person off on your first purchased 
                            trip.  You may also contact me at 321-773-2046 or email me at 
                            <a href="mailto:fcalenda@aol.com">fcalenda@aol.com</a>.  For highlights on some or our other world-wide travels, 
                            return to the home page <span id="homeSpan" class="underLine"> by clicking here.</span>    
                        </p>

                            <div class=" regBorder autoMargin topMargin2em centerText padding5 width35">
                                <a class="redText bold" href="#" style="font-size:1.5em;">Return to Top of Page</a>
                            </div>

                        <div class="clear bottomMargin2em"></div>
                    </div>
                </div>

            </article>
        </section>
    </div> <!--End of Page Wrapper-->

    <script src="_JavaScript/myScripts.js"></script>


</form>
</body>
</html>