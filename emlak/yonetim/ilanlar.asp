<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set mrhilanlari = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar order by id desc"
mrhilanlari.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

<div mrhilanlarign="center">

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p mrhilanlarign="center" align="center"><font face="Tahoma" size="2" color="#FFFFFF">YAYINDA OLAN �LANLARIN L�STES�</font></td>
		</tr>
	</table></div>
<br></div>
<div mrhilanlarign="center">

<%
if mrhilanlari.eof or mrhilanlari.bof then
response.write "Kay�tl� �lan Bulunamad�.. "
else
%>
<%
i=1
do while i < 10000000000 and not mrhilanlari.eof
%>
	<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F4F4F4" id="table2" height="25">
		<tr>
			<td width="69"><font size="2" face="Tahoma" color="#808080">&nbsp;�lan No</font></td>
			<td width="10">
			<p mrhilanlarign="center" align="center"><font size="2" face="Tahoma" color="#808080">:</font></td>
			<td width="53"><b><font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=mrhilanlari("id")%></font></b></td>
			<td width="456"><font size="2" face="Tahoma" color="#CC3300">&nbsp;<a href="../ilan.asp?s-emlak=ilandetayi&id=<%=mrhilanlari("id")%>"target="_blank" style="text-decoration: none"><%=mrhilanlari("ilanbaslik")%></a></font></td>
			<td width="89">
			<p mrhilanlarign="center" align="center"><font size="2" face="Tahoma" color="#CC3300"><a href="ilan-duzenle.asp?process=ilanlar&id=<%=mrhilanlari("id")%>">D�zenle</a></font></td>
			<td>
			<p mrhilanlarign="center" align="center"><font size="2" face="Tahoma" color="#CC3300"><a href="mrh-modul.asp?process=ilan-sil&id=<%=mrhilanlari("id")%>">
Sil</a></font></td>
		</tr>
	</table>
</div>
</div>

<hr color="#666666" size="1" width="98%">
<%
mrhilanlari.movenext
i=i+1
Loop
END IF

%>


</body>

</html>