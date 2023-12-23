<!--#include file="data.asp"-->
<!--#include file="coder.asp"-->
<%
Session.CodePage = 1254 
Session.LCID = 1055 
%>
<%'    Emrahbozkurt
process=Trim(restore(request("process"))):id=Trim(restore(request("id")))
With Response
.Buffer=true
.CacheControl = "no-cache"
.AddHeader "Pragma", "no-cache"
.Expires = -1
End With
Function caca(mrh) 
Dim regEx, Match, Matches 
If mrh <> "" Then 
Set regEx = New RegExp 
regEx.Pattern = "^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" 
regEx.IgnoreCase = True 
If regEx.Test(mrh) Then caca = True Else caca = False 
End If 
End Function 
function restore(mrh)
mrh=Replace(mrh,"`",""):mrh=Replace(mrh,"="," "):mrh=Replace(mrh,"&","")
mrh=Replace(mrh,"%",""):mrh=Replace(mrh,"!",""):mrh=Replace(mrh,"#","")
mrh=Replace(mrh,"<",""):mrh=Replace(mrh,">",""):mrh=Replace(mrh,"*","")
mrh=Replace(mrh,"And",""):mrh=Replace (mrh,"'",""):mrh=Replace(mrh,"Chr(34)","")
mrh=Replace(mrh,"Chr(39)",""):restore = mrh
end function
Select Case process

Case "iletisim-formu"
    Set emrahbozkurt = Server.CreateObject("adodb.recordset")
	sql="select * from iletisim_formu"
	emrahbozkurt.open sql, baglanti , 1,3
	
	adsoyad = Request.Form("adsoyad")
	email= Request.Form("email")
	tel= Request.Form("tel")
	fax= Request.Form("fax")
	gsm= Request.Form("gsm")
	mesaj= Request.Form("mesaj")
		
	emrahbozkurt.Addnew
	emrahbozkurt("adsoyad") = adsoyad
	emrahbozkurt("email") = email
	emrahbozkurt("tel") = tel
	emrahbozkurt("fax") = fax
	emrahbozkurt("gsm") = gsm
	emrahbozkurt("mesaj") = mesaj
	emrahbozkurt("tarih") = now
	%>
<script>
	alert('Bilgileriniz Gönderilmiþtir...!!');
	window.parent.location.href=('iletisim.asp');window.refresh;</script><%
	emrahbozkurt.update
    emrahbozkurt.Close 
    Set emrahbozkurt = Nothing 

Case "emlak-talebi"
    Set mrhbozkurt = Server.CreateObject("adodb.recordset")
	sql="select * from emlak_talebi"
	mrhbozkurt.open sql, baglanti , 1,3
	
	ad = Request.Form("ad")
	soyad = Request.Form("soyad")
	email = Request.Form("email")
	medeni = Request.Form("medeni")
	cep = Request.Form("cep")
	tel = Request.Form("tel")
	tip = Request.Form("tip")
	il = Request.Form("il")
	ilce = Request.Form("ilce")
	ilan_tip = Request.Form("ilan_tip")
	oda = Request.Form("oda")
	durum = Request.Form("durum")
	yas = Request.Form("yas")
	banyo = Request.Form("banyo")
	balkon = Request.Form("balkon")
	bina_kat = Request.Form("bina_kat")
	bulundugu_kat = Request.Form("bulundugu_kat")
	isitma = Request.Form("isitma")
	kare1 = Request.Form("kare1")
	kare2 = Request.Form("kare2")
	fiyat1 = Request.Form("fiyat1")
	fiyat2 = Request.Form("fiyat2")
	fiyat_tip = Request.Form("fiyat_tip")
	aciklama = Request.Form("aciklama")
		
	mrhbozkurt.Addnew
	mrhbozkurt("ad") = ad
	mrhbozkurt("soyad") = soyad
	mrhbozkurt("email") = email
	mrhbozkurt("medeni") = medeni
	mrhbozkurt("cep") = cep
	mrhbozkurt("tel") = tel
	mrhbozkurt("tip") = tip
	mrhbozkurt("il") = il
	mrhbozkurt("ilce") = ilce
	mrhbozkurt("ilan_tip") = ilan_tip
	mrhbozkurt("oda") = oda
	mrhbozkurt("durum") = durum
	mrhbozkurt("yas") = yas
	mrhbozkurt("banyo") = banyo
	mrhbozkurt("balkon") = balkon
	mrhbozkurt("bina_kat") = bina_kat
	mrhbozkurt("bulundugu_kat") = bulundugu_kat
	mrhbozkurt("isitma") = isitma
	mrhbozkurt("kare1") = kare1
	mrhbozkurt("kare2") = kare2
	mrhbozkurt("fiyat1") = fiyat1
	mrhbozkurt("fiyat2") = fiyat2
	mrhbozkurt("fiyat_tip") = fiyat_tip
	mrhbozkurt("aciklama") = aciklama
	mrhbozkurt("tarih") = now
	%>
<script>
	alert('Emlak Talebiniz Kayýda Alýnmýþtýr. Size Uygun Kriterlerde Emlaðýmýz Olduðunda Sizinle Ýletiþime Geçiceðiz..!! --- Teþekkür Ederiz..');
	window.parent.location.href=('emlak-talep-formu.asp');window.refresh;</script><%
	mrhbozkurt.update
    mrhbozkurt.Close 
    Set mrhbozkurt = Nothing 

Case "ilce"
    If isnumeric(id) Then
        min = Server.HTMLEncode(request.querystring("min"))
        sql="SELECT * FROM ilceler WHERE sehir="& id &" ORDER BY ilce ASC"
        Set ilceler=Conn.Execute(sql)
        With Response
        .Write "<select size=""1"" name=""ilce"""
        If Not min = "" Then
            .Write" style=""width:100"""
        Else
            .Write " style=""width:150"""
        End If
        .Write ">"
        .Write "<option value="""" selected>Ilce Seciniz</option>"
        Do While Not ilceler.Eof
            .Write "<option value="""
            .Write ilceler("id") 
            .Write """>"
            .Write ilceler("ilce")
            .Write "</option>"
        ilceler.MoveNext
        Loop
        .Write "</select>"
        End With
    End If
    Conn.Close:Set Conn=Nothing:Response.End
  
Case Else
    Response.Redirect Request.Servervariables("HTTP_REFERER")
    Conn.Close:Set Conn=Nothing:Response.End'               Emrahbozkurt .mrh
    End Select%>