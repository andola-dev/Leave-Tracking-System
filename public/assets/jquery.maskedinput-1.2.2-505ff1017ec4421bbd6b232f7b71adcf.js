(function(e){var t=(e.browser.msie?"paste":"input")+".mask",n=window.orientation!=undefined;e.mask={definitions:{9:"[0-9]",a:"[A-Za-z]","*":"[A-Za-z0-9]"}},e.fn.extend({caret:function(e,t){if(this.length==0)return;if(typeof e=="number")return t=typeof t=="number"?t:e,this.each(function(){if(this.setSelectionRange)this.focus(),this.setSelectionRange(e,t);else if(this.createTextRange){var n=this.createTextRange();n.collapse(!0),n.moveEnd("character",t),n.moveStart("character",e),n.select()}});if(this[0].setSelectionRange)e=this[0].selectionStart,t=this[0].selectionEnd;else if(document.selection&&document.selection.createRange){var n=document.selection.createRange();e=0-n.duplicate().moveStart("character",-1e5),t=e+n.text.length}return{begin:e,end:t}},unmask:function(){return this.trigger("unmask")},mask:function(r,i){if(!r&&this.length>0){var s=e(this[0]),o=s.data("tests");return e.map(s.data("buffer"),function(e,t){return o[t]?e:null}).join("")}i=e.extend({placeholder:"_",completed:null},i);var u=e.mask.definitions,o=[],a=r.length,f=null,l=r.length;return e.each(r.split(""),function(e,t){t=="?"?(l--,a=e):u[t]?(o.push(new RegExp(u[t])),f==null&&(f=o.length-1)):o.push(null)}),this.each(function(){function d(e){while(++e<=l&&!o[e]);return e}function v(e){while(!o[e]&&--e>=0);for(var t=e;t<l;t++)if(o[t]){c[t]=i.placeholder;var n=d(t);if(!(n<l&&o[t].test(c[n])))break;c[t]=c[n]}w(),s.caret(Math.max(f,e))}function m(e){for(var t=e,n=i.placeholder;t<l;t++)if(o[t]){var r=d(t),s=c[t];c[t]=n;if(!(r<l&&o[r].test(s)))break;n=s}}function g(t){var r=e(this).caret(),i=t.keyCode;h=i<16||i>16&&i<32||i>32&&i<41,r.begin-r.end!=0&&(!h||i==8||i==46)&&b(r.begin,r.end);if(i==8||i==46||n&&i==127)return v(r.begin+(i==46?0:-1)),!1;if(i==27)return s.val(p),s.caret(0,E()),!1}function y(t){if(h)return h=!1,t.keyCode==8?!1:null;t=t||window.event;var n=t.charCode||t.keyCode||t.which,r=e(this).caret();if(t.ctrlKey||t.altKey||t.metaKey)return!0;if(n>=32&&n<=125||n>186){var u=d(r.begin-1);if(u<l){var a=String.fromCharCode(n);if(o[u].test(a)){m(u),c[u]=a,w();var f=d(u);e(this).caret(f),i.completed&&f==l&&i.completed.call(s)}}}return!1}function b(e,t){for(var n=e;n<t&&n<l;n++)o[n]&&(c[n]=i.placeholder)}function w(){return s.val(c.join("")).val()}function E(e){var t=s.val(),n=-1;for(var r=0,u=0;r<l;r++)if(o[r]){c[r]=i.placeholder;while(u++<t.length){var h=t.charAt(u-1);if(o[r].test(h)){c[r]=h,n=r;break}}if(u>t.length)break}else c[r]==t[u]&&r!=a&&(u++,n=r);if(!e&&n+1<a)s.val(""),b(0,l);else if(e||n+1>=a)w(),e||s.val(s.val().substring(0,n+1));return a?r:f}var s=e(this),c=e.map(r.split(""),function(e,t){if(e!="?")return u[e]?i.placeholder:e}),h=!1,p=s.val();s.data("buffer",c).data("tests",o),s.attr("readonly")||s.one("unmask",function(){s.unbind(".mask").removeData("buffer").removeData("tests")}).bind("focus.mask",function(){p=s.val();var e=E();w(),setTimeout(function(){e==r.length?s.caret(0,e):s.caret(e)},0)}).bind("blur.mask",function(){E(),s.val()!=p&&s.change()}).bind("keydown.mask",g).bind("keypress.mask",y).bind(t,function(){setTimeout(function(){s.caret(E(!0))},0)}),E()})}})})(jQuery);