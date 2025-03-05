package com.example.productretrofit;
import java.util.List;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;

public interface RegisterAPI {
    @GET("get_product.php")
    Call<ProductResponse> getProducts();

    @FormUrlEncoded
    @POST("get_login.php")
    Call<ResponseBody> login(
            @Field("username") String username,
            @Field("password") String password
    );
}
