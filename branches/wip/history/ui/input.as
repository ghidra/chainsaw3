﻿package history.ui{	import chainsaw.ui.bg;	import chainsaw.ui.input_text_field;	import chainsaw.ui.button;		import chainsaw.ui.server_request;	public class input extends bg	{		//public var scene1	:	scene;									//create a scene to hold everything		private var inputbg : bg;		private var input1 : input_text_field;		private var input2 : input_text_field;		private var input3 : input_text_field;		private var input4 : input_text_field;		private var inputbutton : button;		private var server_com : server_request;		//private var the_mang:Number=0;		//-----------------		public function input():void{			server_com = new server_request("http://localhost/tests/add_event.php",sever_request_call_back);						input1=new input_text_field(0,"when","yyyy:mm:dd:hh:mm:ss",0,0,300);			input2=new input_text_field(1,"till","",0,14,300);			input3=new input_text_field(2,"where","",0,28,300);			input4=new input_text_field(3,"what","",0,42,300,100);			inputbutton=new button(4,"Submit",new Array(),submit_event,0,144);						addChild(input1);			addChild(input2);			addChild(input3);			addChild(input4);			addChild(inputbutton);		}		//-----------------		private function submit_event(b:button,a:Array):void{			server_com.variables.input_when=input1.text_obj.text_string.text			server_com.variables.input_till=input2.text_obj.text_string.text			server_com.variables.input_where=input3.text_obj.text_string.text			server_com.variables.input_what=input4.text_obj.text_string.text						server_com.send_request();		}		private function sever_request_call_back(data):void{			trace("my data:"+data);		}		//-----------------		//-----------------	}}