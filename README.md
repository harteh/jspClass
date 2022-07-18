# jspClass
jsp를 이용하여 웹 페이지 만들기

## 커넥션 풀을 이용한 DB연결
- [DBCP](https://github.com/harteh/jspClass/blob/429b756e9ff40c9ab03ba367a49a146de55fec66/A0718dbcp/BoardDAO.java#L19)
  
  
## 페이징 처리
- [페이징 jsp](https://github.com/harteh/jspClass/blob/429b756e9ff40c9ab03ba367a49a146de55fec66/A0718dbcp/BoardList.jsp#L87)
  
  
## DAO 이용한 학생 관리
### [StuDAO](https://github.com/harteh/jspClass/blob/main/Dao0716/StuDAO.java)
- [DB 연결](https://github.com/harteh/jspClass/blob/4b0dbc9ce7e90de8b5be67ba469f95eb2656ebc7/Dao0716/StuDAO.java#L19)
- [전체목록조회](https://github.com/harteh/jspClass/blob/4b0dbc9ce7e90de8b5be67ba469f95eb2656ebc7/Dao0716/StuDAO.java#L29)
- [신규등록](https://github.com/harteh/jspClass/blob/4b0dbc9ce7e90de8b5be67ba469f95eb2656ebc7/Dao0716/StuDAO.java#L71)
- [개별조회](https://github.com/harteh/jspClass/blob/4b0dbc9ce7e90de8b5be67ba469f95eb2656ebc7/Dao0716/StuDAO.java#L96)
- [정보수정](https://github.com/harteh/jspClass/blob/4b0dbc9ce7e90de8b5be67ba469f95eb2656ebc7/Dao0716/StuDAO.java#L128)

### 학생관리 메인 페이지
+ [stuMain.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuMain.jsp)

### 전체학생 목록 출력 페이지
+ [stuAllList.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuAllList.jsp)

### 학생 한명의 정보 출력 페이지
 학번으로 검색, 전체목록에서 학번 클릭 시 그 학생의 정보를 보여준다
+ [stuInfo.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuInfo.jsp)

 학번을 제외한 기타 정보 수정 입력 후 [stuUdateProc.jsp] 를 통해 수정할 수 있다.
+ [stuUdateProc.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuUdateProc.jsp)


### 신규학생 등록 페이지
+ [stuAdd.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuAdd.jsp)

 등록 폼에서 받아온 정보를 자바빈에 등록 후, DAO로 넘겨주어 등록을 완료한다
+ [stuAddProc.jsp](https://github.com/harteh/jspClass/blob/main/Dao0716/stuAddProc.jsp)
