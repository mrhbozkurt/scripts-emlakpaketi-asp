<% @Language=VBScript %>
<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sql = "Select * from haber_banka_bilgileri where id="&id
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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">HABER 
			ve BANKA KREDİ ORANLARI BİLGİLERİ 
			EKLE</font></td>
		</tr>
	</table></div>
<br>

	<div align="center">

	
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table12" height="30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Başlık &nbsp;
			</font></td>
			<form action="haber-banka-duzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle" method="post">
			<input type="hidden" name="id" value="<%=yeniasp("id")%>">
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;</font><input name="baslik" size="56" style="font-family: Tahoma; font-size: 10pt; color: #666666" value="<%=yeniasp("baslik")%>"></td>
		</tr>
	</table>
	
</div>

	
	<div align="center">

	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F7F7F7" id="table13" height="30">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Açıklama &nbsp; </font></td>
			<td width="31" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="513"><font color="#666666">&nbsp;<textarea name="icerik" rows="9" cols="57" style="font-family: Tahoma; font-size: 10pt; color: #666666"><%=yeniasp("icerik")%></textarea></font></td>
		</tr>
	</table>
	
</div>
<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="submit" value="GÜNCELLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>								</td>
								</tr>
<%
sub duzenle
id=Request.Form("id")
baslik = Request.Form("baslik")
icerik = Request.Form("icerik")


if baslik=""  or id="" or icerik=""  then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sql = "select * from haber_banka_bilgileri where id="&id
duz.open sql,baglanti,1,3

duz("baslik")=baslik
duz("icerik")=icerik

duz.Update

%>
<script>
	alert('GÜNCELLEME İŞLEMİ TAMAMLANDI...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=haber-ekle');window.refresh;</script>
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