<% @Language=VBScript %>
<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where id="&id
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
<title>Y�netim Paneli</title>
<script language=javascript src="javascripts/mrh-il-ilce.js"></script>
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
									.mrh Emlak Portal� V.01</font><font size="2" face="Tahoma" color="#999999"><br>
									Ho�geldiniz..</font></p>
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
						<body>

<div align="center">

<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table1" height="23">
		<tr>
			<td bgcolor="#BCBCBC">
			<p align="center"><font face="Tahoma" size="2" color="#FFFFFF">�LAN 
			D�ZENLE</font></td>
		</tr>
	</table><br></div>
						<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table88">
		<tr>			<td>
			<p align="right"><font face="Tahoma" size="2" color="#666666">�lan 
			No &nbsp; </font></td>
			<td width="29">
			<form action="ilan-duzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle" method="post" name="ilan">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="381">&nbsp;<input type="text" name="ilanno" size="18" value="<%=yeniasp("id")%>"disabled  style="font-family: Tahoma; font-size: 10pt; color: #CC3300"><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;</font></td>
		</tr>
	</table>
	

						</div>
	<hr color="#E9E9D1" size="1" width="97%">
	

	<div align="center">
	<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="97%" bordercolor="#F3F3F3" id="table3">
		<tr>
			<td>
			<p align="right"><font size="2" face="Tahoma" color="#666666">Emlak 
			Tipi&nbsp;&nbsp; </font></td>
			<td width="29">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="380">&nbsp;<select size="1" name="tip" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	 <option value="-" salected>L�tfen Se�iniz</option>
    	 <option value="Konut"<%If Trim(yeniasp("tip"))="Konut" Then Response.Write " selected" End If%>>Konut</option>
    	 <option value="��yeri"<%If Trim(yeniasp("tip"))="��yeri" Then Response.Write " selected" End If%>>��yeri</option>
    	 <option value="Yazl�k"<%If Trim(yeniasp("tip"))="Yazl�k" Then Response.Write " selected" End If%>>Yazl�k</option>
    	 <option value="Devrem�lk"<%If Trim(yeniasp("tip"))="Devrem�lk" Then Response.Write " selected" End If%>>Devrem�lk</option>
    	 <option value="Turistik Tesis"<%If Trim(yeniasp("tip"))="Turistik Tesis" Then Response.Write " selected" End If%>>Turistik Tesis</option>
    	 <option value="Kooperatif"<%If Trim(yeniasp("tip"))="Kooperatif" Then Response.Write " selected" End If%>>Kooperatif</option>
    	 <option value="Arsa"<%If Trim(yeniasp("tip"))="Arsa" Then Response.Write " selected" End If%>>Arsa</option>
         </select><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;</font></td>
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
        <OPTION value="Sat�l�k"<%If Trim(yeniasp("ilan_tip"))="Sat�l�k" Then Response.Write " selected" End If%>>Sat�l�k</OPTION>
        <OPTION value="Kiral�k"<%If Trim(yeniasp("ilan_tip"))="Kiral�k" Then Response.Write " selected" End If%>>Kiral�k</OPTION>
        </SELECT><%
sql="SELECT * FROM iller"
Set iller=Conn.Execute(sql)%>
   <font color="#808080" size="2" face="Tahoma">&nbsp;</font><TR>
      <TD height=35>
		<p align="right"><font size="2" face="Tahoma" color="#808080">�l&nbsp;&nbsp; </font></TD>
      <TD height=35>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=35>
                  <font color="#808080" face="Tahoma">
                  &nbsp;<select onChange="muzion('oyunla','mrh-modul.asp?process=ilce&id='+ this.value);" name="il" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666" size="1">
    	             <option value="-" salected>L�tfen Se�iniz</option><%
    	             Do While Not iller.Eof %>
    	             <option value="<%=iller("id")%>"<%If CInt(Trim(yeniasp("il")))=iller("id") Then Response.Write " selected" End If%>><%=iller("sehir")%></option><%
    	             iller.MoveNext
    	             Loop %>
                  </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp; </font>
      			<font color="#CC3300" size="2" face="Tahoma">�</font><font color="#808080" size="2" face="Tahoma"> </font>
      </TD>
   </TR>
   <TR>
      <TD height=32>
		<p align="right"><font size="2" face="Tahoma" color="#808080">�l�e&nbsp;&nbsp; </font></TD>
      <TD height=32>
		<p align="center"><B><font size="2" face="Tahoma" color="#808080">:</font></B></TD>
      <TD height=32><%Set mrh=Conn.Execute("SELECT * FROM ilceler WHERE id="& CInt(yeniasp("ilce")))%>
                  <div id="oyunla">
                     <font color="#808080" face="Tahoma">
                     &nbsp;<select size="1" name="ilce" class="input" style="width:150; font-family:Tahoma; font-size:10pt; color:#666666">
    	                <option value="<%=yeniasp("ilce")%>" selected><%=mrh("ilce")%></option>
                     </select></font><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;&nbsp;</font><font color="#CC3300" size="2" face="Tahoma">�</font><font color="#808080" size="2" face="Tahoma"> 
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
			<td width="381">&nbsp;<input type="text" name="ilanbaslik" size="46" value="<%=yeniasp("ilanbaslik")%>"><font color="#808080" size="2" face="Tahoma">&nbsp;&nbsp;
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
			<td width="381">&nbsp;<textarea name="ilanaciklamasi" rows="9" cols="35"><%=yeniasp("ilanaciklamasi")%></textarea></td>
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
			<td width="387">&nbsp;<input type="text" name="fiyat1" size="12" value="<%=yeniasp("fiyat1")%>">,
			<input type="text" name="fiyat2" size="6" value="<%=yeniasp("fiyat2")%>"> 
			<select name="paradegeri" size="1" style="font-family: Tahoma; font-size: 10pt; color: #CC3300">
			<option selected value="YTL"<%If Trim(yeniasp("paradegeri"))="YTL" Then Response.Write " selected" End If%>>YTL</option>
			<option value="Dolar"<%If Trim(yeniasp("paradegeri"))="Dolar" Then Response.Write " selected" End If%>>Dolar</option>
			<option value="Euro"<%If Trim(yeniasp("paradegeri"))="Euro" Then Response.Write " selected" End If%>>Euro</option>
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
			<td width="381">&nbsp;<input type="text" name="metrekare" size="18" value="<%=yeniasp("metrekare")%>"></td>
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
       		<OPTION value="1 + 1"<%If Trim(yeniasp("oda"))="1 + 1" Then Response.Write " selected" End If%>>1 + 1</OPTION> 
            <OPTION value="2 + 1"<%If Trim(yeniasp("oda"))="2 + 1" Then Response.Write " selected" End If%>>2 + 1</OPTION> 
            <OPTION value="2 + 2"<%If Trim(yeniasp("oda"))="2 + 2" Then Response.Write " selected" End If%>>2 + 2</OPTION> 
            <OPTION value="3 + 1"<%If Trim(yeniasp("oda"))="3 + 1" Then Response.Write " selected" End If%>>3 + 1</OPTION> 
            <OPTION value="3 + 2"<%If Trim(yeniasp("oda"))="3 + 2" Then Response.Write " selected" End If%>>3 + 2</OPTION> 
            <OPTION value="4 + 1"<%If Trim(yeniasp("oda"))="4 + 1" Then Response.Write " selected" End If%>>4 + 1</OPTION> 
            <OPTION value="4 + 2"<%If Trim(yeniasp("oda"))="4 + 2" Then Response.Write " selected" End If%>>4 + 2</OPTION> 
            <OPTION value="4 + 4"<%If Trim(yeniasp("oda"))="4 + 4" Then Response.Write " selected" End If%>>4 + 4</OPTION> 
            <OPTION value="5 + 1"<%If Trim(yeniasp("oda"))="5 + 1" Then Response.Write " selected" End If%>>5 + 1</OPTION> 
            <OPTION value="5 + 2"<%If Trim(yeniasp("oda"))="5 + 2" Then Response.Write " selected" End If%>>5 + 2</OPTION> 
            <OPTION value="5 + 3"<%If Trim(yeniasp("oda"))="5 + 3" Then Response.Write " selected" End If%>>5 + 3</OPTION> 
            <OPTION value="5 + 4"<%If Trim(yeniasp("oda"))="5 + 4" Then Response.Write " selected" End If%>>5 + 4</OPTION> 
            <OPTION value="6 + 1"<%If Trim(yeniasp("oda"))="6 + 1" Then Response.Write " selected" End If%>>6 + 1</OPTION> 
            <OPTION value="6 + 2"<%If Trim(yeniasp("oda"))="6 + 2" Then Response.Write " selected" End If%>>6 + 2</OPTION> 
            <OPTION value="6 + 3"<%If Trim(yeniasp("oda"))="6 + 3" Then Response.Write " selected" End If%>>6 + 3</OPTION> 
            <OPTION value="7 + 1"<%If Trim(yeniasp("oda"))="7 + 1" Then Response.Write " selected" End If%>>7 + 1</OPTION> 
            <OPTION value="7 + 2"<%If Trim(yeniasp("oda"))="7 + 2" Then Response.Write " selected" End If%>>7 + 2</OPTION> 
            <OPTION value="7 + 3"<%If Trim(yeniasp("oda"))="7 + 3" Then Response.Write " selected" End If%>>7 + 3</OPTION> 
            <OPTION value="8 + 1"<%If Trim(yeniasp("oda"))="8 + 1" Then Response.Write " selected" End If%>>8 + 1</OPTION> 
            <OPTION value="8 + 2"<%If Trim(yeniasp("oda"))="8 + 2" Then Response.Write " selected" End If%>>8 + 2</OPTION> 
            <OPTION value="8 + 4"<%If Trim(yeniasp("oda"))="8 + 4" Then Response.Write " selected" End If%>>8 + 4</OPTION> 
            <OPTION value="St�dyo"<%If Trim(yeniasp("oda"))="St�dyo" Then Response.Write " selected" End If%>>St�dyo</OPTION>
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
            <OPTION value="1"<%If Trim(yeniasp("banyo"))="1" Then Response.Write " selected" End If%>>1</OPTION>
            <OPTION value="2"<%If Trim(yeniasp("banyo"))="2" Then Response.Write " selected" End If%>>2</OPTION>
            <OPTION value="3"<%If Trim(yeniasp("banyo"))="3" Then Response.Write " selected" End If%>>3</OPTION>
            <OPTION value="4"<%If Trim(yeniasp("banyo"))="4" Then Response.Write " selected" End If%>>4</OPTION>
            <OPTION value="5"<%If Trim(yeniasp("banyo"))="5" Then Response.Write " selected" End If%>>5</OPTION>
         	<option value="6 ve �zeri"<%If Trim(yeniasp("banyo"))="6 ve �zeri" Then Response.Write " selected" End If%>>6 ve �zeri</option>
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
            <OPTION value="1-2"<%If Trim(yeniasp("binayasi"))="1-2" Then Response.Write " selected" End If%>>1-2</OPTION>
            <OPTION value="3-4"<%If Trim(yeniasp("binayasi"))="3-4" Then Response.Write " selected" End If%>>3-4</OPTION>
            <OPTION value="5-6"<%If Trim(yeniasp("binayasi"))="5-6" Then Response.Write " selected" End If%>>5-6</OPTION>
            <OPTION value="7-8"<%If Trim(yeniasp("binayasi"))="7-8" Then Response.Write " selected" End If%>>7-8</OPTION>
            <OPTION value="9-10"<%If Trim(yeniasp("binayasi"))="9-10" Then Response.Write " selected" End If%>>9-10</OPTION>
            <OPTION value="11-15"<%If Trim(yeniasp("binayasi"))="11-15" Then Response.Write " selected" End If%>>11-15</OPTION>
            <OPTION value="16-20"<%If Trim(yeniasp("binayasi"))="16-20" Then Response.Write " selected" End If%>>16-20</OPTION>
            <OPTION value="21-25"<%If Trim(yeniasp("binayasi"))="21-25" Then Response.Write " selected" End If%>>21-25</OPTION>
            <OPTION value="26-30"<%If Trim(yeniasp("binayasi"))="26-30" Then Response.Write " selected" End If%>>26-30</OPTION>
            <OPTION value="31-35"<%If Trim(yeniasp("binayasi"))="31-35" Then Response.Write " selected" End If%>>31-35</OPTION>
            <OPTION value="36-40"<%If Trim(yeniasp("binayasi"))="36-40" Then Response.Write " selected" End If%>>36-40</OPTION>
            <OPTION value="40 Y�l �zeri"<%If Trim(yeniasp("binayasi"))="40 Y�l �zeri" Then Response.Write " selected" End If%>>40 Y�l �zeri</OPTION>
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
               <OPTION value="1"<%If Trim(yeniasp("bina_kat"))="1" Then Response.Write " selected" End If%>>1</OPTION>
               <OPTION value="2"<%If Trim(yeniasp("bina_kat"))="2" Then Response.Write " selected" End If%>>2</OPTION>
               <OPTION value="3"<%If Trim(yeniasp("bina_kat"))="3" Then Response.Write " selected" End If%>>3</OPTION>
               <OPTION value="4"<%If Trim(yeniasp("bina_kat"))="4" Then Response.Write " selected" End If%>>4</OPTION>
               <OPTION value="5"<%If Trim(yeniasp("bina_kat"))="5" Then Response.Write " selected" End If%>>5</OPTION>
               <OPTION value="6"<%If Trim(yeniasp("bina_kat"))="6" Then Response.Write " selected" End If%>>6</OPTION>
               <OPTION value="7"<%If Trim(yeniasp("bina_kat"))="7" Then Response.Write " selected" End If%>>7</OPTION>
               <OPTION value="8"<%If Trim(yeniasp("bina_kat"))="8" Then Response.Write " selected" End If%>>8</OPTION>
               <OPTION value="9"<%If Trim(yeniasp("bina_kat"))="9" Then Response.Write " selected" End If%>>9</OPTION>
               <OPTION value="10"<%If Trim(yeniasp("bina_kat"))="10" Then Response.Write " selected" End If%>>10</OPTION>
               <OPTION value="10 �zeri"<%If Trim(yeniasp("bina_kat"))="10 �zeri" Then Response.Write " selected" End If%>>10 �zeri</OPTION>
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
               <OPTION value="Bodrum Kat"<%If Trim(yeniasp("bulundugu_kat"))="Bodrum Kat" Then Response.Write " selected" End If%>>Bodrum Kat</OPTION>
               <OPTION value="Zemin Kat"<%If Trim(yeniasp("bulundugu_kat"))="Zemin Kat" Then Response.Write " selected" End If%>>Zemin Kat</OPTION>
               <OPTION value="Bah�e Kat�"<%If Trim(yeniasp("bulundugu_kat"))="Bah�e Kat�" Then Response.Write " selected" End If%>>Bah�e Kat�</OPTION>
               <OPTION value="Giri� Kat"<%If Trim(yeniasp("bulundugu_kat"))="Giri� Kat" Then Response.Write " selected" End If%>>Giri� Kat</OPTION>
               <OPTION value="Y�ksek Giri�"<%If Trim(yeniasp("bulundugu_kat"))="Y�ksek Giri�" Then Response.Write " selected" End If%>>Y�ksek Giri�</OPTION>
               <OPTION value="�at� Kat�"<%If Trim(yeniasp("bulundugu_kat"))="�at� Kat�" Then Response.Write " selected" End If%>>�at� Kat�</OPTION>
               <OPTION value="1"<%If Trim(yeniasp("bulundugu_kat"))="1" Then Response.Write " selected" End If%>>1</OPTION>
               <OPTION value="2"<%If Trim(yeniasp("bulundugu_kat"))="2" Then Response.Write " selected" End If%>>2</OPTION>
               <OPTION value="3"<%If Trim(yeniasp("bulundugu_kat"))="3" Then Response.Write " selected" End If%>>3</OPTION>
               <OPTION value="4"<%If Trim(yeniasp("bulundugu_kat"))="4" Then Response.Write " selected" End If%>>4</OPTION>
               <OPTION value="5"<%If Trim(yeniasp("bulundugu_kat"))="5" Then Response.Write " selected" End If%>>5</OPTION>
               <OPTION value="6"<%If Trim(yeniasp("bulundugu_kat"))="6" Then Response.Write " selected" End If%>>6</OPTION>
               <OPTION value="7"<%If Trim(yeniasp("bulundugu_kat"))="7" Then Response.Write " selected" End If%>>7</OPTION>
               <OPTION value="8"<%If Trim(yeniasp("bulundugu_kat"))="8" Then Response.Write " selected" End If%>>8</OPTION>
               <OPTION value="9"<%If Trim(yeniasp("bulundugu_kat"))="9" Then Response.Write " selected" End If%>>9</OPTION>
               <OPTION value="10"<%If Trim(yeniasp("bulundugu_kat"))="10" Then Response.Write " selected" End If%>>10</OPTION>
               <OPTION value="10 �zeri"<%If Trim(yeniasp("bulundugu_kat"))="10 �zeri" Then Response.Write " selected" End If%>>10 �zeri</OPTION>
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
           <OPTION value="Kombi (Do�algaz)"<%If Trim(yeniasp("isitma"))="Kombi (Do�algaz)" Then Response.Write " selected" End If%>>Kombi (Do�algaz)</OPTION>
           <OPTION value="Kalorifer (Do�algaz)"<%If Trim(yeniasp("isitma"))="Kalorifer (Do�algaz)" Then Response.Write " selected" End If%>>Kalorifer (Do�algaz)</OPTION>
           <OPTION value="Kat Kaloriferi (Akaryak�t)"<%If Trim(yeniasp("isitma"))="Kat Kaloriferi (Akaryak�t)" Then Response.Write " selected" End If%>>Kat Kaloriferi (Akaryak�t)</OPTION> 
           <OPTION value="Soba (Do�algaz)"<%If Trim(yeniasp("isitma"))="Soba (Do�algaz)" Then Response.Write " selected" End If%>>Soba (Do�algaz)</OPTION> 
           <OPTION value="Soba (K�m�r)"<%If Trim(yeniasp("isitma"))="Soba (K�m�r)" Then Response.Write " selected" End If%>>Soba (K�m�r)</OPTION> 
           <OPTION value="Klima"<%If Trim(yeniasp("isitma"))="Klima" Then Response.Write " selected" End If%>>Klima</OPTION> 
           <OPTION value="Yerden Is�tma"<%If Trim(yeniasp("isitma"))="Yerden Is�tma" Then Response.Write " selected" End If%>>Yerden Is�tma</OPTION> 
           <OPTION value="G�ne� enerjisi"<%If Trim(yeniasp("isitma"))="G�ne� enerjisi" Then Response.Write " selected" End If%>>G�ne� enerjisi</OPTION> 
           <OPTION value="Jeotermal"<%If Trim(yeniasp("isitma"))="Jeotermal" Then Response.Write " selected" End If%>>Jeotermal</OPTION> 
           <OPTION value="Is�tma Sistemi Yok"<%If Trim(yeniasp("isitma"))="Is�tma Sistemi Yok" Then Response.Write " selected" End If%>>Is�tma Sistemi Yok</OPTION>
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
               <OPTION value="Arsa Tapusu"<%If Trim(yeniasp("tapu"))="Arsa Tapusu" Then Response.Write " selected" End If%>>Arsa Tapusu</OPTION>
               <OPTION value="Kat �rtifakl� Tapu"<%If Trim(yeniasp("tapu"))="Kat �rtifakl� Tapu" Then Response.Write " selected" End If%>>Kat �rtifakl� Tapu</OPTION>
               <OPTION value="Kat M�lkiyetli Tapu"<%If Trim(yeniasp("tapu"))="Kat M�lkiyetli Tapu" Then Response.Write " selected" End If%>>Kat M�lkiyetli Tapu</OPTION>
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
           <OPTION value="S�f�r"<%If Trim(yeniasp("emlakdurum"))="S�f�r" Then Response.Write " selected" End If%>>S�f�r</OPTION>
           <OPTION value="�kinci El"<%If Trim(yeniasp("emlakdurum"))="�kinci El" Then Response.Write " selected" End If%>>�kinci El</OPTION>
           <OPTION value="�n�at Halinde"<%If Trim(yeniasp("emlakdurum"))="�n�at Halinde" Then Response.Write " selected" End If%>>�n�a Halinde</OPTION>
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
               <OPTION value="�skan� Al�nm��"<%If Trim(yeniasp("iskan"))="�skan� Al�nm��" Then Response.Write " selected" End If%>>�skan� Al�nm��</OPTION>
               <OPTION value="�skan� Al�nmam��"<%If Trim(yeniasp("iskan"))="�skan� Al�nmam��" Then Response.Write " selected" End If%>>�skan� Al�nmam��</OPTION>
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
			<td width="386">&nbsp;<input type="checkbox" name="kredievet" value="Evet"<%If Trim(yeniasp("kredievet"))="Evet" Then Response.Write " checked" End If%>></td>
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
			<td width="386">&nbsp;<input type="checkbox" name="tarihi_eser" value="Evet"<%If Trim(yeniasp("tarihi_eser"))="Evet" Then Response.Write " checked" End If%>></td>
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
				<input type="checkbox" name="alarm" value="Evet"<%If Trim(yeniasp("alarm"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="asansor" value="Evet"<%If Trim(yeniasp("asansor"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="bahce_dubleksi" value="Evet"<%If Trim(yeniasp("bahce_dubleksi"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="bahce_kati" value="Evet"<%If Trim(yeniasp("bahce_kati"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="bahceli" value="Evet"<%If Trim(yeniasp("bahceli"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="balkon" value="Evet"<%If Trim(yeniasp("balkon"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="barbeku" value="Evet"<%If Trim(yeniasp("barbeku"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="beyazesya" value="Evet"<%If Trim(yeniasp("beyazesya"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="bogaz_manzarasi" value="Evet"<%If Trim(yeniasp("bogaz_manzarasi"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="cati_dubleksi" value="Evet"<%If Trim(yeniasp("cati_dubleksi"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;�elik 
				Kap�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="celik_kapi" value="Evet"<%If Trim(yeniasp("celik_kapi"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Deniz 
				Manzaras�</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="deniz_manzarasi" value="Evet"<%If Trim(yeniasp("deniz_manzarasi"))="Evet" Then Response.Write " checked" End If%>></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table51">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Dubleks</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="dubleks" value="Evet"<%If Trim(yeniasp("dubleks"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Ebeveyn 
				Banyosu</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="ebeveyn_banyosu" value="Evet"<%If Trim(yeniasp("ebeveyn_banyosu"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;E�yal�</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="esyali" value="Evet"<%If Trim(yeniasp("esyali"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="fitness_salonu" value="Evet"<%If Trim(yeniasp("fitness_salonu"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;G�venlik</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="guvenlik" value="Evet"<%If Trim(yeniasp("guvenlik"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Hidrofor</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="hidrofor" value="Evet"<%If Trim(yeniasp("hidrofor"))="Evet" Then Response.Write " checked" End If%>></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table53">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Jakuzi</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="jakuzi" value="Evet"<%If Trim(yeniasp("jakuzi"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Jenerat�r</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="jenerator" value="Evet"<%If Trim(yeniasp("jenerator"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Kablo 
				TV- Uydu</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kablo_tv_uydu" value="Evet"<%If Trim(yeniasp("kablo_tv_uydu"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="kapali_garaj" value="Evet"<%If Trim(yeniasp("kapali_garaj"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Kap�c�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kapici" value="Evet"<%If Trim(yeniasp("kapici"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Klima</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="klima" value="Evet"<%If Trim(yeniasp("klima"))="Evet" Then Response.Write " checked" End If%>></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table55">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Mobilya</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mobilya" value="Evet"<%If Trim(yeniasp("mobilya"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Mutfak 
				Do�algaz�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mutfak_dogalgazi" value="Evet"<%If Trim(yeniasp("mutfak_dogalgazi"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;M�stakil</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="mustakil" value="Evet"<%If Trim(yeniasp("mustakil"))="Evet" Then Response.Write " checked" End If%>></font></td>
			</tr>
		</table>
	
	</div>
	<hr color="#E9E9D1" size="1" width="97%">
<div align="center">
		<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="98%" bordercolor="#F3F3F3" id="table56">
			<tr>
				<td width="125"><font size="2" face="Tahoma" color="#666666">&nbsp;Otopark</font></td>
				<td width="158"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="otopark" value="Evet"<%If Trim(yeniasp("otopark"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Oyun 
				Park�</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="oyun_parki" value="Evet"<%If Trim(yeniasp("oyun_parki"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Parke 
				Zemin</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="parke_zemin" value="Evet"<%If Trim(yeniasp("parke_zemin"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="site_icerisinde" value="Evet"<%If Trim(yeniasp("site_icerisinde"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Su 
				Deposu</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="su_deposu" value="Evet"<%If Trim(yeniasp("su_deposu"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;��mine</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="sonine" value="Evet"<%If Trim(yeniasp("sonine"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="tenis_kortu" value="Evet"<%If Trim(yeniasp("tenis_kortu"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="138"><font size="2" face="Tahoma" color="#666666">&nbsp;Teras</font></td>
				<td width="188"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="teras" value="Evet"<%If Trim(yeniasp("teras"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="191"><font size="2" face="Tahoma" color="#666666">&nbsp;Tripleks</font></td>
				<td><font color="#666666" face="Tahoma">
				<input type="checkbox" name="tripleks" value="Evet"<%If Trim(yeniasp("tripleks"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="yangin_merdiveni" value="Evet"<%If Trim(yeniasp("yangin_merdiveni"))="Evet" Then Response.Write " checked" End If%>></font></td>
				<td width="134"><font size="2" face="Tahoma" color="#666666">&nbsp;Y�zme 
				Havuzu</font></td>
				<td width="206"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="yuzme_havuzu" value="Evet"<%If Trim(yeniasp("yuzme_havuzu"))="Evet" Then Response.Write " checked" End If%>></font></td>
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
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table89" height="109">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="70%" bordercolor="#C0C0C0" id="table90" height="99">
								<tr>
									<td>
									<p align="center">
									<img border="0" src="<%If Not yeniasp("resim1")="" Then%><%=yeniasp("resim1")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="148" height="95" style="border: 1px solid #666666; "></td>
								</tr>
							</table>
						</div>
						</td>
						<td width="53">
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 1 &nbsp;
			</font></td>
					</tr>
				</table>
			</div>
			</td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim1" size="26" value="<%=yeniasp("resim1")%>">
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
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table93" height="109">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="70%" bordercolor="#C0C0C0" id="table94" height="99">
								<tr>
									<td>
									<p align="center">
									<img border="0" id="previewField" src="<%If Not yeniasp("resim2")="" Then%><%=yeniasp("resim2")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="148" height="95" style="border: 1px solid #666666; "></td>
								</tr>
							</table>
						</div>
						</td>
						<td width="53">
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 2 &nbsp;
			</font></td>
					</tr>
				</table>
			</div></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="421">&nbsp;<input type="text" name="resim2" size="26" value="<%=yeniasp("resim2")%>">
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
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table97" height="109">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="70%" bordercolor="#C0C0C0" id="table98" height="99">
								<tr>
									<td>
									<p align="center">
									<img border="0" src="<%If Not yeniasp("resim3")="" Then%><%=yeniasp("resim3")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="148" height="95" style="border: 1px solid #666666; "></td>
								</tr>
							</table>
						</div>
						</td>
						<td width="53">
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 3 &nbsp;
			</font></td>
					</tr>
				</table>
			</div></td>
			<td width="16">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="421">&nbsp;<input type="text" name="resim3" size="26" value="<%=yeniasp("resim3")%>">
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
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table101" height="109">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="70%" bordercolor="#C0C0C0" id="table102" height="99">
								<tr>
									<td>
									<p align="center">
									<img border="0" src="<%If Not yeniasp("resim4")="" Then%><%=yeniasp("resim4")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="148" height="95" style="border: 1px solid #666666; "></td>
								</tr>
							</table>
						</div>
						</td>
						<td width="53">
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 4 &nbsp;
			</font></td>
					</tr>
				</table>
			</div></td>
			<td width="18">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim4" size="26" value="<%=yeniasp("resim4")%>">
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
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table105" height="109">
					<tr>
						<td>
						<div align="center">
							<table border="1" cellpadding="0" style="border-collapse: collapse" width="70%" bordercolor="#C0C0C0" id="table106" height="99">
								<tr>
									<td>
									<p align="center">
									<img border="0" src="<%If Not yeniasp("resim5")="" Then%><%=yeniasp("resim5")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="148" height="95" style="border: 1px solid #666666; "></td>
								</tr>
							</table>
						</div>
						</td>
						<td width="53">
			<p align="right"><font face="Tahoma" size="2" color="#666666">Foto 5 &nbsp;
			</font></td>
					</tr>
				</table>
			</div></td>
			<td width="17">
			<p align="center"><font size="2" face="Tahoma" color="#666666">:</font></td>
			<td width="420">&nbsp;<input type="text" name="resim5" size="26" value="<%=yeniasp("resim5")%>">
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
				<input type="checkbox" name="satilikdaire" value="1"<%If Trim(yeniasp("satilikdaire"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Sat�l�k 
				Yal�</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="satilikyali" value="1"<%If Trim(yeniasp("satilikyali"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satlikbina" value="1"<%If Trim(yeniasp("satlikbina"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				Daire</font></td>
				<td width="22"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikdaire" value="1"<%If Trim(yeniasp("kiralikdaire"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satlikarsa" value="1"<%If Trim(yeniasp("satlikarsa"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="129"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				�� Yeri</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikisyeri" value="1"<%If Trim(yeniasp("kiralikisyeri"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satlikdubleks" value="1"<%If Trim(yeniasp("satlikdubleks"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="130"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				Villa</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikvilla" value="1"<%If Trim(yeniasp("kiralikvilla"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satlikisyeri" value="1"<%If Trim(yeniasp("satlikisyeri"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				Yal�</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikyali" value="1"<%If Trim(yeniasp("kiralikyali"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satlikvilla" value="1"<%If Trim(yeniasp("satlikvilla"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="131"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�k 
				Dubleks</font></td>
				<td width="20"><font color="#CC3300" face="Tahoma">
				<input type="checkbox" name="kiralikdubleks" value="1"<%If Trim(yeniasp("kiralikdubleks"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="vitrin" value="1"<%If Trim(yeniasp("vitrin"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="46">&nbsp;</td>
				<td width="166"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Arsa 
				/ Arazilerde G�ster</font></td>
				<td width="20"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="arasa_arazi" value="1"<%If Trim(yeniasp("arasa_arazi"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="satiliklar" value="1"<%If Trim(yeniasp("satiliklar"))="1" Then Response.Write " checked" End If%>></font></td>
				<td width="48">&nbsp;</td>
				<td width="165"><font size="2" face="Tahoma" color="#CC3300">&nbsp;Kiral�klarda 
				G�ster</font></td>
				<td width="20"><font color="#666666" face="Tahoma">
				<input type="checkbox" name="kiraliklar" value="1"<%If Trim(yeniasp("kiraliklar"))="1" Then Response.Write " checked" End If%>></font></td>
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
				<input type="checkbox" name="flashilanlar" value="1"<%If Trim(yeniasp("flashilanlar"))="1" Then Response.Write " checked" End If%>></font></td>
			</tr>
		</table>
	</div>
	&nbsp;</div>
<p align="center"> 
<input type="submit" value="�LANI D�ZENLE" style="font-family: Verdana; font-size: 10pt; color: #333333; border: 1px solid #C0C0C0; background-color: #FFFFFF"></p>
</form>

<%
sub duzenle
tip = Request.Form("tip")
ilan_tip = Request.Form("ilan_tip")
il = Request.Form("il")
ilce = Request.Form("ilce")
ilanbaslik = Request.Form("ilanbaslik")
ilanaciklamasi = Request.Form("ilanaciklamasi")
fiyat1 = Request.Form("fiyat1")
fiyat2 = Request.Form("fiyat2")
paradegeri = Request.Form("paradegeri")
metrekare = Request.Form("metrekare")
oda = Request.Form("oda")
banyo = Request.Form("banyo")
binayasi = Request.Form("binayasi")
bina_kat = Request.Form("bina_kat")
bulundugu_kat = Request.Form("bulundugu_kat")
isitma = Request.Form("isitma")
tapu = Request.Form("tapu")
emlakdurum = Request.Form("emlakdurum")
iskan = Request.Form("iskan")
kredievet = Request.Form("kredievet")
tarihi_eser = Request.Form("tarihi_eser")
alarm = Request.Form("alarm")
asansor = Request.Form("asansor")
bahce_dubleksi = Request.Form("bahce_dubleksi")
bahce_kati = Request.Form("bahce_kati")
bahceli = Request.Form("bahceli")
balkon = Request.Form("balkon")
barbeku = Request.Form("barbeku")
beyazesya = Request.Form("beyazesya")
bogaz_manzarasi = Request.Form("bogaz_manzarasi")
cati_dubleksi = Request.Form("cati_dubleksi")
celik_kapi = Request.Form("celik_kapi")
deniz_manzarasi = Request.Form("deniz_manzarasi")
dubleks = Request.Form("dubleks")
ebeveyn_banyosu = Request.Form("ebeveyn_banyosu")
esyali = Request.Form("esyali")
fitness_salonu = Request.Form("fitness_salonu")
guvenlik = Request.Form("guvenlik")
hidrofor = Request.Form("hidrofor")
jakuzi = Request.Form("jakuzi")
jenerator = Request.Form("jenerator")
kablo_tv_uydu = Request.Form("kablo_tv_uydu")
kapali_garaj = Request.Form("kapali_garaj")
kapici = Request.Form("kapici")
klima = Request.Form("klima")
mobilya = Request.Form("mobilya")
mutfak_dogalgazi = Request.Form("mutfak_dogalgazi")
mustakil = Request.Form("mustakil")
otopark = Request.Form("otopark")
oyun_parki = Request.Form("oyun_parki")
parke_zemin = Request.Form("parke_zemin")
site_icerisinde = Request.Form("site_icerisinde")
su_deposu = Request.Form("su_deposu")
sonine = Request.Form("sonine")
tenis_kortu = Request.Form("tenis_kortu")
teras = Request.Form("teras")
tripleks = Request.Form("tripleks")
yangin_merdiveni = Request.Form("yangin_merdiveni")
yuzme_havuzu = Request.Form("yuzme_havuzu")
resim1 = Request.Form("resim1")
resim2 = Request.Form("resim2")
resim3 = Request.Form("resim3")
resim4 = Request.Form("resim4")
resim5 = Request.Form("resim5")
satilikdaire = Request.Form("satilikdaire")
satlikbina = Request.Form("satlikbina")
satlikarsa = Request.Form("satlikarsa")
satlikdubleks = Request.Form("satlikdubleks")
satlikisyeri = Request.Form("satlikisyeri")
satlikvilla = Request.Form("satlikvilla")
satilikyali = Request.Form("satilikyali")
kiralikdaire = Request.Form("kiralikdaire")
kiralikisyeri = Request.Form("kiralikisyeri")
kiralikvilla = Request.Form("kiralikvilla")
kiralikyali = Request.Form("kiralikyali")
kiralikdubleks = Request.Form("kiralikdubleks")
vitrin = Request.Form("vitrin")
arasa_arazi = Request.Form("arasa_arazi")
satiliklar = Request.Form("satiliklar")
kiraliklar = Request.Form("kiraliklar")
flashilanlar = Request.Form("flashilanlar")

if il=""  or id="" or ilce=""  then
Response.Write "�l veya �l�eyi Se�mediniz.."
else

Set duz = Server.CreateObject("ADODB.RecordSet")
sql = "select * from ilanlar where id="&id
duz.open sql,baglanti,1,3

duz("tip") = tip
duz("ilan_tip") = ilan_tip
duz("il") = il
duz("ilce") = ilce
duz("ilanbaslik") = ilanbaslik
duz("ilanaciklamasi") = ilanaciklamasi
duz("fiyat1") = fiyat1
duz("fiyat2") = fiyat2
duz("paradegeri") = paradegeri
duz("metrekare") = metrekare
duz("oda") = oda
duz("banyo") = banyo
duz("binayasi") = binayasi
duz("bina_kat") = bina_kat
duz("bulundugu_kat") = bulundugu_kat
duz("isitma") = isitma
duz("tapu") = tapu
duz("emlakdurum") = emlakdurum
duz("iskan") = iskan
duz("kredievet") = kredievet
duz("tarihi_eser") = tarihi_eser
duz("alarm") = alarm
duz("asansor") = asansor
duz("bahce_dubleksi") = bahce_dubleksi
duz("bahce_kati") = bahce_kati
duz("bahceli") = bahceli
duz("balkon") = balkon
duz("barbeku") = barbeku
duz("beyazesya") = beyazesya
duz("bogaz_manzarasi") = bogaz_manzarasi
duz("cati_dubleksi") = cati_dubleksi
duz("celik_kapi") = celik_kapi
duz("deniz_manzarasi") = deniz_manzarasi
duz("dubleks") = dubleks
duz("ebeveyn_banyosu") = ebeveyn_banyosu
duz("esyali") = esyali
duz("fitness_salonu") = fitness_salonu
duz("guvenlik") = guvenlik
duz("hidrofor") = hidrofor
duz("jakuzi") = jakuzi
duz("jenerator") = jenerator
duz("kablo_tv_uydu") = kablo_tv_uydu
duz("kapali_garaj") = kapali_garaj
duz("kapici") = kapici
duz("klima") = klima
duz("mobilya") = mobilya
duz("mutfak_dogalgazi") = mutfak_dogalgazi
duz("mustakil") = mustakil
duz("otopark") = otopark
duz("oyun_parki") = oyun_parki
duz("parke_zemin") = parke_zemin
duz("site_icerisinde") = site_icerisinde
duz("su_deposu") = su_deposu
duz("sonine") = sonine
duz("tenis_kortu") = tenis_kortu
duz("teras") = teras
duz("tripleks") = tripleks
duz("yangin_merdiveni") = yangin_merdiveni
duz("yuzme_havuzu") = yuzme_havuzu
duz("resim1") = resim1
duz("resim2") = resim2
duz("resim3") = resim3
duz("resim4") = resim4
duz("resim5") = resim5
duz("satilikdaire") = satilikdaire
duz("satlikbina") = satlikbina
duz("satlikarsa") = satlikarsa
duz("satlikdubleks") = satlikdubleks
duz("satlikisyeri") = satlikisyeri
duz("satlikvilla") = satlikvilla
duz("satilikyali") = satilikyali
duz("kiralikdaire") = kiralikdaire
duz("kiralikisyeri") = kiralikisyeri
duz("kiralikvilla") = kiralikvilla
duz("kiralikyali") = kiralikyali
duz("kiralikdubleks") = kiralikdubleks
duz("vitrin") = vitrin
duz("arasa_arazi") = arasa_arazi
duz("satiliklar") = satiliklar
duz("kiraliklar") = kiraliklar
duz("flashilanlar") = flashilanlar
duz("tarih") = now
duz.Update

%>
<script>
	alert('�LAN G�NCELLEND�...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=ilanlar');window.refresh;</script>
<%
Response.End
end if
end sub
%>			
</body></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

</body>

</html>