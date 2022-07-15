/**
 * 아이디, 나이는 필수. 나이는 숫자만 입력 가능
 */

function chk(){
	var uid = addPer.uid.value;
	var age = addPer.age.value;
	
	if((uid == null) || (age == null)){
		alert("아이디와 나이는 필수 입력입니다.");
	} 
	else if(isNaN(age)) {
		alert("나이는 숫자만 입력하세요");
	}
	
	//비밀번호 체크
	var pw1 = addPer.pass1.value;
	var pw2 = addPer.pass2.value;
	
	if(pw1 != pw2){
	    alert("비밀번호가 틀렸습니다. ");
	}
	
	//전화번호
	var tel = addPer.tel.value;
	if(tel.indexOf("-") == -1){
		alert("'-'을 포함해서 입력하세요");
		addPer.tel.focus();
	}
}