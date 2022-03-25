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
    <link rel="stylesheet" href="../css/forget-id.css">

    <script
            defer
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<div id="wrap">
    <h2>아이디 찾기</h2>

    <form action="" method="post" class="search-id">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">성명</span>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                    name="userNAME"
                    id="userNAME"
            />
        </div>
        <div class="input-group mb-3">
            <input
                    type="text"
                    class="form-control"
                    placeholder="이메일 주소"
                    aria-label="Username"
                    name="userEMAILID"
                    id="userEMAILID"
            />
            <span class="input-group-text">@</span>
            <select
                    class="form-select form-select-sm"
                    aria-label=".form-select-sm example"
                    name="userEMAILWEB"
                    id="userEMAILWEB"
            >
                <option selected value="gmail.com">gmail.com</option>
                <option value="naver.com">naver.com</option>
                <option value="outlook.com">outlook.com</option>
            </select>
        </div>
        <div class="m-4 row">
            <button type="submit" class="col btn btn-primary m-3">
                아이디 찾기
            </button>
            <button type="button" class="col btn btn-secondary m-3" onclick="goToForgetPwd()">
                비밀번호 찾기
            </button>
        </div>
    </form>

    <script>
        const goToForgetPwd = () => location.href = "forgetpwd.do";
    </script>

    <script>
        const name = $('userNAME').val();
        const emailId = $('userEMAILID').val();
        const emailWeb=$('userEMAILWEB').val();
        const findData={name, emailId, emailWeb};


        $('#findId').click(function () {
            $.ajax({
                url: "findID.do",
                type: "post",
                // dataType: "json",
                traditional: true, // 배열로 쓰려면 선언되어야한다고함
                data: findData,
                success: function (find) {

                    alert("find");
                },
                error: function (request, status, error) {
                    alert('error');
                    console.log(request.status + "\n" + request.responseText + "\n" + error);
                }
            })
        })



    </script>
</div>
</body>
</html>