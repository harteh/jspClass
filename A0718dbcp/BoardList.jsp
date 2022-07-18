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
		table {width: 700px; border-collapse: collapse; margin-bottom: 20px} 
		table tr { height: 30px; border-bottom: 1px solid #333;}
		.title{ font-weight: bold;}
		.title td { text-align: center;}
		.paging { width: 700px; text-align: center; margin-bottom: 30px;}
	</style>
</head>
<body>

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
	
	number = count - (currentPage-1) * pageSize;
			//105 - (3-1)*10 = 75 
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
				 		for(int j=0; j<(bean.getRe_step()-1) *5; j++){
				 %>
				 		&nbsp;
				 <%
				 		}
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
	count : 전체 게시글 수
	pageCount : 전체 페이지 수
	currentPage : 현재 페이지 인덱스 번호
-->
<div class="paging">
<%
	if(count > 0){
		int pageCount = count/pageSize + (count % pageSize == 0 ? 0:1);
		
		int  startPage = 1;
		if(currentPage % 10 != 0){ 	// currentPage 가 11일때
			startPage = (int)(currentPage/10) *10 +1;	//11
		}
		else { 	// currentPage 가 10일때
			startPage = (int)((currentPage/10)-1) *10 +1;	//1
		}
		
		int pageBlock = 10;
		int endPage = startPage + pageBlock -1;		//11+10-1 =20
		
		if(endPage > pageCount){
			endPage = pageCount;
		}
		
		//이전이라는 하이퍼링크를 만들건지 생각
		if(startPage > 10){
		%>
			<a href="BoardList.jsp?pageNum=<%=startPage-10 %>">[이전]</a>
		<%
		}
		for(int i=startPage; i<=endPage; i++){
		%>
			<a href="BoardList.jsp?pageNum=<%=i %>">[<%=i %>]</a>
		<%
		}
		
		if(endPage <= pageCount){
		%>
			<a href="BoardList.jsp?pageNum=<%=startPage+10 %>">[다음]</a>
		<%			
		}
	}
%>
</div>
<!-- 페이징 끝 -->

<button  onclick="location.href='BoardForm.jsp'">새 글 등록</button>

</body>
</html>