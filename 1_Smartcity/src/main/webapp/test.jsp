<html>
 <head>
 </head>
  <body>
    <form name="f1" method="get" action="#">
       <select name="clr">
           <option value="1">Red</option>
           <option value="2">Blue</option>   
           <option value="3">Green</option>
           <option value="4">Pink</option>
       </select>
     <input type="submit" name="submit" value="Select Color"/>
    </form>
    <%-- To display selected value from dropdown list. --%>
     <% 
                String s=request.getParameter("clr");
                if (s !=null)
                {
                    out.println("Selected Color is : "+s);
                }
      %>
</body>
</html>




































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
	<table id="tblFruits">
		<tr>
			<td><input id="chkMango" type="checkbox" value="1" /><label
				for="chkMango">Mango</label></td>
		</tr>
		<tr>
			<td><input id="chkApple" type="checkbox" value="2" /><label
				for="chkApple">Apple</label></td>
		</tr>
		<tr>
			<td><input id="chkBanana" type="checkbox" value="3" /><label
				for="chkBanana">Banana</label></td>
		</tr>
		<tr>
			<td><input id="chkGuava" type="checkbox" value="4" /><label
				for="chkGuava">Guava</label></td>
		</tr>
		<tr>
			<td><input id="chkOrange" type="checkbox" value="5" /><label
				for="chkOrange">Orange</label></td>
		</tr>
	</table>
	<br />
	<input type="button" id="btnGet" value="Get" />
<script type="text/javascript">
    $(function () {
        $("#btnGet").click(function () {
            //Create an Array.
            var selected = new Array();
 
            //Reference the CheckBoxes and insert the checked CheckBox value in Array.
            $("#tblFruits input[type=checkbox]:checked").each(function () {
                selected.push(this.value);
            });
 
            //Display the selected CheckBox values.
            if (selected.length > 0) {
                alert("Selected values: " + selected.join(","));
            }
        });
    });
</script>
</body>
</html> --%>