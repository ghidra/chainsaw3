﻿package chainsaw.math{		public class matrix4	{		public var _n11:Number; 		public var _n12:Number; 		public var _n13:Number; 		public var _n14:Number; 				public var _n21:Number; 		public var _n22:Number; 		public var _n23:Number; 		public var _n24:Number; 				public var _n31:Number; 		public var _n32:Number; 		public var _n33:Number; 		public var _n34:Number; 				public var _n41:Number; 		public var _n42:Number; 		public var _n43:Number; 		public var _n44:Number; 				public function matrix4(a:Number=1,b:Number=0,c:Number=0,d:Number=0,e:Number=0,f:Number=1,g:Number=0,h:Number=0,i:Number=0,j:Number=0,k:Number=1,l:Number=0,m:Number=0,n:Number=0,o:Number=0,p:Number=1):void		{			this._n11 = a; 			this._n12 = b; 			this._n13 = c; 			this._n14 = d; 						this._n21 = e; 			this._n22 = f; 			this._n23 = g; 			this._n24 = h; 						this._n31 = i; 			this._n32 = j; 			this._n33 = k; 			this._n34 = l; 						this._n41 = m; 			this._n42 = n; 			this._n43 = o; 			this._n44 = p;			//trace("****a:"+this._n11+"	b:"+this._n12+"	c:"+this._n13+"	d:"+this._n14+"	e:"+this._n21+"	f:"+this._n22+"	g:"+this._n23+"	h:"+this._n24+"	i:"+this._n31+"	j:"+this._n32+"	k:"+this._n33+"	l:"+this._n34+"	m:"+this._n41+"	n:"+this._n42+"	o:"+this._n43+"	p:"+this._n44)		}		//------------------------------------------------------------------------------------------		//					matrix math		//------------------------------------------------------------------------------------------		public function mult_4matrix( ma:matrix4, mb:matrix4 ):void		{			//trace("a:"+ma._n11+"	b:"+ma._n12+"	c:"+ma._n13+"	d:"+ma._n14+"	e:"+ma._n21+"	f:"+ma._n22+"	g:"+ma._n23+"	h:"+ma._n24+"	i:"+ma._n31+"	j:"+ma._n32+"	k:"+ma._n33+"	l:"+ma._n34+"	m:"+ma._n41+"	n:"+ma._n42+"	o:"+ma._n43+"	p:"+ma._n44)			var a:Number= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31+mb._n14*ma._n41;			var b:Number= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32+mb._n14*ma._n42;			var c:Number= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33+mb._n14*ma._n43;			var d:Number= mb._n11*ma._n14+mb._n12*ma._n24+mb._n13*ma._n34+mb._n14*ma._n44;					var e:Number= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31+mb._n24*ma._n41;			var f:Number= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32+mb._n24*ma._n42;			var g:Number= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33+mb._n24*ma._n43;			var h:Number= mb._n21*ma._n14+mb._n22*ma._n24+mb._n23*ma._n34+mb._n24*ma._n44;					var i:Number= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31+mb._n34*ma._n41;			var j:Number= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32+mb._n34*ma._n42;			var k:Number= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33+mb._n34*ma._n43;			var l:Number= mb._n31*ma._n14+mb._n32*ma._n24+mb._n33*ma._n34+mb._n34*ma._n44;		 			var m:Number= mb._n41*ma._n11+mb._n42*ma._n21+mb._n43*ma._n31+mb._n44*ma._n41;			var n:Number= mb._n41*ma._n12+mb._n42*ma._n22+mb._n43*ma._n32+mb._n44*ma._n42;			var o:Number= mb._n41*ma._n13+mb._n42*ma._n23+mb._n43*ma._n33+mb._n44*ma._n43;			var p:Number= mb._n41*ma._n14+mb._n42*ma._n24+mb._n43*ma._n34+mb._n44*ma._n44;			//trace(m+","+n+","+o+","+p);		 			//return new matrix4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);			this._n11 = a;			this._n12 = b;			this._n13 = c;			this._n14 = d;						this._n21 = e;			this._n22 = f;			this._n23 = g;			this._n24 = h;						this._n31 = i;			this._n32 = j;			this._n33 = k;			this._n34 = l;						this._n41 = m;			this._n42 = n;			this._n43 = o;			this._n44 = p;		}		//---------		//-----for converting 3x matrices to 4x with multiplications		public function mult_3matrix_4matrix( ma:matrix3, mb:matrix4 ):void		{			//trace("a:"+ma._n11+"	b:"+ma._n12+"	c:"+ma._n13+"	d:"+ma._n14+"	e:"+ma._n21+"	f:"+ma._n22+"	g:"+ma._n23+"	h:"+ma._n24+"	i:"+ma._n31+"	j:"+ma._n32+"	k:"+ma._n33+"	l:"+ma._n34+"	m:"+ma._n41+"	n:"+ma._n42+"	o:"+ma._n43+"	p:"+ma._n44)			var a:Number= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31+mb._n14*0;			var b:Number= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32+mb._n14*0;			var c:Number= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33+mb._n14*0;			var d:Number= mb._n11*0+mb._n12*0+mb._n13*0+mb._n14*1;					var e:Number= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31+mb._n24*0;			var f:Number= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32+mb._n24*0;			var g:Number= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33+mb._n24*0;			var h:Number= mb._n21*0+mb._n22*0+mb._n23*0+mb._n24*1;					var i:Number= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31+mb._n34*0;			var j:Number= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32+mb._n34*0;			var k:Number= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33+mb._n34*0;			var l:Number= mb._n31*0+mb._n32*0+mb._n33*0+mb._n34*1;		 			var m:Number= mb._n41*ma._n11+mb._n42*ma._n21+mb._n43*ma._n31+mb._n44*0;			var n:Number= mb._n41*ma._n12+mb._n42*ma._n22+mb._n43*ma._n32+mb._n44*0;			var o:Number= mb._n41*ma._n13+mb._n42*ma._n23+mb._n43*ma._n33+mb._n44*0;			var p:Number= mb._n41*0+mb._n42*0+mb._n43*0+mb._n44*1;			//trace(m+","+n+","+o+","+p);		 			//return new matrix4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);			this._n11 = a;			this._n12 = b;			this._n13 = c;			this._n14 = d;						this._n21 = e;			this._n22 = f;			this._n23 = g;			this._n24 = h;						this._n31 = i;			this._n32 = j;			this._n33 = k;			this._n34 = l;						this._n41 = m;			this._n42 = n;			this._n43 = o;			this._n44 = p;		}		//this function is a back up incase the above doesn't work right. If the order matters...		public function mult_4matrix_3matrix( ma:matrix4, mb:matrix3 ):void		{			//trace("a:"+ma._n11+"	b:"+ma._n12+"	c:"+ma._n13+"	d:"+ma._n14+"	e:"+ma._n21+"	f:"+ma._n22+"	g:"+ma._n23+"	h:"+ma._n24+"	i:"+ma._n31+"	j:"+ma._n32+"	k:"+ma._n33+"	l:"+ma._n34+"	m:"+ma._n41+"	n:"+ma._n42+"	o:"+ma._n43+"	p:"+ma._n44)			var a:Number= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31+0*ma._n41;			var b:Number= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32+0*ma._n42;			var c:Number= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33+0*ma._n43;			var d:Number= mb._n11*ma._n14+mb._n12*ma._n24+mb._n13*ma._n34+0*ma._n44;					var e:Number= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31+0*ma._n41;			var f:Number= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32+0*ma._n42;			var g:Number= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33+0*ma._n43;			var h:Number= mb._n21*ma._n14+mb._n22*ma._n24+mb._n23*ma._n34+0*ma._n44;					var i:Number= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31+0*ma._n41;			var j:Number= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32+0*ma._n42;			var k:Number= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33+0*ma._n43;			var l:Number= mb._n31*ma._n14+mb._n32*ma._n24+mb._n33*ma._n34+0*ma._n44;		 			var m:Number= 0*ma._n11+0*ma._n21+0*ma._n31+1*ma._n41;			var n:Number= 0*ma._n12+0*ma._n22+0*ma._n32+1*ma._n42;			var o:Number= 0*ma._n13+0*ma._n23+0*ma._n33+1*ma._n43;			var p:Number= 0*ma._n14+0*ma._n24+0*ma._n34+1*ma._n44;			//trace(m+","+n+","+o+","+p);		 			//return new matrix4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);			this._n11 = a;			this._n12 = b;			this._n13 = c;			this._n14 = d;						this._n21 = e;			this._n22 = f;			this._n23 = g;			this._n24 = h;						this._n31 = i;			this._n32 = j;			this._n33 = k;			this._n34 = l;						this._n41 = m;			this._n42 = n;			this._n43 = o;			this._n44 = p;		}		//----------		public function tform_4matrix(ma:matrix4,mb:matrix4):void		{					//trace("a:"+ma._n11+"	b:"+ma._n12+"	c:"+ma._n13+"	d:"+ma._n14+"	e:"+ma._n21+"	f:"+ma._n22+"	g:"+ma._n23+"	h:"+ma._n24+"	i:"+ma._n31+"	j:"+ma._n32+"	k:"+ma._n33+"	l:"+ma._n34+"	m:"+ma._n41+"	n:"+ma._n42+"	o:"+ma._n43+"	p:"+ma._n44)			//trace("a:"+mb._n11+"	b:"+mb._n12+"	c:"+mb._n13+"	d:"+mb._n14+"	e:"+mb._n21+"	f:"+mb._n22+"	g:"+mb._n23+"	h:"+mb._n24+"	i:"+mb._n31+"	j:"+mb._n32+"	k:"+mb._n33+"	l:"+mb._n34+"	m:"+mb._n41+"	n:"+mb._n42+"	o:"+mb._n43+"	p:"+mb._n44)			var a:Number= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31;			var b:Number= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32;			var c:Number= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33;			var d:Number= mb._n11*ma._n14+mb._n12*ma._n24+mb._n13*ma._n34+mb._n14;					var e:Number= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31;			var f:Number= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32;			var g:Number= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33;			var h:Number= mb._n21*ma._n14+mb._n22*ma._n24+mb._n23*ma._n34+mb._n24;					var i:Number= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31;			var j:Number= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32;			var k:Number= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33;			var l:Number= mb._n31*ma._n14+mb._n32*ma._n24+mb._n33*ma._n34+mb._n34;		 			var m:Number= 0;			var n:Number= 0;			var o:Number= 0;			var p:Number= 1;		 			//return new matrix4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);			this._n11 = a;			this._n12 = b;			this._n13 = c;			this._n14 = d;						this._n21 = e;			this._n22 = f;			this._n23 = g;			this._n24 = h;						this._n31 = i;			this._n32 = j;			this._n33 = k;			this._n34 = l;						this._n41 = m;			this._n42 = n;			this._n43 = o;			this._n44 = p;    		}		public function transpose():void		{			var a:Number = this._n11;			var b:Number = this._n21;			var c:Number = this._n31;			var d:Number = -this._n14;						var e:Number = this._n12;			var f:Number = this._n22;			var g:Number = this._n32;			var h:Number = -this._n24;						var i:Number = this._n13;			var j:Number = this._n23;			var k:Number = this._n33;			var l:Number = -this._n34;						var m:Number = this._n14;			var n:Number = this._n24;			var o:Number = this._n34;			var p:Number = this._n44;						this._n11 = a;			this._n12 = b;			this._n13 = c;			this._n14 = d;						this._n21 = e;			this._n22 = f;			this._n23 = g;			this._n24 = h;						this._n31 = i;			this._n32 = j;			this._n33 = k;			this._n34 = l;						this._n41 = m;			this._n42 = n;			this._n43 = o;			this._n44 = p;		}				//------------------------------------------------------------------------------------------		//					manipulating a matrix		//------------------------------------------------------------------------------------------		public function trans_s(d:Number):void		{			this._n14+=this._n11*d;			this._n24+=this._n12*d;			this._n34+=this._n13*d;						/*camera1._obj[0]._n14-=camera1._obj[0]._n11*d;			camera1._obj[0]._n24-=camera1._obj[0]._n12*d;			camera1._obj[0]._n34-=camera1._obj[0]._n13*d;						camera1._obj[0].rnm = tform_4matrix( camera1._obj[0].trm, camera1._obj[0].ttm);			*/			//this._rnm = tform_4matrix( this._trm, this._ttm);			//render(obj);		}		public function trans_u(d:Number):void		{			this._n14+=this._n21*d;			this._n24+=this._n22*d;			this._n34+=this._n23*d;						/*camera1._obj[0]._n14-=camera1._obj[0]._n21*d;			camera1._obj[0]._n24-=camera1._obj[0]._n22*d;			camera1._obj[0]._n34-=camera1._obj[0]._n23*d;						camera1._obj[0].rnm = tform_4matrix( camera1._obj[0].trm, camera1._obj[0].ttm);			this._rnm = tform_4matrix( this._trm, this._ttm);*/			//render(obj);		}		public function trans_o(d:Number):void		{			this._n14+=this._n31*d;			this._n24+=this._n32*d;			this._n34+=this._n33*d;						/*camera1._obj[0]._n14-=camera1._obj[0]._n31*d;			camera1._obj[0]._n24-=camera1._obj[0]._n32*d;			camera1._obj[0]._n34-=camera1._obj[0]._n33*d;						camera1._obj[0].rnm = tform_4matrix( camera1._obj[0].trm, camera1._obj[0].ttm);			this._rnm = tform_4matrix( this._trm, this._ttm);*/			//render(obj);		}				/*function scale(obj, xam, yam, zam) {			this._ttm=tform_4matrix(this._ttm,[xam,	0,	0,	0,										   0,	yam,0,	0,										   0,	0,	zam,0,										   0,	0,	0,	1]);//scale		}*/		public function rotateX(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;					var pitchsin = Math.sin(d);//if the object has moved look this up			var pitchcos = Math.cos(d);			this.tform_4matrix(this, new matrix4(1,	0,			0,			0,										   0,	pitchcos,	-pitchsin,	0,										   0,	pitchsin,pitchcos,	0,										   0,	0,			0,			1) );//rotate x			/*this._tnm=tform_3matrix(this._tnm,[1,	0,			0,										   0,	pitchcos,	-pitchsin,										   0,	pitchsin,pitchcos]);//rotate normals in z*/						//this._rnm = tform_4matrix( this._trm, this._ttm);		}		public function rotateY(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;			var yawsin = Math.sin(d);//if the object has moved look this up			var yawcos = Math.cos(d);					this.tform_4matrix(this,new matrix4(yawcos,	0,	yawsin,	0,											0,		1,	0,			0,											-yawsin,	0,	yawcos,		0,											0,		0,	0,			1) );//rotate y			/*this._tnm=tform_3matrix(this._tnm,[yawcos,	0,	yawsin,											0,		1,	0,											-yawsin,	0,	yawcos]);//rotate in y*/			//this._rnm = tform_4matrix( this._trm, this._ttm);		}		public function rotateZ(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;			var rollsin = Math.sin(d);			var rollcos = Math.cos(d);			this.tform_4matrix(this,new matrix4(rollcos,		-(rollsin),	0,	0,											rollsin,   rollcos,	0,	0,											0,			0,		1,	0,											0,			0,		0,	1) );//rotate z			/*this._tnm=tform_3matrix(this._tnm,[rollcos,	-(rollsin),	0,											rollsin,   rollcos,	0,											0,			0,		1]);//rotate in z*/			//this._rnm = tform_4matrix( this._trm, this._ttm);		}		public function translate(xam:Number,yam:Number,zam:Number):void		{			this.tform_4matrix(this,new matrix4(1,	0,	0,	xam,										   0,	1,	0,	yam,										   0,	0,	1,	zam,										   0,	0,	0,	1) );//transform			//this._rnm = tform_4matrix( this._trm, this._ttm);		}		//-----------		//-----------	}}/*function mult_v_m(v,m){//multiply vector with a matrix        var x = m._n11 * v.x + m._n12 * v.y + m._n13 * v.z;    var y = m._n14 * v.x + m._n21 * v.y + m._n22 * v.z;    var z = m._n23 * v.x + m._n24 * v.y + m._n31 * v.z;       return new vector(x,y,z);}function mult_v_m4(v,m){	var x = m._n11 * v.x + m._n12 * v.y + m._n13 * v.z + m._n14 * v.w;	var y = m._n21 * v.x + m._n22 * v.y + m._n23 * v.z + m._n24 * v.w;	var z = m._n31 * v.x + m._n32 * v.y + m._n33* v.z + m._n34 * v.w;	var w = m._n41* v.x + m._n42* v.y + m._n43* v.z + m._n44 * v.w;		return new vector4(x,y,z,w);}function tform_3matrix(ma,mb){    var a=mb._n11*ma._n11+mb._n12*ma._n14+mb._n13*ma._n23;    var b=mb._n11*ma._n12+mb._n12*ma._n21+mb._n13*ma._n24;    var c=mb._n11*ma._n13+mb._n12*ma._n22+mb._n13*ma._n31;        var d=mb._n14*ma._n11+mb._n21*ma._n14+mb._n22*ma._n23;    var e=mb._n14*ma._n12+mb._n21*ma._n21+mb._n22*ma._n24;    var f=mb._n14*ma._n13+mb._n21*ma._n22+mb._n22*ma._n31;        var g=mb._n23*ma._n11+mb._n24*ma._n14+mb._n31*ma._n23;    var h=mb._n23*ma._n12+mb._n24*ma._n21+mb._n31*ma._n24;    var i=mb._n23*ma._n13+mb._n24*ma._n22+mb._n31*ma._n31;        return [a,b,c,d,e,f,g,h,i];}function tform_4matrix(ma,mb){		    var a= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31;    var b= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32;    var c= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33;    var d= mb._n11*ma._n14+mb._n12*ma._n24+mb._n13*ma._n34+mb._n14;    var e= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31;    var f= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32;    var g= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33;    var h= mb._n21*ma._n14+mb._n22*ma._n24+mb._n23*ma._n34+mb._n24;    var i= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31;    var j= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32;    var k= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33;    var l= mb._n31*ma._n14+mb._n32*ma._n24+mb._n33*ma._n34+mb._n34;     var m= 0;//mb._n41*ma._n11+mb._n42*ma._n21+mb._n43*ma._n31+mb._n44*ma._n41;    var n= 0;//mb._n41*ma._n12+mb._n42*ma._n22+mb._n43*ma._n32+mb._n44*ma._n42;    var o= 0;//mb._n41*ma._n13+mb._n42*ma._n23+mb._n43*ma._n33+mb._n44*ma._n43;    var p= 1;//mb._n41*ma._n14+mb._n42*ma._n24+mb._n43*ma._n34+mb._n44*ma._n44;     return [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p];    }function transpose_matrix(ma){		var a = ma._n11;	var b = ma._n21;	var c = ma._n31;	var d = ma._n41;		var e = ma._n12;	var f = ma._n22;	var g = ma._n32;	var h = ma._n42;		var i = ma._n13;	var j = ma._n23;	var k = ma._n33;	var l = ma._n43;		var m = ma._n14;	var n = ma._n24;	var o = ma._n34;	var p = ma._n44;		return [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p];}function invert_matrix(ma){	var d = (ma._n11 * ma._n22 - ma._n21 * ma._n12) * ma._n33 - (ma._n11 * ma._n32 - ma._n31 * ma._n12) * ma._n23 + (ma._n21 * ma._n32 - ma._n31 * ma._n22) * ma._n13;//determinate		//trace(det);	if(d!=0){		d = 1/d;		/*		0	1	2	3		4	5	6	7		8	9	10	11		*/		/*		var a =	 d * ( ma._n22 * ma._n33 - ma._n32 * ma._n23 );		var b =	-d * ( ma._n12 * ma._n33 - ma._n32 * ma._n13 );		var c =	 d * ( ma._n12 * ma._n23 - ma._n22 * ma._n13 );		var d =	-d * ( ma._n12 * (ma._n23*ma._n34 - ma._n33*ma._n24) - ma._n22 * (ma._n13*ma._n34 - ma._n33*ma._n14) + ma._n32 * (ma._n13*ma._n24 - ma._n23*ma._n14) );			var e =	-d * ( ma._n21 * ma._n33 - ma._n31 * ma._n23 );		var f =	 d * ( ma._n11 * ma._n33 - ma._n31 * ma._n13 );		var g =	-d* ( ma._n11 * ma._n23 - ma._n21 * ma._n13 );		var h =	 d * ( ma._n11 * (ma._n23*m._n34 - ma._n33*ma._n24) - ma._n21 * (ma._n13*ma._n34 - ma._n33*ma._n14) + ma._n31 * (ma._n13*ma._n24 - ma._n23*ma._n14) );			var i =	 d * ( ma._n21 * ma._n32 - ma._n31 * ma._n22 );		var j =	-d* ( ma._n11 * ma._n32 - ma._n31 * ma._n12 );		var k =	 d * ( ma._n11 * ma._n22 - ma._n21 * ma._n12 );		var l =	-d* ( ma._n11 * (ma._n22*ma._n34 - ma._n32*ma._n24) - ma._n21 * (ma._n12*ma._n34 - ma._n32*ma._n14) + ma._n31 * (ma._n12*ma._n24 - ma._n22*ma._n14) );				return [a,b,c,d,e,f,g,h,i,j,k,l,0,0,0,1];		*/			/*	this.n11 =	 d * ( m22 * m33 - m32 * m23 );		this.n12 =	-d * ( m12 * m33 - m32 * m13 );		this.n13 =	 d * ( m12 * m23 - m22 * m13 );		this.n14 =	-d * ( m12 * (m23*m34 - m33*m24) - m22 * (m13*m34 - m33*m14) + m32 * (m13*m24 - m23*m14) );		this.n21 =	-d * ( m21 * m33 - m31 * m23 );		this.n22 =	 d * ( m11 * m33 - m31 * m13 );		this.n23 =	-d* ( m11 * m23 - m21 * m13 );		this.n24 =	 d * ( m11 * (m23*m34 - m33*m24) - m21 * (m13*m34 - m33*m14) + m31 * (m13*m24 - m23*m14) );		this.n31 =	 d * ( m21 * m32 - m31 * m22 );		this.n32 =	-d* ( m11 * m32 - m31 * m12 );		this.n33 =	 d * ( m11 * m22 - m21 * m12 );		this.n34 =	-d* ( m11 * (m22*m34 - m32*m24) - m21 * (m12*m34 - m32*m14) + m31 * (m12*m24 - m22*m14) );*/	//}//}/*function v_to_m(v,a){    var sine = mysin[a];    var cosine = mycos[a];    var t = 1 - cosine;    var a = t * v.x * v.x + cosine;    var b = t * v.x * v.y - sine * v.z;    var c = t * v.x * v.z + sine * v.y;        var d = t * v.x * v.y + sine * v.z;    var e = t * v.y * v.y + cosine;    var f = t * v.y * v.z - sine * v.x;        var g = t * v.x * v.z - sine * v.y;    var h = t * v.y * v.z + sine * v.x;    var i = t * v.z * v.z + cosine;        var ma=[a,b,c,d,e,f,g,h,i];    return  ma;}*/