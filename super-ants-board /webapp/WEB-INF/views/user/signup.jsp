<%--
  Created by IntelliJ IDEA.
  User: hwangduil
  Date: 2022/01/14
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../../css/init.css" />
    <link rel="stylesheet" href="../../../css/signup.css" />
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
    <title>슈퍼개미 - 회원가입</title>
</head>
<body>
<div class="container p-5">
    <h1 class="text-center p-5">회원 가입</h1>

    <form action="afSignup.do" method="post" id="signUpForm">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">ID</span>
            <input
                    type="text"
                    class="form-control"
                    placeholder="사용하실 아이디를 입력하세요."
                    aria-label="userID"
                    aria-describedby="basic-addon1"
                    id="USERID"
                    name="userid"
            />
            <P></P>
            <div id="idCheckMsg"></div>
            <button type="button" class="btn btn-outline-secondary" id="idCheckBtn">
                ID 중복확인
            </button>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">비밀번호 입력</span>
            <input
                    type="password"
                    class="form-control"
                    placeholder="사용하실 비밀번호를 입력하세요."
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    id="USERPW"
                    name="userpw"
            />
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">성명</span>
            <input
                    type="text"
                    class="form-control"
                    placeholder="성명"
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    id="USERNAME"
                    name="username"
            />
        </div>
        <div class="input-group mb-3">
            <input
                    type="text"
                    class="form-control"
                    placeholder="이메일 주소"
                    aria-label="Username"
                    id="USEREMAILID"
                    name="useremailid"
            />
            <span class="input-group-text">@</span>
            <select
                    class="form-select form-select-sm"
                    aria-label=".form-select-sm example"
                    name="useremailweb"
                    id="USEREMAILWEB"
            >
                <option selected value="gmail.com">gmail.com</option>
                <option value="naver.com">naver.com</option>
                <option value="outlook.com">outlook.com</option>
            </select>
        </div>
        <div class="input-group">
            <select
                    class="form-select form-select-sm"
                    aria-label=".form-select-sm"
                    id="USERPHNUMHEAD"
                    name="userphnumhead"
            >
                <option selected value="unselected">전화번호</option>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
            </select>
            <span class="input-group-text" id="basic-addon1">-</span>
            <input type="text" class="form-control" name="userphnummid" id="USERPHNUMMID" />
            <span class="input-group-text" id="basic-addon1">-</span>
            <input type="text" class="form-control" name="userphnumend" id="USERPHNUMEND" />
        </div>
        <div class="m-4 row">
            <button type="submit" class="col btn btn-primary m-3" onclick="onSubmit()">
                가입 하기
            </button>
            <button type="button" class="col btn btn-secondary m-3" onclick="window.location.reload()">
                내용 삭제
            </button>
        </div>
    </form>
</div>
<script>
    $(document).ready(function () {
        $("#idCheckBtn").click(function () {

            $.ajax({
                url: "idCheck.do",
                type: "post",
                data: { id: $("#USERID").val() },
                success: function (msg) {
                    if (msg == "ok") {
                        $("#idCheckMsg").css("color", "#0000ff");
                        $("#idCheckMsg").html("사용할 수 있는 아이디 입니다.");
                    } else {
                        $("#idCheckMsg").css("color", "#ff0000");
                        $("#idCheckMsg").html("사용할 수 없는 아이디 입니다.");
                        $("#USERID").val("");
                    }
                },
                error: function (request, status, error) {
                    alert('error');
                    console.log(request.status + "\n" + request.responseText + "\n" + error);
                }
            })
        })
    })
</script>
<script>
    function onSubmit() {

        if ($("#USERID").val() == '') {
            alert('아이디를 입력해주세요');
        } else if ($("#USERPW").val() == '') {
            alert('비밀번호를 입력해주세요');
        } else if ($("#USERNAME").val() == '') {
            alert('이름을 입력해주세요.');
        } else if ($("#USEREMAILID").val() == '') {
            alert('이메일을 입력해주세요');
        } else if ($("#USERPHNUMHEAD").val() == 'unselected') {
            alert('전화번호 앞자리를 선택해주세요.');
        } else if ($('#USERPHNUMMID').val() == '') {
            alert('전화번호 가운데 자리를 입력해주세요.');
        } else if ($('#USERPHNUMEND').val() == '') {
            alert('전화번호 뒷자리를 입력해주세요.');
        } else {
            $('#signUpForm').submit();
        }

    }
</script>
</body>
</html>
