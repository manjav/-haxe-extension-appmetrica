package com.gerantech.extension.appmetrica;

class AppMetrica {
	///callbacks haxe
	// public static var onInit:Bool->String->Void = null;
	// public static var onAdReady:String->Void = null;
	// public static var onAdStart:String->Void = null;
	// public static var onAdFinish:String->String->Void = null;
	// public static var onAdError:String->String->Void = null;

	private static var _instance:AppMetrica = null;

	public static function init(apiKey:String):Void {
		libInit(apiKey);
	}
	public static function getInstance():AppMetrica {
		if (_instance == null)
			_instance = new AppMetrica();
		return _instance;
	}

	////java binings
	private static var libInit:String->Void =
		#if (android && openfl)
		lime.system.JNI.createStaticMethod("com/gerantech/extension/appmetrica/AppMetricaWrapper", "init", "(Ljava/lang/String;)V");
		#else
		function(apiKey:String):Void {};
		#end

	private static var libShowAd:String->Void =
		#if (android && openfl)
		lime.system.JNI.createStaticMethod("com/gerantech/extension/appmetrica/AppMetricaWrapper", "showAd", "(Ljava/lang/String;)V");
		#else
		function(s:String = ""):Void {};
		#end

	// event handlers
	public function new() {}

	/* @:keep
	public function listen(type:String, arg0:Dynamic, arg1:Dynamic):Void {
		if (type == "init" && onInit != null)
			onInit(arg0, arg1);
		else if (type == "ready" && onAdReady != null) {
			placements.set(arg0, true);
			onAdReady(arg0);
		} else if (type == "start" && onAdStart != null)
			onAdStart(arg0);
		else if (type == "finish" && onAdFinish != null)
			onAdFinish(arg0, arg1);
		else if (type == "error" && onAdError != null)
			onAdError(arg0, arg1);
	} */
}
