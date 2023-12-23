<!--#include file="data.asp"-->
<%
Set emrahbozkurt = Server.CreateObject("adodb.recordset")
sql="Select *From site_ayarlari"
emrahbozkurt.Open sql,baglanti,1,3
%>
<html>
<head>
<meta http-equiv="Content-Language" content="tr">
<title>Emlak Talep Formu | <%=emrahbozkurt("sitebasligi")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<meta name="keywords" content="<%=emrahbozkurt("aranacak")%>">
<meta name="description" content="<%=emrahbozkurt("aciklama")%>">
<script language=javascript src="yonetim/javascripts/mrh-il-ilce.js"></script>
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
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table11" bgcolor="#000000" height="23">
					<tr>
						<td>
						<p align="center">
						<font size="2" face="Tahoma" color="#FFFFFF">Emlak Talep</font></td>
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

</head>

<body topmargin="1">
<form method="post" action="mrh-modul.asp?process=emlak-talebi">
<div align="left">
	<table border="0" width="100%" id="table1" cellpadding="0" style="border-collapse: collapse" height="65">
		<tr>
			<td>
			<p align="center"><font color="#CCCC00" size="2" face="Tahoma">Bu 
			bölüm emlak arayanlar içindir...!! <br>
			Lütfen aradığınız emlağın bilgilerini ve kişisel bilgilerinizi 
			doldurunuz...</font></td>
		</tr>
	</table>
</div>
<div align="center">
<TABLE cellSpacing=0 cellPadding=0 width="500" border=0 id="table2">
   <TR>
      <TD colspan="3" align="left"><b>
		<font size="2" face="Tahoma" color="#FFFFFF">Kişisel bilgiler</a></font></TD>
   </TR>
   <TR>
      <TD class="mrh_zebra1" height=8>
		<font size="2" face="Tahoma" color="#FFFFFF">Ad</font></TD>
      <TD class="mrh_zebra1" height=8><B>
		<font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD class="mrh_zebra1" height=8>
         <font color="#666666" face="Tahoma">
         <INPUT type=text name=ad style="width:150" size="20"></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD class="mrh_zebra2" height=8>
		<font size="2" face="Tahoma" color="#FFFFFF">SoyAd</font></TD>
      <TD class="mrh_zebra2" height=8><B>
		<font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD class="mrh_zebra2" height=8>
         <font color="#666666" face="Tahoma">
         <INPUT type=text name=soyad style="width:150" size="20"></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD class="mrh_zebra1" height=8>
		<font size="2" face="Tahoma" color="#FFFFFF">E-mail</font></TD>
      <TD class="mrh_zebra1" height=8><B>
		<font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD class="mrh_zebra1" height=8>
         <font color="#666666" face="Tahoma">
         <INPUT type=text name=email style="width:150" size="20"></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Medeni Haliniz</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
        <font color="#808080" face="Tahoma">
        <SELECT name=medeni style="border:1px solid #C0C0C0; width:150; font-family:Tahoma; font-size:10pt; color:#666666; background-color:#FFFFFF" size="1"> 
        <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
        <OPTION value="Bekar">Bekar</OPTION>
        <OPTION value="Evli">Evli</OPTION>
        </SELECT></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
        • </font>
      </TD>
   </TR>
   <TR>
      <TD class="mrh_zebra2" height=8>
		<font size="2" face="Tahoma" color="#FFFFFF">Cep Telefon</font></TD>
      <TD class="mrh_zebra2" height=8><B>
		<font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD class="mrh_zebra2" height=8>
         <font color="#666666" face="Tahoma"> 
         <INPUT maxLength=15 name=cep style="width:150; height:21" size="20"></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD class="mrh_zebra2" height=8>
		<font size="2" face="Tahoma" color="#FFFFFF">Telefon</font></TD>
      <TD class="mrh_zebra2" height=8><B>
		<font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD class="mrh_zebra2" height=8>
         <font color="#666666" face="Tahoma"> 
         <INPUT maxLength=15 name=tel style="width:150; height:20" size="20"></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD width=140 height=20></TD>
      <TD width=10 height=8></TD>
      <TD height=8></TD>
   </TR>
   <TR>
      <TD colspan="3" align="left" height="26"><b>
		<font size="2" face="Tahoma" color="#FFFFFF">İlan bilgileri</a></font></TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Emlak Tipi</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <select size="1" name="tip" class="input" style="width:150; font-family:Tahoma; color:#666666">
    	 <option value="-" salected>Lütfen Seçiniz</option>
    	 <option value="Konut">Konut</option>
    	 <option value="İşyeri">İşyeri</option>
    	 <option value="Yazlık">Yazlık</option>
    	 <option value="Devremülk">Devremülk</option>
    	 <option value="Turistik Tesis">Turistik Tesis</option>
    	 <option value="Kooperatif">Kooperatif</option>
    	 <option value="Arsa">Arsa</option>
         </select></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR><%
sql="SELECT * FROM iller"
Set iller=Conn.Execute(sql)%>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">İl</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
                  <font color="#808080" face="Tahoma">
                  <select onChange="muzion('oyunla','mrh-modul.asp?process=ilce&id='+ this.value);" name="il" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
    	             <option value="-" salected>Lütfen Seçiniz</option><%
    	             Do While Not iller.Eof %>
    	             <option value="<%=iller("id")%>"><%=iller("sehir")%></option><%
    	             iller.MoveNext
    	             Loop %>
                  </select></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">İlçe</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
                  <div id="oyunla">
                     <font color="#808080" face="Tahoma">
                     <select size="1" name="ilce" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	                <option value="-" selected>Önce İl Seçiniz</option>
                     </select></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;&nbsp;• 
						</font>
                  </div>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">İlan Tipi</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
        <font color="#808080" face="Tahoma">
        <SELECT name=ilan_tip style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
        <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
        <OPTION value="Satılık">Satılık</OPTION>
        <OPTION value="Kiralık">Kiralık</OPTION>
        </SELECT></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;&nbsp;
        •  </font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Oda Sayısı</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
            <font color="#808080" face="Tahoma">
            <SELECT name=oda style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
            <OPTION value="1 + 1">1 + 1</OPTION> 
            <OPTION value="2 + 1">2 + 1</OPTION> 
            <OPTION value="2 + 2">2 + 2</OPTION> 
            <OPTION value="3 + 1">3 + 1</OPTION> 
            <OPTION value="3 + 2">3 + 2</OPTION> 
            <OPTION value="4 + 1">4 + 1</OPTION> 
            <OPTION value="4 + 2">4 + 2</OPTION> 
            <OPTION value="4 + 4">4 + 4</OPTION> 
            <OPTION value="5 + 1">5 + 1</OPTION> 
            <OPTION value="5 + 2">5 + 2</OPTION> 
            <OPTION value="5 + 3">5 + 3</OPTION> 
            <OPTION value="5 + 4">5 + 4</OPTION> 
            <OPTION value="6 + 1">6 + 1</OPTION> 
            <OPTION value="6 + 2">6 + 2</OPTION> 
            <OPTION value="6 + 3">6 + 3</OPTION> 
            <OPTION value="7 + 1">7 + 1</OPTION> 
            <OPTION value="7 + 2">7 + 2</OPTION> 
            <OPTION value="7 + 3">7 + 3</OPTION> 
            <OPTION value="8 + 1">8 + 1</OPTION> 
            <OPTION value="8 + 2">8 + 2</OPTION> 
            <OPTION value="8 + 4">8 + 4</OPTION> 
            <OPTION value="Stüdyo">Stüdyo</OPTION>
            </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      		</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Emlağınn Durumu</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <SELECT name=durum style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
           <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
           <OPTION value="Sıfır">Sıfır</OPTION>
           <OPTION value="İkinci El">İkinci El</OPTION>
           <OPTION value="İnşa Halinde">İnşa Halinde</OPTION>
         </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Binanın Yaşı</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <SELECT name=yas style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
            <OPTION value="1-2">1-2</OPTION>
            <OPTION value="3-4">3-4</OPTION>
            <OPTION value="5-6">5-6</OPTION>
            <OPTION value="7-8">7-8</OPTION>
            <OPTION value="9-10">9-10</OPTION>
            <OPTION value="11-15">11-15</OPTION>
            <OPTION value="16-20">16-20</OPTION>
            <OPTION value="21-25">21-25</OPTION>
            <OPTION value="26-30">26-30</OPTION>
            <OPTION value="31-35">31-35</OPTION>
             <OPTION value="36-40">36-40</OPTION>
            <OPTION value="40 Yıl Üzeri">40 Yıl Üzeri</OPTION>
         </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Banyo Sayısı</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <SELECT name=banyo style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
            <OPTION value="1">1</OPTION>
            <OPTION value="2">2</OPTION>
            <OPTION value="3">3</OPTION>
            <OPTION value="4">4</OPTION>
            <OPTION value="5">5</OPTION>
         </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Balkon Sayısı</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <SELECT name=balkon style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
            <OPTION value="1">1</OPTION>
            <OPTION value="2">2</OPTION>
            <OPTION value="3">3</OPTION>
            <OPTION value="4">4</OPTION>
            <OPTION value="5">5</OPTION>
         </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Binadaki Kat Sayısı</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
            <font color="#808080" face="Tahoma">
            <SELECT name=bina_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
               <OPTION value="1">1</OPTION>
               <OPTION value="2">2</OPTION>
               <OPTION value="3">3</OPTION>
               <OPTION value="4">4</OPTION>
               <OPTION value="5">5</OPTION>
               <OPTION value="6">6</OPTION>
               <OPTION value="7">7</OPTION>
               <OPTION value="8">8</OPTION>
               <OPTION value="9">9</OPTION>
               <OPTION value="10">10</OPTION>
               <OPTION value="10 Üzeri">10 Üzeri</OPTION>
            </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      		</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Bulunduğu Kat</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
            <font color="#808080" face="Tahoma">
            <SELECT name=bulundugu_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
               <OPTION value="Bodrum Kat">Bodrum Kat</OPTION>
               <OPTION value="Zemin Kat">Zemin Kat</OPTION>
               <OPTION value="Bahçe Katı">Bahçe Katı</OPTION>
               <OPTION value="Giriş Kat">Giriş Kat</OPTION>
               <OPTION value="Çatı Katı">Çatı Katı</OPTION>
               <OPTION value="Yüksek Giriş">Yüksek Giriş</OPTION>
               <OPTION value="1">1</OPTION>
               <OPTION value="2">2</OPTION>
               <OPTION value="3">3</OPTION>
               <OPTION value="4">4</OPTION>
               <OPTION value="5">5</OPTION>
               <OPTION value="6">6</OPTION>
               <OPTION value="7">7</OPTION>
               <OPTION value="8">8</OPTION>
               <OPTION value="9">9</OPTION>
               <OPTION value="10">10</OPTION>
               <OPTION value="10 Üzeri">10 Üzeri</OPTION>
            </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      		</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Isıtma</font></TD>
      <TD height=25>&nbsp;</TD>
      <TD height=25>
         <font color="#808080" face="Tahoma">
         <SELECT name=isitma style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
           <OPTION value="-" salected>Lütfen Seçiniz</OPTION> 
           <OPTION value="Kombi (Doğalgaz)">Kombi (Doğalgaz)</OPTION>
           <OPTION value="Kalorifer (Doğalgaz)">Kalorifer (Doğalgaz)</OPTION>
           <OPTION value="Kat Kaloriferi (Akaryakıt)">Kat Kaloriferi (Akaryakıt)</OPTION> 
           <OPTION value="Soba (Doğalgaz)">Soba (Doğalgaz)</OPTION> 
           <OPTION value="Soba (Kömür)">Soba (Kömür)</OPTION> 
           <OPTION value="Klima">Klima</OPTION> 
           <OPTION value="Yerden Isıtma">Yerden Isıtma</OPTION> 
           <OPTION value="Güneş enerjisi">Güneş enerjisi</OPTION> 
           <OPTION value="Jeotermal">Jeotermal</OPTION> 
           <OPTION value="Isıtma Sistemi Yok">Isıtma Sistemi Yok</OPTION>
         </SELECT></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;&nbsp;
      	</font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">MetreKare (m2) Durumu</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
         <font color="#666666" face="Tahoma">
         <INPUT type=text name=kare1 style="width:65" size="20"></font><font size="2" face="Tahoma" color="#FFFFFF">&nbsp;ile&nbsp;</font><font color="#666666" face="Tahoma"><INPUT type=text name=kare2 style="width:65" size="20"></font><font color="#FFFFFF" size="2" face="Tahoma">&nbsp;M2 Arası
         • </font>
      </TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Fiyat</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
         <font color="#666666" face="Tahoma">
         <INPUT type=text name=fiyat1 style="width:65" size="20"></font><font size="2" face="Tahoma" color="#FFFFFF"> ile 
         </font><font color="#666666" face="Tahoma"> 
         <INPUT type=text name=fiyat2 style="width:65" size="20"></font><font color="#FFFFFF" face="Tahoma" size="2" </font> </font><font size="2" face="Tahoma" color="#808080"
			</font>
          <SELECT name=fiyat_tip style="width:50; font-family:Tahoma; font-size:10pt; color:#CC3300" size="1"> 
               <OPTION value="YTL" salected>YTL</OPTION>
               <OPTION value="EURO">EURO</OPTION>
               <OPTION value="DOLAR">DOLAR</OPTION>
          </SELECT></font><font color="#FFFFFF" size="2" face="Tahoma" </font>&nbsp;Arası&nbsp;
         •  </font>
      </TD>
   </TR>
   <TR>
      <TD Collspan="3" height=18></TD>
   </TR>
   <TR>
      <TD height=25><font size="2" face="Tahoma" color="#FFFFFF">Diğer Açıklamalar</font></TD>
      <TD height=25><B><font size="2" face="Tahoma" color="#FFFFFF">:</font></B></TD>
      <TD height=25>
         <img border="0" src="images/mrh_arrow1.gif" width="12" height="12"><font size="2" face="Tahoma" color="#FFFFFF">
			</font>
      </TD>
   </TR>
   <TR>
      <TD width=180 height=8></TD>
      <TD width=15 height=8></TD>
      <TD height=8></TD>
   </TR>
   <TR>
      <TD colSpan=3 height=8>
         <font color="#5A5A4E" face="Tahoma">
         <TEXTAREA name=aciklama rows="1" cols="20" style="WIDTH: 400px; HEIGHT: 120px"></TEXTAREA></font><font color="#808080" size="2" face="Tahoma" 
         &nbsp;&nbsp;• </font>
      </TD>
   </TR>
   
   <TR>
      <TD width=180 height=8></TD>
      <TD width=15 height=8></TD>
      <TD height=8></TD>
   </TR>
   <TR>
      <TD width=180 height=8></TD>
      <TD width=15 height=8></TD>
      <TD height=8></TD>
   </TR>

   <TR>
      <TD colspan="3" align="center" height=8>
         <font color="#808080" face="Tahoma">
         <INPUT type=submit value=Gönder class=button name=I12 style="border:1px solid #C0C0C0; WIDTH: 100px; font-family:Tahoma; font-size:10pt; color:#666666; background-color:#FFFFFF"></font><font size="2" face="Tahoma" color="#808080">
			</font>
      </TD>
   </TR>
   <TR>
      <TD width=140 height=20></TD>
      <TD width=10 height=20></TD>
      <TD height=20></TD>
   </TR>
   <TR>
      <TD colspan="3" align="center" height=8>
		<font color="#CCCC00" size="2" face="Tahoma">(•) Zorunlu alanlarr</font></TD>
   </TR>
   <TR>
      <TD width=180 height=8></TD>
      <TD width=10 height=8></TD>
      <TD height=8></TD>
   </TR>
</TABLE></div>
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