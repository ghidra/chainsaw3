﻿package chainsaw.ui{	import flash.utils.getTimer;	//import flash.text.TextField;    //import flash.text.TextFormat;    //import flash.text.TextFieldAutoSize;		import chainsaw.ui.ui_text;	public class fps_counter extends ui_text	{		//private var fps_text:ui_text= new ui_text("fps");		//private var format:TextFormat = new TextFormat();		private var time :Number;		private var frameTime :Number;		private var prevFrameTime :Number = getTimer();		private var secondTime :Number;		private var prevSecondTime :Number = getTimer();		private var frames :Number = 0;		private var fps :String = "";				public function fps_counter():void{			text_string.text="fps";		}		//------------------		//------------------		//-fps		/*		http://code.google.com/p/squidder/		*/		/*public function toggle_fps():void{			if(this._fps==false){				this._fps=true;				fps_text = new TextField();				this.addChild(fps_text);								this.format.font = "Verdana";				this.format.color = 0x000000;				this.format.size = 10;				fps_text.autoSize = TextFieldAutoSize.LEFT;				fps_text.defaultTextFormat = format;				fps_text.text = "-- FPS ---- AV";							}else{				//need to delete the fps window				this._fps=false;			}		}*/		private function _calc_fps():void{						time = getTimer();			frameTime = time - prevFrameTime;			secondTime = time - prevSecondTime;						if(secondTime >= 1000) {				fps = frames.toString();				frames = 0;				prevSecondTime = time;			}else{				frames++;			}						prevFrameTime = time;			text_string.text = ((fps + " FPS / ") + frameTime) + " MS" ;			//iBar.scaleX = iBar.scaleX - ((iBar.scaleX - (frameTime /10)) / 5);		}		/*		public function toggle_map():void{			if(this._map==false){				this._map=true;			}else{				this._map=false;			}		}*/		//------------------		//------------------	}}