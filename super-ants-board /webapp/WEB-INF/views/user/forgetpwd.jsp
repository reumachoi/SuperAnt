<%--
  Created by IntelliJ IDEA.
  User: hwangduil
  Date: 2022/01/14
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>슈퍼개미 : 아이디 찾기</title>

    <link rel="stylesheet" href="./css/init.css" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/forget-id.css" />

    <script
            defer
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<div id="wrap">
    <h2>비밀번호 찾기</h2>

    <form action="" method="post" class="search-id">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">성명</span>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    name="user_name"
                    id="user_name"
            />
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">아이디</span>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    name="user_id"
                    id="user_id"
            />
        </div>
        <div class="input-group mb-3">
            <input
                    type="text"
                    class="form-control"
                    placeholder="이메일 주소"
                    aria-label="Username"
                    name="user_emailid"
                    id="user_emailid"
            />
            <span class="input-group-text">@</span>
            <select
                    class="form-select form-select-sm"
                    aria-label=".form-select-sm example"
                    name="user_emailweb"
                    id="user_emailweb"
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
                    id="user_phone_number_head"
                    name="user_phone_number_head"
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
            <input type="text" class="form-control" name="user_phone_number_mid" id="user_phone_number_mid" />
            <span class="input-group-text" id="basic-addon1">-</span>
            <input type="text" class="form-control" name="user_phone_number_end" id="user_phone_number_end" />
        </div>
        <div class="m-4 row">
            <button type="submit" class="col btn btn-primary m-3">
                비밀번호 초기화
            </button>
            <button
                    type="button"
                    class="col btn btn-secondary m-3"
                    onclick="goToForgetId()"
            >
                아이디 찾기
            </button>
        </div>
    </form>

    <script>
        const goToForgetId = () => location.href = 'forgetpwd.do';
    </script>
</div>
</body>
</html>
