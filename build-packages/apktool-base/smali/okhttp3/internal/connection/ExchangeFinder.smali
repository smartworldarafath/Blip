.class public final Lokhttp3/internal/connection/ExchangeFinder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lokhttp3/internal/connection/RealConnectionPool;

.field public final b:Lokhttp3/Address;

.field public final c:Lokhttp3/internal/connection/RealCall;

.field public final d:Lokhttp3/EventListener;

.field public e:Lokhttp3/internal/connection/RouteSelector$Selection;

.field public f:Lokhttp3/internal/connection/RouteSelector;

.field public g:I

.field public h:I

.field public i:I

.field public j:Lokhttp3/Route;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 11
    .line 12
    iput-object p2, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 13
    .line 14
    iput-object p3, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 15
    .line 16
    iput-object p4, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 13

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-boolean v0, v0, Lokhttp3/internal/connection/RealCall;->w:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_25

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 9
    .line 10
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-boolean v4, v2, Lokhttp3/internal/connection/RealConnection;->j:Z

    .line 18
    .line 19
    if-nez v4, :cond_3

    .line 20
    .line 21
    iget-object v4, v2, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 22
    .line 23
    iget-object v4, v4, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 24
    .line 25
    iget-object v4, v4, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 31
    .line 32
    iget-object v5, v5, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 33
    .line 34
    iget v6, v4, Lokhttp3/HttpUrl;->e:I

    .line 35
    .line 36
    iget v7, v5, Lokhttp3/HttpUrl;->e:I

    .line 37
    .line 38
    if-ne v6, v7, :cond_1

    .line 39
    .line 40
    iget-object v4, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    move v4, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v4, v0

    .line 53
    :goto_1
    if-nez v4, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v4, v1

    .line 57
    goto :goto_3

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object p0, v0

    .line 60
    goto :goto_5

    .line 61
    :cond_3
    :goto_2
    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 62
    .line 63
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->i()Ljava/net/Socket;

    .line 64
    .line 65
    .line 66
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_3
    monitor-exit v2

    .line 68
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 69
    .line 70
    iget-object v5, v5, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 71
    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    if-nez v4, :cond_4

    .line 75
    .line 76
    :goto_4
    move/from16 v0, p5

    .line 77
    .line 78
    goto/16 :goto_11

    .line 79
    .line 80
    :cond_4
    const-string p0, "Check failed."

    .line 81
    .line 82
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_5
    if-eqz v4, :cond_6

    .line 87
    .line 88
    invoke-static {v4}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :goto_5
    monitor-exit v2

    .line 98
    throw p0

    .line 99
    :cond_7
    :goto_6
    iput v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->g:I

    .line 100
    .line 101
    iput v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->h:I

    .line 102
    .line 103
    iput v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->i:I

    .line 104
    .line 105
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 106
    .line 107
    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 108
    .line 109
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 110
    .line 111
    invoke-virtual {v2, v4, v5, v1, v0}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 118
    .line 119
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 131
    .line 132
    if-eqz v2, :cond_9

    .line 133
    .line 134
    iput-object v1, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 135
    .line 136
    :goto_7
    move-object v4, v1

    .line 137
    goto/16 :goto_10

    .line 138
    .line 139
    :cond_9
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->e:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 140
    .line 141
    if-eqz v2, :cond_b

    .line 142
    .line 143
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->a()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->e:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->a()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_a

    .line 159
    .line 160
    iget-object v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 161
    .line 162
    iget v4, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 163
    .line 164
    add-int/lit8 v5, v4, 0x1

    .line 165
    .line 166
    iput v5, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 167
    .line 168
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v2, v0

    .line 173
    check-cast v2, Lokhttp3/Route;

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_a
    invoke-static {}, Lk8;->o()V

    .line 177
    .line 178
    .line 179
    return-object v1

    .line 180
    :cond_b
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->f:Lokhttp3/internal/connection/RouteSelector;

    .line 181
    .line 182
    if-nez v2, :cond_c

    .line 183
    .line 184
    new-instance v2, Lokhttp3/internal/connection/RouteSelector;

    .line 185
    .line 186
    iget-object v4, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 187
    .line 188
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 189
    .line 190
    iget-object v6, v5, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 191
    .line 192
    iget-object v6, v6, Lokhttp3/OkHttpClient;->H:Lokhttp3/internal/connection/RouteDatabase;

    .line 193
    .line 194
    iget-object v7, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 195
    .line 196
    invoke-direct {v2, v4, v6, v5, v7}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    .line 197
    .line 198
    .line 199
    iput-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->f:Lokhttp3/internal/connection/RouteSelector;

    .line 200
    .line 201
    :cond_c
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_24

    .line 206
    .line 207
    new-instance v4, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    :cond_d
    iget v5, v2, Lokhttp3/internal/connection/RouteSelector;->e:I

    .line 213
    .line 214
    iget-object v6, v2, Lokhttp3/internal/connection/RouteSelector;->d:Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-ge v5, v6, :cond_1a

    .line 221
    .line 222
    iget-object v5, v2, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 223
    .line 224
    const-string v6, "No route to "

    .line 225
    .line 226
    iget v7, v2, Lokhttp3/internal/connection/RouteSelector;->e:I

    .line 227
    .line 228
    iget-object v8, v2, Lokhttp3/internal/connection/RouteSelector;->d:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-ge v7, v8, :cond_19

    .line 235
    .line 236
    iget-object v7, v2, Lokhttp3/internal/connection/RouteSelector;->d:Ljava/util/List;

    .line 237
    .line 238
    iget v8, v2, Lokhttp3/internal/connection/RouteSelector;->e:I

    .line 239
    .line 240
    add-int/lit8 v9, v8, 0x1

    .line 241
    .line 242
    iput v9, v2, Lokhttp3/internal/connection/RouteSelector;->e:I

    .line 243
    .line 244
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Ljava/net/Proxy;

    .line 249
    .line 250
    iget-object v8, v2, Lokhttp3/internal/connection/RouteSelector;->c:Lokhttp3/EventListener;

    .line 251
    .line 252
    new-instance v9, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    iput-object v9, v2, Lokhttp3/internal/connection/RouteSelector;->f:Ljava/util/List;

    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    sget-object v11, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 264
    .line 265
    if-eq v10, v11, :cond_11

    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 272
    .line 273
    if-ne v10, v11, :cond_e

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_e
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    instance-of v11, v10, Ljava/net/InetSocketAddress;

    .line 281
    .line 282
    if-eqz v11, :cond_10

    .line 283
    .line 284
    check-cast v10, Ljava/net/InetSocketAddress;

    .line 285
    .line 286
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    if-nez v11, :cond_f

    .line 291
    .line 292
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_f
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    :goto_8
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    goto :goto_a

    .line 312
    :cond_10
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    .line 313
    .line 314
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {p1, p0}, Lfe;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-object v1

    .line 322
    :cond_11
    :goto_9
    iget-object v10, v5, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 323
    .line 324
    iget-object v11, v10, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 325
    .line 326
    iget v10, v10, Lokhttp3/HttpUrl;->e:I

    .line 327
    .line 328
    :goto_a
    if-gt v3, v10, :cond_18

    .line 329
    .line 330
    const/high16 v12, 0x10000

    .line 331
    .line 332
    if-ge v10, v12, :cond_18

    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 339
    .line 340
    if-ne v6, v12, :cond_12

    .line 341
    .line 342
    invoke-static {v11, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_d

    .line 350
    :cond_12
    sget-object v6, Lokhttp3/internal/Util;->a:[B

    .line 351
    .line 352
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    sget-object v6, Lokhttp3/internal/Util;->e:Lkotlin/text/Regex;

    .line 356
    .line 357
    invoke-virtual {v6, v11}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    if-eqz v6, :cond_13

    .line 362
    .line 363
    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    goto :goto_b

    .line 372
    :cond_13
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    iget-object v6, v5, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 376
    .line 377
    invoke-interface {v6, v11}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-nez v8, :cond_17

    .line 386
    .line 387
    move-object v5, v6

    .line 388
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-eqz v6, :cond_14

    .line 397
    .line 398
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    check-cast v6, Ljava/net/InetAddress;

    .line 403
    .line 404
    new-instance v8, Ljava/net/InetSocketAddress;

    .line 405
    .line 406
    invoke-direct {v8, v6, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_14
    :goto_d
    iget-object v5, v2, Lokhttp3/internal/connection/RouteSelector;->f:Ljava/util/List;

    .line 414
    .line 415
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-eqz v6, :cond_16

    .line 424
    .line 425
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    check-cast v6, Ljava/net/InetSocketAddress;

    .line 430
    .line 431
    new-instance v8, Lokhttp3/Route;

    .line 432
    .line 433
    iget-object v9, v2, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 434
    .line 435
    invoke-direct {v8, v9, v7, v6}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 436
    .line 437
    .line 438
    iget-object v6, v2, Lokhttp3/internal/connection/RouteSelector;->b:Lokhttp3/internal/connection/RouteDatabase;

    .line 439
    .line 440
    monitor-enter v6

    .line 441
    :try_start_1
    iget-object v9, v6, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 442
    .line 443
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    monitor-exit v6

    .line 448
    if-eqz v9, :cond_15

    .line 449
    .line 450
    iget-object v6, v2, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_e

    .line 456
    :cond_15
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    goto :goto_e

    .line 460
    :catchall_1
    move-exception v0

    .line 461
    move-object p0, v0

    .line 462
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    throw p0

    .line 464
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-nez v5, :cond_d

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    .line 472
    .line 473
    iget-object p1, v5, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 474
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string p1, " returned no addresses for "

    .line 484
    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw p0

    .line 499
    :cond_18
    new-instance p0, Ljava/net/SocketException;

    .line 500
    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const/16 v0, 0x3a

    .line 510
    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v0, "; port is out of range"

    .line 518
    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw p0

    .line 530
    :cond_19
    new-instance p0, Ljava/net/SocketException;

    .line 531
    .line 532
    iget-object p1, v5, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 533
    .line 534
    iget-object p1, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 535
    .line 536
    const-string v0, "; exhausted proxy configurations: "

    .line 537
    .line 538
    iget-object v1, v2, Lokhttp3/internal/connection/RouteSelector;->d:Ljava/util/List;

    .line 539
    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p1

    .line 558
    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p0

    .line 562
    :cond_1a
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_1b

    .line 567
    .line 568
    iget-object v5, v2, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v2, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 576
    .line 577
    .line 578
    :cond_1b
    new-instance v2, Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 579
    .line 580
    invoke-direct {v2, v4}, Lokhttp3/internal/connection/RouteSelector$Selection;-><init>(Ljava/util/ArrayList;)V

    .line 581
    .line 582
    .line 583
    iput-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->e:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 584
    .line 585
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 586
    .line 587
    iget-boolean v5, v5, Lokhttp3/internal/connection/RealCall;->w:Z

    .line 588
    .line 589
    if-nez v5, :cond_23

    .line 590
    .line 591
    iget-object v5, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 592
    .line 593
    iget-object v6, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 594
    .line 595
    iget-object v7, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 596
    .line 597
    invoke-virtual {v5, v6, v7, v4, v0}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;Z)Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_1c

    .line 602
    .line 603
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 604
    .line 605
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    .line 609
    .line 610
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    goto/16 :goto_4

    .line 616
    .line 617
    :cond_1c
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->a()Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    if-eqz v0, :cond_22

    .line 622
    .line 623
    iget v0, v2, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 624
    .line 625
    add-int/lit8 v5, v0, 0x1

    .line 626
    .line 627
    iput v5, v2, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 628
    .line 629
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    move-object v2, v0

    .line 634
    check-cast v2, Lokhttp3/Route;

    .line 635
    .line 636
    :goto_10
    new-instance v5, Lokhttp3/internal/connection/RealConnection;

    .line 637
    .line 638
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 639
    .line 640
    invoke-direct {v5, v0, v2}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V

    .line 641
    .line 642
    .line 643
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 644
    .line 645
    iput-object v5, v0, Lokhttp3/internal/connection/RealCall;->y:Lokhttp3/internal/connection/RealConnection;

    .line 646
    .line 647
    :try_start_3
    iget-object v10, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 648
    .line 649
    iget-object v11, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 650
    .line 651
    move v6, p1

    .line 652
    move v7, p2

    .line 653
    move/from16 v8, p3

    .line 654
    .line 655
    move/from16 v9, p4

    .line 656
    .line 657
    invoke-virtual/range {v5 .. v11}, Lokhttp3/internal/connection/RealConnection;->c(IIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 658
    .line 659
    .line 660
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 661
    .line 662
    iput-object v1, v0, Lokhttp3/internal/connection/RealCall;->y:Lokhttp3/internal/connection/RealConnection;

    .line 663
    .line 664
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 665
    .line 666
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 667
    .line 668
    iget-object v6, v0, Lokhttp3/OkHttpClient;->H:Lokhttp3/internal/connection/RouteDatabase;

    .line 669
    .line 670
    monitor-enter v6

    .line 671
    :try_start_4
    iget-object v0, v6, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 672
    .line 673
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 674
    .line 675
    .line 676
    monitor-exit v6

    .line 677
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 678
    .line 679
    iget-object v6, p0, Lokhttp3/internal/connection/ExchangeFinder;->b:Lokhttp3/Address;

    .line 680
    .line 681
    iget-object v7, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 682
    .line 683
    invoke-virtual {v0, v6, v7, v4, v3}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;Z)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-eqz v0, :cond_1d

    .line 688
    .line 689
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 690
    .line 691
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->r:Lokhttp3/internal/connection/RealConnection;

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    iput-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 697
    .line 698
    iget-object v2, v5, Lokhttp3/internal/connection/RealConnection;->d:Ljava/net/Socket;

    .line 699
    .line 700
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    invoke-static {v2}, Lokhttp3/internal/Util;->c(Ljava/net/Socket;)V

    .line 704
    .line 705
    .line 706
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 707
    .line 708
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    move-object v2, v0

    .line 712
    goto/16 :goto_4

    .line 713
    .line 714
    :cond_1d
    monitor-enter v5

    .line 715
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->a:Lokhttp3/internal/connection/RealConnectionPool;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    sget-object v2, Lokhttp3/internal/Util;->a:[B

    .line 721
    .line 722
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 723
    .line 724
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/concurrent/TaskQueue;

    .line 728
    .line 729
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->c:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    .line 730
    .line 731
    const-wide/16 v6, 0x0

    .line 732
    .line 733
    invoke-virtual {v2, v0, v6, v7}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 734
    .line 735
    .line 736
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 737
    .line 738
    invoke-virtual {v0, v5}, Lokhttp3/internal/connection/RealCall;->b(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 739
    .line 740
    .line 741
    monitor-exit v5

    .line 742
    iget-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->d:Lokhttp3/EventListener;

    .line 743
    .line 744
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    move/from16 v0, p5

    .line 748
    .line 749
    move-object v2, v5

    .line 750
    :goto_11
    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealConnection;->i(Z)Z

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    if-eqz v4, :cond_1e

    .line 755
    .line 756
    return-object v2

    .line 757
    :cond_1e
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->k()V

    .line 758
    .line 759
    .line 760
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 761
    .line 762
    if-nez v2, :cond_0

    .line 763
    .line 764
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->e:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 765
    .line 766
    if-eqz v2, :cond_1f

    .line 767
    .line 768
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector$Selection;->a()Z

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    goto :goto_12

    .line 773
    :cond_1f
    move v2, v3

    .line 774
    :goto_12
    if-nez v2, :cond_0

    .line 775
    .line 776
    iget-object v2, p0, Lokhttp3/internal/connection/ExchangeFinder;->f:Lokhttp3/internal/connection/RouteSelector;

    .line 777
    .line 778
    if-eqz v2, :cond_20

    .line 779
    .line 780
    invoke-virtual {v2}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    :cond_20
    if-eqz v3, :cond_21

    .line 785
    .line 786
    goto/16 :goto_0

    .line 787
    .line 788
    :cond_21
    const-string p0, "exhausted all routes"

    .line 789
    .line 790
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    return-object v1

    .line 794
    :catchall_2
    move-exception v0

    .line 795
    move-object p0, v0

    .line 796
    monitor-exit v5

    .line 797
    throw p0

    .line 798
    :catchall_3
    move-exception v0

    .line 799
    move-object p0, v0

    .line 800
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 801
    throw p0

    .line 802
    :catchall_4
    move-exception v0

    .line 803
    move-object p1, v0

    .line 804
    iget-object p0, p0, Lokhttp3/internal/connection/ExchangeFinder;->c:Lokhttp3/internal/connection/RealCall;

    .line 805
    .line 806
    iput-object v1, p0, Lokhttp3/internal/connection/RealCall;->y:Lokhttp3/internal/connection/RealConnection;

    .line 807
    .line 808
    throw p1

    .line 809
    :cond_22
    invoke-static {}, Lk8;->o()V

    .line 810
    .line 811
    .line 812
    return-object v1

    .line 813
    :cond_23
    const-string p0, "Canceled"

    .line 814
    .line 815
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    return-object v1

    .line 819
    :cond_24
    invoke-static {}, Lk8;->o()V

    .line 820
    .line 821
    .line 822
    return-object v1

    .line 823
    :cond_25
    const-string p0, "Canceled"

    .line 824
    .line 825
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    return-object v1
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lokhttp3/internal/connection/ExchangeFinder;->j:Lokhttp3/Route;

    .line 6
    .line 7
    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    .line 13
    .line 14
    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->j:Lokhttp3/internal/http2/ErrorCode;

    .line 15
    .line 16
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->o:Lokhttp3/internal/http2/ErrorCode;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->g:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->g:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->h:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->h:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->i:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iput p1, p0, Lokhttp3/internal/connection/ExchangeFinder;->i:I

    .line 43
    .line 44
    return-void
.end method
