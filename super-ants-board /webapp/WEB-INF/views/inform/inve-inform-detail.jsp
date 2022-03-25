<%@ page import="com.dto.StockBoardDto" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  StockBoardDto dto = (StockBoardDto)request.getAttribute("stockBoardDetail");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>슈퍼개미 : 투자정보 - 상세 글 보기</title>

  <link rel="stylesheet" href="../../css/init.css" />
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous"
  />
  <link rel="stylesheet" href="../../css/board-detail.css">

  <script
          defer
          src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
          crossorigin="anonymous"
  ></script>
</head>
<body>

<div class="container">
  <div class="detail-container">
    <h2 class="title">상세 글 보기</h2>
    <div class="btn-grp">
      <button type="button" class="btn btn-outline-info" id="goBack" onclick="goBack()">목록</button>
      <button type="button" class="btn btn-outline-warning" onclick="updateStockBoard(<%=dto.getBORINDEX()%>)">수정</button>
      <button type="button" class="btn btn-outline-danger" onclick="deleteStockBoard(<%=dto.getBORINDEX()%>)">삭제</button>
    </div>
    <table class="table">
      <tr>
        <th>제목</th>
        <td><%=dto.getBORTITLE()%></td>
      </tr>
      <tr>
        <th>작성자</th>
        <td><input type="text" class="form-control" value="<%=dto.getBORUSERID()%>" readonly /></td>
      </tr>
      <tr>
        <th>작성일</th>
        <td><%=dto.getBORDATE()%></td>
      </tr>
      <tr>
        <th>본문</th>
        <td><textarea class="form-control" rows="10" readonly><%=dto.getBORCONTENT()%></textarea></td>
      </tr>
    </table>
  </div>

  <div class="detail-container">
    <h2 class="title">답글 작성하기</h2>
    <table class="table">
      <form action="/saveBoardReply.do" method="post">
        <input type="hidden" name="BORINDEX" value="<%=dto.getBORINDEX()%>"/>
        <tr>
          <td class="form-label">제목</td>
          <td>
            <%-- readonly로 지정된 각각의 input 태그에 있는 value에 로그인 dto를 Model 객체로 불러온 값을 넣어주세요. --%>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    name="BORTITLE"
                    id="BORTITLE"
                    value="RE:: "
            />
          </td>
        </tr>
        <tr>
          <td class="form-label">작성자</td>
          <td>
            <input
                    type="text"
                    class="form-control"
                    placeholder=""
                    name="BORUSERID"
                    id="BORUSERID"
                    value=""
                    readonly
            />
          </td>
        </tr>
        <tr>
          <th>작성일</th>
          <td><%=dto.getBORDATE()%></td>
        </tr>
        <tr>
          <td class="form-label">본문</td>
          <td>
            <textarea class="form-control" id="BORCONTENT" name="BORCONTENT" rows="10"></textarea>
          </td>
        </tr>

        <div class="btn-grp">
          <button type="submit" class="btn btn-outline-primary">저장</button>
          <button type="reset" class="btn btn-outline-secondary">다시 쓰기</button>
          <button type="button" class="btn btn-outline-danger" onclick="goBack()">취소</button>
        </div>
      </form>
    </table>
  </div>
</div>

<script>
  const goBack = () => history.back();

  // function replyStockBoard(BORINDEX){
  //   location.href = "replyStockBoard.do?BORINDEX="+BORINDEX;
  // }

  function updateStockBoard(BORINDEX) {
    location.href = "updateStockBoard.do?BORINDEX="+BORINDEX;
  }


  function deleteStockBoard(BORINDEX) {
    let deleteItem = confirm("삭제하시겠습니까?");
    if(deleteItem) {
      location.href = "deleteStockBoard.do?BORINDEX="+BORINDEX;
    }
  }

</script>
</body>
</html>