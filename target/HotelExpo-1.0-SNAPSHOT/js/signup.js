function isLoggedIn(){
    if (localStorage.getItem('token')){
        window.location.replace('/dashboard.jsp')
    }
}
isLoggedIn();

function navigateToLogin(){
    window.location.replace('/login.jsp')
}

function signup(){
    let user={
        email:$('#email').val(),
        fName:$('#f_name').val(),
        lName:$('#l_name').val(),
        contact:$('#contact').val(),
        password:$('#password').val()
    }
    // let data='email='+user.email+'&first_name='+user.fName+'&last_name='+user.lName+'&contact='+user.contact+'&password='+user.password;
    // $.ajax({
    //     url:'http://localhost:8000/user?'+data,
    //     dataType:'json',
    //     type:'POST',
    //     async:true,
    //     data:{},
    //     success:(response)=>{
    //     console.log(response)
    //     },
    //     error:(error)=>{
    //         console.log(error)
    //     }
    // })
    $.ajax({
        url:'http://localhost:8000/user?type=signup',
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:(response)=>{
            if (response.code===201){
                alert(response.message);
                window.location.replace('/dashboard.jsp');
            }else {
                alert(response.message);
            }
        },
        error:(error)=>{
            alert(error)
        }
    })
}