<% @Language=VBScript %>
<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ofisler where id="&id
yeniasp.Open sql,baglanti,1,3

islem=Request.QueryString("islem")
if islem="duzenle" then
call duzenle
end if
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title>Yönetim Paneli</title>
<style type="text/css">
<!--
a {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
}
a:hover {
	color: #993300;
}
-->
</style></head>

<body>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="86%" bordercolor="#C0C0C0" id="table1" height="461">
		<tr>
			<td width="224" valign="top">
			<div align="center">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="94%" bordercolor="#E4E4E4" id="table2" height="459">
					<tr>
						<td bgcolor="#F8F8F8" valign="top">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table4" height="451">
								<tr>
									<td height="105">
									<p align="center">
									<font size="2" face="Tahoma" color="#CC3300">
									.mrh Emlak Portalı V.01</font><font size="2" face="Tahoma" color="#999999"><br>
									Hoşgeldiniz..</font></p>
									<p align="center">
									<font face="Tahoma" size="2" color="#999999">
									SN. <%=Session("kullaniciadi")%></font></td>
								</tr>
								<tr>
									<td valign="top">
									<!--#include file="yonetim-menu.html"-->
									</td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
			</td>
			<td valign="top">
			<div align="center">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#E4E4E4" id="table3" height="459">
					<tr>
						<td bgcolor="#F8F8F8" valign="top" style="padding-top: 6px">
						<p align="center">
						<p align="center">

						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table5" height="73">
								<tr>
									<td>

	<div align="center">
<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table10" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">OFİS 
			ŞUBELERİ DÜZENLE</font></td>
		</tr>
	</table></div>

	
	<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table15" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Şube 
			Adı &nbsp; </font></td>
			<td width="31"><form action="ofis-duzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle" method="post" name="ofisler">
			<input type="hidden" name="id" value="<%=yeniasp("id")%>">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="subeadi" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("subeadi")%>"></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table16" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Telefon &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel1" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("tel1")%>"></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table17" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Telefon &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="tel2" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("tel2")%>"></td>
		</tr>
	</table>
	
	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table21" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Gsm &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="gsm" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("gsm")%>"></td>
		</tr>
	</table>
	
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table23" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Fax &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="fax" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("fax")%>"></td>
		</tr>
	</table>
	
</div>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table18" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">E-mail &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="email1" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("email1")%>"></td>
		</tr>
	</table>
	
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table22" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">E-mail &nbsp;
			</font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="email2" size="29" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("email2")%>"></td>
		</tr>
	</table>
	
</div>

	
</div>

	
	<div align="center">

	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table19" height="30">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Adres &nbsp; </font></td>
			<td width="31" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;<textarea name="adres" rows="4" cols="57" style="font-family: Tahoma; font-size: 10pt; color: #666666"><%=yeniasp("adres")%></textarea></font></td>
		</tr>
	</table>
	
</div>
<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table20" height="32">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Ofis 
			Resmi &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="resim" type="text" size="30" class="form" value="<%=yeniasp("resim")%>">&nbsp;
			<a ONCLICK="window.open('Fso_Resim.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	<p>&nbsp;</div>
	
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="submit" value="ŞUBEYİ GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"><br>

	</form>								</td>
								</tr>
<%
sub duzenle
id=Request.Form("id")
subeadi = Request.Form("subeadi")
tel1 = Request.Form("tel1")
tel2 = Request.Form("tel2")
fax = Request.Form("fax")
gsm = Request.Form("gsm")
email1 = Request.Form("email1")
email2 = Request.Form("email2")
adres = Request.Form("adres")
resim = Request.Form("resim")


if subeadi=""  or id="" or adres=""  then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sql = "select * from ofisler where id="&id
duz.open sql,baglanti,1,3

duz("subeadi")=subeadi
duz("tel1")=tel1
duz("tel2")=tel2
duz("fax")=fax
duz("gsm")=gsm
duz("email1")=email1
duz("email2")=email2
duz("adres")=adres
duz("resim")=resim 

duz.Update

%>
<script>
	alert('OFİS ŞUBESİ GÜNCELLENDİ...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=ofisler');window.refresh;</script>
<%
Response.End
end if
end sub
%>
							</table>
						</div>
						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>

</body>

</html>