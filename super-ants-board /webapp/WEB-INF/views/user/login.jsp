<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../../css/init.css" />
    <link rel="stylesheet" href="../../../css/login.css" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <script
            defer
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
    <title>슈퍼개미 - 로그인</title>
</head>

<body>
<div class="container col-md-6">

    <h1 class="login-title">로그인</h1>

    <ul class="nav nav-tabs col ">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"
            >기존 계정으로 로그인</a
            >
        </li>
        <li>
            <a class="nav-link disabled" aria-current="page" href="#"
            >소셜 계정으로 로그인</a
            >
        </li>
    </ul>

    <div class="form__border">
        <form id="loginform" action="afLogin.do" method="post" >
            <div class="mb-3 col">
                <input
                        type="text"
                        class="form-control form-control-lg"
                        name="userid"
                        id="userid"
                        placeholder="아이디"
                />
            </div>
            <div class="mb-3 col">
                <input
                        type="password"
                        class="form-control form-control-lg"
                        name="userpw"
                        id="userpw"
                        placeholder="비밀번호"
                />
            </div>
            <div class="form-check mb-3">
                <%--@declare id="flexcheckdefault"--%>
                <input type="checkbox" name="idSave" id="idSave" class="form-check-input" />
                <label class="form-check-label" for="flexCheckDefault">아이디 저장</label>
            </div>
            <div class="d-grid col">
                <button
                    type="button"
                    class="btn btn-success btn-lg"
                    onclick="login()"
                >
                    로그인
                </button>
            </div>
        </form>
        <div class="search-id">
                <span>
                    <a onclick="forgetId()">아이디 찾기</a>
                </span>
                <span>
                    <a onclick="forgetPwd()">비밀번호 찾기</a>
                </span>
                <span>
                    <a onclick="goToSignUp()">회원가입</a>
                </span>
        </div>
    </div>
</div>
</div>

<script>
    function forgetId() {
        location.href = 'forgetid.do'
    }
    function forgetPwd() {
        location.href = 'forgetpwd.do'
    }
    function goToSignUp() {
        location.href = 'signup.do';
    }
</script>

<script type="text/javascript">

    function login() {
        if ($("#userid").val().trim() == "") {
            alert("아이디가 입력되지 않았습니다!");
        } else if ($("#userpw").val().trim() == '') {
            alert("비밀번호가 입력되지 않았습니다.");
        } else {
            $("#loginform").submit();
        }
    }

    let userid = $.cookie("userid");
    if(userid != null) {
        $("#userid").val(userid);

        $("#idSave").prop("checked", true);

    }
    // 아이디 저장 체크박스를 활성화 했을 때 아이디를 저장하는 기능
    $("#idSave").click(function() {
        if($("#idSave").is(":checked")) {
            // 아아디가 입력되지 않은 경우
            if ($("#userid").val().trim() == '') {
                alert("아이디가 입력되지 않았습니다.");
                $("#idSave").prop("checked", false);
                $("#userid").val("");
            } else {
                $.cookie("userid", $("#userid").val().trim(), {expires: 7, path: './'});
            }
        } else {
            $.removeCookie("userid", {path: './'});
        }
    });


</script>
</body>
</html>

