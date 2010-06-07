﻿package chainsaw.ui{	//import flash.display.Stage;  	import flash.display.Sprite;	import flash.events.MouseEvent;	import flash.events.Event;	import flash.geom.Rectangle;//neede to contrain slider path  	public class scroll_bar extends Sprite{		private const color=0xD4D4D4;		private const color_alpha=0.5;		public var _up_button:Sprite=new Sprite();//holds the whole window	  	public var _drag_button:Sprite=new Sprite();//holds the whole window	  	public var _down_button:Sprite=new Sprite();//holds the whole window				public var _drag_start_x:Number;		public var _drag_start_y:Number;		public var _drag_constrain:Rectangle;		public var _drag_distance:Number;		public var _difference:Number;//the difference of between the bar and what is in the masked window				public var parent_layer;//the var to hold the parent layer that we want to move	  	  	private var pos:Number;	  	private var top:Number;	  	private var distance:Number;	  	private var size:Number=5;		  		public function scroll_bar(p:Number=0,t:Number=0,d:Number=0,l:String="",ty:Number=0):void{  //x positino top and distance of window, layer to move and type	  		pos=p+size+1;			top=t;			distance=d;			parent_layer=l;						if(ty){							}else{				draw_button(pos,size);				draw_drag_button(pos,(size*3));				draw_button(pos,top-(size));			}			addChild(_up_button);			addChild(_drag_button);			addChild(_down_button);	  	}		private function draw_button(x:Number,y:Number):void{			_up_button.graphics.beginFill(color,color_alpha); // grey color			_up_button.graphics.drawCircle(x,y,size);			_up_button.graphics.endFill();		}		private function draw_drag_button(x:Number,y:Number){			_drag_button.graphics.beginFill(color,color_alpha); // grey color			_drag_button.graphics.drawCircle(0,0,size);			_drag_button.graphics.endFill();			_drag_button.x=_drag_start_x=x;			_drag_button.y=_drag_start_y=y;			_drag_distance=top-(size*6);			_drag_constrain=new Rectangle(x,y,0,_drag_distance);			_difference=(distance-top)/_drag_distance;			//trace(_difference);						_drag_button.addEventListener(MouseEvent.MOUSE_DOWN, drag_mouseDownHandler);			_drag_button.addEventListener(MouseEvent.MOUSE_OUT, drag_mouseOutHandler);			_drag_button.addEventListener(MouseEvent.MOUSE_UP, drag_mouseUpHandler);		}		private function drag_mouseDownHandler(e:MouseEvent){			var b = e.target;			b.startDrag(false,_drag_constrain);			b.addEventListener(Event.ENTER_FRAME, update_window);		}		private function drag_mouseOutHandler(e:MouseEvent){					}		private function drag_mouseUpHandler(e:MouseEvent){			var b = e.target;			b.stopDrag();			b.removeEventListener(Event.ENTER_FRAME,update_window);		}		//-----		private function update_window(e:Event):void{			var b = e.target;			var step=b.y-_drag_start_y;			var result_pos=step*_difference;			parent[parent_layer].y=-result_pos;			}  	}}