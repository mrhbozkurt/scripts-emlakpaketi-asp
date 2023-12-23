<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>İlçe EKLE</title>
</head>

<body>

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr><form action="mrh-modul.asp?process=ilce-ekle" method="post">
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">İLÇE 
			EKLE</font></td>
		</tr>
	</table><br></div>

<div align="center">
<table border="1" cellpadding="0" cellspacing="0" width="97%" id="table2" bordercolor="#F0F0F0">
	<tr><%
sql="SELECT * FROM iller"
Set iller=Conn.Execute(sql)%>
		<td width="153"><font size="2" face="Tahoma" color="#CC3300">&nbsp;&nbsp;&nbsp;&nbsp; İl Seçin</font></td>
		<td width="8">
		<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
		<td width="236"><font size="2" face="Tahoma">&nbsp;</font><select onChange="muzion('oyunla','mrh-modul.asp?process=ilce&id='+ this.value);" name="sehir" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666; height:22" size="1">
    	             <option value="-" salected>Lütfen iL Seçiniz</option><%
    	             Do While Not iller.Eof %>
    	             <option value="<%=iller("id")%>"><%=iller("sehir")%><%
    	             iller.MoveNext
    	             Loop %></option>
                  </select></td>
		<td width="144"><font size="2" face="Tahoma" color="#CC3300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; İlçe Ekle</font></td>
		<td width="35">
		<p align="center"><font size="2" face="Tahoma" color="#CC3300">:</font></td>
		<td width="274">&nbsp;<input type="text" name="ilce" size="22"></td>
		<td>&nbsp;<font face="Tahoma"><input type="submit" value="Ekle" style="color: #CC3300; font-family: Tahoma; font-size: 10pt; border: 1px solid #C0C0C0; background-color: #FFFFFF"></font></td>
	</tr>
</table></form>
</div><br>
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" width="97%" id="table6" style="border-collapse: collapse" bordercolor="#BCBCBC" height="201">
		<tr>
			<td>
			<table border="0" cellpadding="0" width="100%" id="table7" style="border-collapse: collapse" height="22">
				<tr>
					<td bgcolor="#333333">
					<font size="2" face="Verdana" color="#FFFFFF">&nbsp;Listede 
					Olan İlçeler</font></td>
				</tr>
			</table>
			<hr>
			<div align="center"><%Set mrhilce=Conn.Execute("SELECT * FROM ilceler ORDER BY id ASC"):i=1:Do While Not mrhilce.Eof%>
				<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table8">
					<tr>
						<td width="44">
						<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=i%></font></td>
						<td width="15">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="351">
						<font size="2" face="Tahoma" color="#333333">&nbsp;<%=mrhilce("ilce")%></font></td>
						<td>&nbsp;<font size="2" face="Tahoma" color="#CC3300"><a href="mrh-modul.asp?process=ilce-sil&id=<%=mrhilce("id")%>">
Listeden Çıkart</a></font></td>
					</tr>
				</table>
			<hr color="#EAEAEA" size="0">
				<%i=i+1:mrhilce.MoveNext:Loop%>
			</div>
			</td>
		</tr>
	</table>
</div>
</body>

</html>