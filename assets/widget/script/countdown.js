function countdown(o) {
	// 确定传入参数
	if (o) {
		var o = o;
	} else {
		var o = {
			el: 'countdown',
			st: 00000000,
			ed: 1800000,
			// hh: 'hh',
			mm: 'mm',
			ss: 'ss',
			ms: 'ms'
		};
	}
	// 参数是否存在空值
	o.el = o.el ? o.el : 'countdown';
	o.st = o.st ? o.st : 00000000000;
	o.ed = o.ed ? o.ed : 1800000;
	// o.hh = o.hh ? o.hh : 'hh';
	o.mm = o.mm ? o.mm : 'mm';
	o.ss = o.ss ? o.ss : 'ss';
	o.ms = o.ms ? o.ms : 'ms';
	// 插入默认样式
	var head = document.getElementsByTagName('head').item(0);
	var link = document.createElement('link');
	link.href = 'countdown.css';
	link.rel = 'stylesheet';
	link.type = 'text/css';
	head.appendChild(link);
	// 计算倒计时时间长度
	this.c = (parseInt(o.ed) - parseInt(o.st)) / 1000;
	// 设置毫秒值
	this.ms = 9;
	// 返回倒计时时间 
	this.downs = function() {
		var that = this;
		// var h = parseInt(that.c / 3600);
		var m = parseInt(that.c / 60);
		var s = that.c % 3600 % 60;
		var ms = that.ms;
		// if (h < 10) {
		// 	h = '0' + h;
		// }
		if (m < 10) {
			m = '0' + m;
		}
		if (s < 10) {
			s = '0' + s;
		}
		var t = m + ':' + s;
		document.getElementById(o.el).innerHTML = t;
		that.c = that.c - 1;
		setTimeout(function() {
			that.downs();
		}, 1000);
		return t;
	}
	// 返回倒计时时间
	this.downms = function() {
		var that = this;
		// var h = parseInt(that.c / 3600);
		var m = parseInt(that.c / 60);
		var s = that.c % 3600 % 60;
		var ms = that.ms;
		// if (h < 10) {
		// 	h = '0' + h;
		// }
		if (m < 10) {
			m = '0' + m;
		}
		if (s < 10) {
			s = '0' + s;
		}
		var t =  m + ':' + s + ':' + ms;
		document.getElementById(o.el).innerHTML = t;
		that.ms = that.ms - 1;
		if (ms <= 0) {
			that.ms = 9;
			that.c = that.c - 1;
		}
		setTimeout(function() {
			that.downms();
		}, 100);
		return t;
	}
	// 返回倒计时时间
	this.downmsElement = function() {
		var that = this;
		// var h = parseInt(that.c / 3600);
		var m = parseInt(that.c/60);
		var s = that.c % 3600 % 60;
		// if (h < 10) {
		// 	h = '0' + h;
		// }
		if (m < 10) {
			m = '0' + m;
		}
		if (s < 10) {
			s = '0' + s;
		}
		// var to = "<span class='hh'>" + h + "</span><span>:</span><span class='mm'>" + m + "</span><span>:</span><span class='ss'>" + s + "</span><span>:</span><span class='ms'>" + that.ms + "</span>";
		/**
		 * 创建dom节点
		 * */ 
		// var hh = document.createElement('span');
		var mm = document.createElement('span');
		var ss = document.createElement('span');
		var ms = document.createElement('span');
		// var f1 = document.createElement('span');
		var f2 = document.createElement('span');
		var f3 = document.createElement('span');
		/**
		 * 节点class
		 * */ 
		// hh.className = o.hh;
		mm.className = o.mm;
		ss.className = o.ss;
		ms.className = o.ms;
		/**
		 * 创建文本节点
		 * */ 
		// var ht = document.createTextNode(h);
		var mt = document.createTextNode(m);
		var st = document.createTextNode(s);
		var mst = document.createTextNode(that.ms);
		// var ft1 = document.createTextNode(":");
		var ft2 = document.createTextNode(":");
		var ft3 = document.createTextNode(":");
		/**
		 * 将文本节点写入dom节点
		 * */ 
		// hh.appendChild(ht);
		mm.appendChild(mt);
		ss.appendChild(st);
		ms.appendChild(mst);
		// f1.appendChild(ft1);
		f2.appendChild(ft2);
		f3.appendChild(ft3);
		/**
		 * 返回倒计时字符串
		 * */ 
		var t = m + ':' + s + ':' + that.ms;
		/**
		 * 将倒计时写入el节点
		 * */ 
		var ele = document.getElementById(o.el);
		// ele.innerHTML = to;
		ele.innerHTML = "";
		// ele.appendChild(hh);
		// ele.appendChild(f1);
		ele.appendChild(mm);
		ele.appendChild(f2);
		ele.appendChild(ss);
		ele.appendChild(f3);
		ele.appendChild(ms);
		/**
		 * 毫秒倒计时
		 * */ 
		that.ms = that.ms - 1;
		if (that.ms < 0) {
			that.ms = 9;
			that.c = that.c - 1;
		}
		setTimeout(function() {
			that.downmsElement();
		}, 100);
		return t;
	};
	// 返回倒计时时间
	this.downsElement = function() {
		var that = this;
		// var h = parseInt(that.c / 3600);
		var m = parseInt(that.c / 60);
		var s = that.c % 3600 % 60;
		// if (h < 10) {
		// 	h = '0' + h;
		// }
		if (m < 10) {
			m = '0' + m;
		}
		if (s < 10) {
			s = '0' + s;
		}
		// var to = "<span class='hh'>" + h + "</span><span>:</span><span class='mm'>" + m + "</span><span>:</span><span class='ss'>" + s + "</span>";
		/**
		 * 创建dom节点
		 * */ 
		// var hh = document.createElement('span');
		var mm = document.createElement('span');
		var ss = document.createElement('span');
		// var f1 = document.createElement('span');
		var f2 = document.createElement('span');
		/**
		 * 节点class
		 * */ 
		// hh.className = o.hh;
		mm.className = o.mm;
		ss.className = o.ss;
		/**
		 * 创建文本节点
		 * */ 
		// var ht = document.createTextNode(h);
		var mt = document.createTextNode(m);
		var st = document.createTextNode(s);
		// var ft1 = document.createTextNode(":");
		var ft2 = document.createTextNode(":");
		/**
		 * 将文本节点写入dom节点
		 * */ 
		// hh.appendChild(ht);
		mm.appendChild(mt);
		ss.appendChild(st);
		// f1.appendChild(ft1);
		f2.appendChild(ft2);
		/**
		 * 返回倒计时字符串
		 * */ 
		var t = m + ':' + s;
		/**
		 * 将倒计时写入el节点
		 * */ 
		var ele = document.getElementById(o.el);
		
		// ele.innerHTML = to;
		ele.innerHTML = '';
		// ele.appendChild(hh);
		// ele.appendChild(f1);
		ele.appendChild(mm);
		ele.appendChild(f2);
		ele.appendChild(ss);
		that.c = that.c - 1;
		setTimeout(function() {
			that.downsElement();
		}, 1000);
		return t;
	}
}
