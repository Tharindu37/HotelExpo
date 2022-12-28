function navigateToSignup(){
    window.location.replace('/signup.jsp')
}
function isLoggedIn(){
    if (localStorage.getItem('token')){
        window.location.replace('/dashboard.jsp')
    }
}
isLoggedIn();
function login(){
    let user={
        email: $('#email').val(),
        password: $('#password').val()
    }

    $.ajax({
        url:'http://localhost:8000/user?type=login',
        dataType:'json',
        contentType:'application/json',
        type:'POST',
        async:true,
        data:JSON.stringify(user),
        success:function (response){
            console.log(response)
            if (response.code===200){
                alert(response.message);
                localStorage.setItem('token',response.data.token);
                window.location.replace('/dashboard.jsp');
            }else {
                alert(response.message);
            }
        },
        error:(error)=>{
            alert(error);
        }
    })

}