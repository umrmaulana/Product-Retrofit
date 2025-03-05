package com.example.productretrofit;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;

public interface RegisterAPI {
    @GET("get_product.php")
    Call<ResponseBody> product(
            @Field("kode") String kode,
            @Field("merk") String merk,
            @Field("kategori") String kategori,
            @Field("satuan") String satuan,
            @Field("hargabeli") String hargabeli,
            @Field("diskonbeli") String diskonbeli,
            @Field("hargapokok") String hargapokok,
            @Field("hargajual") String hargajual,
            @Field("stok") String stok,
            @Field("foto") String foto,
            @Field("deskripsi") String deskripsi
    );
    @FormUrlEncoded
    @POST("get_login.php")
    Call<ResponseBody> login(
            @Field("username") String username,
            @Field("password") String password
    );
}
