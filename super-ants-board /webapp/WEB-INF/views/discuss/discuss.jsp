<%@ page import="com.dto.StockTalkDto" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dto.StockBoardParam" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String str = (String)request.getAttribute("link");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    // 답글의 depth와 화살표 기호를 추가해주는 함수
    public String insertReplyArrow(int borDEPTH) {
        String res = "<img src='../../img/reply_arrow.png' width='18px' height='14px' />";
        String nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;";
        String space = "";
        for (int i = 0; i < borDEPTH; i++) {
            space += nbsp;
        }
        return borDEPTH == 0 ? "" : space + res;
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>슈퍼개미 : 홈</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta name="author" content="MultiCampus.2022.Gropu6" />
    <meta name="description" content="슈퍼개미 : 개인 투자자 커뮤니티에 오신것을 환영합니다." />

    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="슈퍼개미" />
    <meta property="og:title" content="슈퍼개미 : 개인 투자자 커뮤니티에 오신것을 환영합니다." />
    <meta property="og:description" content="슈퍼개미 : 개인 투자자 커뮤니티에 오신것을 환영합니다." />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />

    <meta property="twitter:card" content="summary" />
    <meta property="twitter:site" content="슈퍼개미" />
    <meta property="twitter:title" content="슈퍼개미 : 개인 투자자 커뮤니티에 오신것을 환영합니다." />
    <meta property="twitter:description" content="슈퍼개미 : 개인 투자자 커뮤니티에 오신것을 환영합니다." />
    <meta property="twitter:image" content="" />
    <meta property="twitter:url" content="" />

    <link rel="icon" href="" />
    <link rel="apple-touch-icon" href="" />

    <link rel="stylesheet" href="css/init.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/board.css" />
    <script defer
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>


<!-- body__container -->
<div class="body__container">
    <!-- header -->
    <header class="">
        <div class="inner">
            <div class="menu-group">
                <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="/home.do">Super Ants</a>
                        <button
                                class="navbar-toggler"
                                type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent"
                                aria-expanded="false"
                                aria-label="Toggle navigation"
                        >
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div
                                class="collapse navbar-collapse"
                                id="navbarSupportedContent"
                        >
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a
                                            class="nav-link active"
                                            aria-current="page"
                                            href="home.do"
                                    >홈</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a
                                            class="nav-link dropdown-toggle"
                                            href="#"
                                            id="navbarDropdown"
                                            role="button"
                                            data-bs-toggle="dropdown"
                                            aria-expanded="false"
                                    >주식</a>
                                    <ul
                                            class="dropdown-menu"
                                            aria-labelledby="navbarDropdown"
                                    >
                                        <li>
                                            <a
                                                    class="dropdown-item"
                                                    href="stock-calendar.do"
                                            >공모주 일정</a>
                                        </li>
                                        <li>
                                            <a
                                                    class="dropdown-item"
                                                    href="stock-inform.do"
                                            >투자정보</a>
                                        </li>
                                        <li>
                                            <a
                                                    class="dropdown-item"
                                                    href="stock-notice.do"
                                            >전자공시</a>
                                        </li>
                                        <li><hr class="dropdown-divider" /></li>
                                        <li>
                                            <a
                                                    class="dropdown-item"
                                                    href="stock-discuss.do"
                                            >종목 토론방</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a
                                            class="nav-link dropdown-toggle"
                                            href="#"
                                            id="navbarDropdown"
                                            role="button"
                                            data-bs-toggle="dropdown"
                                            aria-expanded="false"
                                    >부동산</a>
                                    <ul
                                            class="dropdown-menu"
                                            aria-labelledby="navbarDropdown"
                                    >
                                        <li>
                                            <a class="dropdown-item" href="#">아파트 청약</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">공시지가</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#">경매정보</a>
                                        </li>
                                        <li><hr class="dropdown-divider" /></li>
                                        <li>
                                            <a class="dropdown-item" href="#">매매</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>

                            <div>
                                <%--                                로그인상태--%>
                                <c:choose>
                                    <c:when test="${empty sessionScope.login}">
                                        <button
                                                type="button"
                                                class="btn btn-success float-start"
                                                id="loginBtn"
                                                onclick="goToLogin()"
                                        >로그인</button>
                                        <button
                                                type="button"
                                                class="btn btn-secondary signinBtn"
                                                onclick="goToSignUp()"
                                        >
                                            회원가입
                                        </button>

                                    </c:when>

                                    <c:otherwise>
                                        <%
                                            String userId = (String) request.getAttribute("userId");
                                        %>
                                        <span class="user-name"> <%= userId%>님, 환영합니다!</span>
                                        <button
                                                type="button"
                                                class="btn btn-danger"
                                                id="loginBtn"
                                                onclick="goToLogOut()"
                                        >
                                            로그아웃
                                        </button>
                                    </c:otherwise>

                                </c:choose>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>

    <!-- section -->
    <section>
        <!-- navbar 바로 밑 -->
        <article>
            <div class="article">
                <div class="article-msg float-start">
                    <p class="msg-title">
                        개인 투자자 커뮤니티 : 슈퍼개미에 오신 것을 환영합니다.
                    </p>
                    <p class="msg-subtitle">
                        투자는 하고 싶은데 어떻게 시작해야 할 지, 어디에 투자해야 할 지
                        막막함이 앞서는 당신에게 최고의 커뮤니티가 되어 드리겠습니다.
                    </p>
                    <p class="msg-subtitle">
                        수 많은 유저들로부터 정보를 공유받거나 자신이 가지고 있는 정보를
                        공유해 보세요.
                    </p>
                </div>
            </div>
        </article>
    </section>

    <section>
        <!-- Main Contents -->
        <article>
            <div id="app">
                <div class="board">
                    <h2>종목 토론방</h2>
                    <%
                        List<StockTalkDto> list = (List<StockTalkDto>) request.getAttribute("stockTalkList");
                        List<StockBoardParam> li = (List<StockBoardParam>) request.getAttribute("stockTalkSearch");
                    %>
                    <div class="search-nav-bar">
                        <form action="/getTalkSearch.do" method="post" class="search-form">
                            <select id="chosen" class="form-select search-select">
                                <option selected value="title">제목</option>
                                <option value="content">내용</option>
                                <option value="writer">작성자</option>
                            </select>
                            <input type="text" class="form-control search-input" id="search" />
                            <button type="button" class="btn btn-secondary" id="searchBtn">검색</button>
                        </form>

                        <button
                                type="button"
                                class="btn btn-outline-primary"
                                onclick="goToNewPost()"
                        >
                            새글 작성
                        </button>
                    </div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">No.</th>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">작성일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            if (list == null || list.size() == 0) {
                        %>
                        <tr>
                            <td colspan="4">작성된 글이 없습니다.</td>
                        </tr>
                        <%
                        } else {
                            for (int i = 0; i < list.size(); i++) {
                                StockTalkDto dto = list.get(i);
                        %>
                        <tr>
                            <th><%= i+1%></th>
                            <td>
                                <%= insertReplyArrow(dto.getTAKDEPTH())%>
                                <a
                                        class="go-to-detail"
                                        href="discussDetail.do?TAKINDEX=<%=dto.getTAKINDEX()%>"
                                >
                                    <%= dto.getTAKTITLE()%>
                                </a>
                            </td>
                            <td>
                                <%= dto.getTAKUSERID()%>
                            </td>
                            <td>
                                <%= dto.getTAKDATE()%>
                            </td>
                        </tr>

                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </article>
    </section>

    <!-- footer -->
    <footer>
        <div class="footer-section">
            <ul class="footer-menu float-start">
                <li><a href="stock-calendar.do">공모주 일정</a></li>
                <li><a href="inve-inform.do">투자정보</a></li>
                <li><a href="discuss.do">종목토론방</a></li>
                <li><a href="digi-notice.do">전자공시정보</a></li>
            </ul>
            <ul class="footer-menu float-end">
                <li><a href="#">FAQ</a></li>
                <li><a href="#">개인정보 처리방침</a></li>
                <li><a href="#">약관</a></li>
            </ul>
        </div>
        <div class="copy">
            <p>&copy; 2022 MultiCampus-7th-Team All rights reserved.</p>
        </div>
    </footer>


    <!-- 로그인, 회원가입 버튼 클릭시 페이지 이동 -->
    <script>
        // 로그인 페이지로 이동
        const goToLogin = () => location.href = 'login.do';
        // 회원가입 페이지로 이동
        const goToSignUp = () => location.href = 'signup.do';
        // 새 글 작성하기로 이동
        const goToNewPost = () => location.href = 'goStTalkToNewPost.do';
    </script>
    <script>
        $(document).on('click', '#searchBtn', function(e) {
            e.preventDefault();
            let url = "${pageContext.request.contextPath}";
            url += "?chosen=" + $("#chosen").val();
            url += "&search=" + $("#search").val();
            location.href = url;
            console.log(url);
        })
    </script>
</div>
</body>
</html>