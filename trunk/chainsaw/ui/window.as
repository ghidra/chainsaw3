﻿package chainsaw.ui{	public class window	{			public var _default_w:Number;//the width of the windows		public var _border:Boolean;//true false on the border		public var _title:Boolean;//does it display the title		public var _stack:Boolean;//is it in a stack		public var stackStart:Number=2;//where to start the stack				public function window(t:String,tv:Boolean,b:Boolean):void{//t:title, tv:title visible 0 or 1, B:border 0 or 1.			trace(t);		}	}	}