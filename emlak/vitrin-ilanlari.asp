<!--#include file="data.asp"-->
<body leftmargin="10">

<table cellpadding="0" cellspacing="0" width="413" height="95%"><!--#include file="data.asp"-->
   <tr><%cigdemrh=1:Set vitrinmrh=Conn.Execute("SELECT * FROM ilanlar where vitrin=1 ORDER BY id Asc"):Do while Not vitrinmrh.Eof:Set cit=Conn.Execute("SELECT * FROM iller WHERE id=" & vitrinmrh("il")):Set city=Conn.Execute("SELECT * FROM ilceler WHERE id=" & vitrinmrh("ilce")):Set dtm=Conn.Execute("SELECT * FROM ilceler WHERE id=" & vitrinmrh("ilce")):Set dtf=Conn.Execute("SELECT * FROM iller WHERE id=" & vitrinmrh("il"))%>
      <td valign="top" width="413">
			<div align="left">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="134" bordercolor="#C0C0C0" id="table10" height="180" background="images/ilan-bg.jpg">
					<tr>
						<td> 
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="93%" bordercolor="#C0C0C0" id="table11" height="83">
								<tr>
									<td>
									<p align="center">
									<a href="ilan.asp?s-emlak=ilandetayi&id=<%=vitrinmrh("id")%>">
									<img alt="<%=vitrinmrh("ilanbaslik")%>" border="0" src="yonetim/<%If Not vitrinmrh("resim1")="" Then%><%=vitrinmrh("resim1")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%>" width="119" height="78" style="border: 1px solid #666666; "></a></td>
								</tr>
							</table>
							<div align="center">
								<table border="0" cellpadding="0" style="border-collapse: collapse" width="92%" bordercolor="#C0C0C0" id="table12" height="16">
									<tr>
										<td width="43">
										<font size="2" face="Tahoma" color="#808080">&nbsp;Ý.No</font></td>
										<td width="8">
										<p align="center">
										<font size="2" face="Tahoma" color="#808080">
										:</font></td>
										<td>
										<font size="2" face="Tahoma" color="#CC3300">&nbsp;<%=vitrinmrh("id")%></font></td>
									</tr>
								</table>
								<div align="center">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="91%" bordercolor="#C0C0C0" id="table13" height="19">
										<tr>
											<td width="42">
											<font size="2" face="Tahoma" color="#808080">&nbsp;Ýl</font></td>
											<td width="8">
											<p align="center">
											<font size="2" face="Tahoma" color="#808080">
											:</font></td>
											<td>
											<font size="2" face="Tahoma" color="#666666">&nbsp;<%=cit("sehir")%></font></td>
										</tr>
									</table>
									<div align="center">
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="92%" bordercolor="#C0C0C0" id="table14" height="19">
											<tr>
												<td width="42">
												<font size="2" face="Tahoma" color="#808080">&nbsp;Ýlçe</font></td>
												<td width="10">
												<p align="center">
												<font size="2" face="Tahoma" color="#808080">
												:</font></td>
												<td>
												<font size="2" face="Tahoma" color="#666666">&nbsp;<%=city("ilce")%></font></td>
											</tr>
										</table>
										<div align="center">
											<table border="0" cellpadding="0" style="border-collapse: collapse" width="91%" bordercolor="#C0C0C0" id="table15" height="18">
												<tr>
													<td width="41">
													<font size="2" face="Tahoma" color="#808080">
													&nbsp;Ý.Tipi</font></td>
													<td width="10">
													<p align="center">
													<font size="2" face="Tahoma" color="#808080">
													:</font></td>
													<td>
													<font size="2" face="Tahoma" color="#666666">&nbsp;<%=vitrinmrh("ilan_tip")%></font></td>
												</tr>
											</table>
											<div align="center">
												<table border="0" cellpadding="0" style="border-collapse: collapse" width="91%" bordercolor="#C0C0C0" id="table16" height="15">
													<tr>
														<td width="41">
														<font size="2" face="Tahoma" color="#808080">&nbsp;E.Tipi</font></td>
														<td width="10">
														<p align="center">
														<font size="2" face="Tahoma" color="#808080">
														:</font></td>
														<td>
														<font size="2" face="Tahoma" color="#666666">&nbsp;<%=vitrinmrh("tip")%></font></td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</td>
					</tr>
				</table>
				
			</div>
      </td><%If cigdemrh=6 OR cigdemrh=12 OR cigdemrh=18 OR cigdemrh=24 OR cigdemrh=30 OR cigdemrh=36 OR cigdemrh=42 OR cigdemrh=48 Then Response.Write"</tr><tr><td colspan=""2"" height=""10""></td></tr><tr>"End If:cigdemrh=cigdemrh+1:vitrinmrh.MoveNext:Loop%>
   </tr>
   <tr>
      <td height="1" valign="top"></td>
</table>