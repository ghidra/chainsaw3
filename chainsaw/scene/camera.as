﻿package chainsaw.scene{		import flash.display.Stage;	import flash.events.MouseEvent;		import chainsaw.math.vector4;	import chainsaw.math.matrix4;	import chainsaw.math.matrix3;		import chainsaw.geometry.geometry;		public class camera extends geometry{//extends ?				public var _fov		:		Number;//focal view		public var _rfov	:		Number;//focal view in radians		public var _near 	:		Number;//near distance		public var _far		:		Number;//far distance		public var _ratio	:		Number;//view ratio				public var _w		:		Number;//far distance		public var _h		:		Number;//view ratio				public var _pm		:		matrix4 = new matrix4();//projection matrix		public var _vm		:		matrix4 = new matrix4();//view matrix		public var _rm		:		matrix4 = new matrix4();				public var _camtoface = new vector4(0,0,-1,0);//var camtoface = new vector(cam1.rnm[3],cam1.rnm[7],cam1.rnm[11],cam1.rnm[15]) ; var camtoface = new vector4(cam1.rnm[8],cam1.rnm[9],cam1.rnm[10],cam1.rnm[15]);		public var _clip_to	: Array;		//set up the translation matrix? and normal?		public function camera():void		{			init();		}		public function init(d:Number=380,view_w:Number=550,view_h:Number=400,n:Number=5,f:Number=100):void		{			this._fov = d;// focal view			this._rfov = d*(3.14159265 / 180); //to radians			this._near = n;//near plane			this._far = f;//far plane			this._w = view_w;//far plane			this._h = view_h;//far plane			this._ratio = view_w/view_h;//ratio for camera						build_frustum();			_clip_to =  [ _obj[0]._poly[0] ];//this is the near plane that I want to clip to. we can add more if we want		}		//----------------------------------------------------------------		public function trans_s(d:Number):void{			this._ttm.trans_s(d);			//this._rnm.tform_4matrix(this._trm,this._ttm);			this._rnm.mult_3matrix_4matrix(this._trm,this._ttm);			this._rnm.transpose();		}		public function trans_u(d:Number):void{			this._ttm.trans_u(d);			//this._rnm.tform_4matrix(this._trm,this._ttm);			this._rnm.mult_3matrix_4matrix(this._trm,this._ttm);			this._rnm.transpose();		}		public function trans_o(d:Number):void{			this._ttm.trans_o(d);			//this._rnm.tform_4matrix(this._trm,this._ttm);			this._rnm.mult_3matrix_4matrix(this._trm,this._ttm);			this._rnm.transpose();		}		//----------------------------------------------------------------		public function build_frustum()//p_nAspect, p_nNear, p_nFar, p_nFov ) {//includes perspective matrix		{			this._rfov = this._fov*(3.14159265 / 180); //to radians			this._ratio = this._w/this._h;//ratio for camera			var cosf:Number = Math.cos(Math.sqrt(this._rfov));			var sinf:Number = Math.sin(Math.sqrt(this._rfov));						var nf:Number = (1-this._near/this._far);						var tang:Number = 	2*(Math.tan(Math.sqrt(this._rfov)));					var y_near:Number = tang * this._near;            			var x_near:Number = y_near * this._ratio;									var y_far:Number = tang * this._far;			var x_far:Number = y_far * this._ratio;						this._near = -this._near;			this._far = -this._far;						this._pm = new matrix4(cosf,0,0,0,0,-cosf,0,0,0,0,sinf/nf,-(Math.sin(1)/nf)*this._near,0,0,sinf,0);			this._vm = new matrix4(99,0,0,275,0,99,0,200,0,0,1,0,0,0,0,1);			this._rm.mult_4matrix(this._pm,this._vm);//mult the matrices			/*			p.vm=[99,0,0,screencenterX,				  0,99,0,screencenterY,				  0,0,1,0,				  0,0,0,1];			*/						this._obj[0] = new geometry();//create the frustum object						this._obj[0].addpoint ([x_near, y_near, this._near]); // Near, right, top			this._obj[0].addpoint ([x_near,-y_near, this._near]); // Near, right, bottom			this._obj[0].addpoint ([-x_near,-y_near, this._near]); // Near, left, bottom			this._obj[0].addpoint ([-x_near, y_near, this._near]); // Near, left, top						this._obj[0].addpoint ([x_far,  y_far,  this._far]);  // Far, right, top			this._obj[0].addpoint ([x_far, -y_far,  this._far]);  // Far, right, bottom			this._obj[0].addpoint ([-x_far, -y_far,  this._far]);  // Far, left, bottom			this._obj[0].addpoint ([-x_far,  y_far,  this._far]);  // Far, left, top						this._obj[0].addpoly([0,1,2,3],"wire");//near//I'm building all this polys counter closck wise to build positve normals pointing into frustum			this._obj[0].addpoly([7,6,5,4],"wire");//far				this._obj[0].addpoly([4,5,1,0],"wire");//right			this._obj[0].addpoly([7,3,2,6],"wire");//left			this._obj[0].addpoly([4,0,3,7],"wire");//top			this._obj[0].addpoly([1,5,6,2],"wire");//bottom						this._obj[0]._poly[0]._w = -this._near;			this._obj[0]._poly[1]._w = -this._far;			this._obj[0]._poly[2]._w = 0;			this._obj[0]._poly[3]._w = 0;			this._obj[0]._poly[4]._w = 0;			this._obj[0]._poly[5]._w = 0;						this._obj[0].find_bounding_sphere();		}		public function frustum_check(geo):Number{			var intersect:Number = 1;			for (var plane = 0; plane < 6; plane++ ) {//check against frustum planes to see if object is in viewable area				var geo_cen4 = new vector4( geo._cen._x,geo._cen._y,geo._cen._z );				var dp				= _obj[0]._poly[plane].dot4(geo_cen4);//dot product of frustum plane [i] and center of sphere				var r:Number  		= geo._rad;//object sphere radius look up once.//trace(dp+"......"+r);				if( dp<=r && dp>=-r) intersect=0;//intersecting				if( dp+r < 0 ) intersect=-1;			}			//trace(intersect)			return intersect;				//var dp				= new vector4().d_p4(_camera._obj[0]._normallist[plane], geo._cen);//dot product of frustum plane [i] and center of sphere			//--------		}		//-----------------		//-----------------	}}