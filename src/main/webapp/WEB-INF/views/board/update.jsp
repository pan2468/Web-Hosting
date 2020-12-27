<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>게시판 글수정</title>

  <!-- Bootstrap / jQuery 라이브러리 등록 : CDN -->
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
 <style type="text/css">
 #modify{
   background: orange;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
 }
 
 #new {
    background: orange;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
 
 }
 
 #cancel{
    background: orange;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
 
 }
 </style>
 
<script type="text/javascript">
  $(function () {
	   $(".cancelBtn").click(function () {
		 history.back();
	});
});
</script>

<script type="text/javascript">


function send(f) {

		if (f.title.value == '') {
			alert('제목을 입력하세요');
			f.title.focus();
			return;
		}

		if (f.writer.value == '') {
			alert('작성자를 입력하세요');
			f.writer.focus();
			return;
		}
		
		
		
		if (f.content.value == '') {
			alert('내용을 입력하세요');
			f.content.focus();
			return;
		}
		alert("수정하였습니다.");
		f.submit();
         
}

</script>
</head>
<body>
<div class="sub-title-area"> 
 <h1>게시판 글수정</h1>
 <form method="post">
 <section  id="container" class="sub">
    <div class="form-group">
      <label>번호:</label>
      <input type="text" class="form-control" id="no"
      name="no" readonly="readonly" value="${vo.no}">
    </div>
    <div class="form-group">
       <label for="title">제목:</label>
       <input type="text" class="form-control" id="title"
       name="title" required="required" pattern=".{4,100}"
       maxlength="100" value="${vo.title}">
    </div>
    

    
    <div class="form-group">
       <label for="writer">작성자:</label>
       <input type="text" class="form-control" id="writer"
       name="writer" required="required" pattern="[가-힣a-zA-Z]{2,10}"
       maxlength="10" value="${vo.writer}">
    </div>

    <div class="form-group">
       <label for="content">내용:</label>
       <textarea class="form-control" rows="5" id="content"
       name="content">${vo.content}</textarea>
    </div>    
   
    
    <button type="submit" onclick="send(this.form); return false;" id="modify">수정</button>
    <button type="reset" id="new">새로입력</button>
    <button type="button" class="cancelBtn" id="cancel">취소</button>

    
    </section>
    
    
 </form>  
</div>
</body>
</html>