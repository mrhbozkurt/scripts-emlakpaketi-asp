<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<%
Set mrh = baglanti.Execute("select * from haber_banka_bilgileri where id="&Request.QueryString("haber_banka_bilgileri")&" Order by id asc" ) 
Session("baslik")
%>
<html>
<head>
<meta http-equiv="Content-Language" content="tr">
<title>Emlak Haberleri | <%=mrh("baslik")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta name="keywords" content="<%=emrahbozkurt("aranacak")%>">
<meta name="description" content="<%=emrahbozkurt("aciklama")%>">
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
						<td valign="top"><!--#include file="emlak-arama.asp"--></td>
					</tr>
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
						<font face="Verdana" size="2" color="#FFFFFF">Detaylar</font></td>
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
									<td valign="top"><%detaylar = request.QueryString ("detaylar")%>
													<%IF detaylar="haber" Then%>
													<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" height="108">
					<tr>
						<td valign="top">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table12" bgcolor="#F1F2E2" height="20">
								<tr>
									<td bgcolor="#302F2A">
									<p align="center">
									<font size="2" face="Tahoma" color="#FFFFFF">
									<%=mrh("baslik")%></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;</font><font size="2" face="Tahoma" color="#CC3300">
									</font>
									<font size="2" face="Tahoma" color="#99CC00">
									HABERİN DETAYI</font></td>
								</tr>
							</table>
							<div align="center">
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table13">
									<tr>
										<td>
										<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=mrh("icerik")%></font></td>
									</tr>
								</table><br>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table14">
										<tr>
											<td>
											<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("tarih")%></font></td>
											<td width="140">
											<p align="right">
											<a href="emlak-haberleri.asp">
											<span style="text-decoration: none">
											<font size="2">&lt;&lt;Geri</font></span></a></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						</td>
					</tr>
				</table>
				</div>
													<%End if%>
													<%IF detaylar="banka-kredi-oranlari" Then%><div align="center">
														<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table15" height="22">
															<tr>
																<td bgcolor="#302F2A">
																<p align="center">
																<font size="2" face="Tahoma">
																<font color="#FFFFFF">&nbsp;<%=mrh("baslik")%>&nbsp;</font><font color="#99CC00">DETAYI</font></font></td>
															</tr>
														</table>
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table16">
									<tr>
										<td>
										<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=mrh("icerik")%></font></td>
									</tr>
								</table><br>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table17">
										<tr>
											<td>
											<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("tarih")%></font></td>
											<td width="140">
											<p align="right">
											<a href="emlak-haberleri.asp">
											<span style="text-decoration: none">
											<font size="2">&lt;&lt;Geri</font></span></a></td>
										</tr>
									</table>
								</div>
										<%END IF%></td>
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
						<td valign="top"><!--#include file="emlak-haberleri-son5.asp"--></td>
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