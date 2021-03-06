Type.registerNamespace("Telerik.Web.UI.Scheduler");
(function(){var b=Telerik.Web.UI;
var c=60000;
var a=b.Scheduler.DateTime=function(d){if(!d){this._date=new Date();
return;
}if(d.getTime){this._date=new Date(d.getTime());
}else{this._date=new Date(d);
}};
a.add=function(d,f){var e=f.get_ticks?f.get_ticks():f;
return a._addTicks(d,e);
};
a.subtract=function(d,e){e=new a(e).toDate();
var f=d.getTime()-e;
var g=d.getTimezoneOffset()-e.getTimezoneOffset();
return f-(g*c);
};
a.areEqual=function(d,e){return(!(d>e||e>d));
};
a.getDate=function(d){return new Date(d.getFullYear(),d.getMonth(),d.getDate());
};
a.getTimeOfDay=function(d){return a.subtract(d,a.getDate(d));
};
a._addTicks=function(d,f){var g=d.getTimezoneOffset();
var e=new Date(d.getTime()+f);
var h=e.getTimezoneOffset()-g;
return new Date(e.getTime()+h*c);
};
b.Scheduler.DateTime.prototype={get_date:function(){return new a(a.getDate(this._date));
},get_timeOfDay:function(){return a.getTimeOfDay(this._date);
},add:function(d){return new a(a.add(this._date,d));
},subtract:function(d){return a.subtract(this._date,d);
},toDate:function(){return this._date;
}};
b.Scheduler.TimeSpan=function(d){this._ticks=d||0;
};
b.Scheduler.TimeSpan.prototype={get_ticks:function(){return this._ticks;
}};
})();
