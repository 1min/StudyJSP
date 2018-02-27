/**
 * 
 */

function infoConfirm() {
	if(document.reg_frm.id.value.length == 0) {//id폼이 비어있으면 id폼에 들어있는 문자길이가 0일경우 즉 빈거, documnet는 해당 파일인 members.js의 Dom객체
		alert("아아디는 필 수 사항입니다.");
		reg_frm.id.focus();//포커스를 id필드 위에 포커스 맞춤(커서 _ 띠용)
		return;//딴 if문 실행 못시키게 최적화를 위해 return문
	}
	
	if(document.reg_frm.id.value.length < 4) {//들어간 문자가 4글자보다 작은경우
		alert("아아디는 4글자 이상이어야 하비니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.pw.value.length == 0) {//패스워드 필드가 비어있으면
		alert("비밀번호는 필 수 사항입니다.");
		reg_frm.pw.focus();//패스워드 필드에 포커스 맞춤
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {//비밀번호 필드와 비밀번호 확인 필드의 값이 일치하지 않을 경우
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름는 필 수 사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length == 0) {
		alert("아아디는 필 수 사항입니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.eMail.value.length == 0) {
		alert("메일은 필 수 사항입니다.");
		reg_frm.eMail.focus();
		return;
	}
	
	document.reg_frm.submit();//폼에 입력된 값 submit하기 폼 name값이 reg_frm라서 그럼
}

function updateInfoConfirm() {
	if(document.reg_frm.pw.value == "") {
		alert("패스워드를 입력하세요.");
		document.reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("패스워드가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.eMail.value.length == 0) {
		alert("메일은 필 수 사항입니다.");
		reg_frm.eMail.focus();
		return;
	}
	
	document.reg_frm.submit();
	
}