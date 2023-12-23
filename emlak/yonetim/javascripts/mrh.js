<!-- Paste this code into an external JavaScript file named: scrollWin.js  -->

/* This script and many more are available free online at
The JavaScript Source :: http://javascript.internet.com
Created by: Travis Beckham :: http://www.squidfingers.com | http://www.podlob.com */

// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
//
// Coded by Travis Beckham
// http://www.squidfingers.com | http://www.podlob.com
// If want to use this code, feel free to do so, but please leave this message intact.
//
// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
// --- version date: 02/04/03 ---------------------------------------------------------
/*

If you use a DOCTYPE that puts Explorer 6 in standards compliant mode, some properties
of document.body are reassigned to document.documentElement. In Explorer 5 the
properties still belong to document.body. Checking if the documentElement exists is not
enough, since it exists in all W3C DOM compatible browsers, so we also have to see if
it has the property we are trying to access.
For more info on this topic visit http://www.xs4all.nl/~ppk/js/doctypes.html

*/
var ScrollWin = {
  w3c : document.getElementById,
  iex : document.all,
  scrollLoop : false,
  scrollInterval : null, // setInterval id
  currentBlock : null,   // object reference
  getWindowHeight : function(){
    if(this.iex) return (document.documentElement.clientHeight) ? document.documentElement.clientHeight : document.body.clientHeight;
    else return window.innerHeight;
  },
  getScrollLeft : function(){
    if(this.iex) return (document.documentElement.scrollLeft) ? document.documentElement.scrollLeft : document.body.scrollLeft;
    else return window.pageXOffset;
  },
  getScrollTop : function(){
    if(this.iex) return (document.documentElement.scrollTop) ? document.documentElement.scrollTop : document.body.scrollTop;
    else return window.pageYOffset;
  },
  getElementYpos : function(el){
    var y = 0;
    while(el.offsetParent){
      y += el.offsetTop
      el = el.offsetParent;
    }
    return y;
  },
  scroll : function(num){
    if(!this.w3c){
      location.href = "#"+this.anchorName+num;
      return;
    }
    if(this.scrollLoop){
      clearInterval(this.scrollInterval);
      this.scrollLoop = false;
      this.scrollInterval = null;
    }
    if(this.currentBlock != null) this.currentBlock.className = this.offClassName;
    this.currentBlock = document.getElementById(this.blockName+num);
    this.currentBlock.className = this.onClassName;
    var doc = document.getElementById(this.containerName);
    var documentHeight = this.getElementYpos(doc) + doc.offsetHeight;
    var windowHeight = this.getWindowHeight();
    var ypos = this.getElementYpos(this.currentBlock);
    if(ypos > documentHeight - windowHeight) ypos = documentHeight - windowHeight;
    this.scrollTo(0,ypos);
  },
  scrollTo : function(x,y){
    if(this.scrollLoop){
      var left = this.getScrollLeft();
      var top = this.getScrollTop();
      if(Math.abs(left-x) <= 1 && Math.abs(top-y) <= 1){
        window.scrollTo(x,y);
        clearInterval(this.scrollInterval);
        this.scrollLoop = false;
        this.scrollInterval = null;
      }else{
        window.scrollTo(left+(x-left)/2, top+(y-top)/2);
      }
    }else{
      this.scrollInterval = setInterval("ScrollWin.scrollTo("+x+","+y+")",100);
      this.scrollLoop = true;
    }
  }
};

// ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
/*
using the following line, IE/PC returns an incorrect number when getting the document height.
var document_height = document.all ? document.body.offsetHeight : window.document.height;
To fix this problem, a container div is wrapped around the content so the correct height
can be determined.
*/

// Edit these variables

ScrollWin.containerName = "container"; // The id name of the div containing the content
ScrollWin.anchorName    = "anchor";    // The alpha portion of the anchor names
ScrollWin.blockName     = "block";     // The alpha portion of the content blocks
ScrollWin.onClassName   = "active";    // The CSS class name for the 'on' state
ScrollWin.offClassName  = "visited";   // The CSS class name for the 'off' state