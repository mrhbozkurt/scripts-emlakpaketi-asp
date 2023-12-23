<%
Set mrhsatilikdaire = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satilikdaire=1 order by id desc"
mrhsatilikdaire.Open sql,baglanti,1,3
%>
<%
Set mrhsatlikbina = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satlikbina=1 order by id desc"
mrhsatlikbina.Open sql,baglanti,1,3
%>
<%
Set mrhsatlikarsa = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satlikarsa=1 order by id desc"
mrhsatlikarsa.Open sql,baglanti,1,3
%>
<%
Set mrhsatlikdubleks = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satlikdubleks=1 order by id desc"
mrhsatlikdubleks.Open sql,baglanti,1,3
%>
<%
Set mrhsatlikisyeri = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satlikisyeri=1 order by id desc"
mrhsatlikisyeri.Open sql,baglanti,1,3
%>
<%
Set mrhsatlikvilla = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satlikvilla=1 order by id desc"
mrhsatlikvilla.Open sql,baglanti,1,3
%>
<%
Set mrhsatilikyali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where satilikyali=1 order by id desc"
mrhsatilikyali.Open sql,baglanti,1,3
%>
<%
Set mrhkiralikdaire = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where kiralikdaire=1 order by id desc"
mrhkiralikdaire.Open sql,baglanti,1,3
%>
<%
Set mrhkiralikisyeri = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where kiralikisyeri=1 order by id desc"
mrhkiralikisyeri.Open sql,baglanti,1,3
%>
<%
Set mrhkiralikvilla = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where kiralikvilla=1 order by id desc"
mrhkiralikvilla.Open sql,baglanti,1,3
%>
<%
Set mrhkiralikyali = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where kiralikyali=1 order by id desc"
mrhkiralikyali.Open sql,baglanti,1,3
%>
<%
Set mrhkiralikdubleks = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ilanlar where kiralikdubleks=1 order by id desc"
mrhkiralikdubleks.Open sql,baglanti,1,3
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body topmargin="0">

	<div align="center">
		<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bordercolor="#C0C0C0" id="table1" height="114">
			<tr>
				<td>
				<div align="center">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="97%" bordercolor="#C0C0C0" id="table2" height="98">
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Daire</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><font size="2" face="Tahoma">&nbsp;<b><font color="#99CC00"><a href="satilik-daireler.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-daireler.asp" style="text-decoration: none"><font color="#FFFFFF"><%=mrhsatilikdaire.recordcount%></font><font color="#99CC00">]</font></a></b></font></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
						Yalý</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="satilik-yalilar.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-yalilar.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhsatilikyali.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Bina</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><font size="2" face="Tahoma">&nbsp;<b><font color="#99CC00"><a href="satilik-binalar.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-binalar.asp" style="text-decoration: none"><font color="#FFFFFF"><%=mrhsatlikbina.recordcount%></font><font color="#99CC00">]</font></a></b></font></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Kiralýk 
						Daire</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="kiralik-daireler.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="kiralik-daireler.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhkiralikdaire.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Arsa</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><b>
						<font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="arsa-araziler.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="arsa-araziler.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhsatlikarsa.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Kiralýk 
						Ýþ Yeri</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="kiralik-is-yerleri.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="kiralik-is-yerleri.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhkiralikisyeri.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Dubleks</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><b>
						<font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="satilik-dubleksler.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-dubleksler.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhsatlikdubleks.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Kiralýk 
						Villa</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="kiralik-villalar.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="kiralik-villalar.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhkiralikvilla.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Ýþ Yeri</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><b>
						<font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="satilik-is-yerleri.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-is-yerleri.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhsatlikisyeri.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Kiralýk 
						Yalý</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="kiralik-yalilar.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="kiralik-yalilar.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhkiralikyali.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
						<tr>
							<td width="98">
							<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Satýlýk 
							Villa</font></td>
							<td width="18">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td width="63"><b>
						<font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="satilik-villalar.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="satilik-villalar.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhsatlikvilla.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						<td width="111">
						<font size="2" face="Tahoma" color="#CCCCCC">&nbsp;.Kiralýk 
						Dubleks</font></td>
							<td width="17">
							<p align="center">
							<font size="2" face="Tahoma" color="#CCCCCC">:</font></td>
						<td><b><font size="2" face="Tahoma" color="#99CC00">&nbsp;<a href="kiralik-dubleksler.asp" style="text-decoration: none"><font color="#99CC00">[</font></a></font><a href="kiralik-dubleksler.asp" style="text-decoration: none"><font size="2" face="Tahoma" color="#FFFFFF"><%=mrhkiralikdubleks.recordcount%></font><font size="2" face="Tahoma" color="#99CC00">]</font></a></b></td>
						</tr>
					</table>
				</div>
			</td>
			</tr>
		</table>
	</div>

</body>

</html>