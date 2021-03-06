Type.registerNamespace("Telerik.Web.UI");
Telerik.Web.UI.RadTicker=function(a){Telerik.Web.UI.RadTicker.initializeBase(this,[a]);
this._autoStart=false;
this._autoAdvance=true;
this._loop=false;
this._tickSpeed=20;
this._lineDuration=2000;
this._currentLine=0;
this._length=0;
this._controlElement=null;
this._numberOfItems=0;
this._items=[];
this._postBackReference=null;
};
Telerik.Web.UI.RadTicker.prototype={initialize:function(){Telerik.Web.UI.RadTicker.callBaseMethod(this,"initialize");
this._controlElement=document.createTextNode("");
this.get_element().appendChild(this._controlElement);
this._originalControlElement=this._controlElement;
this._invisibleElementsCount=0;
var c=this.get_itemsData();
for(var a=0;
a<c.length;
a++){var b=c[a];
if(b.visible===false){this._invisibleElementsCount++;
}else{var d=new Telerik.Web.UI.RadTickerItem(b);
this._items.push(d);
}}this.set_numberOfItems(c.length);
if(this.get_autoStart()&&this.get_numberOfItems()>0){this.startTicker();
}},dispose:function(){this.clearTimeouts();
this._controlElement=null;
Telerik.Web.UI.RadTicker.callBaseMethod(this,"dispose");
},startTicker:function(){this.tickLine(0);
},stopTicker:function(){this.clearTimeouts();
},tickNextLine:function(){this.tickLine(this._currentLine);
},tickLine:function(g,c){if(c&&!this._lineTimeOut){return;
}this._length=0;
this._controlElement=this._originalControlElement;
var b=this._controlElement;
b.data="";
var e=this.get_element();
if(e.getElementsByTagName("a").length>0){e.removeChild(e.getElementsByTagName("a")[0]);
e.appendChild(b);
}var f=this.get_items()[g];
if(!f){this.lineEnd();
return;
}this._currentLine=g;
if(f.get_navigateUrl()!=null){var a=this._createLinkElement(f);
this.get_element().appendChild(a);
a.appendChild(b);
}var d=this;
this._tickInterval=window.setInterval(function(){d.tickOne(g,true);
},this.get_tickSpeed());
},_createLinkElement:function(b){var a=document.createElement("a");
a.setAttribute("href",b.get_navigateUrl());
if(b.get_target()){a.setAttribute("target",b.get_target());
}return a;
},resetTicker:function(){this._length=0;
this._isReset=true;
this.clearTimeouts();
this._lineTimeOut=null;
this._tickInterval=null;
this._controlElement.data="";
},tickOne:function(f,c){if(c&&!this._tickInterval){return;
}var e=this._items[f].get_text();
var d=e.length;
var b=this._length;
var a=this._controlElement;
if(b<d){a.data+=e.substr(b,1);
this._length++;
}else{this.lineEnd();
}},clearTimeouts:function(){window.clearInterval(this._tickInterval);
window.clearTimeout(this._lineTimeOut);
},lineEnd:function(c){window.clearInterval(this._tickInterval);
this._length=0;
var b=(this._currentLine+1)%(this.get_numberOfItems()+this._invisibleElementsCount);
if(isNaN(b)){b=0;
}if(b<=this._currentLine&&!this.get_loop()){this.tickerEnd();
return;
}else{this._currentLine=b;
}if(this.get_autoAdvance()){var a=this;
this._lineTimeOut=window.setTimeout(function(){a.tickLine(b,true);
},this.get_lineDuration());
}},tickerEnd:function(){if(this.tickerEndCode){eval(this.tickerEndCode);
}},_postback:function(){if(!this._postBackReference){return;
}var a=this._postBackReference.replace("arguments",this._currentLine);
eval(a);
},get_numberOfItems:function(){return this._numberOfItems;
},set_numberOfItems:function(a){this._numberOfItems=a;
},get_autoStart:function(){return this._autoStart;
},set_autoStart:function(a){this._autoStart=a;
},get_loop:function(){return this._loop;
},set_loop:function(a){this._loop=a;
},get_tickSpeed:function(){return this._tickSpeed;
},set_tickSpeed:function(a){this._tickSpeed=a;
},get_lineDuration:function(){return this._lineDuration;
},set_lineDuration:function(a){this._lineDuration=a;
},get_autoAdvance:function(){return this._autoAdvance;
},set_autoAdvance:function(a){this._autoAdvance=a;
},get_skin:function(){return this._skin;
},set_skin:function(a){this._skin=a;
},get_items:function(){return this._items;
},set_items:function(a){this._items=a;
},get_itemsData:function(){return this._itemsData;
},set_itemsData:function(a){this._itemsData=a;
}};
Telerik.Web.UI.RadTicker.registerClass("Telerik.Web.UI.RadTicker",Telerik.Web.UI.RadWebControl);
Telerik.Web.UI.RadTickerItem=function(a){this.set_navigateUrl(a.navigateUrl);
this.set_target(a.target);
this.set_text(a.text);
this.set_cssClass(a.cssClass);
};
Telerik.Web.UI.RadTickerItem.prototype={get_navigateUrl:function(){return this._navigateUrl;
},set_navigateUrl:function(a){this._navigateUrl=a;
},get_target:function(){return this._target;
},set_target:function(a){this._target=a;
},get_text:function(){return this._text;
},set_text:function(a){this._text=this._trimString(a);
},get_cssClass:function(){return this._cssClass;
},set_cssClass:function(a){this._cssClass=a;
},_trimString:function(a){return a.replace(/^\s{1,}/ig,"").replace(/\s{1,}$/ig,"");
}};
Telerik.Web.UI.RadTickerItem.registerClass("Telerik.Web.UI.RadTickerItem");
