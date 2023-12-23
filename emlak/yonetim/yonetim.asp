<!--#include file="engel.asp"-->
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
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="89%" bordercolor="#C0C0C0" id="table1" height="389">
		<tr>
			<td valign="top" width="264">
			<div align="center">
			<div align="center">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="94%" bordercolor="#E4E4E4" id="table7" height="390">
					<tr>
						<td bgcolor="#F8F8F8" valign="top">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table8" height="386">
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
			</div>
			</td>
			<td valign="top">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#E4E4E4" id="table9" height="391">
					<tr>
						<td bgcolor="#F8F8F8" valign="top" style="padding-top: 6px">
						<p align="center">
						<%s_emlak = request.QueryString ("s_emlak")%><p align="center">
						<%IF s_emlak="" Then%>
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">
									.mrh Emlak Portalı V.01</font><p align="center">
						<font size="2" face="Tahoma" color="#CC3300">&nbsp;<a href="oturumu_kapat.asp"><span style="text-decoration: none"><font color="#CC3300">Oturumu 
			Kapat</font></span></a>
					    <%End IF%>
					    <%IF s_emlak="yazi-icerigi" Then%>
					    <!--#include file="yazi-icerigi.asp"-->
					    <%End IF%>
					    <%IF s_emlak="kurumsal-icerik" Then%>
					    <!--#include file="kurumsal.asp"-->
					    <%End IF%>
					    <%IF s_emlak="iletisim_bilgileri" Then%>
					    <!--#include file="iletisim_bilgileri.asp"-->
					    <%End IF%>
					    <%IF s_emlak="haber-ekle" Then%>
					    <!--#include file="haber-ekle.asp"-->
					    <%End IF%>
					    <%IF s_emlak="haber-yayinda" Then%>
					    <!--#include file="haberler.asp"-->
					    <%End IF%>
					    <%IF s_emlak="yonetim-sifre-degisikligi" Then%>
					    <!--#include file="yonetim_sifre.asp"-->
					    <%End IF%>
					    <%IF s_emlak="ilan-ekle" Then%>
					    <!--#include file="ilan-ekle.asp"-->
					    <%End IF%>
					    <%IF s_emlak="ilanlar" Then%>
					    <!--#include file="ilanlar.asp"-->
					    <%End IF%>
					    <%IF s_emlak="ofisler" Then%>
					    <!--#include file="ofisler.asp"-->
					    <%End IF%>
					    <%IF s_emlak="iletisim-form-gelen" Then%>
					    <!--#include file="iletisim-gelen-bilgiler.asp"-->
					    <%End IF%>
					    <%IF s_emlak="emlak-talep" Then%>
					    <!--#include file="emlak-talebi.asp"-->
					    <%End IF%>
					    <%IF s_emlak="il-ekle" Then%>
					    <!--#include file="il-ekle.asp"-->
					    <%End IF%>
					    <%IF s_emlak="ilce-ekle" Then%>
					    <!--#include file="ilce-ekle.asp"-->
					    <%End IF%>
					    <br>
						<br>
						<br>
						&nbsp;</font></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

</body>

</html>