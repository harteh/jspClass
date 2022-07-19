<%@page import="bean.BoardDAO"%>
<%@page import="bean.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BoardList</title>
	<style type="text/css">
		h1 {margin-bottom: 30px;}
		a {text-decoration: none; color: #666;}
		table {width: 700px; border-collapse: collapse; margin-bottom: 20px} 
		table tr { height: 30px; border-bottom: 1px solid #333;}
		.title{ font-weight: bold;}
		.title td { text-align: center;}
		.paging { width: 700px; text-align: center; margin-bottom: 30px;}
	</style>
</head>
<body bgcolor="aliceblue">

<h1>게시판 전체 목록</h1>
<%
//페이징
	int pageSize = 5;	//한 페이지에 보여지는 게시글 수
	
	String pageNum = request.getParameter("pageNum");	//현재 페이지
	if(pageNum == null){
		pageNum = "1";
	}
	
	int count = 0;
	int number = 0;
	
	BoardDAO bdao = new BoardDAO();
	count = bdao.getAllCount();		//전체 게시글 수를 읽어온다
	
	int currentPage = Integer.parseInt(pageNum);		//현재 페이지의 인덱스번호
	
	int startRow = (currentPage - 1) * pageSize +1;		//페이지 시작 번호
	int endRow = currentPage * pageSize;				//페이지 끝 번호
	
	Vector<BoardBean> vec = bdao.allBoard(startRow, endRow);
	
	//내가 보고있는 페이지의 시작번호?? - 게시글목록 no으로 사용..
	number = count - (currentPage-1) * pageSize;
			//27 - (3-1)*10 = 7 
%>

<table>
	<tr class="title">
		<td>번호</td>
		<td width="400">글제목</td>
		<td>작성자</td>
		<td>작성날짜</td>
		<td>조회수</td>
	</tr>
<%
	for(int i=0; i<vec.size(); i++){
		BoardBean bean = vec.get(i);
		//벡터에 받아온 값을 꺼내와서 BoardBean에 저장 
%>
	<tr>
		<td><%=number-- %></td>
		<td>
			<a href="BoardIn.jsp?num=<%=bean.getNum() %>">
				 <%
				 	if(bean.getRe_step() > 1){
				 		for(int j=0; j<(bean.getRe_step()-1) *2; j++){
				 %>
				 		&nbsp;
				 <%
				 		}
					%>
				 		<span>[re]</span>
					<%
				 	}
				 %>
				 <%=bean.getSubject() %>
			</a>
		</td>
		<td><%=bean.getWriter() %></td>
		<td><%=bean.getReq_date() %></td>
		<td><%=bean.getReadcount() %></td>
	</tr>
<%		
	}
%>	
</table>

<!-- 페이징 
	pageSize = 3;	//한 페이지에 보여지는 게시글 수
	count : 전체 게시글 수
	pageCount : 전체 페이지 수
	
	currentPage : 현재 페이지 인덱스 번호
	pageBlock : 페이징 블럭 수
	startPage : 보고있는 현재 페에지의 페이지 블럭 시작 번호
-->
<div class="paging">
<%
	if(count > 0){
		int pageBlock = 3;
		
		int pageCount = count/pageSize + (count % pageSize == 0 ? 0:1);
		// 13/3 + (1) = 5
		
		int  startPage = 1;
		if(currentPage % pageBlock != 0){ 	// currentPage 가 4일때
			startPage = (int)(currentPage/pageBlock) *pageBlock +1;	// 4/3 *3 +1=4
		}
		else { 	// currentPage 가 3일때
			startPage = (int)((currentPage/pageBlock)-1) *pageBlock +1;	//1
		}
		
		int endPage = startPage + pageBlock -1;		//4+3-1 =6
		
		if(endPage > pageCount){	// 6>5 -> endPage=5 
			endPage = pageCount;
		}
		
		// 페이징처리, 이전,페이지no,다음
		if(startPage > pageBlock){
		%>
			<a href="BoardList.jsp?pageNum=<%=startPage - pageBlock %>">[이전]</a>
		<%
		}
		for(int i=startPage; i<=endPage; i++){
		%>
			<a href="BoardList.jsp?pageNum=<%=i %>">[<%=i %>]</a>
		<%
		}
		
		if(endPage < pageCount){
		%>
			<a href="BoardList.jsp?pageNum=<%=startPage + pageBlock %>">[다음]</a>
		<%			
		}
	}
%>
</div>
<!-- 페이징 끝 -->

<button  onclick="location.href='BoardForm.jsp'">새 글 등록</button>

</body>
</html>