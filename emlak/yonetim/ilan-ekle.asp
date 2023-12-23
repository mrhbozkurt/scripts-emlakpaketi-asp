<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<script language=javascript src="javascripts/mrh-il-ilce.js"></script>
</head>

<body>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">İLAN 
			EKLE</font></td>
		</tr>
	</table></div>
<br>

	<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table3">
		<tr><form action="mrh-modul.asp?process=ilanlar" method="post" name="ilan">
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Emlak 
			Tipi&nbsp;&nbsp; </font></td>
			<td width="29">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="380">&nbsp;<select size="1" name="tip" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	 <option value="-" salected>Lütfen Seçiniz</option>
    	 <option value="Konut">Konut</option>
    	 <option value="İşyeri">İşyeri</option>
    	 <option value="Yazlık">Yazlık</option>
    	 <option value="Devremülk">Devremülk</option>
    	 <option value="Turistik Tesis">Turistik Tesis</option>
    	 <option value="Kooperatif">Kooperatif</option>
    	 <option value="Arsa">Arsa</option>
         </select><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         •</font></td>
		</tr>
	</table>
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table4" height="97">
		<tr>
			<td height="32">
			<p align="right"><font size="2" face="Tahoma" color="#666666">İlan 
			Tipi&nbsp;&nbsp; </font></td>
			<td width="29" height="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="380" height="32">&nbsp;<SELECT name=ilan_tip style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
        <OPTION value="-" salected>Lütfen Seçiniz</OPTION>
        <OPTION value="Satılık">Satılık</OPTION>
        <OPTION value="Kiralık">Kiralık</OPTION>
        </SELECT><%
sql="SELECT * FROM iller"
Set iller=Conn.Execute(sql)%>
   <font color="#808080" size="2" face="Tahoma">&nbsp;
         •</font><TR>
      <TD height=35>
		<p align="right"><font size="2" face="Tahoma" color="#808080">İl&nbsp;&nbsp; </font></TD>
      <TD height=35>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=35>
                  <font color="#808080" face="Tahoma">
                  &nbsp;<select onChange="muzion('oyunla','mrh-modul.asp?process=ilce&id='+ this.value);" name="il" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
    	             <option value="-" salected>Lütfen Seçiniz</option><%
    	             Do While Not iller.Eof %>
    	             <option value="<%=iller("id")%>"><%=iller("sehir")%></option><%
    	             iller.MoveNext
    	             Loop %>
                  </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         • </font>
      </TD>
   </TR>
   <TR>
      <TD height=32>
		<p align="right"><font size="2" face="Tahoma" color="#808080">İlçe&nbsp;&nbsp; </font></TD>
      <TD height=32>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=32>
                  <div id="oyunla">
                     <font color="#808080" face="Tahoma">
                     &nbsp;<select size="1" name="ilce" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	                <option value="-" selected>Önce İl Seçiniz</option>
                     </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;&nbsp;• 
						</font>
                  </div>
      </TD></td>
		</tr>
	</table>
	</div>
		
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table5">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">İlan 
			Başlığı &nbsp; </font></td>
			<td width="29">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="381">&nbsp;<input type="text" name="ilanbaslik" size="46"><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         •</font></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table6">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">İlan 
			Açıklaması &nbsp; </font></td>
			<td width="29" valign="top">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="381">&nbsp;<textarea name="ilanaciklamasi" rows="9" cols="35"></textarea></td>
		</tr>
	</table>
	
	<hr color="#E9E9D1" size="1" width="97%">
</div>
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table7">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Fiyatı&nbsp; &nbsp;
			</font></td>
			<td width="28">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="387">&nbsp;<input type="text" name="fiyat1" size="12" value="0">,
			<input type="text" name="fiyat2" size="6" value="00"> 
			<select name="paradegeri" size="1" style="font-family: Tahoma; font-size: 10pt; color: #CC3300">
			<option selected value="YTL">YTL</option>
			<option value="Dolar">Dolar</option>
			<option value="Euro">Euro</option>
			</select></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table8">
		<tr>
			<td>
			<p align="right"><b><font size="2" face="Tahoma" color="#666666">m²&nbsp;&nbsp; </font></b>
			<font face="Tahoma" size="2" color="#666666">&nbsp; </font></td>
			<td width="29">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="381">&nbsp;<input type="text" name="metrekare" size="18" value="0"></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table21">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Oda 
			Sayısı &nbsp; </font></td>
			<td width="30">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="387">&nbsp;<SELECT name=oda style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Seçiniz..</OPTION>
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
            </SELECT></td>
		</tr>
	</table>
	
	<hr color="#E9E9D1" size="1" width="97%">
</div>
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table22">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Banyo 
			Sayısı &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=banyo style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Seçiniz..</OPTION>
            <OPTION value="1">1</OPTION>
            <OPTION value="2">2</OPTION>
            <OPTION value="3">3</OPTION>
            <OPTION value="4">4</OPTION>
            <OPTION value="5">5</OPTION>
         	<option value="6 ve Üzeri">6 ve Üzeri</option>
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table23">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Bina 
			Yaşı &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=binayasi style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Seçiniz..</OPTION>
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
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table24">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Binadaki Kat Sayısı &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=bina_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Seçiniz..</OPTION>
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
            </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table25">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Bulunduğu Kat &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=bulundugu_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Seçiniz..</OPTION>
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
            </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table26">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Isıtma &nbsp;
			</font></td>
			<td width="33">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=isitma style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
           <OPTION salected value="-">Seçiniz..</OPTION> 
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
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table27">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Tapu 
			Durumu &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=tapu style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Seçiniz..</OPTION>
               <OPTION value="Arsa Tapusu">Arsa Tapusu</OPTION>
               <OPTION value="Kat İrtifaklı Tapu">Kat İrtifaklı Tapu</OPTION>
               <OPTION value="Kat Mülkiyetli Tapu">Kat Mülkiyetli Tapu</OPTION>
            </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table28">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">
			Emlakğın Durumu &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=emlakdurum style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
           <OPTION salected value="-">Seçiniz..</OPTION>
           <OPTION value="Sıfır">Sıfır</OPTION>
           <OPTION value="İkinci El">İkinci El</OPTION>
           <OPTION value="İnşa Halinde">İnşa Halinde</OPTION>
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table29">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">İskan Durumu &nbsp;
			</font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=iskan style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Seçiniz..</OPTION>
               <OPTION value="İskanı Alınmış">İskanı Alınmış</OPTION>
               <OPTION value="İskanı Alınmamış">İskanı Alınmamış</OPTION>
            </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table30">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Krediye Uygun &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<input type="checkbox" name="kredievet" value="Evet"></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table31">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Tarihi 
			Eser &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<input type="checkbox" name="tarihi_eser" value="Evet"></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
	<br>
<div align="left">

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table60" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">DETAYLI BİLGİ</font></td>
		</tr>
	</table></div>
	<br></div>
	<div align="left">
		<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table47">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Alarm</font></td>
				<td width="158">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="13%" bordercolor="#C0C0C0" id="table67">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="alarm" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Asansör</font></td>
				<td width="188">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="11%" bordercolor="#C0C0C0" id="table68">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="asansor" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Bahçe 
				Dubleksi</font></td>
				<td>
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="7%" bordercolor="#C0C0C0" id="table69">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="bahce_dubleksi" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="97%">
	
		</div>
		<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table48">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Bahçe 
				Katı</font></td>
				<td width="158">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="12%" bordercolor="#C0C0C0" id="table70">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="bahce_kati" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Bahçeli</font></td>
				<td width="188">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="9%" bordercolor="#C0C0C0" id="table71">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="bahceli" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Balkon</font></td>
				<td>
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="7%" bordercolor="#C0C0C0" id="table72">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="balkon" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
		</table>
		</div>
</div>
	
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table49">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Barbekü</font></td>
				<td width="158">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="11%" bordercolor="#C0C0C0" id="table73">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="barbeku" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Beyaz 
				Eşya</font></td>
				<td width="188">
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="20" bordercolor="#C0C0C0" id="table74">
						<tr>
							<td width="20"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="beyazesya" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Boğaz 
				Manzarası</font></td>
				<td>
				<div align="left">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="5%" bordercolor="#C0C0C0" id="table75">
						<tr>
							<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="bogaz_manzarasi" value="Evet"></font></td>
						</tr>
					</table>
				</div>
				</td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table50">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Çatı 
				Dubleksi</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="cati_dubleksi" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Çelik 
				Kapı</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="celik_kapi" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Deniz 
				Manzarası</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="deniz_manzarasi" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table51">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Dubleks</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="dubleks" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Ebeveyn 
				Banyosu</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="ebeveyn_banyosu" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Eşyalı</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="esyali" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table52">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Fitness 
				Salonu</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="fitness_salonu" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Güvenlik</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="guvenlik" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Hidrofor</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="hidrofor" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table53">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Jakuzi</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="jakuzi" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Jeneratör</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="jenerator" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Kablo 
				TV- Uydu</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kablo_tv_uydu" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table54">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Kapalı 
				Garaj</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kapali_garaj" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Kapıcı</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kapici" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Klima</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="klima" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table55">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Mobilya</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mobilya" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Mutfak 
				Doğalgazı</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mutfak_dogalgazi" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Müstakil</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mustakil" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table56">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Otopark</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="otopark" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Oyun 
				Parkı</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="oyun_parki" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Parke 
				Zemin</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="parke_zemin" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table57">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Site 
				İçerisinde</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="site_icerisinde" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Su 
				Deposu</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="su_deposu" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Şömine</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="sonine" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table58">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Tenis 
				Kortu</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="tenis_kortu" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Teras</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="teras" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Tripleks</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="tripleks" value="Evet"></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table59">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Yangın 
				Merdiveni</font></td>
				<td width="144"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="yangin_merdiveni" value="Evet"></font></td>
				<td width="134"><font size="2" face="Tahoma" color="#666666">&nbsp;Yüzme 
				Havuzu</font></td>
				<td width="206"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="yuzme_havuzu" value="Evet"></font></td>
				<td width="191">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<br>
<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table61" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">FOTOĞRAF EKLE</font></td>
		</tr>
	</table>
	<br>
	</div>
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table62">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 1 &nbsp;
			</font></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim1" size="26">
			<a ONCLICK="window.open('ilan_Resim.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table63">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 2 &nbsp;
			</font></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="421">&nbsp;<input type="text" name="resim2" size="26">
			<a ONCLICK="window.open('ilan_Resim2.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table64">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 3 &nbsp;
			</font></td>
			<td width="16">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="421">&nbsp;<input type="text" name="resim3" size="26">
			<a ONCLICK="window.open('ilan_Resim3.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table65">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 4 &nbsp;
			</font></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim4" size="26">
			<a ONCLICK="window.open('ilan_Resim4.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table66">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 5 &nbsp;
			</font></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim5" size="26">
			<a ONCLICK="window.open('ilan_Resim5.asp','resimyukle','top=20,left=20,width=450,height=300,toolbar=no,scrollbars=yes');" href="#resimyukle">
			<font color="#CC3300" size="2" face="Verdana">Gözat</font></a></td>
		</tr>
	</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
<br>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table81" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			İLANIN PORTFÖYÜ</font></td>
		</tr>
	</table><br>
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table82">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Daire&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satilikdaire" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Yalı</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satilikyali" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table83">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Bina&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikbina" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralık 
				Daire</font></td>
				<td width="22"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikdaire" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table84">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Arsa&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikarsa" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralık 
				İş Yeri</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikisyeri" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table85">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Dubleks&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikdubleks" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralık 
				Villa</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikvilla" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table86">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık&nbsp; 
				İş Yeri&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikisyeri" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralık 
				Yalı</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikyali" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
	</div>
	
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table87">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılık 
				Villa&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikvilla" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralık 
				Dubleks</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikdubleks" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
		
	<br>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table76" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			İLANIN ÇIKACAĞI BÖLGELER</font></td>
		</tr>
	</table><br>
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table78">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Vitrinde 
				Göster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="vitrin" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="166"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Arsa 
				/ Arazilerde Göster</font></td>
				<td width="20"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="arasa_arazi" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table79">
			<tr>
				<td width="314">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Satılıklarda 
				Göster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="satiliklar" value="1"></font></td>
				<td width="48">&nbsp;</td>
				<td width="165"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiralıklarda 
				Göster</font></td>
				<td width="20"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kiraliklar" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</div>
	
	<hr color="#E9E9D1" size="1" width="98%">
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table80">
			<tr>
				<td width="852">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Flash 
				İlanlarda 
				Göster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="236" nowrap>
				<p align="left"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="flashilanlar" value="1"></font></td>
			</tr>
		</table>
	</div>
	&nbsp;</div>
<p align="center"> 
<input type="submit" value="İLANI EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>

		
</body>

</html>