﻿package chainsaw{		import chainsaw.vector4;	import chainsaw.matrix4;	import chainsaw.obj;	import chainsaw.scene;		public class obj_instance	{		public var _finished	:	Boolean = false;				//public var _pointlist	:	Array	=	new Array();				//public var _normallist	:	Array	=	new Array();				//public var _rad			:	Number	=	0;		//public var _cen			:	vector4 = 	new vector4();		public var _type	:		String = "obj";//type not using this right now, maybe incause emitters and curves are differnt		public var _obj		:		Array = new Array();					//array to hold the objects in obj		public var _pointer	:		Number;				public var _ttm		:		matrix4 = 	new matrix4();		public var _trm		:		matrix4 = 	new matrix4();		public var _rnm		:		matrix4 = 	new matrix4();				public function obj_instance(scn:scene,obj:Number,t:Array):void		{			this._pointer = obj;//give it the string to what it is using				this._ttm.translate(t[0],t[1],t[2]);//trace("####a:"+this._ttm._n11+"	b:"+this._ttm._n12+"	c:"+this._ttm._n13+"	d:"+this._ttm._n14+"	e:"+this._ttm._n21+"	f:"+this._ttm._n22+"	g:"+this._ttm._n23+"	h:"+this._ttm._n24+"	i:"+this._ttm._n31+"	j:"+this._ttm._n32+"	k:"+this._ttm._n33+"	l:"+this._ttm._n34+"	m:"+this._ttm._n41+"	n:"+this._ttm._n42+"	o:"+this._ttm._n43+"	p:"+this._ttm._n44)			this._rnm.tform_4matrix(this._trm,this._ttm);						for(var i in scn._objects[obj]._obj){//for each obj in obj objct array				this._obj.push( new geometry() );				this._obj[i]._cen = scn._objects[obj]._obj[i]._cen;				this._obj[i]._rad = scn._objects[obj]._obj[i]._rad;			}						scn._scene.push(this);//add this instance to the scene array			this._finished = true;		}		//***********************		public function rotateX(d:Number):void{			this._trm.rotateX(d);			this._rnm.tform_4matrix(this._trm,this._ttm);		}		public function rotateY(d:Number):void{			this._trm.rotateY(d);			this._rnm.tform_4matrix(this._trm,this._ttm);		}		public function rotateZ(d:Number):void{			this._trm.rotateZ(d);			this._rnm.tform_4matrix(this._trm,this._ttm);		}		//***********************	}}