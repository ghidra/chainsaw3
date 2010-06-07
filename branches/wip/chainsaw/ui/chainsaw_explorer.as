﻿package chainsaw.ui{	import flash.display.Stage;	import flash.utils.getDefinitionByName;//for getting class name	import flash.utils.getQualifiedClassName;//for getting class name	import flash.utils.describeType;	import chainsaw.ui.bg;	import chainsaw.ui.button;	import chainsaw.ui.slider;	import chainsaw.scene.renderer;	public class chainsaw_explorer extends bg	{		private const button_width:Number=50;//constant so I can use it as a default function value		private var button_height:Number=12;		private var button_margin:Number=2;		private var window_height:Number=100;		private var window_width:Number=300;				public var render_obj:renderer;//need to hold on to this for access		private var window1:bg;		private var window1_used:Boolean=false;						public function chainsaw_explorer(r:renderer,s:Stage):void{//ty:type, t:title, tv:title visible 0 or 1, B:border 0 or 1.			render_obj=r;			draw_bg(0,0,window_width,55);			//make a button for the camera			make_button(_palette,0,"camera",false,new Array(render_obj),camera_panel,2,2);			//build out buttons for the objects in the scene			var stack:Number=1;//for stacing buttons			for ( var i in r._scene._objects ) { //make button for each objecet				var button_y = (2+button_height)*stack+2;				make_button(_palette,i,r._scene._objects[i]._id,false,new Array(render_obj._scene._objects[i]._obj),obj_panel,2,button_y);				stack++;			}			//trace("scene");//instances			//for ( var i:String in r._scene._scene ) {      			//trace( i + ":" + r._scene._scene[i]._pointer );      			//}			make_button(_palette,0,"debug",false,new Array(),debug,100,2);			//move the whole window over to bottom and middle			this.x=(s.stageWidth/2)-(window_width/2);			this.y=s.stageHeight-50;		}		//----------this is when an object button is clicked. I want to look at the variables.		private function camera_panel(b:button,c:Array,t:String):void{			var obj_list=c[0];						draw_window1(1);			//render_obj._camera._fov=50;			var slide_fov = new slider("_fov",render_obj,"build_frustum",2,2,296);						window1._palette.addChild(slide_fov);			//trace("where I want to be");			//trace(obj_list._fov);			//trace( describeType( obj_list ) );			for(var prop in obj_list){				trace(prop+" is "+obj_list[prop]);			}		}		private function obj_panel(b:button,c:Array,t:String):void{//buton, parent, content array			var obj_list=c[0];			var obj_number=obj_list.length;						draw_window1(obj_number);						var stack:Number=0;//for stacing buttons			for (var i in obj_list){				var button_y =(2+button_height)*stack+2 ;//start_stack+(2+button_height)*stack+2;						//make_button(window1._palette,i,"child",true,new Array(render_obj._scene._objects[b.id]._obj[b.id]),obj_clicked,2,button_y);				var button_temp=new button(b.id,"child_"+i,new Array(),obj_clicked,2,button_y,button_width );				window1._palette.addChild( button_temp );				stack++;			}						stage.focus=parent;		}		public function obj_clicked(b:button,c:Array,t:String){//this is the burried object, since the actuall obj is a container.			//breaking down the indo			var obj_id=b.text_obj.text_string.text.split("_");//get the text out of the button			var obj = render_obj._scene._objects[b.id]._obj[obj_id[1]];			var obj_list = obj._pointlist;			var obj_number=obj_list.length;						draw_window1(obj_number);						var stack:Number=0;//for stacing buttons			for(var i in obj_list){				var button_y =(2+button_height)*stack+2 ;//start_stack+(2+button_height)*stack+2;				//var button_y = -(start_stack-((button_height+button_margin)*stack));				var button_temp=new button(i,"p_"+i,new Array(),empty,2,button_y,button_width );				var button_tempx=new button(i,obj_list[i]._x,new Array(),empty,(2+button_width)*1,button_y,button_width );				var button_tempy=new button(i,obj_list[i]._y,new Array(),empty,(2+button_width)*2,button_y,button_width );				var button_tempz=new button(i,obj_list[i]._z,new Array(),empty,(2+button_width)*3,button_y,button_width );				var button_tempw=new button(i,obj_list[i]._w,new Array(),empty,(2+button_width)*4,button_y,button_width );				window1._palette.addChild( button_temp );				window1._palette.addChild( button_tempx );				window1._palette.addChild( button_tempy );				window1._palette.addChild( button_tempz );				window1._palette.addChild( button_tempw );				stack++;			}			//trace();			stage.focus=parent;		}		//-----------------		//-----------------		private function draw_window1(button_amount){			if (window1_used) removeChild(window1);//if the window already exists, remove it			window1=new bg();			var start_stack=button_amount*(button_height+button_margin)+button_margin;			var window_start=start_stack+button_margin;			var window_scroll=false;			if(start_stack+button_margin>window_height){				window_start=window_height;				window_scroll=true;			}			window1.draw_bg(0,0,window_width,window_start);			if(window_scroll)window1.build_scroll(start_stack);			addChild(window1);			window1.y=-(window_start+button_margin);			window1_used=true;		}		private function make_button(p,i:Number,n:String,e:Boolean,d:Array,f:Function,x:Number,y:Number,w:Number=button_width):void{//parent,id,name,enumerate the name,data,function,x,y,width			var button_name=(e)?n+"_"+i:n;			var button_temp=new button(i,button_name,d,f,x,y,w );			p.addChild( button_temp );		}		//-----------------		//-----------------		public function empty(b:button){					}		public function debug(b:button,c:Array,t:String){			removeChild(window1);			window1_used=false;			stage.focus=parent;		}		//get the class of something so as to know what to do with it		private function get_class(o:Object):Class {   	    	return Class(getDefinitionByName(getQualifiedClassName(o)));   		}		//---------	}	}