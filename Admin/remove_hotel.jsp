<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<marquee behavior="alternate" scroll amount="10" onMouseOver="stop()" onMouseOut="start()"><h2>Welcome To Remove Section</h2></marquee>
	<style type="text/css">
#oval{
	background:slateblue;
	color:snow;
	float:left;
	font:normal 15px tahoma;
	line-height:16px;
	height:24px;
	padding-left:11px;
	text-decoration:none;
	width:70px;
	border-radius:60px;
	}
</style>

	</head>
	<body background="img/01.jpg" width="1024px" height="500px">
        <form name="form1" action="remove_hotel1.jsp" method="post">
        <table align="center">
        <tr>
            <td><strong>HotelId:</strong></td>
            <td>
                <select name="hotelid">

<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT HOTELID FROM ADD_HOTEL");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("HOTELID")%>"><%=rs.getString("HOTELID")%></option>
<%         
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
                   </select>
                </td>
				<td><input id="oval" type="submit" name="submit" value="Submit"></td>
			</tr>
			</table>	
		</form>
	</body>

</html>