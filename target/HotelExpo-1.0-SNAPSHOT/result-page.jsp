<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/21/2022
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    jquery--%>
    <link rel="stylesheet" href="https://releases.jquery.com/git/ui/jquery-ui-git.css">
<%--    bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/result-page.css">
</head>
<body>
<%--header--%>
<jsp:include page="MainHeader.jsp"/>

<%--content--%>
<div class="main-outer">
    <div class="row" style="margin: 0">
        <div class="left-outer col-3 context">
            <div class="search-wrapper">
                <div class="row">
                    <div class="col-12 input-outer">
                        <input type="search" PLACEHOLDER="Search here" name="" id="" class="search-outer">
                    </div>
                    <div class="col-12 input-outer date-outer">
                        <div class="data-from date-box">
                            <input type="text" id="from" name="from">
                        </div>
                        <div class="data-to date-box">
                            <input type="text" id="to" name="to">
                        </div>
                    </div>
                    <div class="col-12 input-outer special-outer">
                        <div class="special-input-outer">
                            <select name="" id="">
                                <option value="1">1 Adult</option>
                                <option value="2">2 Adult</option>
                                <option value="3">3 Adult</option>
                            </select>
                        </div>
                        <div class="special-input-outer">
                            <select name="" id="">
                                <option value="0">0 Child</option>
                                <option value="1">1 Child</option>
                                <option value="2">2 Child</option>
                                <option value="3">3 Child</option>
                            </select>
                        </div>
                        <div class="special-input-outer">
                            <select name="" id="">
                                <option value="1">1 Room</option>
                                <option value="2">2 Room</option>
                                <option value="3">3 Room</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 input-outer">
                        <button type="submit" class="btn btn-primary btn-sm">Search</button>
                    </div>
                </div>
            </div>
            <div class="filter-wrapper">
                <h5>Fun things to do</h5>
                <ul>
                    <li><input type="checkbox"> Hiking</li>
                    <li><input type="checkbox"> Walking tours</li>
                    <li><input type="checkbox"> Spa facilities</li>
                    <li><input type="checkbox"> Evening entertainment</li>
                </ul>
            </div>
            <div class="filter-wrapper" style="margin-bottom: 10px">
                <h5>Property Type</h5>
                <ul>
                    <li><input type="checkbox"> Hotels</li>
                    <li><input type="checkbox"> Guesthouses</li>
                    <li><input type="checkbox"> Homestays</li>
                    <li><input type="checkbox"> Apartments</li>
                </ul>
            </div>
        </div>
            <div class="right-outer col-9 context">
                <p class="alert alert-dark" style="margin-top: 10px">
                    <span id="data-count"></span> Properties Found
                </p>
                <div class="result-outer" id="data-set">
            </div>
        </div>
    </div>
</div>
<%--footer--%>
<jsp:include page="MainFooter.jsp"/>


<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script type="application/javascript">
    let destination = '<%=request.getParameter("location")%>';
    $.ajax({
        url: 'http://localhost:8000/room?type=list&location='+destination,
        dataType: 'json',
        contentType: 'application/json',
        type: 'GET',
        async: true,
        success:function (response){
            console.log(response.data.hotels);
            $('#data-count').text(response.data.dataCount+'');
            console.log(response.data.dataCount);
            for(let d of response.data.hotels){
                console.log(response.data.hotels);
                $('#data-set').append(
                    `<div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                        src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                        alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details">
                            <h4>`+d.name+`</h4>
                            <p class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate expedita
                                illum, itaque maxime praesentium voluptates! Adipisci asperiores autem commodi ducimus
                                id odio omnis, quam temporibus tenetur totam vero voluptatum.
                            </p>
                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="button">
                            <button class="btn btn-primary btn-sm" onClick="book();">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>`
                );
            }
        },
        error:function (error){
            console.log("error")
            console.log(error)
        }
    })
</script>
<script src="js/home.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
