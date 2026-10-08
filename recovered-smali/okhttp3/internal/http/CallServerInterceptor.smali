.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokhttp3/Interceptor;


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Connection"

    .line 4
    .line 5
    const-string v2, "close"

    .line 6
    .line 7
    const-string v3, "HTTP "

    .line 8
    .line 9
    iget-object v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v4, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 15
    .line 16
    iget-object v6, v4, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 17
    .line 18
    iget-object v7, v4, Lokhttp3/internal/connection/Exchange;->f:Lokhttp3/internal/connection/RealConnection;

    .line 19
    .line 20
    iget-object v8, v4, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 21
    .line 22
    iget-object v9, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 23
    .line 24
    iget-object v0, v9, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v10

    .line 30
    const/4 v13, 0x1

    .line 31
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v6, v9}, Lokhttp3/internal/http/ExchangeCodec;->b(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object v15, v9, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v15}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 43
    if-eqz v15, :cond_4

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    :try_start_2
    const-string v15, "100-continue"

    .line 48
    .line 49
    const-string v12, "Expect"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    .line 51
    :try_start_3
    iget-object v14, v9, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 52
    .line 53
    invoke-virtual {v14, v12}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 57
    :try_start_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    :try_start_5
    invoke-interface {v6}, Lokhttp3/internal/http/ExchangeCodec;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 64
    .line 65
    .line 66
    :try_start_6
    invoke-virtual {v4, v13}, Lokhttp3/internal/connection/Exchange;->d(Z)Lokhttp3/Response$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 70
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 71
    .line 72
    .line 73
    move-object v14, v12

    .line 74
    const/4 v12, 0x0

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    move-object/from16 v16, v6

    .line 78
    .line 79
    :goto_0
    const/4 v6, 0x0

    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :catch_1
    move-exception v0

    .line 83
    :goto_1
    move-object/from16 v16, v6

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :catch_2
    move-exception v0

    .line 90
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 94
    .line 95
    .line 96
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 97
    :cond_0
    move v12, v13

    .line 98
    const/4 v14, 0x0

    .line 99
    :goto_2
    if-nez v14, :cond_1

    .line 100
    .line 101
    :try_start_9
    invoke-virtual {v4, v9}, Lokhttp3/internal/connection/Exchange;->b(Lokhttp3/Request;)Lokio/Sink;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v13, Lokio/RealBufferedSink;

    .line 106
    .line 107
    invoke-direct {v13, v5}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v13}, Lokhttp3/RequestBody;->b(Lokio/RealBufferedSink;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13}, Lokio/RealBufferedSink;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 114
    .line 115
    .line 116
    move-object/from16 v16, v6

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catch_3
    move-exception v0

    .line 120
    move-object/from16 v16, v6

    .line 121
    .line 122
    :goto_3
    move v13, v12

    .line 123
    move-object v12, v14

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    move-object/from16 v16, v6

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v15, 0x0

    .line 129
    :try_start_a
    invoke-virtual {v5, v4, v13, v15, v6}, Lokhttp3/internal/connection/RealCall;->g(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 130
    .line 131
    .line 132
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_2
    const/4 v13, 0x0

    .line 138
    :goto_4
    if-nez v13, :cond_3

    .line 139
    .line 140
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->e()Lokhttp3/internal/connection/RealConnection;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->k()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_5
    move v13, v12

    .line 148
    move-object v12, v14

    .line 149
    const/4 v6, 0x0

    .line 150
    goto :goto_6

    .line 151
    :catch_4
    move-exception v0

    .line 152
    goto :goto_3

    .line 153
    :catch_5
    move-exception v0

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    move-object/from16 v16, v6

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v15, 0x0

    .line 159
    :try_start_b
    invoke-virtual {v5, v4, v13, v15, v6}, Lokhttp3/internal/connection/RealCall;->g(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 160
    .line 161
    .line 162
    move-object v12, v6

    .line 163
    :goto_6
    :try_start_c
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 164
    .line 165
    .line 166
    move-object v5, v6

    .line 167
    :goto_7
    move v15, v13

    .line 168
    goto :goto_a

    .line 169
    :catch_6
    move-exception v0

    .line 170
    :try_start_d
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 171
    .line 172
    .line 173
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 174
    :catch_7
    move-exception v0

    .line 175
    goto :goto_9

    .line 176
    :catch_8
    move-exception v0

    .line 177
    :goto_8
    move-object v12, v6

    .line 178
    goto :goto_9

    .line 179
    :catch_9
    move-exception v0

    .line 180
    move-object/from16 v16, v6

    .line 181
    .line 182
    const/4 v6, 0x0

    .line 183
    goto :goto_8

    .line 184
    :catch_a
    move-exception v0

    .line 185
    move-object/from16 v16, v6

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 192
    .line 193
    .line 194
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 195
    :goto_9
    instance-of v5, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 196
    .line 197
    if-nez v5, :cond_11

    .line 198
    .line 199
    iget-boolean v5, v4, Lokhttp3/internal/connection/Exchange;->e:Z

    .line 200
    .line 201
    if-eqz v5, :cond_10

    .line 202
    .line 203
    move-object v5, v0

    .line 204
    goto :goto_7

    .line 205
    :goto_a
    if-nez v12, :cond_5

    .line 206
    .line 207
    const/4 v13, 0x0

    .line 208
    :try_start_f
    invoke-virtual {v4, v13}, Lokhttp3/internal/connection/Exchange;->d(Z)Lokhttp3/Response$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    if-eqz v15, :cond_5

    .line 216
    .line 217
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    goto :goto_b

    .line 222
    :catch_b
    move-exception v0

    .line 223
    goto/16 :goto_10

    .line 224
    .line 225
    :cond_5
    :goto_b
    iput-object v9, v12, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 226
    .line 227
    iget-object v0, v7, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 228
    .line 229
    iput-object v0, v12, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 230
    .line 231
    iput-wide v10, v12, Lokhttp3/Response$Builder;->k:J

    .line 232
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    .line 235
    .line 236
    move-result-wide v13

    .line 237
    iput-wide v13, v12, Lokhttp3/Response$Builder;->l:J

    .line 238
    .line 239
    invoke-virtual {v12}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget v12, v0, Lokhttp3/Response;->m:I

    .line 244
    .line 245
    const/16 v13, 0x64

    .line 246
    .line 247
    if-ne v12, v13, :cond_6

    .line 248
    .line 249
    :goto_c
    const/4 v13, 0x0

    .line 250
    goto :goto_d

    .line 251
    :cond_6
    const/16 v13, 0x66

    .line 252
    .line 253
    if-gt v13, v12, :cond_8

    .line 254
    .line 255
    const/16 v13, 0xc8

    .line 256
    .line 257
    if-ge v12, v13, :cond_8

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :goto_d
    invoke-virtual {v4, v13}, Lokhttp3/internal/connection/Exchange;->d(Z)Lokhttp3/Response$Builder;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    if-eqz v15, :cond_7

    .line 268
    .line 269
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    :cond_7
    iput-object v9, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 273
    .line 274
    iget-object v7, v7, Lokhttp3/internal/connection/RealConnection;->e:Lokhttp3/Handshake;

    .line 275
    .line 276
    iput-object v7, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 277
    .line 278
    iput-wide v10, v0, Lokhttp3/Response$Builder;->k:J

    .line 279
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 281
    .line 282
    .line 283
    move-result-wide v9

    .line 284
    iput-wide v9, v0, Lokhttp3/Response$Builder;->l:J

    .line 285
    .line 286
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget v12, v0, Lokhttp3/Response;->m:I

    .line 291
    .line 292
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lokhttp3/Response;->h()Lokhttp3/Response$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v4, v0}, Lokhttp3/internal/connection/Exchange;->c(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, v7, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 304
    .line 305
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v4, v0, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    iget-object v4, v4, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 315
    .line 316
    invoke-virtual {v4, v1}, Lokhttp3/Headers;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_9

    .line 325
    .line 326
    invoke-static {v1, v0}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_a

    .line 335
    .line 336
    :cond_9
    invoke-interface/range {v16 .. v16}, Lokhttp3/internal/http/ExchangeCodec;->e()Lokhttp3/internal/connection/RealConnection;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->k()V

    .line 341
    .line 342
    .line 343
    :cond_a
    const/16 v1, 0xcc

    .line 344
    .line 345
    if-eq v12, v1, :cond_b

    .line 346
    .line 347
    const/16 v1, 0xcd

    .line 348
    .line 349
    if-ne v12, v1, :cond_e

    .line 350
    .line 351
    :cond_b
    iget-object v1, v0, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 352
    .line 353
    if-eqz v1, :cond_c

    .line 354
    .line 355
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->a()J

    .line 356
    .line 357
    .line 358
    move-result-wide v1

    .line 359
    goto :goto_e

    .line 360
    :cond_c
    const-wide/16 v1, -0x1

    .line 361
    .line 362
    :goto_e
    const-wide/16 v7, 0x0

    .line 363
    .line 364
    cmp-long v1, v1, v7

    .line 365
    .line 366
    if-lez v1, :cond_e

    .line 367
    .line 368
    new-instance v1, Ljava/net/ProtocolException;

    .line 369
    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v3, " had non-zero Content-Length: "

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object v0, v0, Lokhttp3/Response;->p:Lokhttp3/ResponseBody;

    .line 384
    .line 385
    if-eqz v0, :cond_d

    .line 386
    .line 387
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()J

    .line 388
    .line 389
    .line 390
    move-result-wide v3

    .line 391
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 392
    .line 393
    .line 394
    move-result-object v14

    .line 395
    goto :goto_f

    .line 396
    :cond_d
    move-object v14, v6

    .line 397
    :goto_f
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 408
    :cond_e
    return-object v0

    .line 409
    :goto_10
    if-eqz v5, :cond_f

    .line 410
    .line 411
    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    throw v5

    .line 415
    :cond_f
    throw v0

    .line 416
    :cond_10
    throw v0

    .line 417
    :cond_11
    throw v0
.end method
