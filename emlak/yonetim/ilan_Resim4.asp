<%
With Response
	.Expires = 0
	.Clear
End With
%>
<%
Function Duzgun(yap) 
yap=Replace(yap," ",".",1,-1,1)
yap=Replace(yap,"/",".",1,-1,1)
yap=Replace(yap,":",".",1,-1,1)  
Duzgun = yap 
End Function

Function turkce(temizle) 
temizle=Replace(temizle,"�","i",1,-1,1)
temizle=Replace(temizle,"�","g",1,-1,1)
temizle=Replace(temizle,"�","u",1,-1,1)
temizle=Replace(temizle,"�","s",1,-1,1)
temizle=Replace(temizle,"�","o",1,-1,1)
temizle=Replace(temizle,"�","c",1,-1,1)
temizle=Replace(temizle,"�","g",1,-1,1)
temizle=Replace(temizle,"�","u",1,-1,1)
temizle=Replace(temizle,"�","s",1,-1,1)
temizle=Replace(temizle,"�","i",1,-1,1)
temizle=Replace(temizle,"�","o",1,-1,1)
temizle=Replace(temizle,"�","c",1,-1,1)

temizle=Replace(temizle,"`","",1,-1,1)
temizle=Replace(temizle,"=","",1,-1,1)
temizle=Replace(temizle,"&","",1,-1,1)
temizle=Replace(temizle,"%","",1,-1,1)
temizle=Replace(temizle,"!","",1,-1,1)
temizle=Replace(temizle,"#","",1,-1,1)
temizle=Replace(temizle,"<","",1,-1,1)
temizle=Replace(temizle,">","",1,-1,1)
temizle=Replace(temizle,"*","",1,-1,1)
temizle=Replace(temizle,"/","",1,-1,1)
temizle=Replace(temizle,"\","",1,-1,1)
temizle=Replace(temizle,"And","",1,-1,1)
temizle=Replace(temizle,"'","",1,-1,1)
temizle=Replace(temizle,"Chr(34)","",1,-1,1)
temizle=Replace(temizle,"Chr(39)","",1,-1,1) 
turkce = temizle 
End Function
Yol = "ilanfoto" 
izinli = 250000 'Maximum dosya boyut 250 kb
%>
<html>
<head><title>Resim Y�kle</title></head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
<br><H5><center><font face="Verdana, Arial, Helvetica" size="1" color="midnightblue">RES�M Y�KLEME <BR>Y�kledikten Sonra ��lemi Bitir Butonunu T�klay�n�z.</H5>
<P>Kabul Edilen Dosya T�rleri: <font color="#FF0000">.gif .jpg .png</font><br>Max. Dosya boyutu: <font color="#FF0000"><%=left(izinli,3)%></font> kb<br></p><br>
<%
'-------------------------------------------------------------------------- 
'-------------------------------------------------------------------------- 
sifrele = Duzgun(Now())
randomcode= ""&sifrele&""
'-------------------------------------------------------------------------- 
If Request.QueryString("action")="yukle" Then
Call Yukle
Response.End
Else
End if
'-------------------------------------------------------------------------- 
'-------------------------------------------------------------------------- 
Sub Yukle 
'-------------------------------------------------------------------------- 
Dim ImageDir 
     ImageDir = Yol
     ForWriting = 2 
     adLongVarChar = 201 
     lngNumberUploaded = 0
      
     'Get binary data from form           
     noBytes = Request.TotalBytes  
     binData = Request.BinaryRead (noBytes) 
      
     'convery the binary data To a string 
     Set RST = CreateObject("ADODB.Recordset" ) 
     LenBinary = LenB(binData) 
      
     If LenBinary > 0 Then 
     RST.Fields.AppEnd "myBinary" , adLongVarChar, LenBinary 
     RST.Open 
     RST.AddNew 
     RST("myBinary" ).AppendChunk BinData 
     RST.Update 
     strDataWhole = RST("myBinary" ) 
     End If 
           
     strBoundry = Request.ServerVariables ("HTTP_CONTENT_TYPE" ) 
     lngBoundryPos = InStr(1, strBoundry, "boundary=" ) + 8  
     strBoundry = "--" & Right(strBoundry, Len(strBoundry) - lngBoundryPos) 
     lngCurrentBegin = InStr(1, strDataWhole, strBoundry) 
     lngCurrentEnd = InStr(lngCurrentBegin + 1, strDataWhole, strBoundry) - 1 
     Do While lngCurrentEnd > 0 
     'Get the data between current boundry and remove it from the whole. 
     strData = Mid(strDataWhole, lngCurrentBegin, lngCurrentEnd - lngCurrentBegin) 
     strDataWhole = Replace(strDataWhole, strData,"" ) 
      
     'Get the full path of the current file. 
     lngBeginFileName = InStr(1, strdata, "filename=" ) + 10 
     lngEndFileName = InStr(lngBeginFileName, strData, Chr(34))  
     'Make sure they selected a file.      
     If lngBeginFileName = lngEndFileName and lngNumberUploaded = 0 Then 
     Response.Write "<font color=""#FF0000"">Y�klenecek Bir dosya secmelisiniz...</font>"
	 Response.End
     End If 
     'There could be an empty file box.      
     If lngBeginFileName <> lngEndFileName Then 
     strFilename = Mid(strData, lngBeginFileName, lngEndFileName - lngBeginFileName) 

     tmpLng = InStr(1, strFilename, "\" ) 
     Do While tmpLng > 0 
     PrevPos = tmpLng 
     tmpLng = InStr(PrevPos + 1, strFilename,"\" ) 
     Loop 
      
     FileName = Right(strFilename, Len(strFileName) - PrevPos) 
      
     lngCT = InStr(1,strData, "Content-Type:" ) 
	  
     If lngCT > 0 Then 
     lngBeginPos = InStr(lngCT, strData, Chr(13) & Chr(10)) + 4 
     Else 
     lngBeginPos = lngEndFileName 
     End If 
     lngEndPos = Len(strData)
	 
	If session("yukledi") = FileName Then
	Response.Write "<font color=""#FF0000"">Ayn� resimi sadece 1 kez y�kleyebilirsiniz..</font>"
	Response.End
	Else
	session("yukledi")=""&FileName&""
	End if
	
	 uzanti = Right(FileName,3)
         uzunluk = len(FileName)
         sonuzunluk = uzunluk - 4
         yeniisim = left(FileName,sonuzunluk)
         yeniisim = yeniisim

    If uzanti="jpg" or uzanti="gif" or uzanti="png" or uzanti="JPG" or uzanti="GIF" or uzanti="PNG" then 
    FileName = yeniisim + "-tarih-" + randomcode + "." & uzanti &""

    Else 
        Response.Write "<font color=""#FF0000"">Bu t�r dosya y�klenemez<BR>Sadece .gif  .jpg  .png uzant�l� dosyalar� y�kleyebilirsiniz..</font>"
	Response.End
    End If
	
     'Calculate the file size.      
     lngDataLenth = lngEndPos - lngBeginPos
	  
	 boyut = lngDataLenth

    If boyut > izinli then 
        Response.Write "<font color=""#FF0000"">Y�kledi�iniz dosya Maximum dosya boyutundan b�y�k!<BR>L�tfen daha k���k boyutta bir dosya deneyin..</font>"
	Response.End
    Else 
    lngDataLenth = "" & boyut &""
    End If
	
	Set FSO = CreateObject("Scripting.FileSystemObject" ) 
	Set Klasor = FSO.GetFolder(Server.MapPath(imagedir))
	
	For Each listele in Klasor.Files
	If FileName = listele.Name Then
	Response.Write "<font color=""#FF0000"">Y�klemek istediginiz dosya ismi ile ayn� isimde bir dosya var!<BR>L�tfen ismini de�i�tirerek yeniden y�kleyin..</font>"
	Response.End
	End if
    Next
	
    Set Klasor = Nothing 
	
        uzantik1=Right(FileName,4)
        IF uzantik1=".jpg" or uzantik1=".JPG" or uzantik1=".Jpg" or uzantik1=".GIF" or uzantik1=".gif" or uzantik1=".Gif" or uzantik1=".PNG" or uzantik1=".png" or uzantik1=".Png" THEN

    Set FSO = Nothing 
	  
     'Get the file data      
     strFileData = Mid(strData, lngBeginPos, lngDataLenth) 
     'Create the file.  
	 FileName = kullanici&FileName
     Set fso = CreateObject("Scripting.FileSystemObject" ) 
     Set f = fso.OpenTextFile(Server.MapPath(imagedir) & "/" & FileName, ForWriting, True)
     f.Write strFileData 
     Set f = Nothing 
     Set fso = Nothing 
	 
        Else
        Response.Write "Bu dosya resim de�il sadece resim t�r�nde dosya y�klenebilir."
        Response.End 
        End if
		
     lngNumberUploaded = lngNumberUploaded + 1 
                
     End If 
      
     lngCurrentBegin = InStr(1, strDataWhole, strBoundry) 
     lngCurrentEnd = InStr(lngCurrentBegin + 1, strDataWhole, strBoundry) - 1 
     Loop 
'-------------------------------------------------------------------------- 
Response.write "&gt; <font face=""Verdana, Arial, Helvetica"" size=""1"" color=""midnightblue"">Resim Basariyla Y�klendi<BR>"
FileName = "ilanfoto/" & FileName
response.write(" <br><input ONCLICK=""window.opener.document.ilan.resim4.value='"&FileName&"';alert('��lem tamam te�ekk�r ederiz.');JavaScript:onClick=window.close()"" type=button value=""��lemi Bitirmek ��in T�klay�n�z"" " & _
FileName & "<BR>")
End Sub 
%>
<form ENCTYPE="multipart/form-data" ACTION="?action=yukle" METHOD="POST">
<input NAME="msg" SIZE="20" TYPE="file" style="font-family: Tahoma; font-size: 10pt; color: #CC3300; border: 1px solid #CCCCCC; background-color: #FFFFFF"><br>
<input type="submit" value="Y�kle �" style="font-family: Tahoma; font-size: 10pt; color: #CC3300; border: 1px solid #CCCCCC; background-color: #FFFFFF">
</form>
<center><p><font face="Verdana, Arial, Helvetica" size="1">
<a href="JavaScript:onClick= window.close()" style="text-decoration: none">Pencereyi Kapat</A></font></p></center>
</body>
</html>