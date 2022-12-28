<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 12/27/2022
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="https://releases.jquery.com/git/ui/jquery-ui-git.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles/dashboard.scss">
</head>
<body>
<%--header--%>
<jsp:include page="MainHeader.jsp"/>

<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Save Room
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
       <%--Save Room--%>
        <div class="container">
          <div class="row">
            <div class="col-4">
              <label for="hotel">Hotel</label>
              <select name="" id="hotel" class="form-control">
                <option value="1">Samantha Hotel</option>
                <option value="2">Jayantha Hotel</option>
              </select>
            </div>
            <div class="col-4">
              <label for="deals">Deals</label>
              <select name="" id="deals" class="form-control">
                <option value="1">Available</option>
                <option value="0">Unavailable</option>
              </select>
            </div>
            <div class="col-4">
              <label for="type">Type</label>
              <input type="text" id="type" class="form-control">
            </div>
            <div class="col-4">
              <label for="cost">Cost</label>
              <input type="number" id="cost" class="form-control">
            </div>
            <div class="col-12">
              <label for="desc">Description</label>
              <textarea name="" id="desc" rows="4" class="form-control"></textarea>
            </div>
            <div class="col-12" style="margin-top: 20px">
              <p style="text-align: right">
                <button onclick="saveRoom()" class="btn btn-primary">Save Room</button>
              </p>
            </div>
          </div>
        </div>
       <%--Save Room--%>

      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Image manager
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      <%--Image--%>
        <div class="container">
          <div class="row">
            <div class="col-12" style="margin-bottom: 10px">
              <label for="room">Room</label>
              <input type="text" class="form-control" id="room">
            </div>
            <div class="col-12" style="margin-bottom: 10px">
              <input type="file" id="file">
            </div>
            <div class="col-12" style="margin-bottom: 10px">
              <img src="" alt="" style="width: 200px" id="selected-image" class="img-thumbnail">
            </div>
            <div class="col-12">
              <p style="text-align: right">
                <button onclick="saveImage()" type="button" class="btn btn-primary">Upload Image</button>
              </p>
            </div>
          </div>
        </div>
      <%--Image--%>
      </div>
    </div>
  </div>
</div>

<%--footer--%>
<jsp:include page="MainFooter.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js" integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="application/javascript">

  let imageData;
  function setImage(data){
    if (data.files && data.files[0]){
      imagedata=data.files[0];
      let reader=new FileReader();
      reader.onload=(e)=>{
        $('#selected-image').attr('src',e.target.result);
      }
      reader.readAsDataURL(data.files[0]);
    }
  }

  $('#file').change(function (){
    setImage(this);
  })

  function saveImage(){
    let data = new FormData();
    data.append( 'image',imageData );
    $.ajax({
      url: 'http://localhost:8000/room?type=image',
      data: data,
      processData: false,
      type: 'POST',
      success: function ( data ) {
        alert( data );
      }
    });
  }

  function saveRoom() {
    let room = {
      type: $('#type').val(),
      deals: $('#deals').val(),
      description: $('#desc').val(),
      hotel: $('#hotel').val(),
      cost: $('#cost').val()
    }
    $.ajax({
      url: 'http://localhost:8000/room?type=room',
      dataType: 'json',
      contentType: 'application/json',
      type: 'POST',
      async: true,
      data: JSON.stringify(room),
      success: function (response) {
        console.log(response);
        if (response.code === 201) {
          alert(response.message);
        } else {
          alert(response.message);
        }
      },
      error: (error) => {
        console.log(error);
      }
    })
  }
</script>
</body>
</html>
