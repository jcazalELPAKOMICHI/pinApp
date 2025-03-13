package com.example.pin_app

import com.example.pin_app.core.PostDetailApiIml
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.PostDetailApi

class MainActivity : FlutterActivity(){
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val postDetailApi = PostDetailApiIml(this);
        PostDetailApi.DetailApi.setUp(flutterEngine.dartExecutor.binaryMessenger, postDetailApi)
    }
}
