<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details of User</title>
<script type="text/javascript">
	function validate() {
		var letters = /[0-9]/;
		if (document.myForm.id.value=="")
			{
			alert("Plese Enter Your Id");
			document.myForm.id.focus();
			return false;
			}
		if (document.myForm.Name.value == ""
				|| document.myForm.Name.value.match(letters)) {
			alert("UserName should contain only Alphabets");
			document.myForm.Name.focus();
			return false;
		}
		if (document.myForm.SSN.value == ""
				|| document.myForm.SSN.value.length < 9) {
			alert("Please Enter your 9 digit SSN ");

			return false;
		}
		if (document.myForm.Address.value == "") {
			alert(" Please provide the Address!");

			return false;
		}
		if (document.myForm.city.value == ""
				|| document.myForm.city.value.match(letters)) {
			alert(" Please provide the City in Alphabets Only!");

			return false;
		}
		if (document.myForm.state.value == ""
				|| document.myForm.state.value.match(letters)) {
			alert(" Please provide the State in Alphabets only!");

			return false;
		}
		if (document.myForm.country.value == ""
				|| document.myForm.country.value.match(letters)) {
			alert(" Please provide the Country in Alphabets only!");

			return false;
		}
		if (document.myForm.Zip.value == ""
				|| document.myForm.Zip.value.length < 5) {
			alert("Please provide 5 Digit Zip!");

			return false;
		}
		return true;

	}

	function validatenumber(SSN) {
		var regex = /^[0-9]*(?:\.\d{1,2})?$/;
		if (!regex.test(SSN.value)) {
			alert('Only Numbers are allowed');
			return false;

		}
		function validatenumber(id) {
			var regex = /^[0-9]*(?:\.\d{1,2})?$/;
			if (!regex.test(id.value)) {
				alert('Only Numbers are allowed');
				return false;

			}
	}
</script>
</head>
<body>
	<h1>Struts 2 Hello World Example</h1>

	<s:form action="user" method="post" name="myForm"
		onsubmit="return(validate());">
		<s:textfield name="id" label="ID" onkeypress="validatenumber(this);"/>
		<s:textfield name="Name" label="Username" />
		<s:textfield name="SSN" type="SSN" label="SSN" maxlength="9"
			onkeypress="validatenumber(this);" />
		<s:textfield name="Address" label="Address" />
		<s:textfield name="city" label="City" />
		<s:textfield name="state" label="State" />
		<s:textfield name="country" label="Country" />
		<s:textfield name="Zip" label="Zip" maxlength="5"
			onkeypress="validatenumber(this);" />
		<s:submit name="submit" label="Submit" align="center" />

	</s:form>
</body>
</html>