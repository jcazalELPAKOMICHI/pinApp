package com.example.pin_app.core

import com.example.pin_app.data.model.PostDetailModel
import retrofit2.http.GET
import retrofit2.http.Query

interface ApiService {
    @GET("comments")
    suspend fun getComments(@Query("postId") id: Long): List<PostDetailModel>
}