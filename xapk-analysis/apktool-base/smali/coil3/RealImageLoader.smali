.class public final Lcoil3/RealImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/RealImageLoader$Options;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Lcoil3/RealImageLoader$Options;

.field public final b:Lkotlinx/coroutines/internal/ContextScope;

.field public final c:Lcoil3/request/AndroidRequestService;

.field public final d:Lcoil3/ComponentRegistry;

.field public volatile synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcoil3/RealImageLoader;

    .line 2
    .line 3
    const-string v1, "e"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader$Options;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcoil3/RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1;

    .line 11
    .line 12
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->j:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcoil3/RealImageLoader;->b:Lkotlinx/coroutines/internal/ContextScope;

    .line 28
    .line 29
    new-instance v0, Lcoil3/util/AndroidSystemCallbacks;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcoil3/util/AndroidSystemCallbacks;-><init>(Lcoil3/RealImageLoader;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcoil3/request/AndroidRequestService;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcoil3/request/AndroidRequestService;-><init>(Lcoil3/RealImageLoader;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcoil3/RealImageLoader;->c:Lcoil3/request/AndroidRequestService;

    .line 40
    .line 41
    iget-object v2, p1, Lcoil3/RealImageLoader$Options;->f:Lcoil3/ComponentRegistry;

    .line 42
    .line 43
    new-instance v3, Lcoil3/ComponentRegistry$Builder;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcoil3/ComponentRegistry$Builder;-><init>(Lcoil3/ComponentRegistry;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 49
    .line 50
    iget-object v2, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 51
    .line 52
    sget-object v4, Lcoil3/ImageLoadersKt;->a:Lcoil3/Extras$Key;

    .line 53
    .line 54
    iget-object v2, v2, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    :cond_0
    check-cast v2, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v4, v3, Lcoil3/ComponentRegistry$Builder;->d:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v5, v3, Lcoil3/ComponentRegistry$Builder;->e:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    new-instance v2, Lvc;

    .line 77
    .line 78
    const/16 v6, 0x9

    .line 79
    .line 80
    invoke-direct {v2, v6}, Lvc;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v2, Lvc;

    .line 87
    .line 88
    const/16 v6, 0xa

    .line 89
    .line 90
    invoke-direct {v2, v6}, Lvc;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_1
    new-instance v2, Lcoil3/map/AndroidUriMapper;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    const-class v6, Landroid/net/Uri;

    .line 102
    .line 103
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v3, v2, v6}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcoil3/map/ResourceIntMapper;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    const-class v6, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v3, v2, v6}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Lcoil3/key/AndroidResourceUriKeyer;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    const-class v6, Lcoil3/Uri;

    .line 130
    .line 131
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    new-instance v8, Lkotlin/Pair;

    .line 136
    .line 137
    invoke-direct {v8, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v3, Lcoil3/ComponentRegistry$Builder;->c:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance v7, Lcoil3/fetch/AssetUriFetcher$Factory;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v3, v7, v8}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Lcoil3/fetch/ContentUriFetcher$Factory;

    .line 158
    .line 159
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v3, v7, v8}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 167
    .line 168
    .line 169
    new-instance v7, Lcoil3/fetch/ResourceUriFetcher$Factory;

    .line 170
    .line 171
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v3, v7, v8}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 179
    .line 180
    .line 181
    new-instance v7, Lcoil3/fetch/DrawableFetcher$Factory;

    .line 182
    .line 183
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    const-class v8, Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v3, v7, v8}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 193
    .line 194
    .line 195
    sget-object v7, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    .line 196
    .line 197
    iget-object v7, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 198
    .line 199
    sget-object v8, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    .line 200
    .line 201
    iget-object v7, v7, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 202
    .line 203
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    if-nez v7, :cond_2

    .line 208
    .line 209
    const/4 v7, 0x4

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    :cond_2
    check-cast v7, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-static {v7}, Lkotlinx/coroutines/sync/SemaphoreKt;->a(I)Lkotlinx/coroutines/sync/Semaphore;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 225
    .line 226
    const/16 v9, 0x1d

    .line 227
    .line 228
    const/4 v10, 0x1

    .line 229
    sget-object v11, Lcoil3/decode/ExifOrientationStrategy;->a:Le8;

    .line 230
    .line 231
    if-lt v8, v9, :cond_5

    .line 232
    .line 233
    iget-object v8, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 234
    .line 235
    sget-object v9, Lcoil3/ImageLoaders_androidKt;->c:Lcoil3/Extras$Key;

    .line 236
    .line 237
    iget-object v8, v8, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    if-nez v8, :cond_3

    .line 244
    .line 245
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 246
    .line 247
    :cond_3
    check-cast v8, Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_5

    .line 254
    .line 255
    iget-object v8, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 256
    .line 257
    sget-object v9, Lcoil3/ImageLoaders_androidKt;->b:Lcoil3/Extras$Key;

    .line 258
    .line 259
    iget-object v8, v8, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 260
    .line 261
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    if-nez v8, :cond_4

    .line 266
    .line 267
    move-object v8, v11

    .line 268
    :cond_4
    check-cast v8, Lcoil3/decode/ExifOrientationStrategy;

    .line 269
    .line 270
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-eqz v8, :cond_5

    .line 275
    .line 276
    new-instance v8, Lcoil3/decode/StaticImageDecoder$Factory;

    .line 277
    .line 278
    invoke-direct {v8, v7}, Lcoil3/decode/StaticImageDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;)V

    .line 279
    .line 280
    .line 281
    new-instance v9, Lp5;

    .line 282
    .line 283
    invoke-direct {v9, v8, v10}, Lp5;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    :cond_5
    new-instance v8, Lcoil3/decode/BitmapFactoryDecoder$Factory;

    .line 290
    .line 291
    iget-object p1, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    .line 292
    .line 293
    sget-object v9, Lcoil3/ImageLoaders_androidKt;->b:Lcoil3/Extras$Key;

    .line 294
    .line 295
    iget-object p1, p1, Lcoil3/Extras;->a:Ljava/util/Map;

    .line 296
    .line 297
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-nez p1, :cond_6

    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_6
    move-object v11, p1

    .line 305
    :goto_0
    check-cast v11, Lcoil3/decode/ExifOrientationStrategy;

    .line 306
    .line 307
    invoke-direct {v8, v7, v11}, Lcoil3/decode/BitmapFactoryDecoder$Factory;-><init>(Lkotlinx/coroutines/sync/Semaphore;Lcoil3/decode/ExifOrientationStrategy;)V

    .line 308
    .line 309
    .line 310
    new-instance p1, Lp5;

    .line 311
    .line 312
    invoke-direct {p1, v8, v10}, Lp5;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    new-instance p1, Lcoil3/map/FileMapper;

    .line 319
    .line 320
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 321
    .line 322
    .line 323
    const-class v7, Ljava/io/File;

    .line 324
    .line 325
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 330
    .line 331
    .line 332
    new-instance p1, Lcoil3/fetch/JarFileFetcher$Factory;

    .line 333
    .line 334
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 342
    .line 343
    .line 344
    new-instance p1, Lcoil3/fetch/ByteBufferFetcher$Factory;

    .line 345
    .line 346
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    const-class v7, Ljava/nio/ByteBuffer;

    .line 350
    .line 351
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 356
    .line 357
    .line 358
    new-instance p1, Lcoil3/map/StringMapper;

    .line 359
    .line 360
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 361
    .line 362
    .line 363
    const-class v7, Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 370
    .line 371
    .line 372
    new-instance p1, Lcoil3/map/PathMapper;

    .line 373
    .line 374
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 375
    .line 376
    .line 377
    const-class v7, Lokio/Path;

    .line 378
    .line 379
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->b(Lcoil3/map/Mapper;Lkotlin/jvm/internal/ClassReference;)V

    .line 384
    .line 385
    .line 386
    new-instance p1, Lcoil3/key/FileUriKeyer;

    .line 387
    .line 388
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    new-instance v8, Lkotlin/Pair;

    .line 396
    .line 397
    invoke-direct {v8, p1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    new-instance p1, Lcoil3/key/UriKeyer;

    .line 404
    .line 405
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    new-instance v8, Lkotlin/Pair;

    .line 413
    .line 414
    invoke-direct {v8, p1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    new-instance p1, Lcoil3/fetch/FileUriFetcher$Factory;

    .line 421
    .line 422
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 430
    .line 431
    .line 432
    new-instance p1, Lcoil3/fetch/ByteArrayFetcher$Factory;

    .line 433
    .line 434
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 435
    .line 436
    .line 437
    const-class v7, [B

    .line 438
    .line 439
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v3, p1, v7}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 444
    .line 445
    .line 446
    new-instance p1, Lcoil3/fetch/DataUriFetcher$Factory;

    .line 447
    .line 448
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual {v3, p1, v6}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 456
    .line 457
    .line 458
    new-instance p1, Lcoil3/fetch/BitmapFetcher$Factory;

    .line 459
    .line 460
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 461
    .line 462
    .line 463
    const-class v6, Landroid/graphics/Bitmap;

    .line 464
    .line 465
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    invoke-virtual {v3, p1, v6}, Lcoil3/ComponentRegistry$Builder;->a(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V

    .line 470
    .line 471
    .line 472
    new-instance p1, Lcoil3/intercept/EngineInterceptor;

    .line 473
    .line 474
    invoke-direct {p1, p0, v0, v1}, Lcoil3/intercept/EngineInterceptor;-><init>(Lcoil3/RealImageLoader;Lcoil3/util/AndroidSystemCallbacks;Lcoil3/request/AndroidRequestService;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v3, Lcoil3/ComponentRegistry$Builder;->a:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    new-instance v6, Lcoil3/ComponentRegistry;

    .line 483
    .line 484
    invoke-static {v0}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    iget-object p1, v3, Lcoil3/ComponentRegistry$Builder;->b:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-static {p1}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-static {v2}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    invoke-static {v4}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    invoke-static {v5}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    invoke-direct/range {v6 .. v11}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 507
    .line 508
    .line 509
    iput-object v6, p0, Lcoil3/RealImageLoader;->d:Lcoil3/ComponentRegistry;

    .line 510
    .line 511
    return-void
.end method


# virtual methods
.method public final a(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 2
    .line 3
    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->c:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    new-instance v1, Lcoil3/RealImageLoader$enqueue$job$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lcoil3/RealImageLoader$enqueue$job$1;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/RealImageLoader;->b:Lkotlinx/coroutines/internal/ContextScope;

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, p0}, Lcoil3/RealImageLoader_androidKt;->a(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final b(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    instance-of v3, v1, Lcoil3/RealImageLoader$execute$3;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Lcoil3/RealImageLoader$execute$3;

    .line 15
    .line 16
    iget v4, v3, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v4, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v6

    .line 25
    iput v4, v3, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 26
    .line 27
    :goto_0
    move-object v9, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lcoil3/RealImageLoader$execute$3;

    .line 30
    .line 31
    invoke-direct {v3, v2, v1}, Lcoil3/RealImageLoader$execute$3;-><init>(Lcoil3/RealImageLoader;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v1, v9, Lcoil3/RealImageLoader$execute$3;->r:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v3, v9, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 40
    .line 41
    const/4 v11, 0x3

    .line 42
    const/4 v12, 0x2

    .line 43
    const/4 v13, 0x1

    .line 44
    const/4 v14, 0x0

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    if-eq v3, v13, :cond_3

    .line 48
    .line 49
    if-eq v3, v12, :cond_2

    .line 50
    .line 51
    if-ne v3, v11, :cond_1

    .line 52
    .line 53
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 54
    .line 55
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 56
    .line 57
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 58
    .line 59
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_11

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_15

    .line 66
    .line 67
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v14

    .line 73
    :cond_2
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->q:I

    .line 74
    .line 75
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->p:Lcoil3/Image;

    .line 76
    .line 77
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 78
    .line 79
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 80
    .line 81
    iget-object v6, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 82
    .line 83
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    move-object v7, v5

    .line 87
    move-object v5, v3

    .line 88
    move-object v8, v6

    .line 89
    :goto_2
    move-object v3, v7

    .line 90
    move v7, v0

    .line 91
    goto/16 :goto_f

    .line 92
    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object v3, v4

    .line 95
    move-object v4, v5

    .line 96
    move-object v5, v6

    .line 97
    goto/16 :goto_15

    .line 98
    .line 99
    :cond_3
    iget v0, v9, Lcoil3/RealImageLoader$execute$3;->q:I

    .line 100
    .line 101
    iget-object v3, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 102
    .line 103
    iget-object v4, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 104
    .line 105
    iget-object v5, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 106
    .line 107
    :try_start_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    goto/16 :goto_e

    .line 111
    .line 112
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v9, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->d(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    move v1, v13

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 129
    :goto_3
    iget-object v15, v2, Lcoil3/RealImageLoader;->c:Lcoil3/request/AndroidRequestService;

    .line 130
    .line 131
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v3, v5, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 135
    .line 136
    instance-of v4, v3, Lcoil3/target/ViewTarget;

    .line 137
    .line 138
    if-eqz v4, :cond_7

    .line 139
    .line 140
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    .line 141
    .line 142
    invoke-static {v5, v1}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Landroidx/lifecycle/Lifecycle;

    .line 147
    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    invoke-static {v5}, Lcoil3/request/AndroidRequestService;->a(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :cond_6
    move-object v7, v1

    .line 155
    move-object v1, v3

    .line 156
    new-instance v3, Lcoil3/request/ViewTargetRequestDelegate;

    .line 157
    .line 158
    iget-object v4, v15, Lcoil3/request/AndroidRequestService;->a:Lcoil3/RealImageLoader;

    .line 159
    .line 160
    move-object v6, v1

    .line 161
    check-cast v6, Lcoil3/target/ViewTarget;

    .line 162
    .line 163
    invoke-direct/range {v3 .. v8}, Lcoil3/request/ViewTargetRequestDelegate;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 164
    .line 165
    .line 166
    move-object v1, v3

    .line 167
    goto :goto_5

    .line 168
    :cond_7
    sget-object v3, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    .line 169
    .line 170
    invoke-static {v5, v3}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Landroidx/lifecycle/Lifecycle;

    .line 175
    .line 176
    if-nez v3, :cond_9

    .line 177
    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    invoke-static {v5}, Lcoil3/request/AndroidRequestService;->a(Lcoil3/request/ImageRequest;)Landroidx/lifecycle/Lifecycle;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto :goto_4

    .line 185
    :cond_8
    move-object v3, v14

    .line 186
    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 187
    .line 188
    new-instance v1, Lcoil3/request/LifecycleRequestDelegate;

    .line 189
    .line 190
    invoke-direct {v1, v3, v8}, Lcoil3/request/LifecycleRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    new-instance v1, Lcoil3/request/BaseRequestDelegate;

    .line 195
    .line 196
    invoke-direct {v1, v8}, Lcoil3/request/BaseRequestDelegate;-><init>(Lkotlinx/coroutines/Job;)V

    .line 197
    .line 198
    .line 199
    :goto_5
    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->b()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v5}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    iget-object v4, v5, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 210
    .line 211
    iget-object v6, v15, Lcoil3/request/AndroidRequestService;->a:Lcoil3/RealImageLoader;

    .line 212
    .line 213
    iget-object v6, v6, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 214
    .line 215
    iget-object v6, v6, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 216
    .line 217
    iput-object v6, v3, Lcoil3/request/ImageRequest$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 218
    .line 219
    iget-object v6, v5, Lcoil3/request/ImageRequest;->s:Lcoil3/request/ImageRequest$Defined;

    .line 220
    .line 221
    iget-object v7, v6, Lcoil3/request/ImageRequest$Defined;->g:Lcoil3/size/SizeResolver;

    .line 222
    .line 223
    if-nez v7, :cond_e

    .line 224
    .line 225
    instance-of v8, v4, Lcoil3/target/ViewTarget;

    .line 226
    .line 227
    if-eqz v8, :cond_d

    .line 228
    .line 229
    move-object v8, v4

    .line 230
    check-cast v8, Lcoil3/target/ViewTarget;

    .line 231
    .line 232
    invoke-interface {v8}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    instance-of v15, v8, Landroid/widget/ImageView;

    .line 237
    .line 238
    if-eqz v15, :cond_c

    .line 239
    .line 240
    move-object v15, v8

    .line 241
    check-cast v15, Landroid/widget/ImageView;

    .line 242
    .line 243
    invoke-virtual {v15}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 248
    .line 249
    if-eq v15, v14, :cond_b

    .line 250
    .line 251
    sget-object v14, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 252
    .line 253
    if-ne v15, v14, :cond_c

    .line 254
    .line 255
    :cond_b
    sget-object v8, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_c
    new-instance v14, Lcoil3/size/RealViewSizeResolver;

    .line 259
    .line 260
    invoke-direct {v14, v8}, Lcoil3/size/RealViewSizeResolver;-><init>(Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    move-object v8, v14

    .line 264
    goto :goto_6

    .line 265
    :cond_d
    sget-object v8, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 266
    .line 267
    :goto_6
    iput-object v8, v3, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_e
    move-object v8, v7

    .line 271
    :goto_7
    iget-object v14, v6, Lcoil3/request/ImageRequest$Defined;->h:Lcoil3/size/Scale;

    .line 272
    .line 273
    if-nez v14, :cond_15

    .line 274
    .line 275
    instance-of v14, v4, Lcoil3/target/ViewTarget;

    .line 276
    .line 277
    if-eqz v14, :cond_f

    .line 278
    .line 279
    move-object v14, v4

    .line 280
    check-cast v14, Lcoil3/target/ViewTarget;

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_f
    const/4 v14, 0x0

    .line 284
    :goto_8
    if-eqz v14, :cond_10

    .line 285
    .line 286
    invoke-interface {v14}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    goto :goto_9

    .line 291
    :cond_10
    const/4 v14, 0x0

    .line 292
    :goto_9
    instance-of v15, v14, Landroid/widget/ImageView;

    .line 293
    .line 294
    if-eqz v15, :cond_11

    .line 295
    .line 296
    check-cast v14, Landroid/widget/ImageView;

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_11
    const/4 v14, 0x0

    .line 300
    :goto_a
    if-eqz v14, :cond_14

    .line 301
    .line 302
    sget-object v5, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 303
    .line 304
    invoke-virtual {v14}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    if-nez v5, :cond_12

    .line 309
    .line 310
    const/4 v5, -0x1

    .line 311
    goto :goto_b

    .line 312
    :cond_12
    sget-object v14, Lcoil3/util/Utils_androidKt$WhenMappings;->a:[I

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    aget v5, v14, v5

    .line 319
    .line 320
    :goto_b
    if-eq v5, v13, :cond_13

    .line 321
    .line 322
    if-eq v5, v12, :cond_13

    .line 323
    .line 324
    if-eq v5, v11, :cond_13

    .line 325
    .line 326
    const/4 v14, 0x4

    .line 327
    if-eq v5, v14, :cond_13

    .line 328
    .line 329
    sget-object v5, Lcoil3/size/Scale;->j:Lcoil3/size/Scale;

    .line 330
    .line 331
    goto :goto_c

    .line 332
    :cond_13
    sget-object v5, Lcoil3/size/Scale;->k:Lcoil3/size/Scale;

    .line 333
    .line 334
    goto :goto_c

    .line 335
    :cond_14
    iget-object v5, v5, Lcoil3/request/ImageRequest;->p:Lcoil3/size/Scale;

    .line 336
    .line 337
    :goto_c
    iput-object v5, v3, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 338
    .line 339
    :cond_15
    iget-object v5, v6, Lcoil3/request/ImageRequest$Defined;->i:Lcoil3/size/Precision;

    .line 340
    .line 341
    if-nez v5, :cond_18

    .line 342
    .line 343
    if-nez v7, :cond_16

    .line 344
    .line 345
    sget-object v5, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 346
    .line 347
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_16

    .line 352
    .line 353
    sget-object v4, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_16
    instance-of v5, v4, Lcoil3/target/ViewTarget;

    .line 357
    .line 358
    if-eqz v5, :cond_17

    .line 359
    .line 360
    instance-of v5, v8, Lcoil3/size/ViewSizeResolver;

    .line 361
    .line 362
    if-eqz v5, :cond_17

    .line 363
    .line 364
    check-cast v4, Lcoil3/target/ViewTarget;

    .line 365
    .line 366
    invoke-interface {v4}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    instance-of v5, v5, Landroid/widget/ImageView;

    .line 371
    .line 372
    if-eqz v5, :cond_17

    .line 373
    .line 374
    invoke-interface {v4}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v8, Lcoil3/size/ViewSizeResolver;

    .line 379
    .line 380
    check-cast v8, Lcoil3/size/RealViewSizeResolver;

    .line 381
    .line 382
    iget-object v5, v8, Lcoil3/size/RealViewSizeResolver;->b:Landroid/view/View;

    .line 383
    .line 384
    if-ne v4, v5, :cond_17

    .line 385
    .line 386
    sget-object v4, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 387
    .line 388
    goto :goto_d

    .line 389
    :cond_17
    sget-object v4, Lcoil3/size/Precision;->j:Lcoil3/size/Precision;

    .line 390
    .line 391
    :goto_d
    iput-object v4, v3, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 392
    .line 393
    :cond_18
    invoke-virtual {v3}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    sget-object v3, Lcoil3/EventListener;->a:Lcoil3/EventListener$Companion$NONE$1;

    .line 398
    .line 399
    :try_start_3
    iget-object v5, v4, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    .line 400
    .line 401
    sget-object v6, Lcoil3/request/NullRequestData;->a:Lcoil3/request/NullRequestData;

    .line 402
    .line 403
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-nez v5, :cond_22

    .line 408
    .line 409
    invoke-interface {v1}, Lcoil3/request/RequestDelegate;->start()V

    .line 410
    .line 411
    .line 412
    if-nez v0, :cond_19

    .line 413
    .line 414
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 415
    .line 416
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 417
    .line 418
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 419
    .line 420
    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->q:I

    .line 421
    .line 422
    iput v13, v9, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 423
    .line 424
    invoke-interface {v1, v9}, Lcoil3/request/RequestDelegate;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 428
    if-ne v5, v10, :cond_19

    .line 429
    .line 430
    goto/16 :goto_10

    .line 431
    .line 432
    :catchall_2
    move-exception v0

    .line 433
    move-object v5, v1

    .line 434
    goto/16 :goto_15

    .line 435
    .line 436
    :cond_19
    move-object v5, v1

    .line 437
    :goto_e
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    iget-object v1, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 441
    .line 442
    if-eqz v1, :cond_1b

    .line 443
    .line 444
    iget-object v6, v4, Lcoil3/request/ImageRequest;->l:Lkotlin/jvm/functions/Function1;

    .line 445
    .line 446
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Lcoil3/Image;

    .line 451
    .line 452
    if-nez v6, :cond_1a

    .line 453
    .line 454
    iget-object v6, v4, Lcoil3/request/ImageRequest;->t:Lcoil3/request/ImageRequest$Defaults;

    .line 455
    .line 456
    iget-object v6, v6, Lcoil3/request/ImageRequest$Defaults;->h:Lkotlin/jvm/functions/Function1;

    .line 457
    .line 458
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    check-cast v6, Lcoil3/Image;

    .line 463
    .line 464
    :cond_1a
    invoke-interface {v1, v6}, Lcoil3/target/Target;->onStart(Lcoil3/Image;)V

    .line 465
    .line 466
    .line 467
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    iget-object v1, v4, Lcoil3/request/ImageRequest;->o:Lcoil3/size/SizeResolver;

    .line 471
    .line 472
    iput-object v5, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 473
    .line 474
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 475
    .line 476
    iput-object v3, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 477
    .line 478
    const/4 v6, 0x0

    .line 479
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$3;->p:Lcoil3/Image;

    .line 480
    .line 481
    iput v0, v9, Lcoil3/RealImageLoader$execute$3;->q:I

    .line 482
    .line 483
    iput v12, v9, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 484
    .line 485
    invoke-interface {v1, v9}, Lcoil3/size/SizeResolver;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 489
    if-ne v1, v10, :cond_1c

    .line 490
    .line 491
    goto :goto_10

    .line 492
    :cond_1c
    move-object v7, v4

    .line 493
    move-object v4, v3

    .line 494
    move-object v8, v5

    .line 495
    const/4 v5, 0x0

    .line 496
    goto/16 :goto_2

    .line 497
    .line 498
    :goto_f
    :try_start_5
    check-cast v1, Lcoil3/size/Size;

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    iget-object v12, v3, Lcoil3/request/ImageRequest;->f:Lkotlin/coroutines/CoroutineContext;

    .line 504
    .line 505
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 506
    .line 507
    const/4 v6, 0x0

    .line 508
    move-object/from16 v16, v3

    .line 509
    .line 510
    move-object v3, v1

    .line 511
    move-object/from16 v1, v16

    .line 512
    .line 513
    :try_start_6
    invoke-direct/range {v0 .. v6}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/size/Size;Lcoil3/EventListener;Lcoil3/Image;Lkotlin/coroutines/Continuation;)V

    .line 514
    .line 515
    .line 516
    iput-object v8, v9, Lcoil3/RealImageLoader$execute$3;->m:Lcoil3/request/RequestDelegate;

    .line 517
    .line 518
    iput-object v1, v9, Lcoil3/RealImageLoader$execute$3;->n:Lcoil3/request/ImageRequest;

    .line 519
    .line 520
    iput-object v4, v9, Lcoil3/RealImageLoader$execute$3;->o:Lcoil3/EventListener;

    .line 521
    .line 522
    const/4 v6, 0x0

    .line 523
    iput-object v6, v9, Lcoil3/RealImageLoader$execute$3;->p:Lcoil3/Image;

    .line 524
    .line 525
    iput v7, v9, Lcoil3/RealImageLoader$execute$3;->q:I

    .line 526
    .line 527
    iput v11, v9, Lcoil3/RealImageLoader$execute$3;->t:I

    .line 528
    .line 529
    invoke-static {v12, v0, v9}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 533
    if-ne v0, v10, :cond_1d

    .line 534
    .line 535
    :goto_10
    return-object v10

    .line 536
    :cond_1d
    move-object v3, v4

    .line 537
    move-object v5, v8

    .line 538
    move-object v4, v1

    .line 539
    move-object v1, v0

    .line 540
    :goto_11
    :try_start_7
    check-cast v1, Lcoil3/request/ImageResult;

    .line 541
    .line 542
    instance-of v0, v1, Lcoil3/request/SuccessResult;

    .line 543
    .line 544
    if-eqz v0, :cond_20

    .line 545
    .line 546
    move-object v0, v1

    .line 547
    check-cast v0, Lcoil3/request/SuccessResult;

    .line 548
    .line 549
    iget-object v6, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 550
    .line 551
    iget-object v7, v0, Lcoil3/request/SuccessResult;->b:Lcoil3/request/ImageRequest;

    .line 552
    .line 553
    iget-object v0, v0, Lcoil3/request/SuccessResult;->a:Lcoil3/Image;

    .line 554
    .line 555
    instance-of v8, v6, Lcoil3/transition/TransitionTarget;

    .line 556
    .line 557
    if-nez v8, :cond_1e

    .line 558
    .line 559
    if-eqz v6, :cond_1f

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_1e
    sget-object v8, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    .line 563
    .line 564
    invoke-static {v7, v8}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    check-cast v8, Lcoil3/transition/Transition$Factory;

    .line 569
    .line 570
    check-cast v8, Lcoil3/transition/NoneTransition$Factory;

    .line 571
    .line 572
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    :goto_12
    invoke-interface {v6, v0}, Lcoil3/target/Target;->onSuccess(Lcoil3/Image;)V

    .line 576
    .line 577
    .line 578
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    goto :goto_13

    .line 585
    :cond_20
    instance-of v0, v1, Lcoil3/request/ErrorResult;

    .line 586
    .line 587
    if-eqz v0, :cond_21

    .line 588
    .line 589
    move-object v0, v1

    .line 590
    check-cast v0, Lcoil3/request/ErrorResult;

    .line 591
    .line 592
    iget-object v6, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 593
    .line 594
    invoke-virtual {v2, v0, v6, v3}, Lcoil3/RealImageLoader;->e(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 595
    .line 596
    .line 597
    :goto_13
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->c()V

    .line 598
    .line 599
    .line 600
    return-object v1

    .line 601
    :cond_21
    :try_start_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 602
    .line 603
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 604
    .line 605
    .line 606
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 607
    :catchall_3
    move-exception v0

    .line 608
    :goto_14
    move-object v3, v4

    .line 609
    move-object v5, v8

    .line 610
    move-object v4, v1

    .line 611
    goto :goto_15

    .line 612
    :catchall_4
    move-exception v0

    .line 613
    move-object v1, v3

    .line 614
    goto :goto_14

    .line 615
    :cond_22
    :try_start_9
    new-instance v0, Lcoil3/request/NullRequestDataException;

    .line 616
    .line 617
    const-string v5, "The request\'s data is null."

    .line 618
    .line 619
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 623
    :goto_15
    :try_start_a
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 624
    .line 625
    if-nez v1, :cond_23

    .line 626
    .line 627
    invoke-static {v4, v0}, Lcoil3/util/UtilsKt;->a(Lcoil3/request/ImageRequest;Ljava/lang/Throwable;)Lcoil3/request/ErrorResult;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    iget-object v1, v4, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 632
    .line 633
    invoke-virtual {v2, v0, v1, v3}, Lcoil3/RealImageLoader;->e(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 634
    .line 635
    .line 636
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->c()V

    .line 637
    .line 638
    .line 639
    return-object v0

    .line 640
    :catchall_5
    move-exception v0

    .line 641
    goto :goto_16

    .line 642
    :cond_23
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 649
    :goto_16
    invoke-interface {v5}, Lcoil3/request/RequestDelegate;->c()V

    .line 650
    .line 651
    .line 652
    throw v0
.end method

.method public final c(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p1, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 2
    .line 3
    instance-of v0, v0, Lcoil3/target/ViewTarget;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcoil3/request/ImageRequest;->o:Lcoil3/size/SizeResolver;

    .line 8
    .line 9
    instance-of v0, v0, Lcoil3/size/ViewSizeResolver;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcoil3/RealImageLoader;->b(Lcoil3/request/ImageRequest;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    :goto_0
    new-instance v0, Lcoil3/RealImageLoader$execute$2;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, p1, v1}, Lcoil3/RealImageLoader$execute$2;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final d()Lcoil3/memory/MemoryCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/RealImageLoader$Options;->d:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcoil3/memory/MemoryCache;

    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Lcoil3/request/ErrorResult;Lcoil3/target/Target;Lcoil3/EventListener;)V
    .locals 1

    .line 1
    iget-object p0, p1, Lcoil3/request/ErrorResult;->b:Lcoil3/request/ImageRequest;

    .line 2
    .line 3
    iget-object p1, p1, Lcoil3/request/ErrorResult;->a:Lcoil3/Image;

    .line 4
    .line 5
    instance-of v0, p2, Lcoil3/transition/TransitionTarget;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcoil3/transition/Transition$Factory;

    .line 19
    .line 20
    check-cast v0, Lcoil3/transition/NoneTransition$Factory;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p2, p1}, Lcoil3/target/Target;->onError(Lcoil3/Image;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    return-void
.end method
