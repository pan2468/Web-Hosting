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
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">



function send(f) {

	if (f.title.value == '') {
		alert('제목을 입력하세요');
		f.title.focus();
		return;
	}
	
	if(f.writer.value == ""){
		alert('작성자를 입력하세요');
		f.writer.focus();
		return;
	}
	

	if (content.value == '') {
		alert('내용을 입력하세요');
		f.content.focus();
		return ;
	}

	 
	
	f.submit();
    alert("글 등록되었습니다.");
}
</script>

</head>
<body>

<div id="wrap">
     <!-- @ CONTAINER -->
     <section id="container" class="sub">
        <!-- @ CONTENTS -->
        <form method="post" >
        <div id="contents">
               <div class="sub-title-area">
                <h2 class="tit">News & Info </h2>
				</div>
                <table class="basic_write">
                    <caption>News 입력</caption>
                    <colgroup>
                        <col style="width:150px">
                        <col style="width:10%">
                    </colgroup>
					   <tr>
                        <th>제목<span class="star">*</span></th>
                        <td><input type="text" title="제목" name="title" id="title" class="add_txt"  placeholder="제목 *"></td>
                    </tr>
                    <tr>
                        <th>작성자<span class="star">*</span></th>
                        <td><input type="text" title="성명" name="writer" id="writer" class="name_txt" placeholder="성명 *"></td>
                    </tr>
                 
                    <tr>
                        <th>첨부파일</th>
                        <td>
                            <input type="file" title="첨부파일" name="file" id="file" placeholder="학과/부서" class="name_txt">
                        </td>
                    </tr>
                    <tr>
                        <th>내용 <span class="star">*</span></th>
                        <td>
                           <textarea name="content" id="content" cols="30" rows="10" style="width:100%"></textarea>
                        </td>
                    </tr>
                    
                </table>               
                <div class="btn_area">
					<button type="submit" class="btn_blue" onclick="send(this.form); return false;" style="cursor: hand"" >확인</button> 
				
					<a href="list.do" class="btn_blue_line">취소</a>
                </div>
        </div>
        </form>
        <!-- CONTENTS @ -->
    </section>
    <!-- CONTAINER @ -->
</div>


</body>
</html>