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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">�LAN 
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
    	 <option value="-" salected>L�tfen Se�iniz</option>
    	 <option value="Konut">Konut</option>
    	 <option value="��yeri">��yeri</option>
    	 <option value="Yazl�k">Yazl�k</option>
    	 <option value="Devrem�lk">Devrem�lk</option>
    	 <option value="Turistik Tesis">Turistik Tesis</option>
    	 <option value="Kooperatif">Kooperatif</option>
    	 <option value="Arsa">Arsa</option>
         </select><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         �</font></td>
		</tr>
	</table>
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table4" height="97">
		<tr>
			<td height="32">
			<p align="right"><font size="2" face="Tahoma" color="#666666">�lan 
			Tipi&nbsp;&nbsp; </font></td>
			<td width="29" height="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="380" height="32">&nbsp;<SELECT name=ilan_tip style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
        <OPTION value="-" salected>L�tfen Se�iniz</OPTION>
        <OPTION value="Sat�l�k">Sat�l�k</OPTION>
        <OPTION value="Kiral�k">Kiral�k</OPTION>
        </SELECT><%
sql="SELECT * FROM iller"
Set iller=Conn.Execute(sql)%>
   <font color="#808080" size="2" face="Tahoma">&nbsp;
         �</font><TR>
      <TD height=35>
		<p align="right"><font size="2" face="Tahoma" color="#808080">�l&nbsp;&nbsp; </font></TD>
      <TD height=35>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=35>
                  <font color="#808080" face="Tahoma">
                  &nbsp;<select onChange="muzion('oyunla','mrh-modul.asp?process=ilce&id='+ this.value);" name="il" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
    	             <option value="-" salected>L�tfen Se�iniz</option><%
    	             Do While Not iller.Eof %>
    	             <option value="<%=iller("id")%>"><%=iller("sehir")%></option><%
    	             iller.MoveNext
    	             Loop %>
                  </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         � </font>
      </TD>
   </TR>
   <TR>
      <TD height=32>
		<p align="right"><font size="2" face="Tahoma" color="#808080">�l�e&nbsp;&nbsp; </font></TD>
      <TD height=32>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=32>
                  <div id="oyunla">
                     <font color="#808080" face="Tahoma">
                     &nbsp;<select size="1" name="ilce" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	                <option value="-" selected>�nce �l Se�iniz</option>
                     </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;&nbsp;� 
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
			<p align="right"><font face="Tahoma" size="2" color="#666666">�lan 
			Ba�l��� &nbsp; </font></td>
			<td width="29">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="381">&nbsp;<input type="text" name="ilanbaslik" size="46"><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
         �</font></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table6">
		<tr>
			<td valign="top">
			<p align="right"><font face="Tahoma" size="2" color="#666666">�lan 
			A��klamas� &nbsp; </font></td>
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
			<p align="right"><font face="Tahoma" size="2" color="#666666">Fiyat�&nbsp; &nbsp;
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
			<p align="right"><b><font size="2" face="Tahoma" color="#666666">m�&nbsp;&nbsp; </font></b>
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
			Say�s� &nbsp; </font></td>
			<td width="30">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="387">&nbsp;<SELECT name=oda style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Se�iniz..</OPTION>
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
            <OPTION value="St�dyo">St�dyo</OPTION>
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
			Say�s� &nbsp; </font></td>
			<td width="31">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=banyo style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Se�iniz..</OPTION>
            <OPTION value="1">1</OPTION>
            <OPTION value="2">2</OPTION>
            <OPTION value="3">3</OPTION>
            <OPTION value="4">4</OPTION>
            <OPTION value="5">5</OPTION>
         	<option value="6 ve �zeri">6 ve �zeri</option>
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
			Ya�� &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=binayasi style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
            <OPTION salected value="-">Se�iniz..</OPTION>
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
            <OPTION value="40 Y�l �zeri">40 Y�l �zeri</OPTION>
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table24">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Binadaki Kat Say�s� &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=bina_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Se�iniz..</OPTION>
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
               <OPTION value="10 �zeri">10 �zeri</OPTION>
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
			Bulundu�u Kat &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=bulundugu_kat style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Se�iniz..</OPTION>
               <OPTION value="Bodrum Kat">Bodrum Kat</OPTION>
               <OPTION value="Zemin Kat">Zemin Kat</OPTION>
               <OPTION value="Bah�e Kat�">Bah�e Kat�</OPTION>
               <OPTION value="Giri� Kat">Giri� Kat</OPTION>
               <OPTION value="�at� Kat�">�at� Kat�</OPTION>
               <OPTION value="Y�ksek Giri�">Y�ksek Giri�</OPTION>
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
               <OPTION value="10 �zeri">10 �zeri</OPTION>
            </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table26">
		<tr>
			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">Is�tma &nbsp;
			</font></td>
			<td width="33">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="385">&nbsp;<SELECT name=isitma style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
           <OPTION salected value="-">Se�iniz..</OPTION> 
           <OPTION value="Kombi (Do�algaz)">Kombi (Do�algaz)</OPTION>
           <OPTION value="Kalorifer (Do�algaz)">Kalorifer (Do�algaz)</OPTION>
           <OPTION value="Kat Kaloriferi (Akaryak�t)">Kat Kaloriferi (Akaryak�t)</OPTION> 
           <OPTION value="Soba (Do�algaz)">Soba (Do�algaz)</OPTION> 
           <OPTION value="Soba (K�m�r)">Soba (K�m�r)</OPTION> 
           <OPTION value="Klima">Klima</OPTION> 
           <OPTION value="Yerden Is�tma">Yerden Is�tma</OPTION> 
           <OPTION value="G�ne� enerjisi">G�ne� enerjisi</OPTION> 
           <OPTION value="Jeotermal">Jeotermal</OPTION> 
           <OPTION value="Is�tma Sistemi Yok">Is�tma Sistemi Yok</OPTION>
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
               <OPTION salected value="-">Se�iniz..</OPTION>
               <OPTION value="Arsa Tapusu">Arsa Tapusu</OPTION>
               <OPTION value="Kat �rtifakl� Tapu">Kat �rtifakl� Tapu</OPTION>
               <OPTION value="Kat M�lkiyetli Tapu">Kat M�lkiyetli Tapu</OPTION>
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
			Emlak��n Durumu &nbsp; </font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=emlakdurum style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
           <OPTION salected value="-">Se�iniz..</OPTION>
           <OPTION value="S�f�r">S�f�r</OPTION>
           <OPTION value="�kinci El">�kinci El</OPTION>
           <OPTION value="�n�a Halinde">�n�a Halinde</OPTION>
         </SELECT></td>
		</tr>
	</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table29">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">�skan Durumu &nbsp;
			</font></td>
			<td width="32">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="386">&nbsp;<SELECT name=iskan style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1"> 
               <OPTION salected value="-">Se�iniz..</OPTION>
               <OPTION value="�skan� Al�nm��">�skan� Al�nm��</OPTION>
               <OPTION value="�skan� Al�nmam��">�skan� Al�nmam��</OPTION>
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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">DETAYLI B�LG�</font></td>
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
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Asans�r</font></td>
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
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Bah�e 
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
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Bah�e 
				Kat�</font></td>
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
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Bah�eli</font></td>
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
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Barbek�</font></td>
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
				E�ya</font></td>
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
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Bo�az 
				Manzaras�</font></td>
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
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;�at� 
				Dubleksi</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="cati_dubleksi" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;�elik 
				Kap�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="celik_kapi" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Deniz 
				Manzaras�</font></td>
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
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;E�yal�</font></td>
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
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;G�venlik</font></td>
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
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Jenerat�r</font></td>
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
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Kapal� 
				Garaj</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kapali_garaj" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Kap�c�</font></td>
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
				Do�algaz�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mutfak_dogalgazi" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;M�stakil</font></td>
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
				Park�</font></td>
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
				��erisinde</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="site_icerisinde" value="Evet"></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Su 
				Deposu</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="su_deposu" value="Evet"></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;��mine</font></td>
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
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Yang�n 
				Merdiveni</font></td>
				<td width="144"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="yangin_merdiveni" value="Evet"></font></td>
				<td width="134"><font size="2" face="Tahoma" color="#666666">&nbsp;Y�zme 
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
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">FOTO�RAF EKLE</font></td>
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
			<font color="#CC3300" size="2" face="Verdana">G�zat</font></a></td>
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
			<font color="#CC3300" size="2" face="Verdana">G�zat</font></a></td>
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
			<font color="#CC3300" size="2" face="Verdana">G�zat</font></a></td>
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
			<font color="#CC3300" size="2" face="Verdana">G�zat</font></a></td>
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
			<font color="#CC3300" size="2" face="Verdana">G�zat</font></a></td>
		</tr>
	</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
<br>
<table border="0" cellpadding="0" style="border-collapse: collapse" width="98%" bordercolor="#C0C0C0" id="table81" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">
			�LANIN PORTF�Y�</font></td>
		</tr>
	</table><br>
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table82">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Daire&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satilikdaire" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Yal�</font></td>
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
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Bina&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikbina" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
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
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Arsa&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikarsa" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				�� Yeri</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikisyeri" value="1"></font></td>
				<td>&nbsp;</td>
			</tr>
		</table>
	
	<hr color="#E9E9D1" size="1" width="98%">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table85">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Dubleks&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikdubleks" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
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
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k&nbsp; 
				�� Yeri&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikisyeri" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				Yal�</font></td>
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
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Villa&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satlikvilla" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
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
			�LANIN �IKACA�I B�LGELER</font></td>
		</tr>
	</table><br>
	<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table78">
			<tr>
				<td width="315">
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Vitrinde 
				G�ster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="vitrin" value="1"></font></td>
				<td width="46">&nbsp;</td>
				<td width="166"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Arsa 
				/ Arazilerde G�ster</font></td>
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
				<p align="right"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�klarda 
				G�ster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="20">
				<p align="center"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="satiliklar" value="1"></font></td>
				<td width="48">&nbsp;</td>
				<td width="165"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�klarda 
				G�ster</font></td>
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
				�lanlarda 
				G�ster&nbsp;&nbsp;&nbsp; </font></td>
				<td width="236" nowrap>
				<p align="left"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="flashilanlar" value="1"></font></td>
			</tr>
		</table>
	</div>
	&nbsp;</div>
<p align="center"> 
<input type="submit" value="�LANI EKLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>

		
</body>

</html>