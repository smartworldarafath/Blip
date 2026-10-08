.class public final Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/network/NetworkClient;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->n:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/io/Closeable;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v6

    .line 61
    :cond_2
    iget-object p0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->m:Lkotlin/jvm/functions/Function2;

    .line 62
    .line 63
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    iget-object p0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->n:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lokhttp3/Call$Factory;

    .line 71
    .line 72
    iget-object p2, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->m:Lkotlin/jvm/functions/Function2;

    .line 73
    .line 74
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->m:Lkotlin/jvm/functions/Function2;

    .line 82
    .line 83
    iput-object p0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->n:Ljava/lang/Object;

    .line 84
    .line 85
    iput v5, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt;->b(Lcoil3/network/NetworkRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lokhttp3/Request;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    if-ne p3, v1, :cond_5

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_5
    :goto_1
    check-cast p3, Lokhttp3/Request;

    .line 96
    .line 97
    check-cast p0, Lokhttp3/OkHttpClient;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance p1, Lokhttp3/internal/connection/RealCall;

    .line 106
    .line 107
    invoke-direct {p1, p0, p3}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 108
    .line 109
    .line 110
    iput-object p2, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->m:Lkotlin/jvm/functions/Function2;

    .line 111
    .line 112
    iput-object v6, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->n:Ljava/lang/Object;

    .line 113
    .line 114
    iput v4, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 115
    .line 116
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v2, v5, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 129
    .line 130
    invoke-direct {v4, p1}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;-><init>(Lokhttp3/internal/connection/RealCall;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->x(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    new-instance v4, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;

    .line 137
    .line 138
    invoke-direct {v4, v2}, Lcoil3/network/okhttp/internal/CallsKt$await$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 139
    .line 140
    .line 141
    iget-object v7, p1, Lokhttp3/internal/connection/RealCall;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    invoke-virtual {v7, v8, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_d

    .line 149
    .line 150
    sget-object v5, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 151
    .line 152
    sget-object v5, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 153
    .line 154
    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform;->g()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iput-object v5, p1, Lokhttp3/internal/connection/RealCall;->p:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v5, p1, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/EventListener$Companion$NONE$1;

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/Dispatcher;

    .line 166
    .line 167
    new-instance v5, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 168
    .line 169
    invoke-direct {v5, p1, v4}, Lokhttp3/internal/connection/RealCall$AsyncCall;-><init>(Lokhttp3/internal/connection/RealCall;Lcoil3/network/okhttp/internal/CallsKt$await$2$2;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iget-object p1, p0, Lokhttp3/Dispatcher;->b:Ljava/util/ArrayDeque;

    .line 177
    .line 178
    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object p1, p3, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 182
    .line 183
    iget-object p1, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 184
    .line 185
    iget-object p3, p0, Lokhttp3/Dispatcher;->c:Ljava/util/ArrayDeque;

    .line 186
    .line 187
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_7

    .line 196
    .line 197
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 202
    .line 203
    iget-object v7, v4, Lokhttp3/internal/connection/RealCall$AsyncCall;->l:Lokhttp3/internal/connection/RealCall;

    .line 204
    .line 205
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->k:Lokhttp3/Request;

    .line 206
    .line 207
    iget-object v7, v7, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 208
    .line 209
    iget-object v7, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_6

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_7
    iget-object p3, p0, Lokhttp3/Dispatcher;->b:Ljava/util/ArrayDeque;

    .line 219
    .line 220
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Lokhttp3/internal/connection/RealCall$AsyncCall;

    .line 235
    .line 236
    iget-object v7, v4, Lokhttp3/internal/connection/RealCall$AsyncCall;->l:Lokhttp3/internal/connection/RealCall;

    .line 237
    .line 238
    iget-object v7, v7, Lokhttp3/internal/connection/RealCall;->k:Lokhttp3/Request;

    .line 239
    .line 240
    iget-object v7, v7, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 241
    .line 242
    iget-object v7, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_9
    move-object v4, v6

    .line 252
    :goto_2
    if-eqz v4, :cond_a

    .line 253
    .line 254
    iget-object p1, v4, Lokhttp3/internal/connection/RealCall$AsyncCall;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    .line 256
    iput-object p1, v5, Lokhttp3/internal/connection/RealCall$AsyncCall;->k:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 257
    .line 258
    :cond_a
    monitor-exit p0

    .line 259
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->b()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 267
    .line 268
    if-ne p3, v1, :cond_b

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_b
    move-object p0, p2

    .line 272
    :goto_3
    move-object p1, p3

    .line 273
    check-cast p1, Ljava/io/Closeable;

    .line 274
    .line 275
    :try_start_2
    move-object p2, p1

    .line 276
    check-cast p2, Lokhttp3/Response;

    .line 277
    .line 278
    invoke-static {p2}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClientKt;->a(Lokhttp3/Response;)Lcoil3/network/NetworkResponse;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    iput-object v6, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->m:Lkotlin/jvm/functions/Function2;

    .line 283
    .line 284
    iput-object p1, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->n:Ljava/lang/Object;

    .line 285
    .line 286
    iput v3, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient$executeRequest$1;->p:I

    .line 287
    .line 288
    invoke-interface {p0, p2, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    if-ne p3, v1, :cond_c

    .line 293
    .line 294
    :goto_4
    return-object v1

    .line 295
    :cond_c
    move-object p0, p1

    .line 296
    :goto_5
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 297
    .line 298
    .line 299
    return-object p3

    .line 300
    :catchall_1
    move-exception p0

    .line 301
    move-object v9, p1

    .line 302
    move-object p1, p0

    .line 303
    move-object p0, v9

    .line 304
    :goto_6
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 305
    :catchall_2
    move-exception p2

    .line 306
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 307
    .line 308
    .line 309
    throw p2

    .line 310
    :catchall_3
    move-exception p1

    .line 311
    monitor-exit p0

    .line 312
    throw p1

    .line 313
    :cond_d
    const-string p0, "Already Executed"

    .line 314
    .line 315
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-object v6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 8
    .line 9
    iget-object p1, p1, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 10
    .line 11
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 12
    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CallFactoryNetworkClient(callFactory="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
