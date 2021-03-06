var $ = require('y:widget/js/lib/jquery.js');
var ec = require('y:widget/js/ui/event/event.js');	

function uiBase( constructor ){
	var fn = $.isFunction(constructor) ? constructor : function(){
			this.type = 'base';
		},
		base = function(options){
			ec.create(this);
			this.guid = ++$.guid;
			fn.apply(this, arguments);
			('object'==typeof options) && this._init(options);
			this.init(options);
		};

	base.extend = function(option){
		$.extend(base.prototype, option);
		return base;
	};

	return base.extend({
		_init: function(opt){
			var me = this;
			$.each(opt, function(name, item){
				// if(!me[name]){
					$.isFunction(item) ? me.on(name, item) : me[name] = item;	
				// }
			});
		},
		init: function(){},
		render: function( target ){},
		dispose: function(){},
		getElements: function( filter ){ return ;}	
	});
}

module.exports = uiBase;
