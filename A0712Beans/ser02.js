/**
 * ser02.jsp 에서 넘어옴
 * 성공 시 /Hello 서블릿에서 처리
 */
function check(){
	if((fr.id.value == "") || (fr.age.value == "")) {
		alert("아이디와 비밀번호를 모두 입력하세요");
		return false;
	}
	return true;
}