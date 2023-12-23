<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set metallica = Server.CreateObject("adodb.recordset")
sql="Select *from ofisler order by id asc"
metallica.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">OFİS 
			- ŞUBE EKLE</font></td>
		</tr>
	</table></div>
<br>

	
	<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table2" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Şube 
			Adı &nbsp; </font></td>
			<td width="31"><form action="mrh-modul.asp?process=ofisler" method="post" name="ofisler">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="subeadi" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table3" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Telefon &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel1" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table4" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Telefon &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel2" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table12" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Gsm &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="gsm" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table10" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Fax &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="fax" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
</div>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table5" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">E-mail &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="email1" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table11" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">E-mail &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="email2" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666"></td>
		</tr>
	</table>
	
</div>

	
</div>

	
	<div align="center">

	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table6" height="30">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Adres &nbsp; </font></td>
			<td width="31" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;<textarea name="adres" rows="4" cols="57" style="font-family: Tahoma; font-size: 10pt; color: #666666"></textarea></font></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table7" height="32">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Ofis 
			Resmi &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="resim" type="text" size="30" class="form">&nbsp;
			<a ONCLICK="window.open('Fso_Resim.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
</div>
	
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="submit" value="ŞUBEYİ EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table8" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">YAYINDA OLAN OFİS ŞUBELERİ</font></td>
		</tr>
	</table><br>
	</div>
<div align="center">
<% if metallica.eof then
response.write("OFİS ŞUBESİ BULUNAMADI!!!")
else
%><%For x=1 to metallica.Pagesize
if metallica.eof then exit for	%>
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table9" height="104">
		<tr>
			<td>
			<img border="0" src="<%If Not metallica("resim")="" Then%><%=metallica("resim")%><%Else%>ofisfoto/smultimedya_foto_yok.jpg<%End If%>" width="128" height="100" style="border: 1px solid #CC3300"></td>
			<td width="701"><font size="2" face="Verdana" color="#666666">&nbsp;<%=metallica("subeadi")%></font></td>
			<td width="130">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">
			<a href="ofis-duzenle.asp?process=ofisler&id=<%=metallica("id")%>" style="text-decoration: none">
			<font color="#CC3300">DÜZENLE</font></a></font></td>
			<td width="126">
			<p align="center"><font size="2" face="Tahoma" color="#CC3300">
			<a href="mrh-modul.asp?process=ofis-sil&id=<%=metallica("id")%>" style="text-decoration: none">
			<font color="#CC3300">SİL</font></a></font></td>
		</tr>
	</table><hr color="#CC3300" width="98%" size="1"><%metallica.MoveNext 
                                Next%>
                                <%END IF%>

</div>
</form>	
</body>

</html>