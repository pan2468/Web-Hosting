<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

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
<script type="text/javascript">
/* 	function modify() {
		if(confirm("수정하시겠습니까?")){
			location.href='update.do?no=${vo.no}';
		}
		return;
	}
	 */

		function modify() {
			if(confirm("수정하시겠습니까?")){
				location.href='modify.do?no=${vo.no}';
			}
			return;
		}
	 
	 
	</script>
	
<script type="text/javascript">
$(function () {
	
	
	 //삭제 버튼 클릭
	 $("#deleteBtn").click(function () {
		if(confirm("삭제하시겠습니까?")){
			document.form1.action = 'delete.do?no=${vo.no}';
		    document.form1.submit();
		}
	});
	 
	
});
</script>
	
</head>
<body>
<div id="wrap">
<form method="post" name="form1">
    <!-- @ CONTAINER -->
    <section id="container" class="sub">
        <!-- @ CONTENTS -->
        <div id="contents">
            <!-- @ SUB TITLE AREA -->
            <div class="sub-title-area">
                <h2 class="tit">News & Info 
            </div>
            <div class="write_title">
                공지사항입니다.
            </div>
            <div class="write_date">
                <span class="write_line"><strong>작성자  :</strong> ${vo.writer} </span>
                <span class="write_line"><strong>조회수  :</strong>${vo.hit}  </span>
                <span class="write_line">${vo.writeDate}</span>
                <span><em class="file_icon"></em><a href="#"> 123.hwp</a></span>

            </div>
            <div class="con_box">
                게시판 내용들어갑니다.
				<br>게시판 내용들어갑니다.
            </div>

            <div class="btn_area">
                <a href="list.do" class="btn_blue">목록</a>
				<button type="button" class="btn_blue" onclick="modify()">수정</button> 
				<button type="button" class="btn_blue" id="deleteBtn" onclick="delete_form()">삭제</button> 
            </div>
        </div>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</form>
</div>
</body>
</html>