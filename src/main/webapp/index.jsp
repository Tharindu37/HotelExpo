<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link type="image/png" sizes="16x16" rel="icon" href="./asserts/favicon.png">
    <title>HotelsExpo | Home</title>

<%--    jquery--%>
    <link rel="stylesheet" href="https://releases.jquery.com/git/ui/jquery-ui-git.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/home.css">
</head>
<body>
<%--header--%>
    <jsp:include page="MainHeader.jsp"/>
<%--content--%>
    <div class="content-outer">
        <form action="/result-page.jsp" style="width: 100%">
            <div class="reservation-making-outer">
                <div class="title">
                    <h1>RUN TO THE SUN & SAVE</h1>
                </div>
                <div class="inner">
                    <div class="row">
                        <div class="col-4 box">
                            <input type="search" PLACEHOLDER="Search here" name="location" id="" class="search-outer">
                        </div>
                        <div class="col-3 box date-outer">
                            <div class="data-from date-box">
                                <input type="text" id="from" name="from">
                            </div>
                            <div class="data-to date-box">
                                <input type="text" id="to" name="to">
                            </div>
                        </div>
                        <div class="col-3 box special-outer">
                            <div class="special-input-outer">
                                <select name="adults" id="">
                                    <option value="1">1 Adult</option>
                                    <option value="2">2 Adult</option>
                                    <option value="3">3 Adult</option>
                                </select>
                            </div>
                            <div class="special-input-outer">
                                <select name="child" id="">
                                    <option value="0">0 Child</option>
                                    <option value="1">1 Child</option>
                                    <option value="2">2 Child</option>
                                    <option value="3">3 Child</option>
                                </select>
                            </div>
                            <div class="special-input-outer">
                                <select name="room" id="">
                                    <option value="1">1 Room</option>
                                    <option value="2">2 Room</option>
                                    <option value="3">3 Room</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-2 box">
                            <button type="submit" class="btn btn-primary btn-sm">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
<%--hotels--%>
    <div class="hotels-outer">
        <div class="row">
            <div class="col-4">
                <div class="image-outer" style="background: url('https://img.freepik.com/free-photo/croissant-boiled-egg-orange-juice-yogurt-breakfast-tray-bed-hotel-room_176474-2601.jpg?w=740&t=st=1671593905~exp=1671594505~hmac=9c2fcdac894e49e68d1320adb8e5457ab981befd5e30efbcbbdfec5e60fcc725')  center no-repeat"></div>
            </div>
            <div class="col-4">
                <div class="image-outer" style="background: url('https://img.freepik.com/free-vector/man-hotel-reception-receiving-key-receptionist-working-counter-with-computer-guest-with-bag-hallway-area-interior-design-with-clocks-plant_575670-1089.jpg?t=st=1671594284~exp=1671594884~hmac=a73662629c7b82c317816a72ff978bfe54ce7ba513939ee4c58ce8637a14e584')  center no-repeat"></div>
            </div>
            <div class="col-4">
                <div class="image-outer" style="background: url('https://img.freepik.com/free-photo/african-american-couple-bed-having-breakfast-bed_53876-146081.jpg?w=996&t=st=1671594369~exp=1671594969~hmac=0c388d40d02bec95543fec2ef755975f15ca0601026308ac2072ed3be7366ff8') center no-repeat"></div>
            </div>
        </div>
    </div>
<%--footer--%>
<jsp:include page="MainFooter.jsp"/>

<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="js/home.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/63815a0fb0d6371309d128ac/1giokfk9k';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>
</html>