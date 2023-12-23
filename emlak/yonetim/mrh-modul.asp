<!--#include file="data.asp"-->
<!--#include file="engel.asp"-->

<%'      emrahbozkurt.com
If Not Session("kullaniciadi")="" Then
process=Trim(restore(request("process"))):id=Trim(restore(request("id"))):url2=request("url2")
With Response
.Buffer=true
.CacheControl = "no-cache"
.AddHeader "Pragma", "no-cache"
.Expires = -1
End With
function restore(data)
data=Replace(data ,"`",""):data=Replace(data ,"="," "):data=Replace (data ,"&","")
data=Replace(data ,"%",""):data=Replace(data ,"!",""):data=Replace (data ,"#","")
data=Replace(data ,"<",""):data=Replace(data ,">",""):data=Replace (data ,"*","")
data=Replace(data ,"And",""):data= Replace (data ,"'",""):data=Replace (data ,"Chr(34)","")
data=Replace(data ,"Chr(39)",""):restore = data
end function
Select Case process


Case "yazi_icerigi"
    siteadresi=Trim(restore(request("siteadresi"))):sitebasligi=Trim(restore(request("sitebasligi")))
    aranacak=Trim(restore(request("aranacak"))):aciklama=Trim(restore(request("aciklama")))
    
    Conn.Execute("UPDATE site_ayarlari SET siteadresi='"& siteadresi &"',sitebasligi='"& sitebasligi &"',aranacak='"& aranacak &"',aciklama='"& aciklama &"' WHERE id=1")%><script>
	alert('SÝTE YAZI ÝÇERÝÐÝ GÜNCELLENDÝ...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=yazi-icerigi');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
    
Case "iletisim-bilgileri"
    adres=Trim(restore(request("adres"))):tel1=Trim(restore(request("tel1")))
    tel2=Trim(restore(request("tel2"))):fax=Trim(restore(request("fax")))
    siteemail=Trim(restore(request("siteemail"))):firmaadi=Trim(restore(request("firmaadi")))
    
    Conn.Execute("UPDATE iletisim_bilgileri SET adres='"& adres &"',tel1='"& tel1 &"',tel2='"& tel2 &"',fax='"& fax &"',siteemail='"& siteemail &"',firmaadi='"& firmaadi &"' WHERE id=1")%><script>
	alert('ÝLETÝÞÝM BÝLGÝLERÝ GÜNCELLENDÝ...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=iletisim_bilgileri');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
Case "kurumsal-icerik"

Set cilgin = Server.CreateObject("adodb.recordset")
sql="select * from kurumsal WHERE id=1"
cilgin.open sql, baglanti , 1,3

icerik = Request.Form("txtContent")


cilgin("icerik") = icerik
cilgin.update
%>
<script>
	alert('KURUMSAL ÝÇERÝÐÝ GÜNCELLENDÝ');
	window.parent.location.href=('yonetim.asp?s_emlak=kurumsal-icerik');window.refresh;</script></script>
<%
cilgin.Close
Set cilgin = Nothing


Case "haber-banka"

Set mrh1 = Server.CreateObject("adodb.recordset")
sql="select * from haber_banka_bilgileri"
mrh1.open sql, baglanti , 1,3

kategori = Request.Form("kategori")
baslik = Request.Form("baslik")
icerik = Request.Form("icerik")

mrh1.Addnew
mrh1("kategori") = kategori
mrh1("baslik") = baslik
mrh1("icerik") = icerik
mrh1("tarih") = now
mrh1.update
%>
<script>
	alert('Haber veya Banka Kredi Oranlarý Eklendi');
	window.parent.location.href=('yonetim.asp?s_emlak=haber-yayinda');window.refresh;</script></script>
<%
mrh1.Close
Set mrh1 = Nothing

Case "haber-banka-sil"
    Conn.Execute("DELETE * FROM haber_banka_bilgileri WHERE id="& id)%><script>
	alert('BANKA BÝLGÝLERÝ veya HABER SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=haber-yayinda');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
%>
<%

    
Case "yonetim-sifreleri"
    kullaniciadi=Request.Form("kullaniciadi"):password=Request.Form("password"):id=1
    If kullaniciadi="" OR password="" Then%><script>
	alert('KULLANICI ADI VEYA ÞÝFRESÝNÝ YAZMADINIZ. \n Kullanýcý Adý :<%=kullaniciadi%> \n Þifre :<%=password%>');
	history.back();</script><%
	Else
'   Conn.Execute("UPDATE yonetim SET kullaniciadi='"&kullaniciadi&"', password='"&password&"'  WHERE id="&id)
	Set bag = Server.CreateObject("ADODB.Connection")
	bag.Open (Conn)
	Set kaydet = Server.CreateObject("ADODB.Recordset")
	sql =  "SELECT * FROM yonetim WHERE id=" & id
	kaydet.Open sql, bag, 1, 3
	kaydet("kullaniciadi") = kullaniciadi
	kaydet("password") = password
	kaydet.Update%><script>
	alert('YÖNETÝCÝ BÝLGÝLERÝ GÜNCELLENDÝ...!! \nLÜTFEN YENÝ BÝLGÝLERÝNÝZÝ UNUTMAYINIZ. \n Kullanýcý Adý :<%=kullaniciadi%> \n Þifre :<%=password%>');
	window.parent.location.href=('yonetim.asp?s_emlak=yonetim-sifre-degisikligi');window.refresh;</script></script><%
	End If
    Conn.Close:Set Conn=Nothing:Response.End
    
    
    
Case "il-ekle"

Set karagozlum = Server.CreateObject("adodb.recordset")
sql="select * from iller"
karagozlum.open sql, baglanti , 1,3

sehir = Request.Form("sehir")

karagozlum.Addnew
karagozlum("sehir") = sehir
karagozlum.update
%>
<script>
	alert('Ýl Eklendi..');
	window.parent.location.href=('yonetim.asp?s_emlak=il-ekle');window.refresh;</script></script>
<%
karagozlum1.Close
Set karagozlum1 = Nothing


Case "il-sil"
    Conn.Execute("DELETE * FROM iller WHERE id="& id)%><script>
	alert('Ýl Listeden Çýkarýldý...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=il-ekle');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End


Case "ilce-ekle"

Set karagozlum1 = Server.CreateObject("adodb.recordset")
sql="select * from ilceler"
karagozlum1.open sql, baglanti , 1,3

sehir = Request.Form("sehir")
ilce = Request.Form("ilce")

If sehir="" or ilce="" Then%>
<script>
	alert('Ýl veya Ýlçeyi Boþ Býraktýnýz..');
	window.parent.location.href=('yonetim.asp?s_emlak=ilce-ekle');window.refresh;</script>
<%
Response.End
END IF

karagozlum1.Addnew
karagozlum1("sehir") = sehir
karagozlum1("ilce") = ilce
karagozlum1.update

%>
<script>
	alert('Ýlçe Eklendi..');
	window.parent.location.href=('yonetim.asp?s_emlak=ilce-ekle');window.refresh;</script>
<%
karagozlum1.Close
Set karagozlum1 = Nothing

Case "ilce-sil"
    Conn.Execute("DELETE * FROM ilceler WHERE id="& id)%><script>
	alert('Ýlçe Listeden Çýkarýldý...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=ilce-ekle');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End

    
    
Case "ofisler"

Set ayna = Server.CreateObject("adodb.recordset")
sql="select * from ofisler"
ayna.open sql, baglanti , 1,3

subeadi = Request.Form("subeadi")
tel1 = Request.Form("tel1")
tel2 = Request.Form("tel2")
gsm = Request.Form("gsm")
fax = Request.Form("fax")
email1 = Request.Form("email1")
email2 = Request.Form("email2")
adres = Request.Form("adres")
resim = Request.Form("resim")

ayna.Addnew
ayna("subeadi") = subeadi
ayna("tel1") = tel1
ayna("tel2") = tel2
ayna("gsm") = gsm
ayna("fax") = fax
ayna("email1") = email1
ayna("email2") = email2
ayna("adres") = adres
ayna("resim") = resim
ayna.update
%>
<script>
	alert('Ofis Þubeniz Eklendi..');
	window.parent.location.href=('yonetim.asp?s_emlak=ofisler');window.refresh;</script></script>
<%
ayna.Close
Set ayna = Nothing

Case "ofis-sil"
    Conn.Execute("DELETE * FROM ofisler WHERE id="& id)%><script>
	alert('OFÝS ÞUBESÝ SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=ofisler');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End


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
    
Case "ilanlar"

Set mrhilanlari = Server.CreateObject("adodb.recordset")
sql="select * from ilanlar"
mrhilanlari.open sql, baglanti , 1,3

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


mrhilanlari.Addnew
mrhilanlari("tip") = tip
mrhilanlari("ilan_tip") = ilan_tip
mrhilanlari("il") = il
mrhilanlari("ilce") = ilce
mrhilanlari("ilanbaslik") = ilanbaslik
mrhilanlari("ilanaciklamasi") = ilanaciklamasi
mrhilanlari("fiyat1") = fiyat1
mrhilanlari("fiyat2") = fiyat2
mrhilanlari("paradegeri") = paradegeri
mrhilanlari("metrekare") = metrekare
mrhilanlari("oda") = oda
mrhilanlari("banyo") = banyo
mrhilanlari("binayasi") = binayasi
mrhilanlari("bina_kat") = bina_kat
mrhilanlari("bulundugu_kat") = bulundugu_kat
mrhilanlari("isitma") = isitma
mrhilanlari("tapu") = tapu
mrhilanlari("emlakdurum") = emlakdurum
mrhilanlari("iskan") = iskan
mrhilanlari("kredievet") = kredievet
mrhilanlari("tarihi_eser") = tarihi_eser
mrhilanlari("alarm") = alarm
mrhilanlari("asansor") = asansor
mrhilanlari("bahce_dubleksi") = bahce_dubleksi
mrhilanlari("bahce_kati") = bahce_kati
mrhilanlari("bahceli") = bahceli
mrhilanlari("balkon") = balkon
mrhilanlari("barbeku") = barbeku
mrhilanlari("beyazesya") = beyazesya
mrhilanlari("bogaz_manzarasi") = bogaz_manzarasi
mrhilanlari("cati_dubleksi") = cati_dubleksi
mrhilanlari("celik_kapi") = celik_kapi
mrhilanlari("deniz_manzarasi") = deniz_manzarasi
mrhilanlari("dubleks") = dubleks
mrhilanlari("ebeveyn_banyosu") = ebeveyn_banyosu
mrhilanlari("esyali") = esyali
mrhilanlari("fitness_salonu") = fitness_salonu
mrhilanlari("guvenlik") = guvenlik
mrhilanlari("hidrofor") = hidrofor
mrhilanlari("jakuzi") = jakuzi
mrhilanlari("jenerator") = jenerator
mrhilanlari("kablo_tv_uydu") = kablo_tv_uydu
mrhilanlari("kapali_garaj") = kapali_garaj
mrhilanlari("kapici") = kapici
mrhilanlari("klima") = klima
mrhilanlari("mobilya") = mobilya
mrhilanlari("mutfak_dogalgazi") = mutfak_dogalgazi
mrhilanlari("mustakil") = mustakil
mrhilanlari("otopark") = otopark
mrhilanlari("oyun_parki") = oyun_parki
mrhilanlari("parke_zemin") = parke_zemin
mrhilanlari("site_icerisinde") = site_icerisinde
mrhilanlari("su_deposu") = su_deposu
mrhilanlari("sonine") = sonine
mrhilanlari("tenis_kortu") = tenis_kortu
mrhilanlari("teras") = teras
mrhilanlari("tripleks") = tripleks
mrhilanlari("yangin_merdiveni") = yangin_merdiveni
mrhilanlari("yuzme_havuzu") = yuzme_havuzu
mrhilanlari("resim1") = resim1
mrhilanlari("resim2") = resim2
mrhilanlari("resim3") = resim3
mrhilanlari("resim4") = resim4
mrhilanlari("resim5") = resim5
mrhilanlari("satilikdaire") = satilikdaire
mrhilanlari("satlikbina") = satlikbina
mrhilanlari("satlikarsa") = satlikarsa
mrhilanlari("satlikdubleks") = satlikdubleks
mrhilanlari("satlikisyeri") = satlikisyeri
mrhilanlari("satlikvilla") = satlikvilla
mrhilanlari("satilikyali") = satilikyali
mrhilanlari("kiralikdaire") = kiralikdaire
mrhilanlari("kiralikisyeri") = kiralikisyeri
mrhilanlari("kiralikvilla") = kiralikvilla
mrhilanlari("kiralikyali") = kiralikyali
mrhilanlari("kiralikdubleks") = kiralikdubleks
mrhilanlari("vitrin") = vitrin
mrhilanlari("arasa_arazi") = arasa_arazi
mrhilanlari("satiliklar") = satiliklar
mrhilanlari("kiraliklar") = kiraliklar
mrhilanlari("flashilanlar") = flashilanlar
mrhilanlari("tarih") = now
mrhilanlari.update
%>
<script>
	alert('ÝLANINIZ EKLENDÝ..');
	window.parent.location.href=('yonetim.asp?s_emlak=ilan-ekle');window.refresh;</script></script>
<%
mrhilanlari.Close
Set mrhilanlari = Nothing
    
Case "ilan-sil"
    Conn.Execute("DELETE * FROM ilanlar WHERE id="& id)%><script>
	alert('ÝLAN SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=ilanlar');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End

Case "iletisim-sil"
    Conn.Execute("DELETE * FROM iletisim_formu WHERE id="& id)%><script>
	alert('MESAJ SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=iletisim-form-gelen');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End
    
Case "emlak-talebi-sil"
    Conn.Execute("DELETE * FROM emlak_talebi WHERE id="& id)%><script>
	alert('EMLAK TALEBÝ SÝLÝNMÝÞTÝR...!!');
	window.parent.location.href=('yonetim.asp?s_emlak=emlak-talep');window.refresh;</script><%
    Conn.Close:Set Conn=Nothing:Response.End

Case Else
    Response.Redirect Request.Servervariables("HTTP_REFERER")
    Conn.Close:Set Conn=Nothing:Response.End'          Smultimedya.com
End Select
Else%><script>
alert(' ( YASAK ) BU BÖLGEYE GÝRME YETKÝNÝZ YOKTUR...!!');
window.close();</script><%
End If%>