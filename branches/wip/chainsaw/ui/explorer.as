﻿package chainsaw.ui{	import flash.display.Stage;	import chainsaw.ui.window	import chainsaw.ui.button;	import chainsaw.object.renderer;		public class explorer extends window	{		private var stack:Number=0;//for stacing buttons		private var button_height:Number=12;		//public var _objects:Array=new Array();				public function explorer(r:renderer,s:Stage):void{//ty:type, t:title, tv:title visible 0 or 1, B:border 0 or 1.			draw_window(0,0,200,55);						for ( var i:String in r._scene._objects ) {  				var button_y = (2+button_height)*stack+2;				palette.addChild(new button(r._scene._objects[i]._id,2,button_y,97 ) );				stack++;			}			//trace(r._scene.propertyIsEnumerable("_scene"));			//trace("scene");//instances			//for ( var i:String in r._scene._scene ) {      			//trace( i + ":" + r._scene._scene[i]._pointer );      			//}									palette.x=(s.stageWidth/2)-100;			palette.y=s.stageHeight-50;		}				//------------making windows	}	}