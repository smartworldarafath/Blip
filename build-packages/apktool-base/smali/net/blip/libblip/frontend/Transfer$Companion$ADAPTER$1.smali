.class public final Lnet/blip/libblip/frontend/Transfer$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Transfer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->m:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 7
    .line 8
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->m:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const-string v5, ""

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const-wide/16 v8, 0x0

    .line 19
    .line 20
    move-object v11, v5

    .line 21
    move-object v12, v11

    .line 22
    move-object v10, v6

    .line 23
    move-object v13, v10

    .line 24
    move-object v14, v13

    .line 25
    move v15, v7

    .line 26
    move/from16 v16, v15

    .line 27
    .line 28
    move/from16 v18, v16

    .line 29
    .line 30
    move/from16 v19, v18

    .line 31
    .line 32
    move/from16 v23, v19

    .line 33
    .line 34
    move-wide/from16 v20, v8

    .line 35
    .line 36
    move-object v5, v2

    .line 37
    move-object v7, v12

    .line 38
    move-object v8, v14

    .line 39
    move-object v9, v8

    .line 40
    :goto_0
    move-object/from16 p0, v0

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v0, -0x1

    .line 47
    if-eq v2, v0, :cond_e

    .line 48
    .line 49
    const/16 v0, 0x64

    .line 50
    .line 51
    sget-object v17, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 52
    .line 53
    if-eq v2, v0, :cond_d

    .line 54
    .line 55
    const/16 v0, 0xc8

    .line 56
    .line 57
    if-eq v2, v0, :cond_c

    .line 58
    .line 59
    const/16 v0, 0x12c

    .line 60
    .line 61
    sget-object v22, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 62
    .line 63
    if-eq v2, v0, :cond_b

    .line 64
    .line 65
    const/16 v0, 0x190

    .line 66
    .line 67
    if-eq v2, v0, :cond_a

    .line 68
    .line 69
    const/16 v0, 0x2bc

    .line 70
    .line 71
    if-eq v2, v0, :cond_9

    .line 72
    .line 73
    const/16 v0, 0x320

    .line 74
    .line 75
    if-eq v2, v0, :cond_8

    .line 76
    .line 77
    const/16 v0, 0x384

    .line 78
    .line 79
    move-object/from16 v24, v5

    .line 80
    .line 81
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 82
    .line 83
    if-eq v2, v0, :cond_7

    .line 84
    .line 85
    const/16 v0, 0x3e8

    .line 86
    .line 87
    if-eq v2, v0, :cond_6

    .line 88
    .line 89
    const/16 v0, 0x44c

    .line 90
    .line 91
    if-eq v2, v0, :cond_5

    .line 92
    .line 93
    const/16 v0, 0x514

    .line 94
    .line 95
    if-eq v2, v0, :cond_4

    .line 96
    .line 97
    const/16 v0, 0x258

    .line 98
    .line 99
    if-eq v2, v0, :cond_3

    .line 100
    .line 101
    const/16 v0, 0x259

    .line 102
    .line 103
    if-eq v2, v0, :cond_2

    .line 104
    .line 105
    const/16 v0, 0x4b0

    .line 106
    .line 107
    if-eq v2, v0, :cond_1

    .line 108
    .line 109
    const/16 v0, 0x4b1

    .line 110
    .line 111
    if-eq v2, v0, :cond_0

    .line 112
    .line 113
    packed-switch v2, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v26, v6

    .line 120
    .line 121
    move-object/from16 v25, v7

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :pswitch_0
    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    move/from16 v16, v0

    .line 136
    .line 137
    :goto_1
    move-object/from16 v5, v24

    .line 138
    .line 139
    :goto_2
    move-object/from16 v0, p0

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    move-object v12, v0

    .line 150
    goto :goto_1

    .line 151
    :pswitch_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    move-object v11, v0

    .line 159
    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    move/from16 v23, v0

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_1
    sget-object v0, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object v13, v0

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object v10, v0

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    move-object v9, v0

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v14, v0

    .line 201
    goto :goto_1

    .line 202
    :cond_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 208
    .line 209
    .line 210
    move-result-wide v20

    .line 211
    move-object/from16 v0, p0

    .line 212
    .line 213
    move-object/from16 v5, v24

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_6
    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    move/from16 v19, v0

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_7
    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    move/from16 v18, v0

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_8
    move-object/from16 v24, v5

    .line 244
    .line 245
    :try_start_0
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Status;->l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    move-object v5, v0

    .line 252
    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 255
    .line 256
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 257
    .line 258
    move-object/from16 v26, v6

    .line 259
    .line 260
    move-object/from16 v25, v7

    .line 261
    .line 262
    int-to-long v6, v0

    .line 263
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_9
    move-object/from16 v24, v5

    .line 272
    .line 273
    move-object/from16 v26, v6

    .line 274
    .line 275
    move-object/from16 v25, v7

    .line 276
    .line 277
    :try_start_1
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->l:Lnet/blip/libblip/frontend/Transfer$Direction$Companion$ADAPTER$1;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :goto_3
    move-object/from16 v5, v24

    .line 284
    .line 285
    move-object/from16 v7, v25

    .line 286
    .line 287
    move-object/from16 v6, v26

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :catch_1
    move-exception v0

    .line 292
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 293
    .line 294
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 295
    .line 296
    int-to-long v6, v0

    .line 297
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :goto_4
    move-object/from16 v0, p0

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_a
    move-object/from16 v24, v5

    .line 308
    .line 309
    move-object/from16 v26, v6

    .line 310
    .line 311
    move-object/from16 v25, v7

    .line 312
    .line 313
    sget-object v0, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lbsarchive/Metadata$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    move-object v8, v0

    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_b
    move-object/from16 v24, v5

    .line 323
    .line 324
    move-object/from16 v26, v6

    .line 325
    .line 326
    move-object/from16 v25, v7

    .line 327
    .line 328
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    move v15, v0

    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_c
    move-object/from16 v24, v5

    .line 339
    .line 340
    move-object/from16 v25, v7

    .line 341
    .line 342
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    move-object v6, v0

    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_d
    move-object/from16 v24, v5

    .line 352
    .line 353
    move-object/from16 v26, v6

    .line 354
    .line 355
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    move-object v7, v0

    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :cond_e
    move-object/from16 v24, v5

    .line 366
    .line 367
    move-object/from16 v26, v6

    .line 368
    .line 369
    move-object/from16 v25, v7

    .line 370
    .line 371
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    new-instance v6, Lnet/blip/libblip/frontend/Transfer;

    .line 376
    .line 377
    move-object/from16 v1, v26

    .line 378
    .line 379
    check-cast v1, Lnet/blip/libblip/PeerId;

    .line 380
    .line 381
    check-cast v8, Lbsarchive/Metadata;

    .line 382
    .line 383
    check-cast v9, Lnet/blip/libblip/frontend/TransferErr;

    .line 384
    .line 385
    check-cast v10, Lnet/blip/libblip/frontend/TransferErr;

    .line 386
    .line 387
    move-object/from16 v2, p0

    .line 388
    .line 389
    check-cast v2, Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 390
    .line 391
    move-object/from16 v17, v24

    .line 392
    .line 393
    check-cast v17, Lnet/blip/libblip/frontend/Transfer$Status;

    .line 394
    .line 395
    move-object/from16 v22, v13

    .line 396
    .line 397
    check-cast v22, Lnet/blip/libblip/frontend/ConnStats;

    .line 398
    .line 399
    move-object/from16 v24, v14

    .line 400
    .line 401
    check-cast v24, Ljava/time/Instant;

    .line 402
    .line 403
    move-object v14, v9

    .line 404
    move v9, v15

    .line 405
    move/from16 v13, v16

    .line 406
    .line 407
    move-object/from16 v25, v0

    .line 408
    .line 409
    move-object/from16 v16, v2

    .line 410
    .line 411
    move-object v15, v10

    .line 412
    move-object v10, v8

    .line 413
    move-object v8, v1

    .line 414
    invoke-direct/range {v6 .. v25}, Lnet/blip/libblip/frontend/Transfer;-><init>(Ljava/lang/String;Lnet/blip/libblip/PeerId;ILbsarchive/Metadata;Ljava/lang/String;Ljava/lang/String;ZLnet/blip/libblip/frontend/TransferErr;Lnet/blip/libblip/frontend/TransferErr;Lnet/blip/libblip/frontend/Transfer$Direction;Lnet/blip/libblip/frontend/Transfer$Status;ZZJLnet/blip/libblip/frontend/ConnStats;ILjava/time/Instant;Lokio/ByteString;)V

    .line 415
    .line 416
    .line 417
    return-object v6

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->r:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->q:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x64

    .line 26
    .line 27
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p2, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    sget-object v3, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 35
    .line 36
    const/16 v5, 0xc8

    .line 37
    .line 38
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v1, p2, Lnet/blip/libblip/frontend/Transfer;->o:I

    .line 42
    .line 43
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x12c

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p2, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    sget-object v5, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 61
    .line 62
    const/16 v6, 0x190

    .line 63
    .line 64
    invoke-virtual {v5, p1, v6, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    const/16 v1, 0x1f4

    .line 74
    .line 75
    invoke-virtual {v4, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    const/16 v0, 0x1f5

    .line 85
    .line 86
    invoke-virtual {v4, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Transfer;->s:Z

    .line 90
    .line 91
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 92
    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    const/16 v1, 0x1f6

    .line 96
    .line 97
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 105
    .line 106
    if-eqz p0, :cond_7

    .line 107
    .line 108
    sget-object v1, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 109
    .line 110
    const/16 v2, 0x258

    .line 111
    .line 112
    invoke-virtual {v1, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 116
    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    sget-object v1, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 120
    .line 121
    const/16 v2, 0x259

    .line 122
    .line 123
    invoke-virtual {v1, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_8
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 127
    .line 128
    sget-object v1, Lnet/blip/libblip/frontend/Transfer$Direction;->m:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 129
    .line 130
    if-eq p0, v1, :cond_9

    .line 131
    .line 132
    sget-object v1, Lnet/blip/libblip/frontend/Transfer$Direction;->l:Lnet/blip/libblip/frontend/Transfer$Direction$Companion$ADAPTER$1;

    .line 133
    .line 134
    const/16 v2, 0x2bc

    .line 135
    .line 136
    invoke-virtual {v1, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_9
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 140
    .line 141
    sget-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->m:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 142
    .line 143
    if-eq p0, v1, :cond_a

    .line 144
    .line 145
    sget-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 146
    .line 147
    const/16 v2, 0x320

    .line 148
    .line 149
    invoke-virtual {v1, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_a
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Transfer;->x:Z

    .line 153
    .line 154
    if-eqz p0, :cond_b

    .line 155
    .line 156
    const/16 v1, 0x384

    .line 157
    .line 158
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_b
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Transfer;->y:Z

    .line 166
    .line 167
    if-eqz p0, :cond_c

    .line 168
    .line 169
    const/16 v1, 0x3e8

    .line 170
    .line 171
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_c
    iget-wide v0, p2, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 179
    .line 180
    const-wide/16 v4, 0x0

    .line 181
    .line 182
    cmp-long p0, v0, v4

    .line 183
    .line 184
    if-eqz p0, :cond_d

    .line 185
    .line 186
    const/16 p0, 0x44c

    .line 187
    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 193
    .line 194
    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_d
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->A:Lnet/blip/libblip/frontend/ConnStats;

    .line 198
    .line 199
    if-eqz p0, :cond_e

    .line 200
    .line 201
    sget-object v0, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 202
    .line 203
    const/16 v1, 0x4b0

    .line 204
    .line 205
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_e
    iget p0, p2, Lnet/blip/libblip/frontend/Transfer;->B:I

    .line 209
    .line 210
    if-eqz p0, :cond_f

    .line 211
    .line 212
    const/16 v0, 0x4b1

    .line 213
    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v3, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_f
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->C:Ljava/time/Instant;

    .line 222
    .line 223
    if-eqz p0, :cond_10

    .line 224
    .line 225
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 226
    .line 227
    const/16 v1, 0x514

    .line 228
    .line 229
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_10
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->q:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/frontend/Transfer;->r:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->C:Ljava/time/Instant;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 27
    .line 28
    const/16 v4, 0x514

    .line 29
    .line 30
    invoke-virtual {v3, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget v2, p2, Lnet/blip/libblip/frontend/Transfer;->B:I

    .line 34
    .line 35
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x4b1

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->A:Lnet/blip/libblip/frontend/ConnStats;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    sget-object v4, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 53
    .line 54
    const/16 v5, 0x4b0

    .line 55
    .line 56
    invoke-virtual {v4, p1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-wide v4, p2, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 60
    .line 61
    const-wide/16 v6, 0x0

    .line 62
    .line 63
    cmp-long v2, v4, v6

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    const/16 v2, 0x44c

    .line 68
    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 74
    .line 75
    invoke-virtual {v5, p1, v2, v4}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-boolean v2, p2, Lnet/blip/libblip/frontend/Transfer;->y:Z

    .line 79
    .line 80
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    const/16 v5, 0x3e8

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v4, p1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-boolean v2, p2, Lnet/blip/libblip/frontend/Transfer;->x:Z

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    const/16 v5, 0x384

    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v4, p1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 107
    .line 108
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Status;->m:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 109
    .line 110
    if-eq v2, v5, :cond_6

    .line 111
    .line 112
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Status;->l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 113
    .line 114
    const/16 v6, 0x320

    .line 115
    .line 116
    invoke-virtual {v5, p1, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 120
    .line 121
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Direction;->m:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 122
    .line 123
    if-eq v2, v5, :cond_7

    .line 124
    .line 125
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Direction;->l:Lnet/blip/libblip/frontend/Transfer$Direction$Companion$ADAPTER$1;

    .line 126
    .line 127
    const/16 v6, 0x2bc

    .line 128
    .line 129
    invoke-virtual {v5, p1, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 133
    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    sget-object v5, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 137
    .line 138
    const/16 v6, 0x259

    .line 139
    .line 140
    invoke-virtual {v5, p1, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_8
    iget-object v2, p2, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 144
    .line 145
    if-eqz v2, :cond_9

    .line 146
    .line 147
    sget-object v5, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 148
    .line 149
    const/16 v6, 0x258

    .line 150
    .line 151
    invoke-virtual {v5, p1, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_9
    iget-boolean v2, p2, Lnet/blip/libblip/frontend/Transfer;->s:Z

    .line 155
    .line 156
    if-eqz v2, :cond_a

    .line 157
    .line 158
    const/16 v5, 0x1f6

    .line 159
    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v4, p1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    const-string v2, ""

    .line 168
    .line 169
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 174
    .line 175
    if-nez v4, :cond_b

    .line 176
    .line 177
    const/16 v4, 0x1f5

    .line 178
    .line 179
    invoke-virtual {v5, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_b
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_c

    .line 187
    .line 188
    const/16 v1, 0x1f4

    .line 189
    .line 190
    invoke-virtual {v5, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_c
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    sget-object v1, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 198
    .line 199
    const/16 v4, 0x190

    .line 200
    .line 201
    invoke-virtual {v1, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_d
    iget v0, p2, Lnet/blip/libblip/frontend/Transfer;->o:I

    .line 205
    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    const/16 v1, 0x12c

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v3, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_e
    iget-object p2, p2, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 218
    .line 219
    if-eqz p2, :cond_f

    .line 220
    .line 221
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 222
    .line 223
    const/16 v1, 0xc8

    .line 224
    .line 225
    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_10

    .line 233
    .line 234
    const/16 p2, 0x64

    .line 235
    .line 236
    invoke-virtual {v5, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_10
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->r:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/blip/libblip/frontend/Transfer;->q:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lokio/ByteString;->e()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p1, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const/16 v4, 0x64

    .line 31
    .line 32
    invoke-virtual {v5, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    :cond_0
    iget-object v2, p1, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    sget-object v4, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 42
    .line 43
    const/16 v6, 0xc8

    .line 44
    .line 45
    invoke-virtual {v4, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v1, v2

    .line 50
    :cond_1
    iget v2, p1, Lnet/blip/libblip/frontend/Transfer;->o:I

    .line 51
    .line 52
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x12c

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v4, v6, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int/2addr v1, v2

    .line 67
    :cond_2
    iget-object v2, p1, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    sget-object v6, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 72
    .line 73
    const/16 v7, 0x190

    .line 74
    .line 75
    invoke-virtual {v6, v7, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v1, v2

    .line 80
    :cond_3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    const/16 v2, 0x1f4

    .line 87
    .line 88
    invoke-virtual {v5, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v1, v0

    .line 93
    :cond_4
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    const/16 v0, 0x1f5

    .line 100
    .line 101
    invoke-virtual {v5, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    add-int/2addr v1, p0

    .line 106
    :cond_5
    iget-boolean p0, p1, Lnet/blip/libblip/frontend/Transfer;->s:Z

    .line 107
    .line 108
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 109
    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    const/16 v2, 0x1f6

    .line 113
    .line 114
    invoke-static {p0, v0, v2, v1}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :cond_6
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 119
    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 123
    .line 124
    const/16 v3, 0x258

    .line 125
    .line 126
    invoke-virtual {v2, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    add-int/2addr v1, p0

    .line 131
    :cond_7
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 132
    .line 133
    if-eqz p0, :cond_8

    .line 134
    .line 135
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 136
    .line 137
    const/16 v3, 0x259

    .line 138
    .line 139
    invoke-virtual {v2, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    add-int/2addr v1, p0

    .line 144
    :cond_8
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 145
    .line 146
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Direction;->m:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 147
    .line 148
    if-eq p0, v2, :cond_9

    .line 149
    .line 150
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Direction;->l:Lnet/blip/libblip/frontend/Transfer$Direction$Companion$ADAPTER$1;

    .line 151
    .line 152
    const/16 v3, 0x2bc

    .line 153
    .line 154
    invoke-virtual {v2, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    add-int/2addr v1, p0

    .line 159
    :cond_9
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 160
    .line 161
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->m:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 162
    .line 163
    if-eq p0, v2, :cond_a

    .line 164
    .line 165
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Status;->l:Lnet/blip/libblip/frontend/Transfer$Status$Companion$ADAPTER$1;

    .line 166
    .line 167
    const/16 v3, 0x320

    .line 168
    .line 169
    invoke-virtual {v2, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    add-int/2addr v1, p0

    .line 174
    :cond_a
    iget-boolean p0, p1, Lnet/blip/libblip/frontend/Transfer;->x:Z

    .line 175
    .line 176
    if-eqz p0, :cond_b

    .line 177
    .line 178
    const/16 v2, 0x384

    .line 179
    .line 180
    invoke-static {p0, v0, v2, v1}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    :cond_b
    iget-boolean p0, p1, Lnet/blip/libblip/frontend/Transfer;->y:Z

    .line 185
    .line 186
    if-eqz p0, :cond_c

    .line 187
    .line 188
    const/16 v2, 0x3e8

    .line 189
    .line 190
    invoke-static {p0, v0, v2, v1}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    :cond_c
    iget-wide v2, p1, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 195
    .line 196
    const-wide/16 v5, 0x0

    .line 197
    .line 198
    cmp-long p0, v2, v5

    .line 199
    .line 200
    if-eqz p0, :cond_d

    .line 201
    .line 202
    const/16 p0, 0x44c

    .line 203
    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 209
    .line 210
    invoke-virtual {v2, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    add-int/2addr v1, p0

    .line 215
    :cond_d
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->A:Lnet/blip/libblip/frontend/ConnStats;

    .line 216
    .line 217
    if-eqz p0, :cond_e

    .line 218
    .line 219
    sget-object v0, Lnet/blip/libblip/frontend/ConnStats;->s:Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;

    .line 220
    .line 221
    const/16 v2, 0x4b0

    .line 222
    .line 223
    invoke-virtual {v0, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    add-int/2addr v1, p0

    .line 228
    :cond_e
    iget p0, p1, Lnet/blip/libblip/frontend/Transfer;->B:I

    .line 229
    .line 230
    if-eqz p0, :cond_f

    .line 231
    .line 232
    const/16 v0, 0x4b1

    .line 233
    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {v4, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    add-int/2addr v1, p0

    .line 243
    :cond_f
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->C:Ljava/time/Instant;

    .line 244
    .line 245
    if-eqz p0, :cond_10

    .line 246
    .line 247
    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 248
    .line 249
    const/16 v0, 0x514

    .line 250
    .line 251
    invoke-virtual {p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    add-int/2addr p0, v1

    .line 256
    return p0

    .line 257
    :cond_10
    return v1
.end method
