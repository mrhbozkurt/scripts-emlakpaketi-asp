<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
Set emrahbozkurt = baglanti.Execute("select * from emlak_talebi where id="&Request.QueryString("emlak_talebi")&" Order by id asc" ) 
Session("ad")
%>
<%Set cit=Conn.Execute("SELECT * FROM iller WHERE id=" & emrahbozkurt("il")):Set city=Conn.Execute("SELECT * FROM ilceler WHERE id=" & emrahbozkurt("ilce")):Set dtm=Conn.Execute("SELECT * FROM ilceler WHERE id=" & emrahbozkurt("ilce")):Set dtf=Conn.Execute("SELECT * FROM iller WHERE id=" & emrahbozkurt("il"))%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<title><%=emrahbozkurt("ad")%> <%=emrahbozkurt("soyad")%> Emlak Talebinde Bulunmuş..</title>
</head>

<body topmargin="0" leftmargin="0">

<div align="left">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table1" height="899">
		<tr>
			<td>
			<div align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table5" height="27">
					<tr>
						<td>&nbsp;<b><font size="2" face="Verdana" color="#CC3300">Kişisel 
						Bilgiler</font></b></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#666666" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table2" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Ad</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("ad")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table3" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Soyad</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("soyad")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table4" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						E-mail</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("email")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table6" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Medeni Hali</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("medeni")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table7" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Cep Telefon</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("cep")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table8" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Telefon</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("tel")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#666666" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table9" height="27">
					<tr>
						<td><b>&nbsp;<font face="Verdana" size="2" color="#CC3300">Emlak 
						Bilgileri</font></b></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#666666" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table10" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Emlak Tipi</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("tip")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table11" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						İl</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=cit("sehir")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table12" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						İlçe</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=city("ilce")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table13" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						İlan Tipi</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("ilan_tip")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table14" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Oda Sayısı</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("oda")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table15" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Emlağınn Durumu</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("durum")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table16" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Binanın Yaşı</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("yas")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table17" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Banyo Sayısı</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("banyo")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table18" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Balkon Sayısı</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("balkon")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table19" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Binadaki Kat Sayısı</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("bina_kat")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table20" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Bulunduğu Kat</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("bulundugu_kat")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table21" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Isıtma</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("isitma")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table22" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						MetreKare (m2) Durumu</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("kare1")%>&nbsp; ile&nbsp; <%=emrahbozkurt("kare2")%>&nbsp; M2 Arası</font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table23" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Fiyat</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("fiyat1")%>&nbsp; ile&nbsp; <%=emrahbozkurt("fiyat2")%>&nbsp; <%=emrahbozkurt("fiyat_tip")%>&nbsp;  Arası</font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table24" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Açıklama</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("aciklama")%></font></td>
					</tr>
				</table>
				<hr width="99%" size="1" color="#F3F3F3" align="left">
				<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="99%" bordercolor="#F3F3F3" id="table25" height="21">
					<tr>
						<td><font size="2" face="Tahoma" color="#CC3300">&nbsp; 
						Gönderildiği Tarih</font></td>
						<td width="9">
						<p align="center">
						<font size="2" face="Tahoma" color="#CC3300">:</font></td>
						<td width="525">
						<font color="#666666" size="2" face="Tahoma">&nbsp;<%=emrahbozkurt("tarih")%></font></td>
					</tr>
				</table>
				<p align="center">
<input class="noPrint" type="button" value="Yazdır" onclick="window.print()" style="border: 1px solid #C0C0C0; background-color: #F7F7F7; font-family:Verdana; font-size:10pt; color:#CC3300"></div>
			</td>
		</tr>
	</table>
</div>

</body>

</html>