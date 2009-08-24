﻿package chainsaw.math{	public class matrix3	{		public var _n11:Number; 		public var _n12:Number; 		public var _n13:Number; 				public var _n21:Number; 		public var _n22:Number; 		public var _n23:Number; 				public var _n31:Number; 		public var _n32:Number; 		public var _n33:Number; 				public function matrix3(a:Number=1,b:Number=0,c:Number=0,d:Number=0,e:Number=1,f:Number=0,g:Number=0,h:Number=0,i:Number=1):void		{			this._n11 = a; 			this._n12 = b; 			this._n13 = c; 						this._n21 = d; 			this._n22 = e; 			this._n23 = f; 						this._n31 = g; 			this._n32 = h; 			this._n33 = i; 			//trace("****a:"+this._n11+"	b:"+this._n12+"	c:"+this._n13+"	d:"+this._n14+"	e:"+this._n21+"	f:"+this._n22+"	g:"+this._n23+"	h:"+this._n24+"	i:"+this._n31+"	j:"+this._n32+"	k:"+this._n33+"	l:"+this._n34+"	m:"+this._n41+"	n:"+this._n42+"	o:"+this._n43+"	p:"+this._n44)		}		//------------------------------------------------------------------------------------------		//					matrix math		//------------------------------------------------------------------------------------------		public function mult_3matrix( ma:matrix3, mb:matrix3 ):void		{			//trace("a:"+ma._n11+"	b:"+ma._n12+"	c:"+ma._n13+"	d:"+ma._n14+"	e:"+ma._n21+"	f:"+ma._n22+"	g:"+ma._n23+"	h:"+ma._n24+"	i:"+ma._n31+"	j:"+ma._n32+"	k:"+ma._n33+"	l:"+ma._n34+"	m:"+ma._n41+"	n:"+ma._n42+"	o:"+ma._n43+"	p:"+ma._n44)			var a:Number= mb._n11*ma._n11+mb._n12*ma._n21+mb._n13*ma._n31;			var b:Number= mb._n11*ma._n12+mb._n12*ma._n22+mb._n13*ma._n32;			var c:Number= mb._n11*ma._n13+mb._n12*ma._n23+mb._n13*ma._n33;					var d:Number= mb._n21*ma._n11+mb._n22*ma._n21+mb._n23*ma._n31;			var e:Number= mb._n21*ma._n12+mb._n22*ma._n22+mb._n23*ma._n32;			var f:Number= mb._n21*ma._n13+mb._n22*ma._n23+mb._n23*ma._n33;					var g:Number= mb._n31*ma._n11+mb._n32*ma._n21+mb._n33*ma._n31;			var h:Number= mb._n31*ma._n12+mb._n32*ma._n22+mb._n33*ma._n32;			var i:Number= mb._n31*ma._n13+mb._n32*ma._n23+mb._n33*ma._n33;		 			//return new matrix4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p);			this._n11 = a;			this._n12 = b;			this._n13 = c;						this._n21 = d;			this._n22 = e;			this._n23 = f;						this._n31 = g;			this._n32 = h;			this._n33 = i;		}		/*public function transpose():void		{			var a:Number = this._n11;			var b:Number = this._n21;			var c:Number = this._n31;						var d:Number = this._n12;			var e:Number = this._n22;			var f:Number = this._n32;						var g:Number = this._n13;			var h:Number = this._n23;			var i:Number = this._n33;						this._n11 = a;			this._n12 = b;			this._n13 = c;						this._n21 = d;			this._n22 = e;			this._n23 = f;						this._n31 = g;			this._n32 = h;			this._n33 = i;		}*/				//------------------------------------------------------------------------------------------		//					manipulating a matrix		//------------------------------------------------------------------------------------------		public function rotateX(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;					var pitchsin = Math.sin(d);//if the object has moved look this up			var pitchcos = Math.cos(d);			this.mult_3matrix(this, new matrix3(1,	0,			0,										   0,	pitchcos,	-pitchsin,										   0,	pitchsin,pitchcos) );//rotate x		}		public function rotateY(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;			var yawsin = Math.sin(d);//if the object has moved look this up			var yawcos = Math.cos(d);					this.mult_3matrix(this,new matrix3(yawcos,	0,	yawsin,											0,		1,	0,											-yawsin,	0,	yawcos) );//rotate y		}		public function rotateZ(d:Number):void		{			var d = (Number(d) % 3600);			if (d < 0) d += 3600;			var rollsin = Math.sin(d);			var rollcos = Math.cos(d);			this.mult_3matrix(this,new matrix3(rollcos,		-(rollsin),	0,											rollsin,   rollcos,	0,											0,			0,		1) );//rotate z		}		//-----------		//-----------	}}