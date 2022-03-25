<%@ page import="com.dto.StockBoardDto" %>
<%@ page import="com.dto.UserDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // session에서 사용자 정보를 산출
    UserDto dto = (UserDto)request.getSession().getAttribute("login");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>새로운 글 작성</title>
    <link rel="stylesheet" href="../css/init.css" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/newpost.css">
    <script
            defer
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<div class="post-box">
    <h2>새로운 글 작성하기</h2>
    <form action="BorWriteAf.do" method="post">
        <div class="mb-3">
            <label for="" class="form-label">제목</label>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    name="BORTITLE"
                    id="BORTITLE"
            />
        </div>
        <div class="mb-3">
            <label for="" class="form-label">작성자</label>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    name="BORUSERID"
                    id="BORUSERID"
                    value="<%=dto.getUsername()%>"
                    readonly
            />
        </div>
        <div class="mb-3">
            <label for="" class="form-label">내용</label>
            <textarea class="form-control" id="BORCONTENT" name="BORCONTENT" rows="10"></textarea>
        </div>

        <div class="btn-grp" role="group" aria-label="Basic example">
            <button type="submit" class="btn btn-outline-primary">저장</button>
            <button type="button" class="btn btn-outline-danger" onclick="goBack()">취소</button>
        </div>
    </form>
</div>

<script>
    // function goSave(sbd){
    //     let id = document.getElementById("bor_title").value;
    //
    //     location.href = 'BorWriteAf.do?title=' + id;
    // }
    // const goSave = () => location.href = 'BorWriteAf.do';
    const goBack = () => history.back();
</script>
</body>
</html>
