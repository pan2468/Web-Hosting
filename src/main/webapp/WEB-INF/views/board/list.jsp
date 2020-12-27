<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="" >
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <title>2016 굿모닝 경기 소통 크리에이터 공모전</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/general.css" >
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/js/jquery.scrollTo-min.js"></script>
    <script src="/resources/js/layout.js"></script>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
    

<meta charset="UTF-8">
<title>Insert title here</title>




</head>
<body>
<div id="wrap">
     <!-- @ CONTAINER -->
    <section id="container" class="sub  new">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
            </div>
			<div class="btn_area">
					<a href="write.do" class="btn_blue_line">글쓰기</a>
              </div>
			<!-- 페이징 처리는 5개씩 해주세요-->
            <table class="news_list">
            <caption>News 리스트</caption>
            <colgroup>
                <col style="width: 10%">
                <col style="width:10%">
                <col style="width: 10%">
                <col style="width: 10%">
                <col style="width: 5%">
                <col style="width: 8%">
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">등록일</th>
                    <th scope="col">조회</th>
                    <th scope="col">첨부</th>
                </tr>
            </thead>
              <c:if test="${empty list }">
      <tr>
         <td colspan="5">데이터가 존재하지 않습니다.</td>
      </tr>
    </c:if>
    
  
            <tbody>
            
            
            <c:if test="${!empty list }">
             <c:forEach items="${list}" var="vo">
            <tr>
                <td class="no">${vo.no}</td>
                <td class="board_txt">
                   
                    <%-- <a href="/member/view.do?userid=${row.userid}">${row.name}</a></td> --%>
                        <a href='view.do?no=${vo.no} + &inc=1'> ${vo.title} </a>
                </td>
                <td class="board_man">${vo.writer}</td>
                <td class="board_date">
                <fmt:formatDate value="${vo.writeDate }" pattern="yyyy.MM.dd"/>
                </td>
                <td class="board_read">${vo.hit}</td>
                <td class="board_file"><span class="file_icon">파일다운로드</span>
            </tr>
           </c:forEach>
    		</c:if>
           
            </table>
             <div class="pagination">
                <a class="prev end">첫 페이지</a>
                <a class="prev">이전 페이지</a>
                <a href="#" class="on">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">99</a>
                <a href="#" class="next">다음 페이지</a>
                <a href="#" class="next end">마지막 페이지</a>
            </div> -
   
   
     <%-- 	<c:if test="${page.startPage != curPage}">
					<a href="list.do?curPage=${page.startPage}">처음으로</a>
				</c:if>
				<c:forEach var='i' begin="${page.startPage}" end="${page.endPage}">
						<c:choose>
						<c:when test="${ i == curPage }">
							<b><c:out value="${i}"/></b>
						</c:when>
						<c:otherwise>
						<a href="list.do?curPage=${i}"><c:out value="${i}"/></a>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				<c:if test="${page.endPage != curPage}">
					<a href="list.do?curPage=${page.endPage}">끝으로</a>
				</c:if> --%>
    
            
            <div class="find_wrap">
                <select name="" id="">
                    <option value="">제목</option>
                    <option value="">내용</option>
                </select>
                <input type="text" name="" id=""  title="검색어 입력" placeholder="검색어 입력">
                <a href="#" class="btn_gray">검색</a>
            </div>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>
</body>
</html>