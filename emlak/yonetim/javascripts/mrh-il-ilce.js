<!--


if (window.Event) document.captureEvents(Event.MOUSEUP);
function nocontextmenu(){
    event.cancelBubble = true;
    event.returnValue = false;
    return false;
}
function norightclick(e){
    if (window.Event){
        if (e.which == 2 || e.which == 3);
        return false;
    }
    else if (event.button == 2 || event.button == 3){
        event.cancelBubble = true;
        event.returnValue = false;
        return false;
    }
}
function XMLHTTP_Nesnesi()
{
     var retval=null;
     try
     {
          retval=new ActiveXObject("Msxml2.XMLHTTP");
     }
     catch(e)
     {
          try
          {
               retval=new ActiveXObject("Microsoft.XMLHTTP");
          } 
          catch(oc)
          {
               retval=null;
          }
     }

     if(!retval && typeof XMLHttpRequest != "undefined") 
     {
          retval=new XMLHttpRequest();
     }

     return retval;
}
function erdalo( lbl, url)
{
     document.all[lbl].innerHTML="<font color=red>Yükleniyor...</font>";

     var xmlHttpNesnesi = XMLHTTP_Nesnesi();

     if(xmlHttpNesnesi)
     {
          xmlHttpNesnesi.open("GET",url,true);

          xmlHttpNesnesi.onreadystatechange=function()
          {
               if(xmlHttpNesnesi.readyState==4) 
               {
                    document.all[lbl].innerHTML=xmlHttpNesnesi.responseText;
               } 
          }; 

          xmlHttpNesnesi.send(lbl);
     }
}
function muzion(id,adres)
   {
      erdalo(id,adres);
   }
document.oncontextmenu = nocontextmenu;
document.onmousedown = norightclick;
//-->