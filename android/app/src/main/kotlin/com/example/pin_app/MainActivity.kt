package com.example.pin_app

import android.os.Bundle
import androidx.lifecycle.lifecycleScope
import com.example.pin_app.core.PostDetailApiIml
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.PostDetailApi
import kotlinx.coroutines.launch

class MainActivity : FlutterActivity(){
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val postDetailApi = PostDetailApiIml();
        PostDetailApi.DetailApi.setUp(flutterEngine.dartExecutor.binaryMessenger, postDetailApi)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        lifecycleScope.launch {

        }
    }
}
