.class public final Lcoil3/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/NetworkFetcher$Factory;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcoil3/request/Options;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/InitializedLazyImpl;

.field public final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcoil3/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/InitializedLazyImpl;Lkotlin/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/network/NetworkFetcher;->c:Lkotlin/Lazy;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/network/NetworkFetcher;->f:Lkotlin/InitializedLazyImpl;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/network/NetworkFetcher;->g:Lkotlin/Lazy;

    .line 17
    .line 18
    return-void
.end method

.method public static final b(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v6, v2, Lcoil3/network/NetworkFetcher;->c:Lkotlin/Lazy;

    .line 6
    .line 7
    iget-object v1, v2, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v2, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 10
    .line 11
    instance-of v4, v0, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v4, v0

    .line 16
    check-cast v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 17
    .line 18
    iget v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v5, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v5, v7

    .line 27
    iput v5, v4, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 28
    .line 29
    :goto_0
    move-object v7, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$1;

    .line 32
    .line 33
    invoke-direct {v4, v2, v0}, Lcoil3/network/NetworkFetcher$doFetch$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->o:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    iget v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const/4 v10, 0x2

    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    if-eq v4, v5, :cond_3

    .line 50
    .line 51
    if-eq v4, v10, :cond_2

    .line 52
    .line 53
    if-ne v4, v9, :cond_1

    .line 54
    .line 55
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    .line 58
    .line 59
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v11

    .line 75
    :cond_2
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    check-cast v1, Lcoil3/network/CacheStrategy$ReadResult;

    .line 78
    .line 79
    iget-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    .line 81
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    iget-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 87
    .line 88
    iget-object v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    .line 92
    .line 93
    move-object v12, v4

    .line 94
    move-object v4, v5

    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :catch_1
    move-exception v0

    .line 98
    move-object v1, v5

    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v3, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    .line 110
    .line 111
    iget-boolean v0, v0, Lcoil3/request/CachePolicy;->j:Z

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    iget-object v0, v2, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    .line 116
    .line 117
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcoil3/disk/DiskCache;

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    iget-object v12, v3, Lcoil3/request/Options;->e:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v12, :cond_5

    .line 128
    .line 129
    move-object v12, v1

    .line 130
    :cond_5
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 131
    .line 132
    invoke-virtual {v0, v12}, Lcoil3/disk/RealDiskCache;->b(Ljava/lang/String;)Lcoil3/disk/DiskCache$Snapshot;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move-object v0, v11

    .line 138
    :goto_2
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 139
    .line 140
    :try_start_3
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 141
    .line 142
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v13, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v13, Lcoil3/disk/DiskCache$Snapshot;

    .line 154
    .line 155
    invoke-interface {v13}, Lcoil3/disk/DiskCache$Snapshot;->e()Lokio/Path;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v0, v13}, Lokio/FileSystem;->O(Lokio/Path;)Lokio/FileMetadata;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lokio/FileMetadata;->d:Ljava/lang/Long;

    .line 164
    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 169
    .line 170
    .line 171
    move-result-wide v13

    .line 172
    const-wide/16 v15, 0x0

    .line 173
    .line 174
    cmp-long v0, v13, v15

    .line 175
    .line 176
    if-nez v0, :cond_8

    .line 177
    .line 178
    new-instance v0, Lcoil3/fetch/SourceFetchResult;

    .line 179
    .line 180
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Lcoil3/disk/DiskCache$Snapshot;

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Lcoil3/network/NetworkFetcher;->i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v1, v11}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v3, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 193
    .line 194
    invoke-direct {v0, v2, v1, v3}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 195
    .line 196
    .line 197
    return-object v0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    move-object v1, v4

    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :cond_8
    :goto_3
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Lcoil3/disk/DiskCache$Snapshot;

    .line 205
    .line 206
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkFetcher;->j(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 211
    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    iget-object v0, v2, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    .line 215
    .line 216
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcoil3/network/CacheStrategy;

    .line 221
    .line 222
    iget-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v13, Lcoil3/network/NetworkResponse;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    .line 227
    .line 228
    .line 229
    iput-object v4, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 230
    .line 231
    iput-object v12, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 232
    .line 233
    iput v5, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 234
    .line 235
    check-cast v0, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    new-instance v0, Lcoil3/network/CacheStrategy$ReadResult;

    .line 241
    .line 242
    invoke-direct {v0, v13}, Lcoil3/network/CacheStrategy$ReadResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 243
    .line 244
    .line 245
    if-ne v0, v8, :cond_9

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_9
    :goto_4
    check-cast v0, Lcoil3/network/CacheStrategy$ReadResult;

    .line 250
    .line 251
    iget-object v5, v0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkResponse;

    .line 252
    .line 253
    if-eqz v5, :cond_a

    .line 254
    .line 255
    invoke-static {v5}, Lcoil3/network/NetworkFetcher;->h(Lcoil3/network/NetworkResponse;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Lcoil3/fetch/SourceFetchResult;

    .line 259
    .line 260
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v5, Lcoil3/disk/DiskCache$Snapshot;

    .line 263
    .line 264
    invoke-virtual {v2, v5}, Lcoil3/network/NetworkFetcher;->i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    iget-object v0, v0, Lcoil3/network/CacheStrategy$ReadResult;->a:Lcoil3/network/NetworkResponse;

    .line 269
    .line 270
    iget-object v0, v0, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders;->a()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v1, v0}, Lcoil3/network/NetworkFetcher;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sget-object v1, Lcoil3/decode/DataSource;->l:Lcoil3/decode/DataSource;

    .line 281
    .line 282
    invoke-direct {v3, v2, v0, v1}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 283
    .line 284
    .line 285
    return-object v3

    .line 286
    :cond_a
    move-object v1, v4

    .line 287
    :try_start_4
    iget-object v0, v3, Lcoil3/request/Options;->i:Lcoil3/request/CachePolicy;

    .line 288
    .line 289
    iget-boolean v0, v0, Lcoil3/request/CachePolicy;->j:Z

    .line 290
    .line 291
    if-eqz v0, :cond_c

    .line 292
    .line 293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_b

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_b
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    .line 309
    .line 310
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_c
    :goto_5
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    move-object v13, v0

    .line 323
    check-cast v13, Lcoil3/network/NetworkClient;

    .line 324
    .line 325
    new-instance v0, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;

    .line 326
    .line 327
    const/4 v5, 0x0

    .line 328
    move-object v3, v12

    .line 329
    invoke-direct/range {v0 .. v5}, Lcoil3/network/NetworkFetcher$doFetch$fetchResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkFetcher;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil3/network/NetworkRequest;Lkotlin/coroutines/Continuation;)V

    .line 330
    .line 331
    .line 332
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 333
    .line 334
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 335
    .line 336
    iput v10, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 337
    .line 338
    check-cast v13, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 339
    .line 340
    iget-object v3, v13, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 341
    .line 342
    invoke-static {v3, v4, v0, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-ne v0, v8, :cond_d

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_d
    :goto_6
    check-cast v0, Lcoil3/fetch/SourceFetchResult;

    .line 350
    .line 351
    if-nez v0, :cond_f

    .line 352
    .line 353
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lcoil3/network/NetworkClient;

    .line 358
    .line 359
    invoke-virtual {v2}, Lcoil3/network/NetworkFetcher;->g()Lcoil3/network/NetworkRequest;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    new-instance v4, Lcoil3/network/NetworkFetcher$doFetch$2;

    .line 364
    .line 365
    invoke-direct {v4, v2, v11}, Lcoil3/network/NetworkFetcher$doFetch$2;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)V

    .line 366
    .line 367
    .line 368
    iput-object v1, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 369
    .line 370
    iput-object v11, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 371
    .line 372
    iput v9, v7, Lcoil3/network/NetworkFetcher$doFetch$1;->q:I

    .line 373
    .line 374
    check-cast v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    .line 375
    .line 376
    iget-object v0, v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a:Lokhttp3/OkHttpClient;

    .line 377
    .line 378
    invoke-static {v0, v3, v4, v7}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;->a(Lokhttp3/OkHttpClient;Lcoil3/network/NetworkRequest;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-ne v0, v8, :cond_e

    .line 383
    .line 384
    :goto_7
    return-object v8

    .line 385
    :cond_e
    :goto_8
    check-cast v0, Lcoil3/fetch/SourceFetchResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 386
    .line 387
    :cond_f
    return-object v0

    .line 388
    :goto_9
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v1, Lcoil3/disk/DiskCache$Snapshot;

    .line 391
    .line 392
    if-eqz v1, :cond_10

    .line 393
    .line 394
    :try_start_5
    invoke-static {v1}, Ljb;->l(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 395
    .line 396
    .line 397
    goto :goto_a

    .line 398
    :catch_3
    move-exception v0

    .line 399
    throw v0

    .line 400
    :catch_4
    :cond_10
    :goto_a
    throw v0
.end method

.method public static final c(Lcoil3/network/NetworkFetcher;Lcoil3/network/NetworkResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 10
    .line 11
    iget v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->p:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->p:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcoil3/network/NetworkFetcher$toImageSource$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lcoil3/network/NetworkFetcher$toImageSource$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->n:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    iget v2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->p:I

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->m:Lokio/Buffer;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lokio/Buffer;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p2, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->m:Lokio/Buffer;

    .line 61
    .line 62
    iput v4, v0, Lcoil3/network/NetworkFetcher$toImageSource$1;->p:I

    .line 63
    .line 64
    check-cast p1, Lcoil3/network/SourceResponseBody;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcoil3/network/SourceResponseBody;->B0(Lokio/Buffer;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    if-ne p1, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    move-object p1, p2

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p2, Lcoil3/decode/SourceImageSource;

    .line 80
    .line 81
    invoke-direct {p2, p1, p0, v3}, Lcoil3/decode/SourceImageSource;-><init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V

    .line 82
    .line 83
    .line 84
    return-object p2
.end method

.method public static final d(Lcoil3/network/NetworkFetcher;Lcoil3/disk/DiskCache$Snapshot;Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 15
    .line 16
    instance-of v6, v4, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    move-object v6, v4

    .line 21
    check-cast v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 22
    .line 23
    iget v7, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->s:I

    .line 24
    .line 25
    const/high16 v8, -0x80000000

    .line 26
    .line 27
    and-int v9, v7, v8

    .line 28
    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    sub-int/2addr v7, v8

    .line 32
    iput v7, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->s:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;

    .line 36
    .line 37
    invoke-direct {v6, v1, v4}, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;-><init>(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v4, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->q:Ljava/lang/Object;

    .line 41
    .line 42
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    iget v8, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->s:I

    .line 45
    .line 46
    const/4 v9, 0x2

    .line 47
    const/4 v10, 0x1

    .line 48
    const/4 v11, 0x0

    .line 49
    if-eqz v8, :cond_3

    .line 50
    .line 51
    if-eq v8, v10, :cond_2

    .line 52
    .line 53
    if-ne v8, v9, :cond_1

    .line 54
    .line 55
    iget-object v0, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->p:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v1, v0

    .line 58
    check-cast v1, Lcoil3/disk/DiskCache$Editor;

    .line 59
    .line 60
    iget-object v2, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->o:Lcoil3/network/NetworkResponse;

    .line 61
    .line 62
    iget-object v3, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->n:Lcoil3/network/NetworkResponse;

    .line 63
    .line 64
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_e

    .line 68
    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_12

    .line 71
    .line 72
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v11

    .line 78
    :cond_2
    iget-object v0, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->n:Lcoil3/network/NetworkResponse;

    .line 79
    .line 80
    iget-object v2, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->m:Lcoil3/disk/DiskCache$Snapshot;

    .line 81
    .line 82
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object v3, v0

    .line 86
    move-object v0, v2

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v5, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    .line 93
    .line 94
    iget-boolean v4, v4, Lcoil3/request/CachePolicy;->k:Z

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    if-eqz v0, :cond_e

    .line 99
    .line 100
    :try_start_1
    invoke-static {v0}, Ljb;->l(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    :catch_1
    return-object v11

    .line 104
    :catch_2
    move-exception v0

    .line 105
    throw v0

    .line 106
    :cond_4
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->e:Lkotlin/Lazy;

    .line 107
    .line 108
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Lcoil3/network/CacheStrategy;

    .line 113
    .line 114
    iput-object v0, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->m:Lcoil3/disk/DiskCache$Snapshot;

    .line 115
    .line 116
    iput-object v3, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->n:Lcoil3/network/NetworkResponse;

    .line 117
    .line 118
    iput v10, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->s:I

    .line 119
    .line 120
    check-cast v4, Lcoil3/network/internal/DefaultCacheStrategy;

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget v4, v3, Lcoil3/network/NetworkResponse;->a:I

    .line 126
    .line 127
    const/16 v8, 0x130

    .line 128
    .line 129
    if-ne v4, v8, :cond_6

    .line 130
    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    iget-object v2, v2, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 134
    .line 135
    iget-object v4, v3, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v8, Lcoil3/network/NetworkHeaders$Builder;

    .line 141
    .line 142
    invoke-direct {v8, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v4, Lcoil3/network/NetworkHeaders;->a:Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Ljava/util/Map$Entry;

    .line 166
    .line 167
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    check-cast v10, Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Ljava/util/List;

    .line 178
    .line 179
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 180
    .line 181
    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iget-object v12, v8, Lcoil3/network/NetworkHeaders$Builder;->a:Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    invoke-interface {v12, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_5
    invoke-virtual {v8}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    .line 199
    .line 200
    .line 201
    move-result-object v19

    .line 202
    new-instance v2, Lcoil3/network/CacheStrategy$WriteResult;

    .line 203
    .line 204
    iget v14, v3, Lcoil3/network/NetworkResponse;->a:I

    .line 205
    .line 206
    iget-wide v12, v3, Lcoil3/network/NetworkResponse;->b:J

    .line 207
    .line 208
    iget-wide v9, v3, Lcoil3/network/NetworkResponse;->c:J

    .line 209
    .line 210
    iget-object v4, v3, Lcoil3/network/NetworkResponse;->f:Ljava/lang/Object;

    .line 211
    .line 212
    move-wide v15, v12

    .line 213
    new-instance v13, Lcoil3/network/NetworkResponse;

    .line 214
    .line 215
    const/16 v20, 0x0

    .line 216
    .line 217
    move-object/from16 v21, v4

    .line 218
    .line 219
    move-wide/from16 v17, v9

    .line 220
    .line 221
    invoke-direct/range {v13 .. v21}, Lcoil3/network/NetworkResponse;-><init>(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/NetworkResponseBody;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v2, v13}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 225
    .line 226
    .line 227
    :goto_2
    move-object v4, v2

    .line 228
    goto :goto_4

    .line 229
    :cond_6
    const/16 v2, 0xc8

    .line 230
    .line 231
    if-gt v2, v4, :cond_7

    .line 232
    .line 233
    const/16 v2, 0x12c

    .line 234
    .line 235
    if-ge v4, v2, :cond_7

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_7
    sget-object v2, Lcoil3/network/internal/DefaultCacheStrategy;->b:Ljava/util/Set;

    .line 239
    .line 240
    new-instance v8, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_8

    .line 250
    .line 251
    :goto_3
    new-instance v2, Lcoil3/network/CacheStrategy$WriteResult;

    .line 252
    .line 253
    invoke-direct {v2, v3}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_8
    sget-object v2, Lcoil3/network/CacheStrategy$WriteResult;->b:Lcoil3/network/CacheStrategy$WriteResult;

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :goto_4
    if-ne v4, v7, :cond_9

    .line 261
    .line 262
    goto/16 :goto_11

    .line 263
    .line 264
    :cond_9
    :goto_5
    check-cast v4, Lcoil3/network/CacheStrategy$WriteResult;

    .line 265
    .line 266
    iget-object v2, v4, Lcoil3/network/CacheStrategy$WriteResult;->a:Lcoil3/network/NetworkResponse;

    .line 267
    .line 268
    if-nez v2, :cond_a

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_a
    if-eqz v0, :cond_b

    .line 272
    .line 273
    invoke-interface {v0}, Lcoil3/disk/DiskCache$Snapshot;->b0()Lcoil3/disk/DiskCache$Editor;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :goto_6
    move-object v4, v0

    .line 278
    goto :goto_7

    .line 279
    :cond_b
    iget-object v0, v1, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    .line 280
    .line 281
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Lcoil3/disk/DiskCache;

    .line 286
    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    iget-object v4, v5, Lcoil3/request/Options;->e:Ljava/lang/String;

    .line 290
    .line 291
    if-nez v4, :cond_c

    .line 292
    .line 293
    iget-object v4, v1, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 294
    .line 295
    :cond_c
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Lcoil3/disk/RealDiskCache;->a(Ljava/lang/String;)Lcoil3/disk/DiskCache$Editor;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_6

    .line 302
    :cond_d
    move-object v4, v11

    .line 303
    :goto_7
    if-nez v4, :cond_f

    .line 304
    .line 305
    :cond_e
    :goto_8
    return-object v11

    .line 306
    :cond_f
    :try_start_2
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-interface {v4}, Lcoil3/disk/DiskCache$Editor;->e()Lokio/Path;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    const/4 v8, 0x0

    .line 315
    invoke-virtual {v0, v5, v8}, Lokio/FileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    new-instance v5, Lokio/RealBufferedSink;

    .line 323
    .line 324
    invoke-direct {v5, v0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 325
    .line 326
    .line 327
    :try_start_3
    invoke-static {v2, v5}, Lcoil3/network/CacheNetworkResponse;->b(Lcoil3/network/NetworkResponse;Lokio/RealBufferedSink;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    .line 329
    .line 330
    :try_start_4
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    .line 332
    .line 333
    move-object v0, v11

    .line 334
    goto :goto_a

    .line 335
    :catchall_0
    move-exception v0

    .line 336
    goto :goto_a

    .line 337
    :catchall_1
    move-exception v0

    .line 338
    move-object v9, v0

    .line 339
    :try_start_5
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :catchall_2
    move-exception v0

    .line 344
    :try_start_6
    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    :goto_9
    move-object v0, v9

    .line 348
    :goto_a
    if-nez v0, :cond_13

    .line 349
    .line 350
    iget-object v0, v2, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    .line 351
    .line 352
    if-eqz v0, :cond_12

    .line 353
    .line 354
    invoke-virtual {v1}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v4}, Lcoil3/disk/DiskCache$Editor;->g()Lokio/Path;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    iput-object v11, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->m:Lcoil3/disk/DiskCache$Snapshot;

    .line 363
    .line 364
    iput-object v3, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->n:Lcoil3/network/NetworkResponse;

    .line 365
    .line 366
    iput-object v2, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->o:Lcoil3/network/NetworkResponse;

    .line 367
    .line 368
    iput-object v4, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->p:Ljava/lang/Object;

    .line 369
    .line 370
    const/4 v9, 0x2

    .line 371
    iput v9, v6, Lcoil3/network/NetworkFetcher$writeToDiskCache$1;->s:I

    .line 372
    .line 373
    check-cast v0, Lcoil3/network/SourceResponseBody;

    .line 374
    .line 375
    iget-object v0, v0, Lcoil3/network/SourceResponseBody;->j:Lokio/BufferedSource;

    .line 376
    .line 377
    invoke-virtual {v1, v5, v8}, Lokio/FileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    new-instance v5, Lokio/RealBufferedSink;

    .line 385
    .line 386
    invoke-direct {v5, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 387
    .line 388
    .line 389
    :try_start_7
    invoke-interface {v0, v5}, Lokio/BufferedSource;->S0(Lokio/BufferedSink;)J

    .line 390
    .line 391
    .line 392
    move-result-wide v0

    .line 393
    new-instance v6, Ljava/lang/Long;

    .line 394
    .line 395
    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 396
    .line 397
    .line 398
    :try_start_8
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 399
    .line 400
    .line 401
    goto :goto_d

    .line 402
    :catchall_3
    move-exception v0

    .line 403
    move-object v11, v0

    .line 404
    goto :goto_d

    .line 405
    :goto_b
    move-object v11, v0

    .line 406
    goto :goto_c

    .line 407
    :catchall_4
    move-exception v0

    .line 408
    goto :goto_b

    .line 409
    :goto_c
    :try_start_9
    invoke-virtual {v5}, Lokio/RealBufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 410
    .line 411
    .line 412
    goto :goto_d

    .line 413
    :catchall_5
    move-exception v0

    .line 414
    :try_start_a
    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 415
    .line 416
    .line 417
    :goto_d
    if-nez v11, :cond_11

    .line 418
    .line 419
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 420
    .line 421
    if-ne v0, v7, :cond_10

    .line 422
    .line 423
    goto :goto_11

    .line 424
    :cond_10
    move-object v1, v4

    .line 425
    move-object v4, v0

    .line 426
    :goto_e
    :try_start_b
    check-cast v4, Lkotlin/Unit;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 427
    .line 428
    goto :goto_10

    .line 429
    :cond_11
    :try_start_c
    throw v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 430
    :goto_f
    move-object v1, v4

    .line 431
    goto :goto_12

    .line 432
    :catch_3
    move-exception v0

    .line 433
    goto :goto_f

    .line 434
    :cond_12
    move-object v1, v4

    .line 435
    :goto_10
    :try_start_d
    invoke-interface {v1}, Lcoil3/disk/DiskCache$Editor;->a()Lcoil3/disk/DiskCache$Snapshot;

    .line 436
    .line 437
    .line 438
    move-result-object v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 439
    :goto_11
    return-object v7

    .line 440
    :cond_13
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 441
    :goto_12
    :try_start_f
    invoke-interface {v1}, Lcoil3/disk/DiskCache$Editor;->b()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 442
    .line 443
    .line 444
    :catch_4
    iget-object v1, v3, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    .line 445
    .line 446
    if-eqz v1, :cond_14

    .line 447
    .line 448
    :try_start_10
    invoke-static {v1}, Ljb;->l(Ljava/lang/AutoCloseable;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 449
    .line 450
    .line 451
    goto :goto_13

    .line 452
    :catch_5
    move-exception v0

    .line 453
    throw v0

    .line 454
    :catch_6
    :cond_14
    :goto_13
    iget-object v1, v2, Lcoil3/network/NetworkResponse;->e:Lcoil3/network/NetworkResponseBody;

    .line 455
    .line 456
    if-eqz v1, :cond_15

    .line 457
    .line 458
    :try_start_11
    invoke-static {v1}, Ljb;->l(Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 459
    .line 460
    .line 461
    goto :goto_14

    .line 462
    :catch_7
    move-exception v0

    .line 463
    throw v0

    .line 464
    :catch_8
    :cond_15
    :goto_14
    throw v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "text/plain"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lcoil3/util/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/16 p0, 0x3b

    .line 22
    .line 23
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static h(Lcoil3/network/NetworkResponse;)V
    .locals 2

    .line 1
    iget p0, p0, Lcoil3/network/NetworkResponse;->a:I

    .line 2
    .line 3
    const/16 v0, 0xc8

    .line 4
    .line 5
    if-gt v0, p0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x130

    .line 13
    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcoil3/network/HttpException;

    .line 18
    .line 19
    const-string v1, "HTTP "

    .line 20
    .line 21
    invoke-static {p0, v1}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/network/ConcurrentRequestStrategy;

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 10
    .line 11
    iget-object v1, v1, Lcoil3/request/Options;->e:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Lcoil3/network/NetworkFetcher$fetch$2;

    .line 14
    .line 15
    const-string v7, "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    const-class v5, Lcoil3/network/NetworkFetcher;

    .line 20
    .line 21
    const-string v6, "doFetch"

    .line 22
    .line 23
    move-object v4, p0

    .line 24
    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Lcoil3/network/UncoordinatedConcurrentRequestStrategy;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcoil3/network/NetworkFetcher$fetch$2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final e()Lokio/FileSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/network/NetworkFetcher;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil3/disk/DiskCache;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast v0, Lcoil3/disk/RealDiskCache;

    .line 12
    .line 13
    iget-object v0, v0, Lcoil3/disk/RealDiskCache;->a:Lokio/FileSystem;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    :goto_0
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 20
    .line 21
    iget-object p0, p0, Lcoil3/request/Options;->f:Lokio/FileSystem;

    .line 22
    .line 23
    return-object p0
.end method

.method public final g()Lcoil3/network/NetworkRequest;
    .locals 5

    .line 1
    sget-object v0, Lcoil3/network/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcoil3/network/NetworkHeaders;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcoil3/network/NetworkHeaders$Builder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lcoil3/request/Options;->h:Lcoil3/request/CachePolicy;

    .line 20
    .line 21
    iget-boolean v3, v0, Lcoil3/request/CachePolicy;->j:Z

    .line 22
    .line 23
    iget-object v4, v1, Lcoil3/request/Options;->i:Lcoil3/request/CachePolicy;

    .line 24
    .line 25
    iget-boolean v4, v4, Lcoil3/request/CachePolicy;->j:Z

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iget-object v4, p0, Lcoil3/network/NetworkFetcher;->f:Lkotlin/InitializedLazyImpl;

    .line 30
    .line 31
    iget-object v4, v4, Lkotlin/InitializedLazyImpl;->j:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Lcoil3/network/ConnectivityChecker;

    .line 34
    .line 35
    invoke-interface {v4}, Lcoil3/network/ConnectivityChecker;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, 0x0

    .line 44
    :goto_0
    if-nez v4, :cond_1

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v0, "only-if-cached, max-stale=2147483647"

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-eqz v4, :cond_3

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    iget-boolean v0, v0, Lcoil3/request/CachePolicy;->k:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string v0, "no-cache"

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "no-cache, no-store"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    if-nez v4, :cond_4

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    const-string v0, "no-cache, only-if-cached"

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Lcoil3/network/NetworkHeaders$Builder;->c(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    new-instance v0, Lcoil3/network/NetworkRequest;

    .line 84
    .line 85
    sget-object v3, Lcoil3/network/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 86
    .line 87
    invoke-static {v1, v3}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v4, Lcoil3/network/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    .line 98
    .line 99
    invoke-static {v1, v4}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_5

    .line 104
    .line 105
    iget-object v1, v1, Lcoil3/request/Options;->j:Lcoil3/Extras;

    .line 106
    .line 107
    iget-object p0, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v0, p0, v3, v2, v1}, Lcoil3/network/NetworkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcoil3/network/NetworkHeaders;Lcoil3/Extras;)V

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_5
    invoke-static {}, Lio/sentry/d;->i()V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method public final i(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/decode/FileImageSource;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcoil3/disk/DiskCache$Snapshot;->g()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->b:Lcoil3/request/Options;

    .line 10
    .line 11
    iget-object v2, v2, Lcoil3/request/Options;->e:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcoil3/network/NetworkFetcher;->a:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    const/16 p0, 0x10

    .line 18
    .line 19
    invoke-static {v0, v1, v2, p1, p0}, Lcoil3/decode/ImageSourceKt;->a(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Lcoil3/disk/DiskCache$Snapshot;I)Lcoil3/decode/FileImageSource;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final j(Lcoil3/disk/DiskCache$Snapshot;)Lcoil3/network/NetworkResponse;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcoil3/network/NetworkFetcher;->e()Lokio/FileSystem;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p1}, Lcoil3/disk/DiskCache$Snapshot;->e()Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lokio/FileSystem;->X(Lokio/Path;)Lokio/Source;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lokio/RealBufferedSource;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {p1}, Lcoil3/network/CacheNetworkResponse;->a(Lokio/RealBufferedSource;)Lcoil3/network/NetworkResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    move-object p1, v0

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :try_start_3
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_2
    move-exception p1

    .line 39
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    move-object p1, p0

    .line 43
    move-object p0, v0

    .line 44
    :goto_1
    if-nez p1, :cond_0

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    return-object v0
.end method
