package com.example.pin_app.core

import android.content.Context
import io.flutter.Log
import io.flutter.plugins.PostDetailApi
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory


class PostDetailApiIml(private val context: Context): PostDetailApi.DetailApi {
    override fun search(
        baseUrl: String,
        endpoint: String,
        postId: Long,
        result: PostDetailApi.Result<MutableList<PostDetailApi.PostDetail>>
    ) {

        CoroutineScope(Dispatchers.IO).launch {
            val retrofit = Retrofit.Builder()
                .baseUrl(baseUrl)
                .addConverterFactory(GsonConverterFactory.create())
                .build()

            val apiService = retrofit.create(ApiService::class.java)
            val list: MutableList<PostDetailApi.PostDetail> = mutableListOf()

            try {
                Log.i("BASEURL", baseUrl)
                val call =  apiService.getComments(postId)
                call.forEach { it ->

                    val item = PostDetailApi.PostDetail.Builder()
                        .setPostId(it.postId.toLong())
                        .setBody(it.body)
                        .setId(it.id.toLong())
                        .setName(it.name)
                        .setEmail(it.email).build()
                    list.add(item)

                }
            }catch (e:Exception){
                Log.e("ERROR", e.toString())
            }


            withContext(Dispatchers.Main){
                result.success(list)
            }
        }

    }

}