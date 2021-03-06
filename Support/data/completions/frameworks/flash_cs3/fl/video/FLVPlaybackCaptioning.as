﻿package fl.video
{
import flash.accessibility.Accessibility;
import flash.accessibility.AccessibilityProperties;
import flash.display.*;
import flash.events.*;
import flash.text.*;
import flash.geom.Rectangle;
import flash.geom.Point;
import flash.system.Capabilities;
import flash.utils.*;
public class FLVPlaybackCaptioning extends Sprite
{
		internal var ttm : TimedTextManager;
		internal var visibleCaptions : Array;
		internal var hasSeeked : Boolean;
		internal var flvPos : Rectangle;
		internal var prevCaptionTargetHeight : Number;
		internal var captionTargetOwned : Boolean;
		internal var captionTargetLastHeight : Number;
		internal var captionToggleButton : Sprite;
		internal var onButton : Sprite;
		internal var offButton : Sprite;
		internal var captionToggleButtonWaiting : Sprite;
		internal static const AUTO_VALUE : String;
		internal var _captionTarget : TextField;
		internal var _captionTargetContainer : DisplayObjectContainer;
		internal var cacheCaptionTargetParent : DisplayObjectContainer;
		internal var cacheCaptionTargetIndex : int;
		internal var cacheCaptionTargetAutoLayout : Boolean;
		internal var cacheCaptionTargetLocation : Rectangle;
		internal var cacheCaptionTargetScaleY : Number;
		internal var skinHijacked : Boolean;
		private var _autoLayout : Boolean;
		private var _captionsOn : Boolean;
		private var _captionURL : String;
		private var _flvPlaybackName : String;
		private var _flvPlayback : FLVPlayback;
		private var _captionTargetName : String;
		private var _videoPlayerIndex : uint;
		private var _limitFormatting : Boolean;
		private var _track : uint;
		public function get showCaptions () : Boolean;
		public function set showCaptions (b:Boolean) : Void;
		public function get source () : String;
		public function set source (url:String) : Void;
		public function get autoLayout () : Boolean;
		public function set autoLayout (b:Boolean) : Void;
		public function get captionTargetName () : String;
		public function set captionTargetName (tname:String) : Void;
		public function get captionTarget () : DisplayObject;
		public function set captionTarget (ct:DisplayObject) : Void;
		public function get captionButton () : Sprite;
		public function set captionButton (s:Sprite) : Void;
		public function get flvPlaybackName () : String;
		public function set flvPlaybackName (flvname:String) : Void;
		public function get flvPlayback () : FLVPlayback;
		public function set flvPlayback (fp:FLVPlayback) : Void;
		public function get track () : uint;
		public function set track (i:uint) : Void;
		public function set videoPlayerIndex (v:uint) : Void;
		public function get videoPlayerIndex () : uint;
		public function set simpleFormatting (b:Boolean) : Void;
		public function get simpleFormatting () : Boolean;
		public function FLVPlaybackCaptioning ();
		internal function forwardEvent (e:Event) : void;
		internal function startLoad (e:Event) : void;
		internal function hookupCaptionToggle (e:Event) : void;
		internal function handleCaption (e:MetadataEvent) : void;
		internal function handleStateChange (e:VideoEvent) : void;
		internal function handleComplete (e:VideoEvent) : void;
		internal function handlePlayheadUpdate (e:VideoEvent) : void;
		internal function handleSkinLoad (e:VideoEvent) : void;
		internal function handleAddedToStage (e:Event) : void;
		internal function handleFullScreenEvent (e:FullScreenEvent) : void;
		internal function enterFullScreenTakeOver () : void;
		internal function exitFullScreenTakeOver () : void;
		internal function cleanupCaptionButton () : void;
		internal function setupButton (ctrl:Sprite, prefix:String, vis:Boolean) : Sprite;
		internal function handleButtonClick (e:MouseEvent) : void;
		internal function setupButtonSkin (prefix:String) : Sprite;
		internal function removeOldCaptions (playheadTime:Number, removedCaptionsIn:Array =null) : void;
		internal function findFLVPlayback () : void;
		internal function createCaptionTarget () : void;
		internal function layoutCaptionTarget (e:LayoutEvent =null) : void;
		internal function addFLVPlaybackListeners () : void;
		internal function removeFLVPlaybackListeners () : void;
		internal function getCaptionText (cp:Object) : String;
		internal function displayCaptionNow () : void;
		internal function silenceCaptionTarget () : void;
}
}
