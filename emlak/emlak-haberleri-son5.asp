<!--#include file="data.asp"-->
<%
Set ali = Server.CreateObject("ADODB.Recordset")
sql = "Select top 5 * from haber_banka_bilgileri id order by id desc"
ali.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body topmargin="1">
<%
if ali.eof or ali.bof then
response.write " Haber Bulunamadı .. "
else
%>

<%
i=1
do while i < 10000000000 and not ali.eof
%>
&nbsp;<a href="detay.asp?detaylar=haber&haber_banka_bilgileri=<%=ali("id")%>" style="text-decoration: none">-&nbsp; <%=ali("baslik")%></a>
<br><%
ali.movenext
i=i+1
Loop
END IF
%>



</body>

</html>
