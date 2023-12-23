<!--#include file="data.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="tr">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<script language=javascript src="yonetim/javascripts/mrh-il-ilce.js"></script>
<script language=javascript src="yonetim/javascripts/mrh.js"></script>
</head>

<body topmargin="0">

<div align="left">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="52%" bordercolor="#C0C0C0" id="table1" height="110">
		<tr><% 
    sql="SELECT * FROM iller"
    Set iller=Conn.Execute(sql)%>
			<td style="border-right-style: solid; border-right-width: 1px">
			<div align="left">
         <table border="0" cellpadding="0" cellspacing="0" width="268" id="table9" height="96">
            <tr><form method="get" action="arama.asp">
               <td align="left" height="31">
                  <select size="1" name="etip" class="input" style="width:110; height:19; font-size:8pt; font-family:Tahoma; color:#666666">
    	             <option value="" salected>Emlak Tipi</option>
    	             <option value="Konut">Konut</option>
    	             <option value="İşyeri">İşyeri</option>
    	             <option value="Yazlık">Yazlık</option>
    	             <option value="Devremülk">Devremülk</option>
    	             <option value="Turistik Tesis">Turistik Tesis</option>
    	             <option value="Kooperatif">Kooperatif</option>
    	             <option value="Arsa">Arsa</option>
                  </select>
               </td>
               <td align="left">
                  <select size="1" name="itip" class="input" style="width:110; height:21; font-family:Tahoma; font-size:8pt; color:#666666">
    	             <option value="" salected>İlan tipi</option>
                     <OPTION value="Satılık">Satılık</OPTION>
                     <OPTION value="Kiralık">Kiralık</OPTION>
                  </select>
               </td>    <%sql="SELECT * FROM iller"
    Set iller=Conn.Execute(sql)%>
            </tr>
            <tr>
               <td align="left" height="32">
                  <select onChange="muzion('oyunlar','mrh-modul.asp?process=ilce&id='+ this.value +'&min=evet');" name="eil" class="input" style="width:110; height:21; font-family:Tahoma; font-size:8pt; color:#666666" size="1">
    	             <option value="" selected>İl</option><%Do While Not iller.Eof%>
    	             <option value="<%=iller("id")%>"><%=iller("sehir")%></option><%iller.MoveNext:Loop%>
                  </select>
               </td>
               <td align="left">
                  <select size="1" name="foto" class="input" style="width:110; height:19; font-family:Tahoma; font-size:8pt; color:#666666">
    	             <option value="" selected>Hepsi</option>
    	             <option value="1">Fotoğraflı</option><!---
    	             <option value="">Fotoğrafsız</option>//--->
                  </select>
               </td>
            </tr>
            <tr>
               <td align="left" height="23">
                  <div id="oyunlar">
                     <select size="1" name="eilce" class="input" style="width:110; height:21; font-family:Tahoma; font-size:8pt; color:#666666">
    	                <option value="">İlçe</option>
    	                <option value="">Önce İl Seçiniz</option>
                     </select>
                  </div>
               </td>
               <td align="left">
                  <input type="submit" value="Ara" style="font-family: Verdana; font-size: 10pt; color: #FFFFFF; border: 1px solid #C0C0C0; background-color: #666666"><font size="2" face="Tahoma">&nbsp;&nbsp;&nbsp;
					<a href="arama.asp">Tüm İlanlar</a></font></td></form>
            </tr>
         </table>
			</div>
			</td>
			<td width="310" style="border-left-style: solid; border-left-width: 1px">
 <SPAN class=annHead id=AnaSayfaFlasIlan1_lblFlas>
            <SCRIPT language=javaScript type=text/javascript>
               v_font='Tahoma';v_fontSize='12px';v_fontSizeNS4='12px';v_fontColor='#ffffff';
               v_textDecoration='none';v_fontColorHover='#99cc00';v_textDecorationHover='nonr';
               v_top=0;v_left=0;v_width=285;v_height=95;v_paddingTop=0;v_paddingLeft=0;v_position='relative';
               v_timeout=3000;v_slideSpeed=25;v_slideDirection=0;
               v_pauseOnMouseOver=true;v_slideStep=2;v_textAlign='center';v_textVAlign='middle';v_content=[<%
               melek=0
               Set flash=Conn.Execute("SELECT * FROM ilanlar where flashilanlar=1 ORDER BY id DESC")
               Do while Not flash.Eof
               Set ilan=Conn.Execute("SELECT * FROM ilanlar WHERE id="& flash("id"))
               Set il=Conn.Execute("SELECT * FROM iller WHERE id=" & ilan("il"))
               Set ilce=Conn.Execute("SELECT * FROM ilceler WHERE id=" & ilan("ilce"))
               If Not melek=0 Then%>,<%End If%>['ilan.asp?s-emlak=ilandetayi&id=<%=ilan("id")%>','<font class=Manset>İlan No: <%=ilan("id")%><br><%Response.Write ilan("ilan_tip")&" "&ilan("tip")%></font><br><%Response.Write il("sehir")&" / "&ilce("ilce")%><br>Fiyat :&nbsp;<%=ilan("fiyat1")%>, <%=ilan("fiyat2")%>&nbsp; <%=ilan("paradegeri")%><br>Krediye Uygun :&nbsp;<img border=0 src="<%If Not ilan("kredievet")="" Then%>images/<%=ilan("kredievet")%>.jpg<%Else%>images/tik-yok.jpg<%End If%>">','_self','<td valign=top><img border=1 bordercolor=black src=yonetim/<%If Not ilan("resim1")="" Then%><%=ilan("resim1")%><%Else%>ilanfoto/smultimedya_foto_yok.jpg<%End If%> align=top width=120 height=100></td><td valign=top ']<%melek=melek+1:flash.MoveNext:Loop%>];
               v_ua=navigator.userAgent;v_nS4=document.layers?1:0;v_iE=document.all&&!window.innerWidth&&v_ua.indexOf('MSIE')!=-1?1:0;v_oP=v_ua.indexOf('Opera')!=-1&&document.clear?1:0;v_oP7=v_oP&&document.appendChild?1:0;v_oP4=v_ua.indexOf('Opera')!=-1&&!document.clear;v_kN=v_ua.indexOf('Konqueror')!=-1&&parseFloat(v_ua.substring(v_ua.indexOf('Konqueror/')+10))<3.1?1:0;v_count=v_content.length;v_cur=1;v_cl=0;v_d=v_slideDirection?-1:1;v_TIM=0;v_fontSize2=v_nS4&&navigator.platform.toLowerCase().indexOf('win')!=-1?v_fontSizeNS4:v_fontSize;v_canPause=0;function v_getOS(a){
               return v_iE?document.all[a].style:v_nS4?document.layers['v_container'].document.layers[a]:document.getElementById(a).style};function v_start(){var o,px;o=v_getOS('v_1');px=v_oP&&!v_oP7||v_nS4?0:'px';if(parseInt(o.top)==v_paddingTop){v_canPause=1;if(v_count>1)v_TIM=setTimeout('v_canPause=0;v_slide()',v_timeout);return}o.top=(parseInt(o.top)-v_slideStep*v_d)*v_d>v_paddingTop*v_d?parseInt(o.top)-v_slideStep*v_d+px:v_paddingTop+px;if(v_oP&&o.visibility.toLowerCase()!='visible')o.visibility='visible';setTimeout('v_start()',v_slideSpeed)};function v_slide(){var o,o2,px;o=v_getOS('v_'+v_cur);o2=v_getOS('v_'+(v_cur<v_count?v_cur+1:1));px=v_oP&&!v_oP7||v_nS4?0:'px';if(parseInt(o2.top)==v_paddingTop){if(v_oP)o.visibility='hidden';o.top=v_height*v_d+px;v_cur=v_cur<v_count?v_cur+1:1;v_canPause=1;v_TIM=setTimeout('v_canPause=0;v_slide()',v_timeout);return}
               if(v_oP&&o2.visibility.toLowerCase()!='visible')o2.visibility='visible';if((parseInt(o2.top)-v_slideStep*v_d)*v_d>v_paddingTop*v_d){o.top=parseInt(o.top)-v_slideStep*v_d+px;o2.top=parseInt(o2.top)-v_slideStep*v_d+px}else{o.top=-v_height*v_d+px;o2.top=v_paddingTop+px}setTimeout('v_slide()',v_slideSpeed)};if(v_nS4||v_iE||v_oP||document.getElementById&&!v_kN&&!v_oP4){
               document.write("<style>.vnewsticker,a.vnewsticker{font-family:"+v_font+";font-size:"+v_fontSize2+";color:"+v_fontColor+";text-decoration:"+v_textDecoration+";}a.vnewsticker:hover{font-family:"+v_font+";font-size:"+v_fontSize2+";color:"+v_fontColorHover+";text-decoration:"+v_textDecorationHover+"}</style>");v_temp="<div "+(v_nS4?"name":"id")+"=v_container style='position:"+v_position+";top:"+v_top+"px;left:"+v_left+"px;width:"+v_width+"px;height:"+v_height+"px;clip:rect(0,"+v_width+","+v_height+",0);overflow:hidden'>"+(v_iE?"<div style='position:absolute;top:0px;left:0px;width:100%;clip:rect(0,"+v_width+","+v_height+",0)'>":"");for(v_i=0;v_i<v_count;v_i++)
               v_temp+="<div "+(v_nS4?"name":"id")+"=v_"+(v_i+1)+" style='position:absolute;top:"+(v_height*v_d)+"px;left:"+v_paddingLeft+"px;width:"+(v_width-v_paddingLeft*2)+"px;clip:rect(0,"+(v_width-v_paddingLeft*2)+","+(v_height-v_paddingTop*2)+",0);overflow:hidden"+(v_oP?";visibility:hidden":"")+";text-align:"+v_textAlign+" ' class=vnewsticker>"+(!v_nS4?"<table cellpadding=4 align=center border=0 width="+(v_width-v_paddingLeft*2)+" cellpadding=0 cellspacing=0><tr>"+v_content[v_i][3]+" width="+(v_width-v_paddingLeft*2)+" valign=middle class=vnewsticker>":"")+(v_content[v_i][0]!=""?"<a href='"+v_content[v_i][0]+" ' class=vnewsticker"+(v_pauseOnMouseOver?" onmouseover='if(v_canPause&&v_count>1){clearTimeout(v_TIM);v_cl=1}' onmouseout='if(v_canPause&&v_count>1&&v_cl)v_TIM=setTimeout(\"v_canPause=0;v_slide();v_cl=0\","+v_timeout+")'":"")+">":"<span"+(v_pauseOnMouseOver?" onmouseover='if(v_canPause&&v_count>1){clearTimeout(v_TIM);v_cl=1}' onmouseout='if(v_canPause&&v_count>1&&v_cl)v_TIM=setTimeout(\"v_canPause=0;v_slide();v_cl=0\","+v_timeout+")'":"")+">")+v_content[v_i][1]+(v_content[v_i][0]!=""?"</a>":"</span>")+(!v_nS4?"</td><td valign=bottom><a href='"+v_content[v_i][0]+" ' class=vnewsticker"+(v_pauseOnMouseOver?" onmouseover='if(v_canPause&&v_count>1){clearTimeout(v_TIM);v_cl=1}' onmouseout='if(v_canPause&&v_count>1&&v_cl)v_TIM=setTimeout(\"v_canPause=0;v_slide();v_cl=0\","+v_timeout+")'":"")+">":"<span"+(v_pauseOnMouseOver?" onmouseover='if(v_canPause&&v_count>1){clearTimeout(v_TIM);v_cl=1}' onmouseout='if(v_canPause&&v_count>1&&v_cl)v_TIM=setTimeout(\"v_canPause=0;v_slide();v_cl=0\","+v_timeout+")'":"")+">")+""+(v_content[v_i][0]!=""?"</a>":"</span>")+(!v_nS4?"</td></tr></table>":"")+"</div>";v_temp+=(v_iE?"</div>":"")+"</div>";document.write(v_temp);setTimeout("v_start()",500);if(v_nS4)onresize=function(){location.reload()}}
            </SCRIPT></td>
		</tr>
	</table>
</div>

</body>

</html>