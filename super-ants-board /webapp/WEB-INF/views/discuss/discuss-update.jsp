
<%@ page import="com.dto.StockTalkDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  StockTalkDto dto = (StockTalkDto)request.getAttribute("stockTalkUpdate");
//  StockTalkDto dto = (StockTalkDto)request.getAttribute("bbs");
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>글 수정하기</title>
    <link rel="stylesheet" href="../css/init.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/newpost.css">
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="post-box">
      <h2>작성글 수정하기</h2>
      <form action="updateStockTalkAf.do" method="post">
      <!-- 부모글에 대한 sequence -->
<%--		<input type="hidden" name="TAKINDEX" value="<%=dto.getTAKINDEX() %>">--%>
        <input type="hidden" name="TAKINDEX" value="<%=dto.getTAKINDEX() %>">
        <div class="mb-3">
          <label for="" class="form-label">제목</label>
          <input
            type="text"
            class="form-control"
            placeholder=""
            name="TAKTITLE"
            id="TAKTITLE"
            value="<%=dto.getTAKTITLE()%>"
          />
        </div>
        <div class="mb-3">
          <label for="" class="form-label">작성자</label>
          <input
            type="text"
            class="form-control"
            placeholder=""
            name="TAKUSERID"
            id="TAKUSERID"
            value="<%=dto.getTAKUSERID()%>"
            readonly
          />
        </div>
        <div class="mb-3">
          <label for="" class="form-label">내용</label>
          <textarea class="form-control" id="TAKCONTENT" name="TAKCONTENT" rows="10"><%=dto.getTAKCONTENT()%></textarea>
        </div>

        <div class="btn-grp" role="group" aria-label="Basic example">
          <button type="submit" class="btn btn-outline-primary">수정완료</button>
          <button type="button" class="btn btn-outline-danger" onclick="goBack()">취소</button>
        </div>
      </form>
    </div>

    <script>
      const goBack = () => history.back();


    </script>
  </body>
</html>