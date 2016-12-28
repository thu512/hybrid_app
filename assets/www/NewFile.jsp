<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/realtime","root","12345");	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>jquerytest2</title>
 <mata name="viewport" content="width=device-width,initial-scale=1">
 <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
  <link rel="stylesheet" type="text/css" href="universe.css">
 <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
 <script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.js"></script>
</mata>

</head>

<body>
 <div data-role="page" data-theme="b">
  <div data-role="header" data-fullscreen="true" data-theme="b">
     <a href="syulist.html" data-icon="back" data-direction="reverse">back</a>
	 <a href="list.html" data-icon="home" data-iconpos="notext">홈</a>
	<h1>좌석보기</h1>
 </div>
 <div data-role="content" data-theme="b">

	<h2 align="center"> 카페 좌석 현황 </h2> 

	


<p align="center">좌석 배치도 </p>
<p align="center">사용가능좌석 white / 사용불가좌석  gray</p>
<section> 

<table bgcolor="white" align="center" border="1" width="90%" height="100%" >
	
	<tr>
	<td id="1" colspan='2' rowspan='5' width="10%" align="center" onclick="buttonColor('1');">　　</td>
	<td width="5%" style=border:0px  rowspan='9'></td>
	<td  style=fontcolor:red colspan='8' rowspan='6' align="center" width="25%">--카운터--</td>
	<td  width="5%" style=border:0px rowspan='11'></td>
	<td id="5" colspan='2' rowspan='2' width="8%" align="center" onclick="buttonColor('5');">　　</td>
	<td width="5%" style=border:0px rowspan='11'></td>
	<td id="6" width="12%" colspan='2' rowspan='2' align="center" onclick="buttonColor('6');">　　</td>
	<td width="5%" style=border:0px rowspan='11'></td>
	<td id="8" width="12%" colspan='2' rowspan='2' align="center" onclick="buttonColor('8');">　　</td>
	<td width="5%" style=border:0px rowspan='11'></td>	
	<td id="11" width="5%" align="center" onclick="buttonColor('11');">　　</td>
	</tr>
	
	<tr>
	<td  style=border:0px>&nbsp;</td>
	</tr>

	
	<tr>
	<td  style=border:0px colspan='2' rowspan='2'></td>	
	<td  style=border:0px colspan='2' rowspan='2'></td>	
	<td  style=border:0px colspan='2' rowspan='2'></td>
	<td id="12" align="center" onclick="buttonColor('12');">　　</td>
	</tr>
	
	
	<tr>	
	<td  style=border:0px >&nbsp;</td>
	</tr>
	
	
	<tr>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px>&nbsp;</td>
	<td id="7" colspan='2' rowspan='2' align="center" onclick="buttonColor('7');">　　</td>
	<td id="9" colspan='2' rowspan='2' align="center" onclick="buttonColor('9');">　　</td>	
	<td id="13" align="center" onclick="buttonColor('13');">　　</td>
	</tr>
	
	
	<tr>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px >&nbsp;</td>
	</tr>
	
	
	
	<tr>
	<td  style=border:0px>&nbsp;</td>
	<td  style=border:0px>&nbsp;</td>	
	<td  style=border:0px colspan='8' rowspan='3'></td>
	<td  style=border:0px colspan='2' rowspan='3'></td>	
	<td  style=border:0px colspan='2' rowspan='3'></td>
	<td  style=border:0px colspan='2' rowspan='3'></td>
	<td id="14" align="center" onclick="buttonColor('14');">　　</td>
	</tr>
	
	
	
	<tr>
	<td id="2" colspan='2' rowspan='4' align="center" onclick="buttonColor('2');">　　</td>
	<td  style=border:0px>&nbsp;</td>	
	</tr>
	
	
	
	<tr>	
	<td id="15" align="center" onclick="buttonColor('15');">　　</td>
	</tr>
	
	
	
	<tr>	
	<td  style=border:0px colspan='5' rowspan='2'></td>	
	<td id="3" width="12%" colspan='2' rowspan='2' align="center" onclick="buttonColor('3');">　　</td>	
	<td id="4" width="12%" colspan='2' rowspan='2' align="center" onclick="buttonColor('4');">　　</td>
	<td  style=border:0px colspan='2' rowspan='2'></td>
	<td  style=border:0px colspan='2' rowspan='2'></td>
	<td id="10" colspan='2' rowspan='2' align="center" onclick="buttonColor('10');">　　</td>
	<td  style=border:0px>&nbsp;</td>	
	</tr>
	
	
	
	
	
	<tr>
	<td id="16" align="center" onclick="buttonColor('16');">　　</td>
	</tr>
	
	
	
	<tr>
	<td  style=border:0px colspan='2'></td>
	<td align="center" colspan='3'>화장실</td>
	<td  style=border:0px colspan='8'></td>
	<td align="center" colspan='4'>출입문</td>
	<td  style=border:0px colspan='4'></td>
	</tr>
	
	</table>

</section> 

<script>




var seats=[];
<%

//1,ture=사용가능 cyan / 0,false= 사용 불가  gray
Statement st=conn.createStatement();	
ResultSet rs=st.executeQuery("select * from seat");
%>

	
	<%while(rs.next()){%>
	var num=<%=rs.getInt(1)%>;
	var use= <%=rs.getInt(2)%>;
	
	if(use ==1){
		seats[num]=true;
		
	}
	else if(use==0){
		seats[num]=false;
	}
	<%}%>
	
function init(){
	
	for (var i=1; i<17; i++) { 
		if(seats[i]){
			
			showSeatColor(true,i);
		}
		else{
			
			showSeatColor(false,i);
		}
		
	} 
}



function showSeatColor(bValue, seatNo) { 

	var seatld = document.getElementById(seatNo); 
	if(bValue){ 
		seatld.style.backgroundColor = 'white'; 
	}
	else{ 

		seatld.style.backgroundColor = 'gray'; 
	}
} 



window.onload = function(){
init();
}
</script>

 </div>
	<div data-role="footer" data-position="fixed" data-theme="b">
	 <div data-role="navbar" data-theme="b">
	  <ul>
	   <li><a href="info.html" class="ui-btn-active" data-icon="gear">카페소개</a></li> 
	   <li><a href="view.html" class="ui-btn-active" data-icon="grid">좌석보기</a></li>
   	   <li><a href="price.html" class="ui-btn-active" data-icon="search">가격표</a></li>
   	   <li><a href="http://localhost:8080/street/seatcheck.jsp" class="ui-btn-active" data-icon="info">길찾기</a></li>	  
	  </ul> 
	 </div>
	</div>
</div>
</body>
</html>