<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%><%
Set mrh = baglanti.Execute("select * from ilanlar where id="&Request.QueryString("id")&" Order by id asc" ) 
Session("ilanbaslik")
%>
<%
if mrh.eof or mrh.bof then
Response.redirect "uyari.asp"
else
%>
<%
Set cit=Conn.Execute("SELECT * FROM iller WHERE id=" & mrh("il")):Set city=Conn.Execute("SELECT * FROM ilceler WHERE id=" & mrh("ilce")):Set dtm=Conn.Execute("SELECT * FROM ilceler WHERE id=" & mrh("ilce")):Set dtf=Conn.Execute("SELECT * FROM iller WHERE id=" & mrh("il"))%><%If Not Session("ilanbaslik")=mrh("ilanbaslik") Then Conn.Execute("UPDATE ilanlar SET hit=hit+1 WHERE id="&mrh("id")) End If%>
<html>
<head>
<meta http-equiv="Content-Language" content="tr">
<title><%=mrh("ilanbaslik")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta name="keywords" content="<%=mrh("ilanaciklamasi")%>">
<meta name="description" content="<%=mrh("ilanaciklamasi")%>">
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
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table15" height="24">
					<tr>
						<td bgcolor="#000000">
						<p align="center">
						<font size="2" face="Verdana" color="#FFFFFF">İlan Detayı</font></td>
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
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table11" height="23">
								<tr>
									<td width="364"><b>
									<font size="2" face="Verdana" color="#FFFFFF">&nbsp;&nbsp;<%=mrh("ilanbaslik")%></font></b></td>
								</tr>
							</table>
							<hr color="#5A5A4E" size="1">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table12" height="23">
								<tr>
									<td width="77" bgcolor="#31312B">
									<font size="2" face="Tahoma" color="#FFFFFF">&nbsp; İlan 
									No :</font></td>
									<td width="121" bgcolor="#31312B"><b>
									<font color="#99CC00" size="2" face="Tahoma">&nbsp;<%=mrh("id")%></font></b></td>
									<td width="448" bgcolor="#31312B">
									<p align="right">
									<font size="2" face="Tahoma" color="#FFFFFF">
									İlan Tarihi :&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
									<td width="149" bgcolor="#31312B"><b>
									<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("tarih")%></font></b></td>
								</tr>
							</table>
							<div align="center">
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table13" height="253">
									<tr>
										<td width="351">
										<div align="center">
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="96%" bordercolor="#C0C0C0" id="table14" height="163">
												<tr>
													<td bgcolor="#31312B"><%
                     If Not mrh("resim1")="" Then
                     say=1%><script language=javascript type="text/javascript"><!--
                     var img = new Image();
                     var newWin;
                     var url = "ilanlar.asp?id=yonetim/<%=mrh("resim"&say)%>";
                     function loadImage(fileName, url){
                     this.url = url;
                     img.src = fileName;
                     document.preview.src = img.src;}
                     function bigImage(){
                     newWin = popup(url,'no',420,550,1);} //--></script>
                     <table border=0 align=center align=center bgcolor=#BFC0C1 width=339 height=208 cellpadding=0 cellspacing=0>
                        <tr>
                           <td colspan=2 valign=top align=center height="20" bgcolor="#49493F"></td>
                        </tr>
                        <tr>
                           <td valign=top align=center bgcolor="#49493F">
								<img src="yonetim/<%=mrh("resim"&say)%>" style="border: 0px solid #2485CA;" name="preview" border=0 width=331 height=240 alt="<%=mrh("ilanbaslik")%>">
                           </td>
                        </tr>
                        <tr>
                           <td valign=top align=center bgcolor="#49493F"><%
                           Do While Not mrh("resim"&say)=""
                           If say>5 Then Exit Do%><font face="Tahoma"><font size="2">
							</font>
                           <a href="#" onclick="loadImage('yonetim/<%=mrh("resim"&say)%>', 'ilan.asp?id=yonetim/<%=mrh("resim"&say)%>')"><b>
							<font size=2 color=#FFFFFF>[</font><font size=2 color=#99CC00><%=say%></font><font size=2 color=#FFFFFF>]</font></b></a><font size="2">&nbsp;<%
                           say=say+1:Loop%></font></font></td>
                       </tr>
                    </table><%Else%><img border="1" src="yonetim/ilanfoto/smultimedya_foto_yok.jpg" width=339 height=211 style="border: 2px solid #CCCCCC; "><%End If%></td>
												</tr>
											</table>
										</div>
										</td>
										<td valign="top">
										<div align="center">
							<hr color="#5A5A4E" size="1">
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table16" height="153">
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;İl</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=cit("sehir")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;İlçe</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=city("ilce")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Emlak Tipi</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("tip")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;İlan Tipi</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("ilan_tip")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font color="#FFFFFF" size="2" face="Tahoma">&nbsp;</font><b><font size="2" face="Tahoma" color="#FFFFFF">m²</font></b></td>
													<td width="9">
													<p align="center">
													<font color="#FFFFFF" size="2" face="Tahoma">
													:</font></td>
													<td width="115">
													<font color="#99CC00" size="2" face="Tahoma">&nbsp;<%=mrh("metrekare")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Emlak 
													Durumu</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("emlakdurum")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Tapu 
													Durumu</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("tapu")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;İskan 
													Durumu</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("iskan")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Oda 
													Sayısı</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("oda")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Banyo 
													Sayısı</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("banyo")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Bina 
													Yaşı</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("binayasi")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Bina 
													kat sayısı</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("bina_kat")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Bulunduğu 
													Kat</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("bulundugu_kat")%></font></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Isıtma</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#99CC00">&nbsp;<%=mrh("isitma")%></font></td>
												</tr>
												<tr>
													<td width="89">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Krediye 
													Uygun</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td width="115">&nbsp;<img src="<%If Not mrh("kredievet")="" Then%>images/<%=mrh("kredievet")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
													<td width="98">
													<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;Tarihi 
													Eser</font></td>
													<td width="9">
													<p align="center">
													<font size="2" face="Tahoma" color="#FFFFFF">
													:</font></td>
													<td>&nbsp;<img src="<%If Not mrh("tarihi_eser")="" Then%>images/<%=mrh("tarihi_eser")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
												</tr>
											</table>
											<div align="center">
												<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table17" height="57">
													<tr>
														<td height="22" bgcolor="#49493F">&nbsp;<b><font size="2" face="Tahoma" color="#99CC00">İlan 
														Açıklaması </font></b>
														</td>
													</tr>
													<tr>
														<td valign="top">
														<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=mrh("ilanaciklamasi")%></font></td>
													</tr>
												</table>
											</div>
										</div>
										</td>
									</tr>
								</table>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table18">
										<tr>
											<td width="351">&nbsp;<font face="Tahoma"><font size="2" color="#FFFFFF">Bu İlan Şimdiye Kadar :</font><b><font size="2" color="#99CC00"> <%=mrh("hit")%>&nbsp;</font></b><font color="#FFFFFF" size="2"> Kez Görüntülendi..</font></font></td>
											<td width="74">
											<font size="2" face="Verdana" color="#FFFFFF">&nbsp;Fiyatı</font></td>
											<td width="13">
											<p align="center">
											<font size="2" face="Verdana" color="#FFFFFF">
											:</font></td>
											<td>
											<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=mrh("fiyat1")%></font><font size="2" face="Tahoma" color="#99CC00">,</font><font size="2" face="Tahoma" color="#FFFFFF"><%=mrh("fiyat2")%>&nbsp; </font>
											<b>
											<font size="2" face="Tahoma" color="#99CC00">
											<%=mrh("paradegeri")%></font></b></td>
										</tr>
									</table>
								</div>
							</div>
							<hr color="#5A5A4E" size="1">
												<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table20" height="23">
													<tr>
														<td height="23" bgcolor="#49493F">&nbsp;<b><font size="2" face="Tahoma" color="#99CC00">DETAYLI 
														BİLGİ</font></b></td>
													</tr>
												</table>
							<div align="center">
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="99%" bordercolor="#C0C0C0" id="table19">
									<tr>
										<td width="140">
										<p align="right">&nbsp;<font size="2" face="Tahoma" color="#FFFFFF"> 
										Alarm&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("alarm")="" Then%>images/<%=mrh("alarm")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">&nbsp;<font size="2" face="Tahoma" color="#FFFFFF">Asansör&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("asansor")="" Then%>images/<%=mrh("asansor")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right"><font color="#FFFFFF">&nbsp;</font><font size="2" face="Tahoma" color="#FFFFFF">Bahçe 
										Dubleksi&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="18"><img src="<%If Not mrh("bahce_dubleksi")="" Then%>images/<%=mrh("bahce_dubleksi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Bahçe Katı&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("bahce_kati")="" Then%>images/<%=mrh("bahce_kati")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">Bahçeli&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("bahceli")="" Then%>images/<%=mrh("bahceli")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Balkon&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="18"><img src="<%If Not mrh("balkon")="" Then%>images/<%=mrh("balkon")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Barbekü&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("barbeku")="" Then%>images/<%=mrh("barbeku")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Beyaz 
																		Eşya&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("beyazesya")="" Then%>images/<%=mrh("beyazesya")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Boğaz Manzarası&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="18"><img src="<%If Not mrh("bogaz_manzarasi")="" Then%>images/<%=mrh("bogaz_manzarasi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Çatı Dubleksi&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("cati_dubleksi")="" Then%>images/<%=mrh("cati_dubleksi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Çelik 
																		Kapı</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("celik_kapi")="" Then%>images/<%=mrh("celik_kapi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Deniz Manzarası</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("deniz_manzarasi")="" Then%>images/<%=mrh("deniz_manzarasi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Dubleks&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
										<td width="16"><img src="<%If Not mrh("dubleks")="" Then%>images/<%=mrh("dubleks")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Eşyalı</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("esyali")="" Then%>images/<%=mrh("esyali")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Ebeveyn Banyosu</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("ebeveyn_banyosu")="" Then%>images/<%=mrh("ebeveyn_banyosu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Hidrofor</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("hidrofor")="" Then%>images/<%=mrh("hidrofor")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Güvenlik</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("guvenlik")="" Then%>images/<%=mrh("guvenlik")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">Fitness 
				Salonu</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("fitness_salonu")="" Then%>images/<%=mrh("fitness_salonu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Jakuzi</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("jakuzi")="" Then%>images/<%=mrh("jakuzi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Jeneratör</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("jenerator")="" Then%>images/<%=mrh("jenerator")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Kablo TV- Uydu</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("kablo_tv_uydu")="" Then%>images/<%=mrh("kablo_tv_uydu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Kapalı Garaj</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("kapali_garaj")="" Then%>images/<%=mrh("kapali_garaj")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Kapıcı</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("kapici")="" Then%>images/<%=mrh("kapici")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Klima</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("klima")="" Then%>images/<%=mrh("klima")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Mobilya</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("mobilya")="" Then%>images/<%=mrh("mobilya")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Müstakil</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("mustakil")="" Then%>images/<%=mrh("mustakil")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Mutfak Doğalgazı</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("mutfak_dogalgazi")="" Then%>images/<%=mrh("mutfak_dogalgazi")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Otopark</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("otopark")="" Then%>images/<%=mrh("otopark")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Oyun 
																		Parkı</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("oyun_parki")="" Then%>images/<%=mrh("oyun_parki")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Parke Zemin</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("parke_zemin")="" Then%>images/<%=mrh("parke_zemin")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Şömine</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("sonine")="" Then%>images/<%=mrh("sonine")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Su 
																		Deposu</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("su_deposu")="" Then%>images/<%=mrh("su_deposu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Site İçerisinde</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("site_icerisinde")="" Then%>images/<%=mrh("site_icerisinde")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
																		<font size="2" face="Tahoma" color="#FFFFFF">
										Tenis Kortu</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("tenis_kortu")="" Then%>images/<%=mrh("tenis_kortu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Teras</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("teras")="" Then%>images/<%=mrh("teras")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Tripleks</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="18"><img src="<%If Not mrh("tripleks")="" Then%>images/<%=mrh("tripleks")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td width="140">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
																		Yüzme 
										Havuzu</font>&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("yuzme_havuzu")="" Then%>images/<%=mrh("yuzme_havuzu")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="112">&nbsp;</td>
										<td width="145">
										<p align="right">
										<font size="2" face="Tahoma" color="#FFFFFF">
										Yangın Merdiveni</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
										<td width="16"><img src="<%If Not mrh("yangin_merdiveni")="" Then%>images/<%=mrh("yangin_merdiveni")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>" width="16" height="16"></td>
										<td width="106">&nbsp;</td>
										<td width="157">&nbsp;</td>
										<td width="18">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</div>
							<hr color="#49493F" size="3" width="98%">
							<table border="0" cellpadding="0" width="99%" id="table22" style="border-collapse: collapse" height="27">
								<tr>
									<td>&nbsp;<font size="2" face="Tahoma" color="#99CC00"><span style="background-color: #49493F"> 
									Son Eklenen 12 İlan </span></font></td>
								</tr>
							</table>
							<table border="0" width="99%" id="table21" cellpadding="0" style="border-collapse: collapse" height="130">
								<tr>
									<td>
									<table cellpadding="0" cellspacing="0" width="794" height="80%">
   <tr><%metallicamrhbozkurt=1:Set nil=Conn.Execute("SELECT top 12 * FROM ilanlar ORDER BY id Desc"):Do while Not nil.Eof:Set cit=Conn.Execute("SELECT * FROM iller WHERE id=" & nil("il")):Set city=Conn.Execute("SELECT * FROM ilceler WHERE id=" & nil("ilce")):Set dtm=Conn.Execute("SELECT * FROM ilceler WHERE id=" & nil("ilce")):Set dtf=Conn.Execute("SELECT * FROM iller WHERE id=" & nil("il"))%>
      <td valign="top" width="789" style="padding-left: 5px">
			<div align="left">
				<table border="1" cellpadding="0" style="border-collapse: collapse" width="256" bordercolor="#FFFFFF" id="table10" height="101">
					<tr>
						<td bgcolor="#808080" style="padding-top: 0px"> 
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table11" height="93">
								<tr>
									<td width="121">
									<p align="center">
									<a href="ilan.asp?s-emlak=ilandetayi&id=<%=nil("id")%>">
									<img alt="<%=nil("ilanbaslik")%>" border="0" src="yonetim/<%If Not nil("resim1")="" Then%><%=nil("resim1")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="116" height="87" style="border: 1px solid #FFFFFF; "></a></td>
									<td>
									<div align="center">
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table12">
											<tr>
												<td width="40">
										<font size="2" face="Tahoma">&nbsp;İ.No</font></td>
												<td width="6">
												<p align="center">
												:</td>
												<td>
												<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=nil("id")%></font></td>
											</tr>
											<tr>
												<td width="40">
											<font size="2" face="Tahoma">&nbsp;İl</font></td>
												<td width="6">
												<p align="center">
												:</td>
												<td>
												<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=cit("sehir")%></font></td>
											</tr>
											<tr>
												<td width="40">
												<font size="2" face="Tahoma">&nbsp;İlçe</font></td>
												<td width="6">
												<p align="center">
												:</td>
												<td>
												<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=city("ilce")%></font></td>
											</tr>
											<tr>
												<td width="40">
													<font size="2" face="Tahoma">
													&nbsp;İ.Tipi</font></td>
												<td width="6">
												<p align="center">
												:</td>
												<td>
												<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=nil("ilan_tip")%></font></td>
											</tr>
											<tr>
												<td width="40">
														<font size="2" face="Tahoma">&nbsp;E.Tipi</font></td>
												<td width="6">
												<p align="center">
												:</td>
												<td>
												<font size="2" face="Tahoma" color="#FFFFFF">&nbsp;<%=nil("tip")%></font></td>
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
      </td><%If metallicamrhbozkurt=3 OR metallicamrhbozkurt=6 OR metallicamrhbozkurt=9 OR metallicamrhbozkurt=12 OR metallicamrhbozkurt=15 OR metallicamrhbozkurt=18 OR metallicamrhbozkurt=21 OR metallicamrhbozkurt=24 OR metallicamrhbozkurt=27 OR metallicamrhbozkurt=30 OR metallicamrhbozkurt=33 OR metallicamrhbozkurt=36 OR metallicamrhbozkurt=39 OR metallicamrhbozkurt=42 OR metallicamrhbozkurt=45 OR metallicamrhbozkurt=48 OR metallicamrhbozkurt=51 OR metallicamrhbozkurt=54 OR metallicamrhbozkurt=57 OR metallicamrhbozkurt=60 OR metallicamrhbozkurt=63 OR metallicamrhbozkurt=66 OR metallicamrhbozkurt=69 OR metallicamrhbozkurt=72 OR metallicamrhbozkurt=75 OR metallicamrhbozkurt=78 OR metallicamrhbozkurt=81 OR metallicamrhbozkurt=84 OR metallicamrhbozkurt=87 OR metallicamrhbozkurt=90 OR metallicamrhbozkurt=93 OR metallicamrhbozkurt=96 OR metallicamrhbozkurt=99 OR metallicamrhbozkurt=102 Then Response.Write"</tr><tr><td colspan=""2"" height=""10""></td></tr><tr>"End If:metallicamrhbozkurt=metallicamrhbozkurt+1:nil.MoveNext:Loop%>
   </tr>
   <tr>
      <td height="1" valign="top"></td>
</table></td>
								</tr>
							</table>
							<hr color="#49493F" size="3" width="98%">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</td>
		<td><%end if%>
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