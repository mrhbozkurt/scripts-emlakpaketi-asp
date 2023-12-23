<%
Public Function VeriAl(strGelen)
Set objVeriAl = Server.CreateObject("Microsoft.XMLHTTP" )
objVeriAl.Open "GET" , strGelen, FALSE
objVeriAl.sEnd
VeriAl = objVeriAl.Responsetext
SET objVeriAl = Nothing
End Function

strAdres = "http://www.tcmb.gov.tr/kurlar/today.html"
strVeri = VeriAL(strAdres)
iDolar=InStr(strVeri,"USD" )
strDolarAlis=Mid(strVeri,iDolar+50,10)
strDolarSatis=Mid(strVeri,iDolar+51,10)

iEuro=InStr(strVeri,"EUR" )

strEuroAlis=Mid(strVeri,iEuro+38,11) 'alis
strEuroSatis=Mid(strVeri,iEuro+50,11) 'satis
%>
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
</head>

<body topmargin="0" leftmargin="0">
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
	&nbsp;</div>
<div align="center">
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="54%" bordercolor="#C0C0C0" id="table4" height="20">
		<tr>
			<td><font size="2" face="Tahoma">&nbsp;<font color="#FFFFFF"><b>DÖVİZ 
			KURLARI</b></font></font></td>
		</tr>
	</table>
</div>
</div>
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="64%" bordercolor="#C0C0C0" id="table1" height="25">
		<tr>
			<td><font size="2" face="Tahoma">&nbsp;Döviz </font></td>
			<td width="266">
			<p align="right"><font size="2" face="Tahoma">&nbsp;Alış</font></td>
			<td width="316">
			<p align="right">&nbsp;<font size="2" face="Tahoma">Satış</font></td>
		</tr>
	</table>
</div>
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="64%" bordercolor="#C0C0C0" id="table2" height="26">
		<tr>
			<td><font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp;Dolar:</span></font></td>
			<td width="265">
			<p align="right"><font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp;<%=strdolaralis%></span></font></td>
			<td width="317">
			<font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp; <%=strdolarsatis%>&nbsp;
			</span></font></td>
		</tr>
	</table>
</div>

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="64%" bordercolor="#C0C0C0" id="table3" height="29">
		<tr>
			<td><font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp;Euro :</span></font></td>
			<td width="265">
			<p align="right"><font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp;<%=streuroalis%></span></font></td>
			<td width="317">
			<font size="2" face="Tahoma" color="#CCCCCC">
			<span style="background-color: #000000">&nbsp;<%=streurosatis%>&nbsp;
			</span></font></td>
		</tr>
	</table>
</div>

</body>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-3038547-7");
pageTracker._trackPageview();
</script>
</html>