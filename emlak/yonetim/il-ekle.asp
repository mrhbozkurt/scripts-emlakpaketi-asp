<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>İl EKLE</title>
</head>

<body>

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">İL 
			EKLE</font></td>
		</tr>
	</table></div>


	<div align="center">

	<form action="mrh-modul.asp?process=il-ekle" method="post">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">İL &nbsp; 
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="sehir" size="26" style="font-family: Tahoma; font-size: 10pt; color: #666666">&nbsp;&nbsp; 
<input type="submit" value="EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></td>
		</tr>
	</table></form>
	
</div>

<p> 
</p>
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" width="97%" id="table3" style="border-collapse: collapse" bordercolor="#BCBCBC" height="201">
		<tr>
			<td>
			<table border="0" cellpadding="0" width="100%" id="table4" style="border-collapse: collapse" height="22">
				<tr>
					<td bgcolor="#333333">
					<font size="2" face="Verdana" color="#FFFFFF">&nbsp;Listede 
					Olan İller </font></td>
				</tr>
			</table>
			<hr>
			<div align="center"><%Set mrhil=Conn.Execute("SELECT * FROM iller ORDER BY id ASC"):i=1:Do While Not mrhil.Eof%>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table5">
					<tr>
						<td width="44">
						<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=i%></font></td>
						<td width="15">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="351">
						<font size="2" face="Tahoma" color="#333333">&nbsp;<%=mrhil("sehir")%></font></td>
						<td>&nbsp;<font size="2" face="Tahoma" color="#CC3300"><a href="mrh-modul.asp?process=il-sil&id=<%=mrhil("id")%>">
Listeden Çıkart</a></font></td>
					</tr>
				</table>
			<hr color="#EAEAEA" size="0">
				<%i=i+1:mrhil.MoveNext:Loop%>
			</div>
			</td>
		</tr>
	</table>
</div>
</form>
</body>

</html>