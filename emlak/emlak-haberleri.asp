<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<%
Set mrh = Server.CreateObject("ADODB.Recordset")
sql = "Select * from haber_banka_bilgileri  order by id desc"
mrh.Open sql,baglanti,1,3
%>
<html>
<head>
<meta http-equiv="Content-Language" content="tr">
<title>Emlak Haberleri | <%=emrahbozkurt("sitebasligi")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta name="keywords" content="<%=emrahbozkurt("aranacak")%>">
<meta name="description" content="<%=emrahbozkurt("aciklama")%>">
<style>
<!--

	.linkgoster			{ font-family: Verdana; font-size: 11px; color: #816D5C; line-height: 14px; }
	.linkgoster			{ padding: 4px; }
-->
</style>
</head>
<body bgcolor="#999999" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!-- ImageReady Slices (tema.jpg) -->
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="66%" bordercolor="#C0C0C0" id="table1" height="171">
		<tr>
			<td>
<table id="table2" width="841" height="801" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="13">
			<img src="images/smultimedya-emlak-v.01_01.gif" width="840" height="7" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="7" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/smultimedya-emlak-v.01_02.gif" width="39" height="9" alt=""></td>
		<td colspan="3" rowspan="5">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="223" bordercolor="#C0C0C0" id="table4" background="images/smultimedya-emlak-v.01_03.gif" height="321">
					<tr>
						<td height="20" bgcolor="#665F55">
						<font size="2" face="Tahoma" color="#FFFFFF">
						&nbsp; <a href="default.asp" style="text-decoration: none" title="Emlak Ana Sayfası">Ana 
						Sayfa</a> </font>
									<font size="2" face="Tahoma" color="#C0C0C0">
						&nbsp;| </font><font size="2" face="Tahoma" color="#FFFFFF">
						&nbsp;<a href="iletisim.asp" style="text-decoration: none" title="İletişim Bilgileri">İletişim</a></font></td>
					</tr>
					<tr>
						<td valign="top"><!--#include file="emlak-arama.asp"--></td>					</tr>
				</table>
			</div>
		</td>
		<td colspan="8">
			<img src="images/smultimedya-emlak-v.01_04.gif" width="578" height="9" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="9" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/smultimedya-emlak-v.01_05.gif" width="18" height="149" alt=""></td>
		<td>
			<img src="images/smultimedya-emlak-v.01_06.gif" width="21" height="149" alt=""></td>
		<td colspan="7">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="560" bordercolor="#C0C0C0" id="table3" background="images/smultimedya-emlak-v.01_07.gif" height="149">
					<tr>
						<td><!--#include file="logo.asp"--></td>
					</tr>
				</table>
			</div>
		</td>
		<td rowspan="15" valign="top">
			<img src="images/smultimedya-emlak-v.01_08.gif" width="18" height="784" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="149" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/smultimedya-emlak-v.01_09.gif" width="39" height="30" alt=""></td>
		<td colspan="7">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="560" bordercolor="#C0C0C0" id="table10" background="images/smultimedya-emlak-v.01_10.gif" height="30">
					<tr>
						<td>&nbsp;<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;
						<a href="kurumsal.asp" style="text-decoration: none" title="Emlak Firması Tanıtımı">Kurumsal</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="satilik-emlaklar.asp" style="text-decoration: none" title="Satılık Emlak İlanlarının Listesi">Satılıklar</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="kiralik-emlaklar.asp" style="text-decoration: none" title="Kiralık Emlak İlanlarının Listesi">Kiralıklar</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="arsa-araziler.asp" style="text-decoration: none" title="Arsa & Arazi İlanlarının Listesi">Arsa &amp; 
						Araziler </a></font>
						<font size="2" face="Tahoma" color="#C0C0C0">
												| </font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-talep-formu.asp" style="text-decoration: none" title="Size Özel Emlak Talep Formu">
						Emlak Talep</a> </font><font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-ofislerimiz.asp" style="text-decoration: none" title="Emlak Ofislerimizin Bilgileri">Ofislerimiz</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-haberleri.asp" style="text-decoration: none" title="Emlak Hakkında Tüm Haberler">Haberler
						</a>&nbsp;</font></td>
					</tr>
				</table>
			</div>
		</td>
		<td>
			<img src="images/spacer.gif" width="1" height="30" alt=""></td>
	</tr>
	<tr>
		<td colspan="2" rowspan="3">
			<img src="images/smultimedya-emlak-v.01_11.gif" width="39" height="146" alt=""></td>
		<td colspan="7">
			<img src="images/smultimedya-emlak-v.01_12.gif" width="560" height="18" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="18" alt=""></td>
	</tr>
	<tr>
		<td rowspan="3">
			<img src="images/smultimedya-emlak-v.01_13.gif" width="2" height="161" alt=""></td>
		<td colspan="6">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="558" bordercolor="#C0C0C0" id="table5" background="images/smultimedya-emlak-v.01_14.gif" height="115">
					<tr>
						<td><!--#include file="flash-ilan-emlak-portfoyu.asp"--></td>
					</tr>
				</table>
			</div>
		</td>
		<td>
			<img src="images/spacer.gif" width="1" height="115" alt=""></td>
	</tr>
	<tr>
		<td colspan="3">
			<img src="images/smultimedya-emlak-v.01_15.gif" width="223" height="13" alt=""></td>
		<td colspan="6" rowspan="2">
			<img src="images/smultimedya-emlak-v.01_16.gif" width="558" height="46" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="13" alt=""></td>
	</tr>
	<tr>
		<td rowspan="10" valign="top">
			<img src="images/smultimedya-emlak-v.01_17.gif" width="18" height="459" alt=""></td>
		<td colspan="2">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table11" height="23">
					<tr>
						<td bgcolor="#302F2A">
						<p align="center">
						<font face="Verdana" size="2" color="#FFFFFF">Haberler</font></td>
					</tr>
				</table>
			</div>
		</td>
		<td colspan="2">
			<img src="images/smultimedya-emlak-v.01_19.gif" width="161" height="33" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="33" alt=""></td>
	</tr>
	<tr>
		<td colspan="11">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="804" bordercolor="#C0C0C0" id="table6" background="images/smultimedya-emlak-v.01_20.gif" height="175">
					<tr>
						<td bgcolor="#5A5A4E">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table12" height="171">
								<tr>
									<td valign="top">
									<div align="center">
										<table border="1" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#6A6A5B" id="table13" height="170">
											<tr>
												<td width="399">
												<div align="center">
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table14">
														<tr>
															<td height="24" bgcolor="#302F2A" valign="top">&nbsp;<font color="#99CC00" size="2" face="Verdana">Emlak 
															Haberleri</font></td>
														</tr>
														<tr>
															<td height="142" valign="top"><font size="2" face="Tahoma" color="#CC3300"><% if mrh.eof then
response.write("Haber Bulunamad&#305;!!!")
else
%></font>
														<div align="center">
															<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table14" height="29">
																<tr>
																	<td valign="top">

<%
git = Request.QueryString("git")
if git="" then 
git=1
end if
%>


<%
mrh.absolutepage = git
sayfa = mrh.pagecount
for i=1 to mrh.pagesize
if mrh.eof or mrh.bof then exit for
%>
<font size="2" face="Tahoma"><a href="detay.asp?detaylar=haber&haber_banka_bilgileri=<%=mrh("id")%>">
<span style="text-decoration: none"><font size="2"><font color="#99CC00">-</font>&nbsp;<%=mrh("baslik")%></font></span></a><br></font></td>
<% mrh.MoveNext
      Next %>
</table>
<center>
  <font size="2" face="Tahoma" color="#C0C0C0">Sayfa :</font><font size="2" face="Tahoma" color="#99CC00"><%
for y=1 to sayfa 
if git=y then
response.write y
else
response.write "<b> <a href=""emlak-haberleri.asp?git="&y&"""><font face=Tahoma size=1 color=#CC3300>["&y&"]</font></a></b>&nbsp;"
end if
next
%>

														</font>
  
  <font size="2" face="Tahoma" color="#666666">
<br><br>
	</font>
  
  <font size="2" face="Tahoma" color="#C0C0C0">
	Toplam Haber Say&#305;s&#305; :</font><font size="2" face="Tahoma" color="#99CC00"><%=mrh.recordcount%>
<% end if %>

														</font>
</td>
														</tr>
													</table>
												</div>
												</td>
												<td valign="top">
												<div align="center">
													<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table15">
														<tr>
															<td height="24" bgcolor="#302F2A" valign="top">&nbsp;<font face="Verdana" size="2" color="#99CC00">Banka 
															Kredi Faiz Oranları</font></td>
														</tr>
														<tr>

														</font></td>
														</tr>
													</table>
													<table border="0" cellpadding="0" width="97%" id="table16" style="border-collapse: collapse" height="126">
														<tr>
															<td width="198">
															<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;</font><font size="2" face="Tahoma" color="#99CC00">-</font><font size="2" face="Tahoma" color="#FFFFFF">
															</font>
															<font size="2">
															<a style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.akbank.com/713.aspx"target="_blank">
															Akbank</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<font size="2">
															<a style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.fortis.com.tr/bireysel/konut_kredisi.jsp"target="_blank">
															Fortis</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<font size="2">
															<a style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.isbank.com.tr/bireysel/b-krediler-konut.html"target="_blank">
															T. İş Banlası</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<a style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.sekerbank.com.tr/bireysel-bireyselkrediler-konutkredileri.jsp"target="_blank">
															<font size="2">
															Şekerbank</font></a><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;
															<br>
															<br>
&nbsp;</font><font size="2" face="Tahoma" color="#99CC00">-</font><font size="2" face="Tahoma" color="#FFFFFF">
															</font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.denizbank.com.tr/TR/Krediler/Bireysel/konutkredisi.htm"target="_blank">
															Denizbank</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.garanti.com.tr/krediler/bireysel/konut_kredisi.html"target="_blank">
															<font size="2">
															Garanti</font></a></td>
															<td>
															<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;</font><font size="2" face="Tahoma" color="#99CC00">-</font><font size="2" face="Tahoma" color="#FFFFFF">
															</font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.kocbank.com.tr/errorPages/tr-TR/pageError.aspx"target="_blank">
															Koçbank</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font color="#99CC00" size="2" face="Tahoma">- </font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.yapikredi.com.tr/tr-TR/hesaplama_araclari.aspx"target="_blank">
															Yapıkredi</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
															</font></font>
															<font size="2" face="Tahoma">
															<font color="#99CC00">&nbsp;-</font><font color="#FFFFFF">
															</font></font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.finansbank.com.tr/bireysel/KrediKonut"target="_blank">
															Finansbank</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.hsbc.com.tr/tr/bireysel/bireysel_krediler/konut_kredisi/default.asp"target="_blank">
															HSBC</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<font size="2">
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.oyakbank.com.tr/sizinicin-konutkredisi.asp"target="_blank">
															Oyakbank</a></font><font color="#FFFFFF"><br>
															<font size="2" face="Tahoma">
															<br>
&nbsp;</font></font><font size="2" face="Tahoma"><font color="#99CC00">-</font><font color="#FFFFFF">
															</font></font>
															<a target="_blank" style="color: #FFFFFF; font-family: Tahoma; text-decoration: none" href="http://www.teb.com.tr/Bireysel/KonutKredisi.aspx"target="_blank">
															<font size="2">TEB</font></a></td>
														</tr>
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
						</td>
					</tr>
				</table>
			</div>
		</td>
		<td>
			<img src="images/spacer.gif" width="1" height="175" alt=""></td>
	</tr>
	<tr>
		<td colspan="11">
			<img src="images/smultimedya-emlak-v.01_21.gif" width="804" height="42" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="42" alt=""></td>
	</tr>
	<tr>
		<td rowspan="5">
			<img src="images/smultimedya-emlak-v.01_22.gif" width="21" height="179" alt=""></td>
		<td colspan="2">
			<img alt="Emlak Haberleri" src="images/smultimedya-emlak-v.01_23.gif" width="103" height="30" alt=""></td>
		<td colspan="4" rowspan="2">
			<img src="images/smultimedya-emlak-v.01_24.gif" width="290" height="35" alt=""></td>
		<td colspan="2">
			<img alt="Döviz kurları" src="images/smultimedya-emlak-v.01_25.gif" width="131" height="30" alt=""></td>
		<td colspan="2" rowspan="3">
			<img src="images/smultimedya-emlak-v.01_26.gif" width="259" height="37" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="30" alt=""></td>
	</tr>
	<tr>
		<td colspan="2">
			<img src="images/smultimedya-emlak-v.01_27.gif" width="103" height="5" alt=""></td>
		<td colspan="2" rowspan="2">
			<img src="images/smultimedya-emlak-v.01_28.gif" width="131" height="7" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="5" alt=""></td>
	</tr>
	<tr>
		<td colspan="5" rowspan="2">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="369" bordercolor="#C0C0C0" id="table7" background="images/smultimedya-emlak-v.01_29.gif" height="121">
					<tr>
						<td valign="top">
						<p><!--#include file="emlak-haberleri-son5.asp"--></td>
					</tr>
				</table>
			</div>
		</td>
		<td rowspan="3">
			<img src="images/smultimedya-emlak-v.01_30.gif" width="24" height="144" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="2" alt=""></td>
	</tr>
	<tr>
		<td rowspan="2">
			<img src="images/smultimedya-emlak-v.01_31.gif" width="2" height="142" alt=""></td>
		<td colspan="2">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="364" bordercolor="#C0C0C0" id="table8" background="images/smultimedya-emlak-v.01_32.gif" height="119">
					<tr>
						<td><!--#include file="doviz-kurlari.asp"--></td>
					</tr>
				</table>
			</div>
		</td>
		<td rowspan="2">
			<img src="images/smultimedya-emlak-v.01_33.gif" width="24" height="142" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="119" alt=""></td>
	</tr>
	<tr>
		<td colspan="5">
			<img src="images/smultimedya-emlak-v.01_34.gif" width="369" height="23" alt=""></td>
		<td colspan="2">
			<img src="images/smultimedya-emlak-v.01_35.gif" width="364" height="23" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="23" alt=""></td>
	</tr>
	<tr>
		<td colspan="11">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="804" bordercolor="#C0C0C0" id="table9" background="images/smultimedya-emlak-v.01_36.gif" height="22">
					<tr>
						<td><font color="#FFFFFF" face="Tahoma" size="2">&nbsp;Copyright 
						© 2008</font><font color="#909B4C" face="Tahoma" size="2"> <%=emrahbozkurt("siteadresi")%> </font></td>
						<td width="471">&nbsp;<font size="2" face="Tahoma" color="#FFFFFF">
						<a href="kurumsal.asp" style="text-decoration: none" title="Emlak Firması Tanıtımı">Kurumsal</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="satilik-emlaklar.asp" style="text-decoration: none" title="Satılık Emlak İlanlarının Listesi">Satılıklar</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="kiralik-emlaklar.asp" style="text-decoration: none" title="Kiralık Emlak İlanlarının Listesi">Kiralıklar</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="arsa-araziler.asp" style="text-decoration: none" title="Arsa & Arazi İlanlarının Listesi">Arsa &amp; 
						Araziler </a></font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						| </font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-talep-formu.asp" style="text-decoration: none" title="Size Özel Emlak Talep Formu">
						Emlak Talep</a> </font><font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-ofislerimiz.asp" style="text-decoration: none" title="Emlak Ofislerimizin Bilgileri">Ofislerimiz</a> </font>
						<font size="2" face="Tahoma" color="#C0C0C0">
						|</font><font size="2" face="Tahoma" color="#FFFFFF">
						<a href="emlak-haberleri.asp" style="text-decoration: none" title="Emlak Hakkında Tüm Haberler">Haberler</a></font></td>
					</tr>
				</table>
			</div>
		</td>
		<td>
			<img src="images/spacer.gif" width="1" height="22" alt=""></td>
	</tr>
	<tr>
		<td colspan="11">
			<img src="images/smultimedya-emlak-v.01_37.gif" width="804" height="8" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="1" height="8" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/spacer.gif" width="18" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="21" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="62" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="41" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="120" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="2" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="144" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="24" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="2" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="129" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="235" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="24" height="1" alt=""></td>
		<td>
			<img src="images/spacer.gif" width="18" height="1" alt=""></td>
		<td></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
			</td>
		</tr>
	</table>
</div>
</body>
</html>