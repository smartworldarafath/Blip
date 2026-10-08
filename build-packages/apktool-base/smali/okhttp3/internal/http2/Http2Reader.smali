.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$Companion;,
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/logging/Logger;


# instance fields
.field public final j:Lokio/BufferedSource;

.field public final k:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field public final l:Lokhttp3/internal/http2/Hpack$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lokhttp3/internal/http2/Http2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->m:Ljava/util/logging/Logger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lokio/RealBufferedSource;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 8
    .line 9
    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->k:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 15
    .line 16
    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->l:Lokhttp3/internal/http2/Hpack$Reader;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 7
    .line 8
    const-wide/16 v4, 0x9

    .line 9
    .line 10
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->W0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-static {v3}, Lokhttp3/internal/Util;->p(Lokio/BufferedSource;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/16 v4, 0x4000

    .line 20
    .line 21
    if-gt v3, v4, :cond_30

    .line 22
    .line 23
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 24
    .line 25
    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    and-int/lit16 v5, v5, 0xff

    .line 30
    .line 31
    iget-object v6, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 32
    .line 33
    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    and-int/lit16 v7, v6, 0xff

    .line 38
    .line 39
    iget-object v8, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 40
    .line 41
    invoke-interface {v8}, Lokio/BufferedSource;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const v9, 0x7fffffff

    .line 46
    .line 47
    .line 48
    and-int/2addr v9, v8

    .line 49
    sget-object v10, Lokhttp3/internal/http2/Http2Reader;->m:Ljava/util/logging/Logger;

    .line 50
    .line 51
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 52
    .line 53
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v12, 0x1

    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    invoke-static {v12, v9, v3, v5, v7}, Lokhttp3/internal/http2/Http2;->a(ZIIII)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v10, 0x4

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    if-ne v5, v10, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Expected a SETTINGS frame but was "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Lokhttp3/internal/http2/Http2;->b:[Ljava/lang/String;

    .line 83
    .line 84
    array-length v3, v2

    .line 85
    if-ge v5, v3, :cond_2

    .line 86
    .line 87
    aget-object v2, v2, v5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "0x%02x"

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_3
    :goto_1
    const/4 v13, 0x5

    .line 116
    const/4 v14, 0x3

    .line 117
    const/4 v15, 0x2

    .line 118
    const/16 v11, 0x8

    .line 119
    .line 120
    move/from16 v16, v5

    .line 121
    .line 122
    const-wide/16 v4, 0x0

    .line 123
    .line 124
    packed-switch v16, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 128
    .line 129
    int-to-long v1, v3

    .line 130
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 131
    .line 132
    .line 133
    return v12

    .line 134
    :pswitch_0
    if-ne v3, v10, :cond_7

    .line 135
    .line 136
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 137
    .line 138
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const-wide/32 v6, 0x7fffffff

    .line 143
    .line 144
    .line 145
    int-to-long v10, v0

    .line 146
    and-long/2addr v6, v10

    .line 147
    cmp-long v0, v6, v4

    .line 148
    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 152
    .line 153
    if-nez v9, :cond_4

    .line 154
    .line 155
    monitor-enter v1

    .line 156
    :try_start_1
    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Connection;->D:J

    .line 157
    .line 158
    add-long/2addr v2, v6

    .line 159
    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Connection;->D:J

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    monitor-exit v1

    .line 165
    return v12

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    monitor-exit v1

    .line 168
    throw v0

    .line 169
    :cond_4
    invoke-virtual {v1, v9}, Lokhttp3/internal/http2/Http2Connection;->n(I)Lokhttp3/internal/http2/Http2Stream;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_2a

    .line 174
    .line 175
    monitor-enter v1

    .line 176
    :try_start_2
    iget-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 177
    .line 178
    add-long/2addr v2, v6

    .line 179
    iput-wide v2, v1, Lokhttp3/internal/http2/Http2Stream;->f:J

    .line 180
    .line 181
    if-lez v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    .line 185
    .line 186
    :cond_5
    monitor-exit v1

    .line 187
    return v12

    .line 188
    :catchall_1
    move-exception v0

    .line 189
    monitor-exit v1

    .line 190
    throw v0

    .line 191
    :cond_6
    const-string v0, "windowSizeIncrement was 0"

    .line 192
    .line 193
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v2

    .line 197
    :cond_7
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: "

    .line 198
    .line 199
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return v2

    .line 207
    :pswitch_1
    if-lt v3, v11, :cond_f

    .line 208
    .line 209
    if-nez v9, :cond_e

    .line 210
    .line 211
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 212
    .line 213
    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    iget-object v5, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 218
    .line 219
    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    sub-int/2addr v3, v11

    .line 224
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    array-length v7, v6

    .line 229
    move v8, v2

    .line 230
    :goto_2
    if-ge v8, v7, :cond_9

    .line 231
    .line 232
    aget-object v9, v6, v8

    .line 233
    .line 234
    iget v10, v9, Lokhttp3/internal/http2/ErrorCode;->j:I

    .line 235
    .line 236
    if-ne v10, v5, :cond_8

    .line 237
    .line 238
    move-object v11, v9

    .line 239
    goto :goto_3

    .line 240
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_9
    const/4 v11, 0x0

    .line 244
    :goto_3
    if-eqz v11, :cond_d

    .line 245
    .line 246
    sget-object v5, Lokio/ByteString;->m:Lokio/ByteString;

    .line 247
    .line 248
    if-lez v3, :cond_a

    .line 249
    .line 250
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 251
    .line 252
    int-to-long v5, v3

    .line 253
    invoke-interface {v0, v5, v6}, Lokio/BufferedSource;->s(J)Lokio/ByteString;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5}, Lokio/ByteString;->e()I

    .line 261
    .line 262
    .line 263
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 264
    .line 265
    monitor-enter v3

    .line 266
    :try_start_3
    iget-object v0, v3, Lokhttp3/internal/http2/Http2Connection;->k:Ljava/util/LinkedHashMap;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    new-array v5, v2, [Lokhttp3/internal/http2/Http2Stream;

    .line 273
    .line 274
    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-boolean v12, v3, Lokhttp3/internal/http2/Http2Connection;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 279
    .line 280
    monitor-exit v3

    .line 281
    check-cast v0, [Lokhttp3/internal/http2/Http2Stream;

    .line 282
    .line 283
    array-length v3, v0

    .line 284
    :goto_4
    if-ge v2, v3, :cond_2a

    .line 285
    .line 286
    aget-object v5, v0, v2

    .line 287
    .line 288
    iget v6, v5, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 289
    .line 290
    if-le v6, v4, :cond_c

    .line 291
    .line 292
    invoke-virtual {v5}, Lokhttp3/internal/http2/Http2Stream;->g()Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_c

    .line 297
    .line 298
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->o:Lokhttp3/internal/http2/ErrorCode;

    .line 299
    .line 300
    monitor-enter v5

    .line 301
    :try_start_4
    iget-object v7, v5, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 302
    .line 303
    if-nez v7, :cond_b

    .line 304
    .line 305
    iput-object v6, v5, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catchall_2
    move-exception v0

    .line 312
    goto :goto_6

    .line 313
    :cond_b
    :goto_5
    monitor-exit v5

    .line 314
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 315
    .line 316
    iget v5, v5, Lokhttp3/internal/http2/Http2Stream;->a:I

    .line 317
    .line 318
    invoke-virtual {v6, v5}, Lokhttp3/internal/http2/Http2Connection;->q(I)Lokhttp3/internal/http2/Http2Stream;

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :goto_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 323
    throw v0

    .line 324
    :cond_c
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :catchall_3
    move-exception v0

    .line 328
    monitor-exit v3

    .line 329
    throw v0

    .line 330
    :cond_d
    const-string v0, "TYPE_GOAWAY unexpected error code: "

    .line 331
    .line 332
    invoke-static {v5, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return v2

    .line 340
    :cond_e
    const-string v0, "TYPE_GOAWAY streamId != 0"

    .line 341
    .line 342
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return v2

    .line 346
    :cond_f
    const-string v0, "TYPE_GOAWAY length < 8: "

    .line 347
    .line 348
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return v2

    .line 356
    :pswitch_2
    if-ne v3, v11, :cond_16

    .line 357
    .line 358
    if-nez v9, :cond_15

    .line 359
    .line 360
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 361
    .line 362
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 367
    .line 368
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    and-int/2addr v6, v12

    .line 373
    if-eqz v6, :cond_10

    .line 374
    .line 375
    move v2, v12

    .line 376
    :cond_10
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 377
    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    monitor-enter v6

    .line 381
    const-wide/16 v0, 0x1

    .line 382
    .line 383
    if-eq v3, v12, :cond_13

    .line 384
    .line 385
    if-eq v3, v15, :cond_12

    .line 386
    .line 387
    if-eq v3, v14, :cond_11

    .line 388
    .line 389
    goto :goto_8

    .line 390
    :cond_11
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :catchall_4
    move-exception v0

    .line 395
    goto :goto_9

    .line 396
    :cond_12
    iget-wide v2, v6, Lokhttp3/internal/http2/Http2Connection;->w:J

    .line 397
    .line 398
    add-long/2addr v2, v0

    .line 399
    iput-wide v2, v6, Lokhttp3/internal/http2/Http2Connection;->w:J

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_13
    iget-wide v2, v6, Lokhttp3/internal/http2/Http2Connection;->u:J

    .line 403
    .line 404
    add-long/2addr v2, v0

    .line 405
    iput-wide v2, v6, Lokhttp3/internal/http2/Http2Connection;->u:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 406
    .line 407
    :goto_8
    monitor-exit v6

    .line 408
    return v12

    .line 409
    :goto_9
    monitor-exit v6

    .line 410
    throw v0

    .line 411
    :cond_14
    iget-object v2, v6, Lokhttp3/internal/http2/Http2Connection;->q:Lokhttp3/internal/concurrent/TaskQueue;

    .line 412
    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iget-object v7, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 419
    .line 420
    iget-object v7, v7, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 421
    .line 422
    const-string v8, " ping"

    .line 423
    .line 424
    invoke-static {v6, v7, v8}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 429
    .line 430
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;

    .line 431
    .line 432
    invoke-direct {v7, v6, v1, v3, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;II)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v7, v4, v5}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 436
    .line 437
    .line 438
    return v12

    .line 439
    :cond_15
    const-string v0, "TYPE_PING streamId != 0"

    .line 440
    .line 441
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    return v2

    .line 445
    :cond_16
    const-string v0, "TYPE_PING length != 8: "

    .line 446
    .line 447
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return v2

    .line 455
    :pswitch_3
    invoke-virtual {v0, v1, v3, v7, v9}, Lokhttp3/internal/http2/Http2Reader;->v(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 456
    .line 457
    .line 458
    return v12

    .line 459
    :pswitch_4
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 460
    .line 461
    if-nez v9, :cond_25

    .line 462
    .line 463
    and-int/2addr v6, v12

    .line 464
    if-eqz v6, :cond_18

    .line 465
    .line 466
    if-nez v3, :cond_17

    .line 467
    .line 468
    goto/16 :goto_10

    .line 469
    .line 470
    :cond_17
    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 471
    .line 472
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return v2

    .line 476
    :cond_18
    rem-int/lit8 v6, v3, 0x6

    .line 477
    .line 478
    if-nez v6, :cond_24

    .line 479
    .line 480
    new-instance v6, Lokhttp3/internal/http2/Settings;

    .line 481
    .line 482
    invoke-direct {v6}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    const/4 v7, 0x6

    .line 490
    invoke-static {v3, v7}, Lkotlin/ranges/RangesKt;->h(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iget v7, v3, Lkotlin/ranges/IntProgression;->j:I

    .line 495
    .line 496
    iget v8, v3, Lkotlin/ranges/IntProgression;->k:I

    .line 497
    .line 498
    iget v3, v3, Lkotlin/ranges/IntProgression;->l:I

    .line 499
    .line 500
    if-lez v3, :cond_19

    .line 501
    .line 502
    if-le v7, v8, :cond_1a

    .line 503
    .line 504
    :cond_19
    if-gez v3, :cond_23

    .line 505
    .line 506
    if-gt v8, v7, :cond_23

    .line 507
    .line 508
    :cond_1a
    :goto_a
    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    sget-object v11, Lokhttp3/internal/Util;->a:[B

    .line 513
    .line 514
    const v11, 0xffff

    .line 515
    .line 516
    .line 517
    and-int/2addr v9, v11

    .line 518
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 519
    .line 520
    .line 521
    move-result v11

    .line 522
    if-eq v9, v15, :cond_20

    .line 523
    .line 524
    if-eq v9, v14, :cond_1f

    .line 525
    .line 526
    if-eq v9, v10, :cond_1d

    .line 527
    .line 528
    if-eq v9, v13, :cond_1b

    .line 529
    .line 530
    move/from16 v16, v2

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_1b
    move/from16 v16, v2

    .line 534
    .line 535
    const/16 v2, 0x4000

    .line 536
    .line 537
    if-lt v11, v2, :cond_1c

    .line 538
    .line 539
    const v2, 0xffffff

    .line 540
    .line 541
    .line 542
    if-gt v11, v2, :cond_1c

    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_1c
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    .line 546
    .line 547
    invoke-static {v11, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    return v16

    .line 555
    :cond_1d
    move/from16 v16, v2

    .line 556
    .line 557
    if-ltz v11, :cond_1e

    .line 558
    .line 559
    const/4 v9, 0x7

    .line 560
    goto :goto_b

    .line 561
    :cond_1e
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 562
    .line 563
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    return v16

    .line 567
    :cond_1f
    move/from16 v16, v2

    .line 568
    .line 569
    move v9, v10

    .line 570
    goto :goto_b

    .line 571
    :cond_20
    move/from16 v16, v2

    .line 572
    .line 573
    if-eqz v11, :cond_22

    .line 574
    .line 575
    if-ne v11, v12, :cond_21

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_21
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 579
    .line 580
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return v16

    .line 584
    :cond_22
    :goto_b
    invoke-virtual {v6, v9, v11}, Lokhttp3/internal/http2/Settings;->b(II)V

    .line 585
    .line 586
    .line 587
    if-eq v7, v8, :cond_23

    .line 588
    .line 589
    add-int/2addr v7, v3

    .line 590
    move/from16 v2, v16

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_23
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 594
    .line 595
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->q:Lokhttp3/internal/concurrent/TaskQueue;

    .line 596
    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .line 601
    .line 602
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 603
    .line 604
    const-string v7, " applyAndAckSettings"

    .line 605
    .line 606
    invoke-static {v3, v0, v7}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;

    .line 611
    .line 612
    invoke-direct {v3, v0, v1, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Lokhttp3/internal/http2/Settings;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 616
    .line 617
    .line 618
    return v12

    .line 619
    :cond_24
    move/from16 v16, v2

    .line 620
    .line 621
    const-string v0, "TYPE_SETTINGS length % 6 != 0: "

    .line 622
    .line 623
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    return v16

    .line 631
    :cond_25
    move/from16 v16, v2

    .line 632
    .line 633
    const-string v0, "TYPE_SETTINGS streamId != 0"

    .line 634
    .line 635
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    return v16

    .line 639
    :pswitch_5
    move/from16 v16, v2

    .line 640
    .line 641
    if-ne v3, v10, :cond_2d

    .line 642
    .line 643
    if-eqz v9, :cond_2c

    .line 644
    .line 645
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 646
    .line 647
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    array-length v3, v2

    .line 656
    move/from16 v6, v16

    .line 657
    .line 658
    :goto_c
    if-ge v6, v3, :cond_27

    .line 659
    .line 660
    aget-object v7, v2, v6

    .line 661
    .line 662
    iget v10, v7, Lokhttp3/internal/http2/ErrorCode;->j:I

    .line 663
    .line 664
    if-ne v10, v0, :cond_26

    .line 665
    .line 666
    move-object v11, v7

    .line 667
    goto :goto_d

    .line 668
    :cond_26
    add-int/lit8 v6, v6, 0x1

    .line 669
    .line 670
    goto :goto_c

    .line 671
    :cond_27
    const/4 v11, 0x0

    .line 672
    :goto_d
    if-eqz v11, :cond_2b

    .line 673
    .line 674
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 675
    .line 676
    sget-object v1, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/Settings;

    .line 677
    .line 678
    if-eqz v9, :cond_28

    .line 679
    .line 680
    and-int/lit8 v1, v8, 0x1

    .line 681
    .line 682
    if-nez v1, :cond_28

    .line 683
    .line 684
    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/concurrent/TaskQueue;

    .line 685
    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 692
    .line 693
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    const/16 v3, 0x5b

    .line 697
    .line 698
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v3, "] onReset"

    .line 705
    .line 706
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;

    .line 714
    .line 715
    invoke-direct {v3, v2, v0, v9, v11}, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, v3, v4, v5}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 719
    .line 720
    .line 721
    return v12

    .line 722
    :cond_28
    invoke-virtual {v0, v9}, Lokhttp3/internal/http2/Http2Connection;->q(I)Lokhttp3/internal/http2/Http2Stream;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    if-eqz v1, :cond_2a

    .line 727
    .line 728
    monitor-enter v1

    .line 729
    :try_start_7
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 730
    .line 731
    if-nez v0, :cond_29

    .line 732
    .line 733
    iput-object v11, v1, Lokhttp3/internal/http2/Http2Stream;->m:Lokhttp3/internal/http2/ErrorCode;

    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 736
    .line 737
    .line 738
    goto :goto_e

    .line 739
    :catchall_5
    move-exception v0

    .line 740
    goto :goto_f

    .line 741
    :cond_29
    :goto_e
    monitor-exit v1

    .line 742
    return v12

    .line 743
    :goto_f
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 744
    throw v0

    .line 745
    :cond_2a
    :goto_10
    return v12

    .line 746
    :cond_2b
    const-string v1, "TYPE_RST_STREAM unexpected error code: "

    .line 747
    .line 748
    invoke-static {v0, v1}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    return v16

    .line 756
    :cond_2c
    const-string v0, "TYPE_RST_STREAM streamId == 0"

    .line 757
    .line 758
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    return v16

    .line 762
    :cond_2d
    const-string v0, "TYPE_RST_STREAM length: "

    .line 763
    .line 764
    const-string v1, " != 4"

    .line 765
    .line 766
    invoke-static {v0, v3, v1}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    return v16

    .line 774
    :pswitch_6
    move/from16 v16, v2

    .line 775
    .line 776
    if-ne v3, v13, :cond_2f

    .line 777
    .line 778
    if-eqz v9, :cond_2e

    .line 779
    .line 780
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 781
    .line 782
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    .line 783
    .line 784
    .line 785
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 786
    .line 787
    .line 788
    return v12

    .line 789
    :cond_2e
    const-string v0, "TYPE_PRIORITY streamId == 0"

    .line 790
    .line 791
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    return v16

    .line 795
    :cond_2f
    const-string v0, "TYPE_PRIORITY length: "

    .line 796
    .line 797
    const-string v1, " != 5"

    .line 798
    .line 799
    invoke-static {v0, v3, v1}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    return v16

    .line 807
    :pswitch_7
    invoke-virtual {v0, v1, v3, v7, v9}, Lokhttp3/internal/http2/Http2Reader;->q(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 808
    .line 809
    .line 810
    return v12

    .line 811
    :pswitch_8
    invoke-virtual {v0, v1, v3, v7, v9}, Lokhttp3/internal/http2/Http2Reader;->h(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V

    .line 812
    .line 813
    .line 814
    return v12

    .line 815
    :cond_30
    move/from16 v16, v2

    .line 816
    .line 817
    const-string v0, "FRAME_SIZE_ERROR: "

    .line 818
    .line 819
    invoke-static {v3, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    return v16

    .line 827
    :catch_0
    move/from16 v16, v2

    .line 828
    .line 829
    return v16

    .line 830
    nop

    .line 831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    if-eqz v4, :cond_f

    .line 10
    .line 11
    and-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v7, 0x0

    .line 18
    :goto_0
    and-int/lit8 v3, v2, 0x20

    .line 19
    .line 20
    if-nez v3, :cond_e

    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 27
    .line 28
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sget-object v8, Lokhttp3/internal/Util;->a:[B

    .line 33
    .line 34
    and-int/lit16 v3, v3, 0xff

    .line 35
    .line 36
    move v8, v3

    .line 37
    :goto_1
    move/from16 v3, p2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const/4 v8, 0x0

    .line 41
    goto :goto_1

    .line 42
    :goto_2
    invoke-static {v3, v2, v8}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v9, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 52
    .line 53
    sget-object v10, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/Settings;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    and-int/lit8 v10, v4, 0x1

    .line 58
    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    const/4 v10, 0x0

    .line 64
    :goto_3
    const-wide/16 v11, 0x0

    .line 65
    .line 66
    if-eqz v10, :cond_3

    .line 67
    .line 68
    new-instance v5, Lokio/Buffer;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    int-to-long v13, v2

    .line 74
    invoke-interface {v3, v13, v14}, Lokio/BufferedSource;->W0(J)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v13, v14, v5}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 78
    .line 79
    .line 80
    iget-object v10, v9, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/concurrent/TaskQueue;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v3, v9, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v3, 0x5b

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, "] onData"

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move v6, v2

    .line 110
    move-object v2, v1

    .line 111
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$default$1;

    .line 112
    .line 113
    move-object v3, v9

    .line 114
    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v1, v11, v12}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_3
    invoke-virtual {v9, v4}, Lokhttp3/internal/http2/Http2Connection;->n(I)Lokhttp3/internal/http2/Http2Stream;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-nez v9, :cond_4

    .line 127
    .line 128
    iget-object v5, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 129
    .line 130
    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->l:Lokhttp3/internal/http2/ErrorCode;

    .line 131
    .line 132
    invoke-virtual {v5, v4, v6}, Lokhttp3/internal/http2/Http2Connection;->E(ILokhttp3/internal/http2/ErrorCode;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 136
    .line 137
    int-to-long v4, v2

    .line 138
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/http2/Http2Connection;->w(J)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_4
    sget-object v1, Lokhttp3/internal/Util;->a:[B

    .line 147
    .line 148
    iget-object v1, v9, Lokhttp3/internal/http2/Http2Stream;->i:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 149
    .line 150
    int-to-long v13, v2

    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-wide/from16 p2, v11

    .line 155
    .line 156
    move-wide v11, v13

    .line 157
    :goto_4
    cmp-long v2, v11, p2

    .line 158
    .line 159
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 160
    .line 161
    if-lez v2, :cond_c

    .line 162
    .line 163
    monitor-enter v4

    .line 164
    :try_start_0
    iget-boolean v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->k:Z

    .line 165
    .line 166
    iget-object v10, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m:Lokio/Buffer;

    .line 167
    .line 168
    iget-wide v5, v10, Lokio/Buffer;->k:J

    .line 169
    .line 170
    add-long/2addr v5, v11

    .line 171
    move-wide v15, v5

    .line 172
    iget-wide v5, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    .line 174
    cmp-long v5, v15, v5

    .line 175
    .line 176
    if-lez v5, :cond_5

    .line 177
    .line 178
    const/4 v5, 0x1

    .line 179
    goto :goto_5

    .line 180
    :cond_5
    const/4 v5, 0x0

    .line 181
    :goto_5
    monitor-exit v4

    .line 182
    if-eqz v5, :cond_6

    .line 183
    .line 184
    invoke-interface {v3, v11, v12}, Lokio/BufferedSource;->skip(J)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 188
    .line 189
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->n:Lokhttp3/internal/http2/ErrorCode;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->e(Lokhttp3/internal/http2/ErrorCode;)V

    .line 192
    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_6
    if-eqz v2, :cond_7

    .line 196
    .line 197
    invoke-interface {v3, v11, v12}, Lokio/BufferedSource;->skip(J)V

    .line 198
    .line 199
    .line 200
    goto :goto_9

    .line 201
    :cond_7
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->l:Lokio/Buffer;

    .line 202
    .line 203
    invoke-interface {v3, v11, v12, v2}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    const-wide/16 v15, -0x1

    .line 208
    .line 209
    cmp-long v2, v4, v15

    .line 210
    .line 211
    if-eqz v2, :cond_b

    .line 212
    .line 213
    sub-long/2addr v11, v4

    .line 214
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->o:Lokhttp3/internal/http2/Http2Stream;

    .line 215
    .line 216
    monitor-enter v2

    .line 217
    :try_start_1
    iget-boolean v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->n:Z

    .line 218
    .line 219
    if-eqz v4, :cond_8

    .line 220
    .line 221
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->l:Lokio/Buffer;

    .line 222
    .line 223
    iget-wide v5, v4, Lokio/Buffer;->k:J

    .line 224
    .line 225
    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->skip(J)V

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    goto :goto_8

    .line 231
    :cond_8
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->m:Lokio/Buffer;

    .line 232
    .line 233
    iget-wide v5, v4, Lokio/Buffer;->k:J

    .line 234
    .line 235
    cmp-long v5, v5, p2

    .line 236
    .line 237
    if-nez v5, :cond_9

    .line 238
    .line 239
    const/4 v5, 0x1

    .line 240
    goto :goto_6

    .line 241
    :cond_9
    const/4 v5, 0x0

    .line 242
    :goto_6
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->l:Lokio/Buffer;

    .line 243
    .line 244
    invoke-virtual {v4, v6}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 245
    .line 246
    .line 247
    if-eqz v5, :cond_a

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .line 251
    .line 252
    :cond_a
    :goto_7
    monitor-exit v2

    .line 253
    goto :goto_4

    .line 254
    :goto_8
    monitor-exit v2

    .line 255
    throw v0

    .line 256
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    monitor-exit v4

    .line 264
    throw v0

    .line 265
    :cond_c
    sget-object v1, Lokhttp3/internal/Util;->a:[B

    .line 266
    .line 267
    iget-object v1, v4, Lokhttp3/internal/http2/Http2Stream;->b:Lokhttp3/internal/http2/Http2Connection;

    .line 268
    .line 269
    invoke-virtual {v1, v13, v14}, Lokhttp3/internal/http2/Http2Connection;->w(J)V

    .line 270
    .line 271
    .line 272
    :goto_9
    if-eqz v7, :cond_d

    .line 273
    .line 274
    sget-object v1, Lokhttp3/internal/Util;->b:Lokhttp3/Headers;

    .line 275
    .line 276
    const/4 v2, 0x1

    .line 277
    invoke-virtual {v9, v1, v2}, Lokhttp3/internal/http2/Http2Stream;->i(Lokhttp3/Headers;Z)V

    .line 278
    .line 279
    .line 280
    :cond_d
    :goto_a
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 281
    .line 282
    int-to-long v1, v8

    .line 283
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_e
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 288
    .line 289
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_f
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 294
    .line 295
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public final n(IIII)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->k:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 2
    .line 3
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->n:I

    .line 4
    .line 5
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->k:I

    .line 6
    .line 7
    iput p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->o:I

    .line 8
    .line 9
    iput p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->l:I

    .line 10
    .line 11
    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->m:I

    .line 12
    .line 13
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Reader;->l:Lokhttp3/internal/http2/Hpack$Reader;

    .line 14
    .line 15
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Lokio/RealBufferedSource;

    .line 16
    .line 17
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lokio/RealBufferedSource;->J()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_c

    .line 24
    .line 25
    invoke-virtual {p1}, Lokio/RealBufferedSource;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    sget-object p4, Lokhttp3/internal/Util;->a:[B

    .line 30
    .line 31
    and-int/lit16 p4, p3, 0xff

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/16 v1, 0x80

    .line 35
    .line 36
    if-eq p4, v1, :cond_b

    .line 37
    .line 38
    and-int/lit16 v2, p3, 0x80

    .line 39
    .line 40
    if-ne v2, v1, :cond_3

    .line 41
    .line 42
    const/16 p3, 0x7f

    .line 43
    .line 44
    invoke-virtual {p0, p4, p3}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    add-int/lit8 p4, p3, -0x1

    .line 49
    .line 50
    if-ltz p4, :cond_1

    .line 51
    .line 52
    sget-object v1, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 53
    .line 54
    array-length v2, v1

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    if-gt p4, v2, :cond_1

    .line 58
    .line 59
    aget-object p3, v1, p4

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    sub-int/2addr p4, v1

    .line 69
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    add-int/2addr v1, p4

    .line 74
    if-ltz v1, :cond_2

    .line 75
    .line 76
    iget-object p4, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 77
    .line 78
    array-length v2, p4

    .line 79
    if-ge v1, v2, :cond_2

    .line 80
    .line 81
    aget-object p3, p4, v1

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string p0, "Header index too large "

    .line 91
    .line 92
    invoke-static {p3, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_3
    const/16 v1, 0x40

    .line 101
    .line 102
    if-ne p4, v1, :cond_4

    .line 103
    .line 104
    sget-object p3, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 105
    .line 106
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p3}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 118
    .line 119
    invoke-direct {v0, p3, p4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Hpack$Reader;->c(Lokhttp3/internal/http2/Header;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    and-int/lit8 v2, p3, 0x40

    .line 127
    .line 128
    if-ne v2, v1, :cond_5

    .line 129
    .line 130
    const/16 p3, 0x3f

    .line 131
    .line 132
    invoke-virtual {p0, p4, p3}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    add-int/lit8 p3, p3, -0x1

    .line 137
    .line 138
    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)Lokio/ByteString;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 147
    .line 148
    invoke-direct {v0, p3, p4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Hpack$Reader;->c(Lokhttp3/internal/http2/Header;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_5
    and-int/lit8 p3, p3, 0x20

    .line 157
    .line 158
    const/16 v1, 0x20

    .line 159
    .line 160
    if-ne p3, v1, :cond_8

    .line 161
    .line 162
    const/16 p3, 0x1f

    .line 163
    .line 164
    invoke-virtual {p0, p4, p3}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    iput p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 169
    .line 170
    if-ltz p3, :cond_7

    .line 171
    .line 172
    const/16 p4, 0x1000

    .line 173
    .line 174
    if-gt p3, p4, :cond_7

    .line 175
    .line 176
    iget p4, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 177
    .line 178
    if-ge p3, p4, :cond_0

    .line 179
    .line 180
    if-nez p3, :cond_6

    .line 181
    .line 182
    iget-object p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 183
    .line 184
    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 185
    .line 186
    .line 187
    iget-object p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 188
    .line 189
    array-length p3, p3

    .line 190
    add-int/lit8 p3, p3, -0x1

    .line 191
    .line 192
    iput p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 193
    .line 194
    const/4 p3, 0x0

    .line 195
    iput p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 196
    .line 197
    iput p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_6
    sub-int/2addr p4, p3

    .line 202
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->a(I)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 208
    .line 209
    iget p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 210
    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p3, "Invalid dynamic table size update "

    .line 214
    .line 215
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_8
    const/16 p3, 0x10

    .line 230
    .line 231
    if-eq p4, p3, :cond_a

    .line 232
    .line 233
    if-nez p4, :cond_9

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_9
    const/16 p3, 0xf

    .line 237
    .line 238
    invoke-virtual {p0, p4, p3}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    add-int/lit8 p3, p3, -0x1

    .line 243
    .line 244
    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)Lokio/ByteString;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 253
    .line 254
    invoke-direct {v0, p3, p4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_a
    :goto_1
    sget-object p3, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 263
    .line 264
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-static {p3}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 276
    .line 277
    invoke-direct {v0, p3, p4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_b
    const-string p0, "index == 0"

    .line 286
    .line 287
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_c
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 296
    .line 297
    .line 298
    return-object p0
.end method

.method public final q(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 9

    .line 1
    if-eqz p4, :cond_9

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v7, v1

    .line 12
    :goto_0
    and-int/lit8 v0, p3, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 17
    .line 18
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v3, Lokhttp3/internal/Util;->a:[B

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    and-int/lit8 v3, p3, 0x20

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 33
    .line 34
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 38
    .line 39
    .line 40
    sget-object v3, Lokhttp3/internal/Util;->a:[B

    .line 41
    .line 42
    add-int/lit8 p2, p2, -0x5

    .line 43
    .line 44
    :cond_2
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->n(IIII)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object v5, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 53
    .line 54
    sget-object p1, Lokhttp3/internal/http2/Http2Connection;->I:Lokhttp3/internal/http2/Settings;

    .line 55
    .line 56
    if-eqz p4, :cond_3

    .line 57
    .line 58
    and-int/lit8 p1, p4, 0x1

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    move v1, v2

    .line 63
    :cond_3
    const-wide/16 p1, 0x0

    .line 64
    .line 65
    const/16 p3, 0x5b

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/concurrent/TaskQueue;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v2, v5, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p3, "] onHeaders"

    .line 88
    .line 89
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$execute$default$1;

    .line 97
    .line 98
    move v6, p4

    .line 99
    move v8, v7

    .line 100
    move-object v7, p0

    .line 101
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    move v4, p4

    .line 109
    monitor-enter v5

    .line 110
    :try_start_0
    invoke-virtual {v5, v4}, Lokhttp3/internal/http2/Http2Connection;->n(I)Lokhttp3/internal/http2/Http2Stream;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    if-nez p4, :cond_8

    .line 115
    .line 116
    iget-boolean p4, v5, Lokhttp3/internal/http2/Http2Connection;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    if-eqz p4, :cond_5

    .line 119
    .line 120
    monitor-exit v5

    .line 121
    return-void

    .line 122
    :cond_5
    :try_start_1
    iget p4, v5, Lokhttp3/internal/http2/Http2Connection;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    if-gt v4, p4, :cond_6

    .line 125
    .line 126
    monitor-exit v5

    .line 127
    return-void

    .line 128
    :cond_6
    :try_start_2
    rem-int/lit8 p4, v4, 0x2

    .line 129
    .line 130
    iget v0, v5, Lokhttp3/internal/http2/Http2Connection;->n:I

    .line 131
    .line 132
    rem-int/lit8 v0, v0, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    if-ne p4, v0, :cond_7

    .line 135
    .line 136
    monitor-exit v5

    .line 137
    return-void

    .line 138
    :cond_7
    :try_start_3
    invoke-static {p0}, Lokhttp3/internal/Util;->r(Ljava/util/List;)Lokhttp3/Headers;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    new-instance v3, Lokhttp3/internal/http2/Http2Stream;

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    .line 146
    .line 147
    .line 148
    iput v4, v5, Lokhttp3/internal/http2/Http2Connection;->m:I

    .line 149
    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iget-object p4, v5, Lokhttp3/internal/http2/Http2Connection;->k:Ljava/util/LinkedHashMap;

    .line 155
    .line 156
    invoke-interface {p4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    iget-object p0, v5, Lokhttp3/internal/http2/Http2Connection;->p:Lokhttp3/internal/concurrent/TaskRunner;

    .line 160
    .line 161
    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskRunner;->e()Lokhttp3/internal/concurrent/TaskQueue;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    new-instance p4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p3, "] onStream"

    .line 182
    .line 183
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    new-instance p4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1;

    .line 191
    .line 192
    invoke-direct {p4, p3, v5, v3}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Stream;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p4, p1, p2}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    .line 197
    .line 198
    monitor-exit v5

    .line 199
    return-void

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    move-object p0, v0

    .line 202
    goto :goto_2

    .line 203
    :cond_8
    monitor-exit v5

    .line 204
    invoke-static {p0}, Lokhttp3/internal/Util;->r(Ljava/util/List;)Lokhttp3/Headers;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p4, p0, v7}, Lokhttp3/internal/http2/Http2Stream;->i(Lokhttp3/Headers;Z)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :goto_2
    monitor-exit v5

    .line 213
    throw p0

    .line 214
    :cond_9
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 215
    .line 216
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public final v(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;III)V
    .locals 3

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 8
    .line 9
    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lokhttp3/internal/Util;->a:[B

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->j:Lokio/BufferedSource;

    .line 20
    .line 21
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const v2, 0x7fffffff

    .line 26
    .line 27
    .line 28
    and-int/2addr v1, v2

    .line 29
    add-int/lit8 p2, p2, -0x4

    .line 30
    .line 31
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->n(IIII)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->k:Lokhttp3/internal/http2/Http2Connection;

    .line 40
    .line 41
    monitor-enter p1

    .line 42
    :try_start_0
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->H:Ljava/util/LinkedHashSet;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    sget-object p0, Lokhttp3/internal/http2/ErrorCode;->l:Lokhttp3/internal/http2/ErrorCode;

    .line 55
    .line 56
    invoke-virtual {p1, v1, p0}, Lokhttp3/internal/http2/Http2Connection;->E(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p1

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :try_start_1
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->H:Ljava/util/LinkedHashSet;

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p1

    .line 73
    iget-object p2, p1, Lokhttp3/internal/http2/Http2Connection;->r:Lokhttp3/internal/concurrent/TaskQueue;

    .line 74
    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object p4, p1, Lokhttp3/internal/http2/Http2Connection;->l:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 p4, 0x5b

    .line 86
    .line 87
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p4, "] onRequest"

    .line 94
    .line 95
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance p4, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$execute$default$1;

    .line 103
    .line 104
    invoke-direct {p4, p3, p1, v1, p0}, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$execute$default$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 p0, 0x0

    .line 108
    .line 109
    invoke-virtual {p2, p4, p0, p1}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/Task;J)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :goto_1
    monitor-exit p1

    .line 114
    throw p0

    .line 115
    :cond_2
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 116
    .line 117
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
