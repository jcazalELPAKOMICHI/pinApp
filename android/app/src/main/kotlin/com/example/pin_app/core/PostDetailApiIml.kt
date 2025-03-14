package com.example.pin_app.core

import android.content.Context
import io.flutter.Log
import io.flutter.plugins.PostDetailApi
import kotlinx.coroutines.*
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory


class PostDetailApiIml(): PostDetailApi.DetailApi {
    private lateinit var apiInterface: ApiService
    private val scope = CoroutineScope(Dispatchers.IO) // Use the IO dispatcher for disk and network IO

    override fun search(
        baseUrl: String,
        endpoint: String,
        postId: Long,
        result: PostDetailApi.Result<MutableList<PostDetailApi.PostDetail>>
    ) {
        getApiInterface(baseUrl)
        scope.launch {

            val list: MutableList<PostDetailApi.PostDetail> = mutableListOf()

            try {
                Log.i("BASEURL", baseUrl)
                val call =  apiInterface.getComments(postId)

                call.forEach { it ->

                    val item = PostDetailApi.PostDetail.Builder()
                        .setPostId(it.postId.toLong())
                        .setBody(it.body)
                        .setId(it.id.toLong())
                        .setName(it.name)
                        .setEmail(it.email).build()
                    list.add(item)

                }
                withContext(Dispatchers.Main) {
                    result.success(list)
                }

            }catch (e:Exception){
                Log.e("ERROR", e.toString())
                withContext(Dispatchers.Main){
                    result.error(e)
                }
            }
        }

    }

    private fun getApiInterface(BASE_URL:String) {
        apiInterface = RetrofitInstance.getInstance(BASE_URL).create(ApiService::class.java)
    }

}

object RetrofitInstance{

    fun getInstance(BASE_URL:String): Retrofit {
        val client = OkHttpClient()
        val interceptor = HttpLoggingInterceptor().setLevel(HttpLoggingInterceptor.Level.BODY)
        val clientBuilder: OkHttpClient.Builder =
            client.newBuilder().addInterceptor(interceptor)

        return Retrofit.Builder().baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
            .client(clientBuilder.build())
            .build()
    }

}