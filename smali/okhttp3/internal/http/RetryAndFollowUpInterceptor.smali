.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    return-void
.end method

.method public static d(Lokhttp3/Response;I)I
    .locals 1

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p1, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v0, "\\d+"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    const p0, 0x7fffffff

    .line 36
    .line 37
    .line 38
    return p0
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 6
    .line 7
    iget-object v3, v2, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    sget-object v4, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v8, v4

    .line 13
    move-object v9, v6

    .line 14
    const/4 v10, 0x0

    .line 15
    move-object v4, v0

    .line 16
    const/4 v0, 0x1

    .line 17
    :goto_0
    iget-object v11, v3, Lokhttp3/internal/connection/RealCall;->s:Lokhttp3/internal/connection/Exchange;

    .line 18
    .line 19
    if-nez v11, :cond_f

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    iget-boolean v11, v3, Lokhttp3/internal/connection/RealCall;->u:Z

    .line 23
    .line 24
    if-nez v11, :cond_e

    .line 25
    .line 26
    iget-boolean v11, v3, Lokhttp3/internal/connection/RealCall;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    if-nez v11, :cond_d

    .line 29
    .line 30
    monitor-exit v3

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    .line 34
    .line 35
    iget-object v11, v3, Lokhttp3/internal/connection/RealCall;->l:Lokhttp3/internal/connection/RealConnectionPool;

    .line 36
    .line 37
    iget-object v12, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 38
    .line 39
    iget-object v13, v3, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 40
    .line 41
    iget-boolean v14, v12, Lokhttp3/HttpUrl;->i:Z

    .line 42
    .line 43
    if-eqz v14, :cond_1

    .line 44
    .line 45
    iget-object v14, v13, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/SSLSocketFactory;

    .line 46
    .line 47
    if-eqz v14, :cond_0

    .line 48
    .line 49
    iget-object v15, v13, Lokhttp3/OkHttpClient;->B:Ljavax/net/ssl/HostnameVerifier;

    .line 50
    .line 51
    iget-object v7, v13, Lokhttp3/OkHttpClient;->C:Lokhttp3/CertificatePinner;

    .line 52
    .line 53
    move-object/from16 v23, v7

    .line 54
    .line 55
    move-object/from16 v21, v14

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-string v0, "CLEARTEXT-only client"

    .line 61
    .line 62
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v6

    .line 66
    :cond_1
    move-object/from16 v21, v6

    .line 67
    .line 68
    move-object/from16 v22, v21

    .line 69
    .line 70
    move-object/from16 v23, v22

    .line 71
    .line 72
    :goto_1
    new-instance v16, Lokhttp3/Address;

    .line 73
    .line 74
    iget-object v7, v12, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 75
    .line 76
    iget v12, v12, Lokhttp3/HttpUrl;->e:I

    .line 77
    .line 78
    iget-object v14, v13, Lokhttp3/OkHttpClient;->t:Lokhttp3/Dns;

    .line 79
    .line 80
    iget-object v15, v13, Lokhttp3/OkHttpClient;->w:Ljavax/net/SocketFactory;

    .line 81
    .line 82
    iget-object v5, v13, Lokhttp3/OkHttpClient;->v:Lokhttp3/Authenticator;

    .line 83
    .line 84
    iget-object v6, v13, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    .line 85
    .line 86
    move-object/from16 v24, v5

    .line 87
    .line 88
    iget-object v5, v13, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    .line 89
    .line 90
    iget-object v13, v13, Lokhttp3/OkHttpClient;->u:Ljava/net/ProxySelector;

    .line 91
    .line 92
    move-object/from16 v26, v5

    .line 93
    .line 94
    move-object/from16 v25, v6

    .line 95
    .line 96
    move-object/from16 v17, v7

    .line 97
    .line 98
    move/from16 v18, v12

    .line 99
    .line 100
    move-object/from16 v27, v13

    .line 101
    .line 102
    move-object/from16 v19, v14

    .line 103
    .line 104
    move-object/from16 v20, v15

    .line 105
    .line 106
    invoke-direct/range {v16 .. v27}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v5, v16

    .line 110
    .line 111
    iget-object v6, v3, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/EventListener$Companion$NONE$1;

    .line 112
    .line 113
    invoke-direct {v0, v11, v5, v3, v6}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, v3, Lokhttp3/internal/connection/RealCall;->q:Lokhttp3/internal/connection/ExchangeFinder;

    .line 117
    .line 118
    :cond_2
    :try_start_1
    iget-boolean v0, v3, Lokhttp3/internal/connection/RealCall;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    if-nez v0, :cond_c

    .line 121
    .line 122
    :try_start_2
    invoke-virtual {v2, v4}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 123
    .line 124
    .line 125
    move-result-object v0
    :try_end_2
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v9, :cond_3

    .line 127
    .line 128
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v9}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const/4 v5, 0x0

    .line 137
    iput-object v5, v4, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 138
    .line 139
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iget-object v5, v4, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 144
    .line 145
    if-nez v5, :cond_4

    .line 146
    .line 147
    iput-object v4, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 148
    .line 149
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :cond_3
    move-object v9, v0

    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    const/4 v5, 0x1

    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :cond_4
    const-string v0, "priorResponse.body != null"

    .line 160
    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :goto_2
    iget-object v0, v3, Lokhttp3/internal/connection/RealCall;->s:Lokhttp3/internal/connection/Exchange;

    .line 168
    .line 169
    invoke-virtual {v1, v9, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;

    .line 170
    .line 171
    .line 172
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-nez v4, :cond_5

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->e(Z)V

    .line 177
    .line 178
    .line 179
    return-object v9

    .line 180
    :cond_5
    :try_start_4
    iget-object v0, v9, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-static {v0}, Lokhttp3/internal/Util;->b(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    .line 186
    .line 187
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 188
    .line 189
    const/16 v0, 0x14

    .line 190
    .line 191
    if-gt v10, v0, :cond_7

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->e(Z)V

    .line 195
    .line 196
    .line 197
    const/4 v0, 0x1

    .line 198
    :goto_3
    const/4 v6, 0x0

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v2, "Too many follow-up requests: "

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    instance-of v5, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 226
    .line 227
    const/4 v6, 0x1

    .line 228
    xor-int/2addr v5, v6

    .line 229
    invoke-virtual {v1, v0, v3, v4, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_8

    .line 234
    .line 235
    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    invoke-virtual {v3, v6}, Lokhttp3/internal/connection/RealCall;->e(Z)V

    .line 240
    .line 241
    .line 242
    const/4 v0, 0x0

    .line 243
    goto :goto_3

    .line 244
    :cond_8
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_9

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Ljava/lang/Exception;

    .line 259
    .line 260
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_9
    throw v0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    iget-object v5, v0, Lokhttp3/internal/connection/RouteException;->k:Ljava/io/IOException;

    .line 267
    .line 268
    const/4 v6, 0x0

    .line 269
    invoke-virtual {v1, v5, v3, v4, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z

    .line 270
    .line 271
    .line 272
    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    iget-object v0, v0, Lokhttp3/internal/connection/RouteException;->j:Ljava/io/IOException;

    .line 274
    .line 275
    if-eqz v5, :cond_a

    .line 276
    .line 277
    :try_start_7
    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 281
    const/4 v5, 0x1

    .line 282
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->e(Z)V

    .line 283
    .line 284
    .line 285
    move v0, v6

    .line 286
    goto :goto_3

    .line 287
    :cond_a
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_b

    .line 299
    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Ljava/lang/Exception;

    .line 305
    .line 306
    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_b
    throw v0

    .line 311
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 312
    .line 313
    const-string v1, "Canceled"

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 319
    :goto_6
    invoke-virtual {v3, v5}, Lokhttp3/internal/connection/RealCall;->e(Z)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_d
    :try_start_9
    const-string v0, "Check failed."

    .line 324
    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1

    .line 331
    :catchall_1
    move-exception v0

    .line 332
    goto :goto_7

    .line 333
    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 334
    .line 335
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 336
    .line 337
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 341
    :goto_7
    monitor-exit v3

    .line 342
    throw v0

    .line 343
    :cond_f
    const-string v0, "Check failed."

    .line 344
    .line 345
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const/16 v28, 0x0

    .line 349
    .line 350
    return-object v28
.end method

.method public final b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->f:Lokhttp3/internal/connection/RealConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lokhttp3/Response;->m:I

    .line 13
    .line 14
    iget-object v3, p1, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 15
    .line 16
    iget-object v3, v3, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const/16 v6, 0x134

    .line 21
    .line 22
    const/16 v7, 0x133

    .line 23
    .line 24
    if-eq v2, v7, :cond_c

    .line 25
    .line 26
    if-eq v2, v6, :cond_c

    .line 27
    .line 28
    const/16 v8, 0x191

    .line 29
    .line 30
    if-eq v2, v8, :cond_b

    .line 31
    .line 32
    const/16 v8, 0x1a5

    .line 33
    .line 34
    if-eq v2, v8, :cond_9

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_7

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_5

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->o:Z

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object p0, p1, Lokhttp3/Response;->s:Lokhttp3/Response;

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    iget p0, p0, Lokhttp3/Response;->m:I

    .line 66
    .line 67
    if-ne p0, p2, :cond_3

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_3
    invoke-static {p1, v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-lez p0, :cond_4

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_4
    iget-object p0, p1, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p2, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 92
    .line 93
    if-ne p2, v0, :cond_6

    .line 94
    .line 95
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 96
    .line 97
    iget-object p0, p0, Lokhttp3/OkHttpClient;->v:Lokhttp3/Authenticator;

    .line 98
    .line 99
    invoke-interface {p0, v1, p1}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    .line 105
    .line 106
    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_7
    iget-object p0, p1, Lokhttp3/Response;->s:Lokhttp3/Response;

    .line 113
    .line 114
    if-eqz p0, :cond_8

    .line 115
    .line 116
    iget p0, p0, Lokhttp3/Response;->m:I

    .line 117
    .line 118
    if-ne p0, p2, :cond_8

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_8
    const p0, 0x7fffffff

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_11

    .line 130
    .line 131
    iget-object p0, p1, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_9
    if-eqz p2, :cond_11

    .line 135
    .line 136
    iget-object p0, p2, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 137
    .line 138
    iget-object p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 139
    .line 140
    iget-object p0, p0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 141
    .line 142
    iget-object p0, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->f:Lokhttp3/internal/connection/RealConnection;

    .line 145
    .line 146
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 147
    .line 148
    iget-object v1, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 149
    .line 150
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 151
    .line 152
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_a

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_a
    iget-object p0, p2, Lokhttp3/internal/connection/Exchange;->f:Lokhttp3/internal/connection/RealConnection;

    .line 162
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iput-boolean v5, p0, Lokhttp3/internal/connection/RealConnection;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    monitor-exit p0

    .line 167
    iget-object p0, p1, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 168
    .line 169
    return-object p0

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p1

    .line 173
    :cond_b
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 174
    .line 175
    iget-object p0, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    .line 176
    .line 177
    invoke-interface {p0, v1, p1}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 183
    .line 184
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 185
    .line 186
    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->q:Z

    .line 187
    .line 188
    if-nez v1, :cond_d

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_d
    const-string v1, "Location"

    .line 192
    .line 193
    invoke-static {v1, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v2, p1, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 198
    .line 199
    if-nez v1, :cond_e

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_e
    iget-object v8, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    :try_start_2
    new-instance v9, Lokhttp3/HttpUrl$Builder;

    .line 208
    .line 209
    invoke-direct {v9}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v8, v1}, Lokhttp3/HttpUrl$Builder;->b(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catch_0
    move-object v9, v0

    .line 217
    :goto_1
    if-eqz v9, :cond_f

    .line 218
    .line 219
    invoke-virtual {v9}, Lokhttp3/HttpUrl$Builder;->a()Lokhttp3/HttpUrl;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    goto :goto_2

    .line 224
    :cond_f
    move-object v1, v0

    .line 225
    :goto_2
    if-nez v1, :cond_10

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_10
    iget-object v8, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v9, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 231
    .line 232
    iget-object v9, v9, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-nez v8, :cond_12

    .line 239
    .line 240
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->r:Z

    .line 241
    .line 242
    if-nez p0, :cond_12

    .line 243
    .line 244
    :cond_11
    :goto_3
    return-object v0

    .line 245
    :cond_12
    invoke-virtual {v2}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_17

    .line 254
    .line 255
    iget p1, p1, Lokhttp3/Response;->m:I

    .line 256
    .line 257
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-nez v8, :cond_13

    .line 262
    .line 263
    if-eq p1, v6, :cond_13

    .line 264
    .line 265
    if-ne p1, v7, :cond_14

    .line 266
    .line 267
    :cond_13
    move v4, v5

    .line 268
    :cond_14
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-nez p2, :cond_15

    .line 273
    .line 274
    if-eq p1, v6, :cond_15

    .line 275
    .line 276
    if-eq p1, v7, :cond_15

    .line 277
    .line 278
    const-string p1, "GET"

    .line 279
    .line 280
    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_15
    if-eqz v4, :cond_16

    .line 285
    .line 286
    iget-object v0, v2, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 287
    .line 288
    :cond_16
    invoke-virtual {p0, v3, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 289
    .line 290
    .line 291
    :goto_4
    if-nez v4, :cond_17

    .line 292
    .line 293
    const-string p1, "Transfer-Encoding"

    .line 294
    .line 295
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 296
    .line 297
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string p1, "Content-Length"

    .line 301
    .line 302
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 303
    .line 304
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string p1, "Content-Type"

    .line 308
    .line 309
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 310
    .line 311
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_17
    iget-object p1, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 315
    .line 316
    invoke-static {p1, v1}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_18

    .line 321
    .line 322
    const-string p1, "Authorization"

    .line 323
    .line 324
    iget-object p2, p0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 325
    .line 326
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_18
    iput-object v1, p0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 330
    .line 331
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->o:Z

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    if-eqz p4, :cond_1

    .line 11
    .line 12
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    return p3

    .line 17
    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    return p3

    .line 22
    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    .line 27
    .line 28
    if-eqz p0, :cond_10

    .line 29
    .line 30
    if-nez p4, :cond_10

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    instance-of p0, p0, Ljava/security/cert/CertificateException;

    .line 42
    .line 43
    if-eqz p0, :cond_4

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 48
    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    return p3

    .line 52
    :cond_5
    :goto_0
    iget-object p0, p2, Lokhttp3/internal/connection/RealCall;->q:Lokhttp3/internal/connection/ExchangeFinder;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->g:I

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    if-nez p1, :cond_6

    .line 61
    .line 62
    iget p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->h:I

    .line 63
    .line 64
    if-nez p4, :cond_6

    .line 65
    .line 66
    iget p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->i:I

    .line 67
    .line 68
    if-nez p4, :cond_6

    .line 69
    .line 70
    move p0, p3

    .line 71
    goto :goto_4

    .line 72
    :cond_6
    iget-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 73
    .line 74
    if-eqz p4, :cond_7

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_7
    const/4 p4, 0x0

    .line 78
    if-gt p1, p2, :cond_c

    .line 79
    .line 80
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->h:I

    .line 81
    .line 82
    if-gt p1, p2, :cond_c

    .line 83
    .line 84
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->i:I

    .line 85
    .line 86
    if-lez p1, :cond_8

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_8
    iget-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 90
    .line 91
    iget-object p1, p1, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 92
    .line 93
    if-nez p1, :cond_9

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_9
    monitor-enter p1

    .line 97
    :try_start_0
    iget v0, p1, Lokhttp3/internal/connection/RealConnection;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    monitor-exit p1

    .line 102
    goto :goto_1

    .line 103
    :cond_a
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 104
    .line 105
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 106
    .line 107
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 108
    .line 109
    iget-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 110
    .line 111
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 112
    .line 113
    invoke-static {v0, v1}, Lokhttp3/internal/Util;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 114
    .line 115
    .line 116
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-nez v0, :cond_b

    .line 118
    .line 119
    monitor-exit p1

    .line 120
    goto :goto_1

    .line 121
    :cond_b
    :try_start_2
    iget-object p4, p1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    monitor-exit p1

    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    monitor-exit p1

    .line 127
    throw p0

    .line 128
    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    .line 129
    .line 130
    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 131
    .line 132
    :goto_2
    move p0, p2

    .line 133
    goto :goto_4

    .line 134
    :cond_d
    iget-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->e:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 135
    .line 136
    if-eqz p1, :cond_e

    .line 137
    .line 138
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector$Selection;->a()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-ne p1, p2, :cond_e

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_e
    iget-object p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->f:Lokhttp3/internal/connection/RouteSelector;

    .line 146
    .line 147
    if-nez p0, :cond_f

    .line 148
    .line 149
    :goto_3
    goto :goto_2

    .line 150
    :cond_f
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    :goto_4
    if-nez p0, :cond_11

    .line 155
    .line 156
    :cond_10
    :goto_5
    return p3

    .line 157
    :cond_11
    return p2
.end method
