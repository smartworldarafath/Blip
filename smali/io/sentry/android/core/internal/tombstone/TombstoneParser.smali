.class public Lio/sentry/android/core/internal/tombstone/TombstoneParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
    }
.end annotation


# instance fields
.field public final j:Ljava/io/InputStream;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->n:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->j:Ljava/io/InputStream;

    .line 12
    .line 13
    iput-object p2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->k:Ljava/util/List;

    .line 14
    .line 15
    iput-object p3, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->l:Ljava/util/List;

    .line 16
    .line 17
    iput-object p4, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->m:Ljava/lang/String;

    .line 18
    .line 19
    const-string p0, "SIGILL"

    .line 20
    .line 21
    const-string p1, "IllegalInstruction"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string p0, "SIGTRAP"

    .line 27
    .line 28
    const-string p1, "Trap"

    .line 29
    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string p0, "SIGABRT"

    .line 34
    .line 35
    const-string p1, "Abort"

    .line 36
    .line 37
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string p0, "SIGBUS"

    .line 41
    .line 42
    const-string p1, "BusError"

    .line 43
    .line 44
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string p0, "SIGFPE"

    .line 48
    .line 49
    const-string p1, "FloatingPointException"

    .line 50
    .line 51
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p0, "SIGSEGV"

    .line 55
    .line 56
    const-string p1, "Segfault"

    .line 57
    .line 58
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/SentryEvent;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->j:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_3d

    .line 6
    .line 7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    const/16 v4, 0x2000

    .line 13
    .line 14
    new-array v4, v4, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, -0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    if-eq v5, v6, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lcom/abovevacant/epitaph/io/WireReader;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([B)V

    .line 35
    .line 36
    .line 37
    new-instance v11, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v14, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v15, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v4, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v8, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v21, ""

    .line 78
    .line 79
    move v9, v7

    .line 80
    move v10, v9

    .line 81
    move-object/from16 v13, v21

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_1
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 85
    .line 86
    .line 87
    move-result v16

    .line 88
    const/16 v22, 0x0

    .line 89
    .line 90
    const-wide/16 v23, 0x0

    .line 91
    .line 92
    if-eqz v16, :cond_25

    .line 93
    .line 94
    ushr-int/lit8 v7, v16, 0x3

    .line 95
    .line 96
    and-int/lit8 v1, v16, 0x7

    .line 97
    .line 98
    move/from16 v16, v9

    .line 99
    .line 100
    const/4 v9, 0x2

    .line 101
    packed-switch v7, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v20, v2

    .line 108
    .line 109
    move-object/from16 v26, v3

    .line 110
    .line 111
    move/from16 v18, v10

    .line 112
    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :pswitch_1
    invoke-static {v7, v9, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 128
    .line 129
    .line 130
    move-result v18

    .line 131
    if-eqz v18, :cond_7

    .line 132
    .line 133
    ushr-int/lit8 v9, v18, 0x3

    .line 134
    .line 135
    move-object/from16 v20, v2

    .line 136
    .line 137
    and-int/lit8 v2, v18, 0x7

    .line 138
    .line 139
    move/from16 v18, v10

    .line 140
    .line 141
    const/4 v10, 0x1

    .line 142
    if-eq v9, v10, :cond_6

    .line 143
    .line 144
    const/4 v10, 0x2

    .line 145
    if-eq v9, v10, :cond_1

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v23, v1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_1
    invoke-static {v9, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_3
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_5

    .line 165
    .line 166
    ushr-int/lit8 v10, v9, 0x3

    .line 167
    .line 168
    and-int/lit8 v9, v9, 0x7

    .line 169
    .line 170
    move-object/from16 v23, v1

    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    if-eq v10, v1, :cond_4

    .line 174
    .line 175
    const/4 v1, 0x2

    .line 176
    if-eq v10, v1, :cond_3

    .line 177
    .line 178
    const/4 v1, 0x3

    .line 179
    if-eq v10, v1, :cond_2

    .line 180
    .line 181
    invoke-virtual {v2, v9}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_2
    const/4 v1, 0x0

    .line 186
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_3
    const/4 v1, 0x0

    .line 194
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_4
    const/4 v1, 0x2

    .line 202
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->a(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 210
    .line 211
    .line 212
    :goto_4
    move-object/from16 v1, v23

    .line 213
    .line 214
    const/4 v10, 0x2

    .line 215
    goto :goto_3

    .line 216
    :cond_5
    move-object/from16 v23, v1

    .line 217
    .line 218
    new-instance v1, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :goto_5
    const/4 v10, 0x0

    .line 227
    goto :goto_6

    .line 228
    :cond_6
    move-object/from16 v23, v1

    .line 229
    .line 230
    const/4 v10, 0x0

    .line 231
    invoke-static {v9, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {v23 .. v23}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 235
    .line 236
    .line 237
    :goto_6
    move/from16 v10, v18

    .line 238
    .line 239
    move-object/from16 v2, v20

    .line 240
    .line 241
    move-object/from16 v1, v23

    .line 242
    .line 243
    const/4 v9, 0x2

    .line 244
    goto :goto_2

    .line 245
    :cond_7
    move-object/from16 v20, v2

    .line 246
    .line 247
    move/from16 v18, v10

    .line 248
    .line 249
    const/4 v10, 0x0

    .line 250
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    :cond_8
    :goto_7
    move-object/from16 v26, v3

    .line 254
    .line 255
    :cond_9
    :goto_8
    move/from16 v9, v16

    .line 256
    .line 257
    :goto_9
    move/from16 v10, v18

    .line 258
    .line 259
    goto/16 :goto_21

    .line 260
    .line 261
    :pswitch_2
    move-object/from16 v20, v2

    .line 262
    .line 263
    move v2, v9

    .line 264
    move/from16 v18, v10

    .line 265
    .line 266
    const/4 v10, 0x0

    .line 267
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1, v4}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->c(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/HashMap;)V

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :pswitch_3
    move-object/from16 v20, v2

    .line 279
    .line 280
    move/from16 v18, v10

    .line 281
    .line 282
    const/4 v10, 0x0

    .line 283
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    long-to-int v1, v1

    .line 291
    invoke-static {}, Lcom/abovevacant/epitaph/core/Architecture;->values()[Lcom/abovevacant/epitaph/core/Architecture;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    array-length v7, v2

    .line 296
    const/4 v9, 0x0

    .line 297
    :goto_a
    if-ge v9, v7, :cond_8

    .line 298
    .line 299
    aget-object v10, v2, v9

    .line 300
    .line 301
    iget v10, v10, Lcom/abovevacant/epitaph/core/Architecture;->j:I

    .line 302
    .line 303
    if-ne v10, v1, :cond_a

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :pswitch_4
    move-object/from16 v20, v2

    .line 310
    .line 311
    move/from16 v18, v10

    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :pswitch_5
    move-object/from16 v20, v2

    .line 322
    .line 323
    move/from16 v18, v10

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :pswitch_6
    move-object/from16 v20, v2

    .line 334
    .line 335
    move v2, v9

    .line 336
    move/from16 v18, v10

    .line 337
    .line 338
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    :goto_b
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    if-eqz v7, :cond_d

    .line 350
    .line 351
    ushr-int/lit8 v9, v7, 0x3

    .line 352
    .line 353
    and-int/lit8 v7, v7, 0x7

    .line 354
    .line 355
    const/4 v10, 0x1

    .line 356
    if-eq v9, v10, :cond_c

    .line 357
    .line 358
    if-eq v9, v2, :cond_b

    .line 359
    .line 360
    invoke-virtual {v1, v7}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_b
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 368
    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_c
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->c()[B

    .line 375
    .line 376
    .line 377
    goto :goto_b

    .line 378
    :cond_d
    new-instance v1, Lcom/abovevacant/epitaph/core/CrashDetail;

    .line 379
    .line 380
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto/16 :goto_7

    .line 387
    .line 388
    :pswitch_7
    move-object/from16 v20, v2

    .line 389
    .line 390
    move/from16 v18, v10

    .line 391
    .line 392
    const/4 v10, 0x0

    .line 393
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 397
    .line 398
    .line 399
    goto/16 :goto_7

    .line 400
    .line 401
    :pswitch_8
    move-object/from16 v20, v2

    .line 402
    .line 403
    move v2, v9

    .line 404
    move/from16 v18, v10

    .line 405
    .line 406
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 407
    .line 408
    .line 409
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    :goto_c
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-eqz v7, :cond_12

    .line 418
    .line 419
    ushr-int/lit8 v9, v7, 0x3

    .line 420
    .line 421
    and-int/lit8 v7, v7, 0x7

    .line 422
    .line 423
    const/4 v10, 0x1

    .line 424
    if-eq v9, v10, :cond_11

    .line 425
    .line 426
    if-eq v9, v2, :cond_10

    .line 427
    .line 428
    const/4 v10, 0x3

    .line 429
    if-eq v9, v10, :cond_f

    .line 430
    .line 431
    const/4 v10, 0x4

    .line 432
    if-eq v9, v10, :cond_e

    .line 433
    .line 434
    invoke-virtual {v1, v7}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 435
    .line 436
    .line 437
    goto :goto_c

    .line 438
    :cond_e
    const/4 v10, 0x0

    .line 439
    invoke-static {v9, v10, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 443
    .line 444
    .line 445
    goto :goto_c

    .line 446
    :cond_f
    const/4 v10, 0x0

    .line 447
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    goto :goto_c

    .line 454
    :cond_10
    const/4 v10, 0x0

    .line 455
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_11
    const/4 v10, 0x0

    .line 463
    invoke-static {v9, v10, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 467
    .line 468
    .line 469
    goto :goto_c

    .line 470
    :cond_12
    new-instance v1, Lcom/abovevacant/epitaph/core/FD;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    goto/16 :goto_7

    .line 479
    .line 480
    :pswitch_9
    move-object/from16 v20, v2

    .line 481
    .line 482
    move v2, v9

    .line 483
    move/from16 v18, v10

    .line 484
    .line 485
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 486
    .line 487
    .line 488
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .line 496
    .line 497
    :goto_d
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    if-eqz v7, :cond_16

    .line 502
    .line 503
    ushr-int/lit8 v9, v7, 0x3

    .line 504
    .line 505
    and-int/lit8 v7, v7, 0x7

    .line 506
    .line 507
    const/4 v10, 0x1

    .line 508
    if-eq v9, v10, :cond_15

    .line 509
    .line 510
    const/4 v10, 0x2

    .line 511
    if-eq v9, v10, :cond_13

    .line 512
    .line 513
    invoke-virtual {v1, v7}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 514
    .line 515
    .line 516
    move-object/from16 v17, v1

    .line 517
    .line 518
    move v1, v10

    .line 519
    goto/16 :goto_11

    .line 520
    .line 521
    :cond_13
    invoke-static {v9, v10, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    :goto_e
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-eqz v9, :cond_14

    .line 533
    .line 534
    ushr-int/lit8 v10, v9, 0x3

    .line 535
    .line 536
    and-int/lit8 v9, v9, 0x7

    .line 537
    .line 538
    packed-switch v10, :pswitch_data_1

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7, v9}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 542
    .line 543
    .line 544
    move-object/from16 v17, v1

    .line 545
    .line 546
    :goto_f
    const/4 v1, 0x2

    .line 547
    goto :goto_10

    .line 548
    :pswitch_a
    move-object/from16 v17, v1

    .line 549
    .line 550
    const/4 v1, 0x2

    .line 551
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    goto :goto_10

    .line 558
    :pswitch_b
    move-object/from16 v17, v1

    .line 559
    .line 560
    const/4 v1, 0x2

    .line 561
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    goto :goto_f

    .line 568
    :pswitch_c
    move-object/from16 v17, v1

    .line 569
    .line 570
    const/4 v1, 0x0

    .line 571
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 575
    .line 576
    .line 577
    goto :goto_f

    .line 578
    :pswitch_d
    move-object/from16 v17, v1

    .line 579
    .line 580
    const/4 v1, 0x0

    .line 581
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 585
    .line 586
    .line 587
    goto :goto_f

    .line 588
    :pswitch_e
    move-object/from16 v17, v1

    .line 589
    .line 590
    const/4 v1, 0x0

    .line 591
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 595
    .line 596
    .line 597
    goto :goto_f

    .line 598
    :pswitch_f
    move-object/from16 v17, v1

    .line 599
    .line 600
    const/4 v1, 0x2

    .line 601
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    :goto_10
    move-object/from16 v1, v17

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_14
    move-object/from16 v17, v1

    .line 611
    .line 612
    const/4 v1, 0x2

    .line 613
    new-instance v7, Lcom/abovevacant/epitaph/core/LogMessage;

    .line 614
    .line 615
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    goto :goto_11

    .line 622
    :cond_15
    move-object/from16 v17, v1

    .line 623
    .line 624
    const/4 v1, 0x2

    .line 625
    invoke-static {v9, v1, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 626
    .line 627
    .line 628
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    :goto_11
    move-object/from16 v1, v17

    .line 632
    .line 633
    goto/16 :goto_d

    .line 634
    .line 635
    :cond_16
    new-instance v1, Lcom/abovevacant/epitaph/core/LogBuffer;

    .line 636
    .line 637
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    goto/16 :goto_7

    .line 647
    .line 648
    :pswitch_10
    move-object/from16 v20, v2

    .line 649
    .line 650
    move v2, v9

    .line 651
    move/from16 v18, v10

    .line 652
    .line 653
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 654
    .line 655
    .line 656
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    move-object/from16 v33, v21

    .line 661
    .line 662
    move-object/from16 v34, v33

    .line 663
    .line 664
    move-wide/from16 v26, v23

    .line 665
    .line 666
    move-wide/from16 v28, v26

    .line 667
    .line 668
    move-wide/from16 v30, v28

    .line 669
    .line 670
    const/16 v32, 0x0

    .line 671
    .line 672
    :goto_12
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-eqz v2, :cond_17

    .line 677
    .line 678
    ushr-int/lit8 v7, v2, 0x3

    .line 679
    .line 680
    and-int/lit8 v2, v2, 0x7

    .line 681
    .line 682
    packed-switch v7, :pswitch_data_2

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v2}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 686
    .line 687
    .line 688
    goto :goto_12

    .line 689
    :pswitch_11
    const/4 v10, 0x0

    .line 690
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 694
    .line 695
    .line 696
    goto :goto_12

    .line 697
    :pswitch_12
    const/4 v9, 0x2

    .line 698
    const/4 v10, 0x0

    .line 699
    invoke-static {v7, v9, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v34

    .line 706
    goto :goto_12

    .line 707
    :pswitch_13
    const/4 v9, 0x2

    .line 708
    const/4 v10, 0x0

    .line 709
    invoke-static {v7, v9, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v33

    .line 716
    goto :goto_12

    .line 717
    :pswitch_14
    const/4 v10, 0x0

    .line 718
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 722
    .line 723
    .line 724
    goto :goto_12

    .line 725
    :pswitch_15
    const/4 v10, 0x0

    .line 726
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 730
    .line 731
    .line 732
    goto :goto_12

    .line 733
    :pswitch_16
    const/4 v10, 0x0

    .line 734
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    move/from16 v32, v2

    .line 742
    .line 743
    goto :goto_12

    .line 744
    :pswitch_17
    const/4 v10, 0x0

    .line 745
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 749
    .line 750
    .line 751
    move-result-wide v23

    .line 752
    move-wide/from16 v30, v23

    .line 753
    .line 754
    goto :goto_12

    .line 755
    :pswitch_18
    const/4 v10, 0x0

    .line 756
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 760
    .line 761
    .line 762
    move-result-wide v23

    .line 763
    move-wide/from16 v28, v23

    .line 764
    .line 765
    goto :goto_12

    .line 766
    :pswitch_19
    const/4 v10, 0x0

    .line 767
    invoke-static {v7, v10, v2}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 771
    .line 772
    .line 773
    move-result-wide v9

    .line 774
    move-wide/from16 v26, v9

    .line 775
    .line 776
    goto :goto_12

    .line 777
    :cond_17
    new-instance v25, Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 778
    .line 779
    invoke-direct/range {v25 .. v34}, Lcom/abovevacant/epitaph/core/MemoryMapping;-><init>(JJJZLjava/lang/String;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    move-object/from16 v1, v25

    .line 783
    .line 784
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    goto/16 :goto_7

    .line 788
    .line 789
    :pswitch_1a
    move-object/from16 v20, v2

    .line 790
    .line 791
    move v2, v9

    .line 792
    move/from16 v18, v10

    .line 793
    .line 794
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 795
    .line 796
    .line 797
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-static {v1, v3}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->c(Lcom/abovevacant/epitaph/io/WireReader;Ljava/util/HashMap;)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_7

    .line 805
    .line 806
    :pswitch_1b
    move-object/from16 v20, v2

    .line 807
    .line 808
    move v2, v9

    .line 809
    move/from16 v18, v10

    .line 810
    .line 811
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 812
    .line 813
    .line 814
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    :goto_13
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 819
    .line 820
    .line 821
    move-result v7

    .line 822
    if-eqz v7, :cond_22

    .line 823
    .line 824
    ushr-int/lit8 v9, v7, 0x3

    .line 825
    .line 826
    and-int/lit8 v7, v7, 0x7

    .line 827
    .line 828
    const/4 v10, 0x1

    .line 829
    if-eq v9, v10, :cond_21

    .line 830
    .line 831
    if-eq v9, v2, :cond_19

    .line 832
    .line 833
    invoke-virtual {v1, v7}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 834
    .line 835
    .line 836
    :cond_18
    move-object/from16 v23, v1

    .line 837
    .line 838
    move-object/from16 v26, v3

    .line 839
    .line 840
    goto/16 :goto_1b

    .line 841
    .line 842
    :cond_19
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    :goto_14
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 850
    .line 851
    .line 852
    move-result v9

    .line 853
    if-eqz v9, :cond_18

    .line 854
    .line 855
    ushr-int/lit8 v10, v9, 0x3

    .line 856
    .line 857
    and-int/lit8 v9, v9, 0x7

    .line 858
    .line 859
    move-object/from16 v23, v1

    .line 860
    .line 861
    const/4 v1, 0x1

    .line 862
    if-eq v10, v1, :cond_1e

    .line 863
    .line 864
    if-eq v10, v2, :cond_1c

    .line 865
    .line 866
    const/4 v1, 0x3

    .line 867
    if-eq v10, v1, :cond_1a

    .line 868
    .line 869
    invoke-virtual {v7, v9}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 870
    .line 871
    .line 872
    move-object/from16 v26, v3

    .line 873
    .line 874
    goto/16 :goto_1a

    .line 875
    .line 876
    :cond_1a
    invoke-static {v10, v2, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    new-instance v9, Ljava/util/ArrayList;

    .line 884
    .line 885
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .line 887
    .line 888
    new-instance v10, Ljava/util/ArrayList;

    .line 889
    .line 890
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .line 892
    .line 893
    :goto_15
    invoke-virtual {v2}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 894
    .line 895
    .line 896
    move-result v17

    .line 897
    if-eqz v17, :cond_1b

    .line 898
    .line 899
    ushr-int/lit8 v1, v17, 0x3

    .line 900
    .line 901
    move-object/from16 v26, v3

    .line 902
    .line 903
    and-int/lit8 v3, v17, 0x7

    .line 904
    .line 905
    packed-switch v1, :pswitch_data_3

    .line 906
    .line 907
    .line 908
    invoke-virtual {v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 909
    .line 910
    .line 911
    move-object/from16 v17, v2

    .line 912
    .line 913
    goto :goto_16

    .line 914
    :pswitch_1c
    move-object/from16 v17, v2

    .line 915
    .line 916
    const/4 v2, 0x2

    .line 917
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 918
    .line 919
    .line 920
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->a(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    goto :goto_16

    .line 932
    :pswitch_1d
    move-object/from16 v17, v2

    .line 933
    .line 934
    const/4 v2, 0x0

    .line 935
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 936
    .line 937
    .line 938
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 939
    .line 940
    .line 941
    goto :goto_17

    .line 942
    :pswitch_1e
    move-object/from16 v17, v2

    .line 943
    .line 944
    const/4 v2, 0x2

    .line 945
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 946
    .line 947
    .line 948
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->a(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    :goto_16
    const/4 v2, 0x0

    .line 960
    goto :goto_17

    .line 961
    :pswitch_1f
    move-object/from16 v17, v2

    .line 962
    .line 963
    const/4 v2, 0x0

    .line 964
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 965
    .line 966
    .line 967
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 968
    .line 969
    .line 970
    goto :goto_17

    .line 971
    :pswitch_20
    move-object/from16 v17, v2

    .line 972
    .line 973
    const/4 v2, 0x0

    .line 974
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 975
    .line 976
    .line 977
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 978
    .line 979
    .line 980
    goto :goto_17

    .line 981
    :pswitch_21
    move-object/from16 v17, v2

    .line 982
    .line 983
    const/4 v2, 0x0

    .line 984
    invoke-static {v1, v2, v3}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 985
    .line 986
    .line 987
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 988
    .line 989
    .line 990
    :goto_17
    move-object/from16 v2, v17

    .line 991
    .line 992
    move-object/from16 v3, v26

    .line 993
    .line 994
    const/4 v1, 0x3

    .line 995
    goto :goto_15

    .line 996
    :cond_1b
    move-object/from16 v26, v3

    .line 997
    .line 998
    const/4 v2, 0x0

    .line 999
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1003
    .line 1004
    .line 1005
    goto :goto_1a

    .line 1006
    :cond_1c
    move-object/from16 v26, v3

    .line 1007
    .line 1008
    const/4 v2, 0x0

    .line 1009
    invoke-static {v10, v2, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v1

    .line 1016
    long-to-int v1, v1

    .line 1017
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Type;->values()[Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    array-length v3, v2

    .line 1022
    const/4 v9, 0x0

    .line 1023
    :goto_18
    if-ge v9, v3, :cond_20

    .line 1024
    .line 1025
    aget-object v10, v2, v9

    .line 1026
    .line 1027
    iget v10, v10, Lcom/abovevacant/epitaph/core/MemoryError$Type;->j:I

    .line 1028
    .line 1029
    if-ne v10, v1, :cond_1d

    .line 1030
    .line 1031
    goto :goto_1a

    .line 1032
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 1033
    .line 1034
    goto :goto_18

    .line 1035
    :cond_1e
    move-object/from16 v26, v3

    .line 1036
    .line 1037
    const/4 v1, 0x0

    .line 1038
    invoke-static {v10, v1, v9}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v7}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v1

    .line 1045
    long-to-int v1, v1

    .line 1046
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    array-length v3, v2

    .line 1051
    const/4 v9, 0x0

    .line 1052
    :goto_19
    if-ge v9, v3, :cond_20

    .line 1053
    .line 1054
    aget-object v10, v2, v9

    .line 1055
    .line 1056
    iget v10, v10, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->j:I

    .line 1057
    .line 1058
    if-ne v10, v1, :cond_1f

    .line 1059
    .line 1060
    goto :goto_1a

    .line 1061
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    .line 1062
    .line 1063
    goto :goto_19

    .line 1064
    :cond_20
    :goto_1a
    move-object/from16 v1, v23

    .line 1065
    .line 1066
    move-object/from16 v3, v26

    .line 1067
    .line 1068
    const/4 v2, 0x2

    .line 1069
    goto/16 :goto_14

    .line 1070
    .line 1071
    :cond_21
    move-object/from16 v23, v1

    .line 1072
    .line 1073
    move-object/from16 v26, v3

    .line 1074
    .line 1075
    invoke-static {v9, v2, v7}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual/range {v23 .. v23}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    :goto_1b
    move-object/from16 v1, v23

    .line 1082
    .line 1083
    move-object/from16 v3, v26

    .line 1084
    .line 1085
    goto/16 :goto_13

    .line 1086
    .line 1087
    :cond_22
    move-object/from16 v26, v3

    .line 1088
    .line 1089
    new-instance v1, Lcom/abovevacant/epitaph/core/Cause;

    .line 1090
    .line 1091
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_8

    .line 1098
    .line 1099
    :pswitch_22
    move-object/from16 v20, v2

    .line 1100
    .line 1101
    move-object/from16 v26, v3

    .line 1102
    .line 1103
    move v2, v9

    .line 1104
    move/from16 v18, v10

    .line 1105
    .line 1106
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v13

    .line 1113
    :goto_1c
    move/from16 v9, v16

    .line 1114
    .line 1115
    goto/16 :goto_21

    .line 1116
    .line 1117
    :pswitch_23
    move-object/from16 v20, v2

    .line 1118
    .line 1119
    move-object/from16 v26, v3

    .line 1120
    .line 1121
    move v2, v9

    .line 1122
    move/from16 v18, v10

    .line 1123
    .line 1124
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    move-object/from16 v7, v21

    .line 1132
    .line 1133
    move-object v9, v7

    .line 1134
    const/4 v2, 0x0

    .line 1135
    const/4 v3, 0x0

    .line 1136
    :goto_1d
    invoke-virtual {v1}, Lcom/abovevacant/epitaph/io/WireReader;->f()I

    .line 1137
    .line 1138
    .line 1139
    move-result v10

    .line 1140
    if-eqz v10, :cond_23

    .line 1141
    .line 1142
    ushr-int/lit8 v12, v10, 0x3

    .line 1143
    .line 1144
    and-int/lit8 v10, v10, 0x7

    .line 1145
    .line 1146
    packed-switch v12, :pswitch_data_4

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->h(I)V

    .line 1150
    .line 1151
    .line 1152
    move-object/from16 v17, v1

    .line 1153
    .line 1154
    goto/16 :goto_1f

    .line 1155
    .line 1156
    :pswitch_24
    move-object/from16 v17, v1

    .line 1157
    .line 1158
    const/4 v1, 0x2

    .line 1159
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->d()Lcom/abovevacant/epitaph/io/WireReader;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v1

    .line 1166
    invoke-static {v1}, Lcom/abovevacant/epitaph/wire/TombstoneDecoder;->b(Lcom/abovevacant/epitaph/io/WireReader;)Lcom/abovevacant/epitaph/core/MemoryDump;

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_1f

    .line 1170
    .line 1171
    :pswitch_25
    move-object/from16 v17, v1

    .line 1172
    .line 1173
    const/4 v1, 0x0

    .line 1174
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1178
    .line 1179
    .line 1180
    goto/16 :goto_1f

    .line 1181
    .line 1182
    :pswitch_26
    move-object/from16 v17, v1

    .line 1183
    .line 1184
    const/4 v1, 0x0

    .line 1185
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 1189
    .line 1190
    .line 1191
    goto :goto_1f

    .line 1192
    :pswitch_27
    move-object/from16 v17, v1

    .line 1193
    .line 1194
    const/4 v1, 0x0

    .line 1195
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1199
    .line 1200
    .line 1201
    goto :goto_1f

    .line 1202
    :pswitch_28
    move-object/from16 v17, v1

    .line 1203
    .line 1204
    const/4 v1, 0x0

    .line 1205
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1209
    .line 1210
    .line 1211
    goto :goto_1f

    .line 1212
    :pswitch_29
    move-object/from16 v17, v1

    .line 1213
    .line 1214
    const/4 v1, 0x0

    .line 1215
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->b()Z

    .line 1219
    .line 1220
    .line 1221
    goto :goto_1f

    .line 1222
    :pswitch_2a
    move-object/from16 v17, v1

    .line 1223
    .line 1224
    const/4 v1, 0x0

    .line 1225
    const/4 v9, 0x2

    .line 1226
    invoke-static {v12, v9, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v10

    .line 1233
    move-object v9, v10

    .line 1234
    goto :goto_1f

    .line 1235
    :pswitch_2b
    move-object/from16 v17, v1

    .line 1236
    .line 1237
    const/4 v1, 0x0

    .line 1238
    const/16 v19, 0x2

    .line 1239
    .line 1240
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1241
    .line 1242
    .line 1243
    move/from16 v23, v2

    .line 1244
    .line 1245
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v1

    .line 1249
    long-to-int v1, v1

    .line 1250
    move v3, v1

    .line 1251
    :goto_1e
    move/from16 v2, v23

    .line 1252
    .line 1253
    goto :goto_1f

    .line 1254
    :pswitch_2c
    move-object/from16 v17, v1

    .line 1255
    .line 1256
    move/from16 v23, v2

    .line 1257
    .line 1258
    const/4 v2, 0x2

    .line 1259
    invoke-static {v12, v2, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v7

    .line 1266
    goto :goto_1e

    .line 1267
    :pswitch_2d
    move-object/from16 v17, v1

    .line 1268
    .line 1269
    const/4 v1, 0x0

    .line 1270
    const/4 v2, 0x2

    .line 1271
    invoke-static {v12, v1, v10}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1272
    .line 1273
    .line 1274
    move v1, v3

    .line 1275
    invoke-virtual/range {v17 .. v17}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1276
    .line 1277
    .line 1278
    move-result-wide v2

    .line 1279
    long-to-int v2, v2

    .line 1280
    move v3, v1

    .line 1281
    :goto_1f
    move-object/from16 v1, v17

    .line 1282
    .line 1283
    goto/16 :goto_1d

    .line 1284
    .line 1285
    :cond_23
    move/from16 v23, v2

    .line 1286
    .line 1287
    move v1, v3

    .line 1288
    new-instance v12, Lcom/abovevacant/epitaph/core/Signal;

    .line 1289
    .line 1290
    invoke-direct {v12, v2, v1, v7, v9}, Lcom/abovevacant/epitaph/core/Signal;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    goto/16 :goto_8

    .line 1294
    .line 1295
    :pswitch_2e
    move-object/from16 v20, v2

    .line 1296
    .line 1297
    move-object/from16 v26, v3

    .line 1298
    .line 1299
    move v2, v9

    .line 1300
    move/from16 v18, v10

    .line 1301
    .line 1302
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_8

    .line 1313
    .line 1314
    :pswitch_2f
    move-object/from16 v20, v2

    .line 1315
    .line 1316
    move-object/from16 v26, v3

    .line 1317
    .line 1318
    move v2, v9

    .line 1319
    move/from16 v18, v10

    .line 1320
    .line 1321
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    goto/16 :goto_1c

    .line 1328
    .line 1329
    :pswitch_30
    move-object/from16 v20, v2

    .line 1330
    .line 1331
    move-object/from16 v26, v3

    .line 1332
    .line 1333
    move/from16 v18, v10

    .line 1334
    .line 1335
    const/4 v10, 0x0

    .line 1336
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_8

    .line 1343
    .line 1344
    :pswitch_31
    move-object/from16 v20, v2

    .line 1345
    .line 1346
    move-object/from16 v26, v3

    .line 1347
    .line 1348
    const/4 v10, 0x0

    .line 1349
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1353
    .line 1354
    .line 1355
    move-result-wide v1

    .line 1356
    long-to-int v1, v1

    .line 1357
    move v10, v1

    .line 1358
    goto/16 :goto_1c

    .line 1359
    .line 1360
    :pswitch_32
    move-object/from16 v20, v2

    .line 1361
    .line 1362
    move-object/from16 v26, v3

    .line 1363
    .line 1364
    move/from16 v18, v10

    .line 1365
    .line 1366
    const/4 v10, 0x0

    .line 1367
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1371
    .line 1372
    .line 1373
    move-result-wide v1

    .line 1374
    long-to-int v9, v1

    .line 1375
    goto/16 :goto_9

    .line 1376
    .line 1377
    :pswitch_33
    move-object/from16 v20, v2

    .line 1378
    .line 1379
    move-object/from16 v26, v3

    .line 1380
    .line 1381
    move v2, v9

    .line 1382
    move/from16 v18, v10

    .line 1383
    .line 1384
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    goto/16 :goto_1c

    .line 1391
    .line 1392
    :pswitch_34
    move-object/from16 v20, v2

    .line 1393
    .line 1394
    move-object/from16 v26, v3

    .line 1395
    .line 1396
    move v2, v9

    .line 1397
    move/from16 v18, v10

    .line 1398
    .line 1399
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    goto/16 :goto_1c

    .line 1406
    .line 1407
    :pswitch_35
    move-object/from16 v20, v2

    .line 1408
    .line 1409
    move-object/from16 v26, v3

    .line 1410
    .line 1411
    move v2, v9

    .line 1412
    move/from16 v18, v10

    .line 1413
    .line 1414
    invoke-static {v7, v2, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->e()Ljava/lang/String;

    .line 1418
    .line 1419
    .line 1420
    goto/16 :goto_1c

    .line 1421
    .line 1422
    :pswitch_36
    move-object/from16 v20, v2

    .line 1423
    .line 1424
    move-object/from16 v26, v3

    .line 1425
    .line 1426
    move/from16 v18, v10

    .line 1427
    .line 1428
    const/4 v10, 0x0

    .line 1429
    invoke-static {v7, v10, v1}, Lcom/abovevacant/epitaph/io/WireReader;->a(III)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual/range {v20 .. v20}, Lcom/abovevacant/epitaph/io/WireReader;->g()J

    .line 1433
    .line 1434
    .line 1435
    move-result-wide v1

    .line 1436
    long-to-int v1, v1

    .line 1437
    invoke-static {}, Lcom/abovevacant/epitaph/core/Architecture;->values()[Lcom/abovevacant/epitaph/core/Architecture;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v2

    .line 1441
    array-length v3, v2

    .line 1442
    const/4 v7, 0x0

    .line 1443
    :goto_20
    if-ge v7, v3, :cond_9

    .line 1444
    .line 1445
    aget-object v9, v2, v7

    .line 1446
    .line 1447
    iget v9, v9, Lcom/abovevacant/epitaph/core/Architecture;->j:I

    .line 1448
    .line 1449
    if-ne v9, v1, :cond_24

    .line 1450
    .line 1451
    goto/16 :goto_8

    .line 1452
    .line 1453
    :cond_24
    add-int/lit8 v7, v7, 0x1

    .line 1454
    .line 1455
    goto :goto_20

    .line 1456
    :goto_21
    move-object/from16 v2, v20

    .line 1457
    .line 1458
    move-object/from16 v3, v26

    .line 1459
    .line 1460
    const/4 v7, 0x0

    .line 1461
    goto/16 :goto_1

    .line 1462
    .line 1463
    :cond_25
    move-object/from16 v26, v3

    .line 1464
    .line 1465
    move/from16 v16, v9

    .line 1466
    .line 1467
    move/from16 v18, v10

    .line 1468
    .line 1469
    new-instance v1, Lcom/abovevacant/epitaph/core/Tombstone;

    .line 1470
    .line 1471
    move-object/from16 v17, v4

    .line 1472
    .line 1473
    move-object/from16 v19, v6

    .line 1474
    .line 1475
    move-object/from16 v20, v8

    .line 1476
    .line 1477
    move-object/from16 v16, v26

    .line 1478
    .line 1479
    move-object v8, v1

    .line 1480
    move-object/from16 v18, v5

    .line 1481
    .line 1482
    invoke-direct/range {v8 .. v20}, Lcom/abovevacant/epitaph/core/Tombstone;-><init>(IILjava/util/ArrayList;Lcom/abovevacant/epitaph/core/Signal;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1483
    .line 1484
    .line 1485
    new-instance v1, Lio/sentry/SentryEvent;

    .line 1486
    .line 1487
    invoke-direct {v1}, Lio/sentry/SentryEvent;-><init>()V

    .line 1488
    .line 1489
    .line 1490
    sget-object v2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 1491
    .line 1492
    iput-object v2, v1, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 1493
    .line 1494
    const-string v2, "native"

    .line 1495
    .line 1496
    iput-object v2, v1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 1497
    .line 1498
    new-instance v2, Lio/sentry/protocol/Message;

    .line 1499
    .line 1500
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1501
    .line 1502
    .line 1503
    const-string v3, " "

    .line 1504
    .line 1505
    iget-object v4, v8, Lcom/abovevacant/epitaph/core/Tombstone;->a:Ljava/util/List;

    .line 1506
    .line 1507
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v3

    .line 1511
    iget-object v4, v8, Lcom/abovevacant/epitaph/core/Tombstone;->b:Lcom/abovevacant/epitaph/core/Signal;

    .line 1512
    .line 1513
    const-string v5, ")"

    .line 1514
    .line 1515
    const-string v6, " ("

    .line 1516
    .line 1517
    if-eqz v4, :cond_27

    .line 1518
    .line 1519
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1520
    .line 1521
    iget-object v7, v8, Lcom/abovevacant/epitaph/core/Tombstone;->c:Ljava/lang/String;

    .line 1522
    .line 1523
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 1524
    .line 1525
    .line 1526
    move-result v11

    .line 1527
    if-nez v11, :cond_26

    .line 1528
    .line 1529
    const-string v11, ": "

    .line 1530
    .line 1531
    invoke-virtual {v7, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v21

    .line 1535
    :cond_26
    move-object/from16 v7, v21

    .line 1536
    .line 1537
    iget-object v11, v4, Lcom/abovevacant/epitaph/core/Signal;->b:Ljava/lang/String;

    .line 1538
    .line 1539
    iget v12, v4, Lcom/abovevacant/epitaph/core/Signal;->a:I

    .line 1540
    .line 1541
    iget-object v13, v4, Lcom/abovevacant/epitaph/core/Signal;->d:Ljava/lang/String;

    .line 1542
    .line 1543
    iget v14, v4, Lcom/abovevacant/epitaph/core/Signal;->c:I

    .line 1544
    .line 1545
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    const-string v7, "Fatal signal "

    .line 1554
    .line 1555
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    .line 1557
    .line 1558
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    const-string v7, "), "

    .line 1568
    .line 1569
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    .line 1581
    const-string v7, "), pid = "

    .line 1582
    .line 1583
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v3

    .line 1602
    iput-object v3, v2, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 1603
    .line 1604
    goto :goto_22

    .line 1605
    :cond_27
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1606
    .line 1607
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1608
    .line 1609
    const-string v11, "Fatal exit pid = "

    .line 1610
    .line 1611
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    .line 1623
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v3

    .line 1630
    iput-object v3, v2, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 1631
    .line 1632
    :goto_22
    iput-object v2, v1, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 1633
    .line 1634
    new-instance v2, Ljava/util/ArrayList;

    .line 1635
    .line 1636
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .line 1638
    .line 1639
    iget-object v3, v8, Lcom/abovevacant/epitaph/core/Tombstone;->e:Ljava/util/List;

    .line 1640
    .line 1641
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v3

    .line 1645
    move-object/from16 v5, v22

    .line 1646
    .line 1647
    :cond_28
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1648
    .line 1649
    .line 1650
    move-result v6

    .line 1651
    if-eqz v6, :cond_2f

    .line 1652
    .line 1653
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v6

    .line 1657
    check-cast v6, Lcom/abovevacant/epitaph/core/MemoryMapping;

    .line 1658
    .line 1659
    iget-boolean v7, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->d:Z

    .line 1660
    .line 1661
    iget-object v9, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->f:Ljava/lang/String;

    .line 1662
    .line 1663
    iget-object v11, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->e:Ljava/lang/String;

    .line 1664
    .line 1665
    iget-wide v12, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->b:J

    .line 1666
    .line 1667
    if-nez v7, :cond_29

    .line 1668
    .line 1669
    goto :goto_23

    .line 1670
    :cond_29
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v7

    .line 1674
    if-nez v7, :cond_28

    .line 1675
    .line 1676
    const-string v7, "/dev/"

    .line 1677
    .line 1678
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v7

    .line 1682
    if-eqz v7, :cond_2a

    .line 1683
    .line 1684
    goto :goto_23

    .line 1685
    :cond_2a
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1686
    .line 1687
    .line 1688
    move-result v7

    .line 1689
    iget-wide v14, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->c:J

    .line 1690
    .line 1691
    cmp-long v14, v14, v23

    .line 1692
    .line 1693
    if-nez v14, :cond_2b

    .line 1694
    .line 1695
    const/4 v14, 0x1

    .line 1696
    goto :goto_24

    .line 1697
    :cond_2b
    const/4 v14, 0x0

    .line 1698
    :goto_24
    if-nez v7, :cond_2e

    .line 1699
    .line 1700
    if-eqz v14, :cond_2e

    .line 1701
    .line 1702
    if-eqz v5, :cond_2c

    .line 1703
    .line 1704
    iget-object v7, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a:Ljava/lang/String;

    .line 1705
    .line 1706
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v7

    .line 1710
    if-eqz v7, :cond_2c

    .line 1711
    .line 1712
    iput-wide v12, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->d:J

    .line 1713
    .line 1714
    goto :goto_23

    .line 1715
    :cond_2c
    if-eqz v5, :cond_2d

    .line 1716
    .line 1717
    invoke-virtual {v5}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a()Lio/sentry/protocol/DebugImage;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v5

    .line 1721
    if-eqz v5, :cond_2d

    .line 1722
    .line 1723
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    .line 1725
    .line 1726
    :cond_2d
    new-instance v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;

    .line 1727
    .line 1728
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1729
    .line 1730
    .line 1731
    iput-object v11, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a:Ljava/lang/String;

    .line 1732
    .line 1733
    iput-object v9, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->b:Ljava/lang/String;

    .line 1734
    .line 1735
    iget-wide v6, v6, Lcom/abovevacant/epitaph/core/MemoryMapping;->a:J

    .line 1736
    .line 1737
    iput-wide v6, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->c:J

    .line 1738
    .line 1739
    iput-wide v12, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->d:J

    .line 1740
    .line 1741
    goto :goto_23

    .line 1742
    :cond_2e
    if-eqz v5, :cond_28

    .line 1743
    .line 1744
    iget-object v6, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a:Ljava/lang/String;

    .line 1745
    .line 1746
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1747
    .line 1748
    .line 1749
    move-result v6

    .line 1750
    if-eqz v6, :cond_28

    .line 1751
    .line 1752
    iput-wide v12, v5, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->d:J

    .line 1753
    .line 1754
    goto :goto_23

    .line 1755
    :cond_2f
    if-eqz v5, :cond_30

    .line 1756
    .line 1757
    invoke-virtual {v5}, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a()Lio/sentry/protocol/DebugImage;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v3

    .line 1761
    if-eqz v3, :cond_30

    .line 1762
    .line 1763
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    .line 1765
    .line 1766
    :cond_30
    new-instance v3, Lio/sentry/protocol/DebugMeta;

    .line 1767
    .line 1768
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1769
    .line 1770
    .line 1771
    new-instance v5, Ljava/util/ArrayList;

    .line 1772
    .line 1773
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1774
    .line 1775
    .line 1776
    iput-object v5, v3, Lio/sentry/protocol/DebugMeta;->k:Ljava/util/List;

    .line 1777
    .line 1778
    iput-object v3, v1, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 1779
    .line 1780
    new-instance v2, Lio/sentry/protocol/SentryException;

    .line 1781
    .line 1782
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1783
    .line 1784
    .line 1785
    if-eqz v4, :cond_31

    .line 1786
    .line 1787
    iget-object v3, v4, Lcom/abovevacant/epitaph/core/Signal;->b:Ljava/lang/String;

    .line 1788
    .line 1789
    iput-object v3, v2, Lio/sentry/protocol/SentryException;->j:Ljava/lang/String;

    .line 1790
    .line 1791
    iget-object v5, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->n:Ljava/util/HashMap;

    .line 1792
    .line 1793
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v3

    .line 1797
    check-cast v3, Ljava/lang/String;

    .line 1798
    .line 1799
    iput-object v3, v2, Lio/sentry/protocol/SentryException;->k:Ljava/lang/String;

    .line 1800
    .line 1801
    new-instance v3, Lio/sentry/protocol/Mechanism;

    .line 1802
    .line 1803
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    sget-object v5, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 1807
    .line 1808
    invoke-virtual {v5}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->getValue()Ljava/lang/String;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v5

    .line 1812
    iput-object v5, v3, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 1813
    .line 1814
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1815
    .line 1816
    iput-object v5, v3, Lio/sentry/protocol/Mechanism;->m:Ljava/lang/Boolean;

    .line 1817
    .line 1818
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1819
    .line 1820
    iput-object v5, v3, Lio/sentry/protocol/Mechanism;->p:Ljava/lang/Boolean;

    .line 1821
    .line 1822
    new-instance v5, Ljava/util/HashMap;

    .line 1823
    .line 1824
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1825
    .line 1826
    .line 1827
    iget v6, v4, Lcom/abovevacant/epitaph/core/Signal;->a:I

    .line 1828
    .line 1829
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v6

    .line 1833
    const-string v7, "number"

    .line 1834
    .line 1835
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    const-string v6, "name"

    .line 1839
    .line 1840
    iget-object v7, v4, Lcom/abovevacant/epitaph/core/Signal;->b:Ljava/lang/String;

    .line 1841
    .line 1842
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    iget v6, v4, Lcom/abovevacant/epitaph/core/Signal;->c:I

    .line 1846
    .line 1847
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v6

    .line 1851
    const-string v7, "code"

    .line 1852
    .line 1853
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    .line 1855
    .line 1856
    const-string v6, "code_name"

    .line 1857
    .line 1858
    iget-object v4, v4, Lcom/abovevacant/epitaph/core/Signal;->d:Ljava/lang/String;

    .line 1859
    .line 1860
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    .line 1862
    .line 1863
    new-instance v4, Ljava/util/HashMap;

    .line 1864
    .line 1865
    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1866
    .line 1867
    .line 1868
    iput-object v4, v3, Lio/sentry/protocol/Mechanism;->n:Ljava/util/AbstractMap;

    .line 1869
    .line 1870
    iput-object v3, v2, Lio/sentry/protocol/SentryException;->o:Lio/sentry/protocol/Mechanism;

    .line 1871
    .line 1872
    :cond_31
    int-to-long v3, v10

    .line 1873
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v3

    .line 1877
    iput-object v3, v2, Lio/sentry/protocol/SentryException;->m:Ljava/lang/Long;

    .line 1878
    .line 1879
    new-instance v3, Ljava/util/ArrayList;

    .line 1880
    .line 1881
    const/4 v4, 0x1

    .line 1882
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1883
    .line 1884
    .line 1885
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v1, v3}, Lio/sentry/SentryEvent;->h(Ljava/util/ArrayList;)V

    .line 1889
    .line 1890
    .line 1891
    invoke-virtual {v1}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    const/4 v3, 0x0

    .line 1899
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v2

    .line 1903
    check-cast v2, Lio/sentry/protocol/SentryException;

    .line 1904
    .line 1905
    new-instance v3, Ljava/util/ArrayList;

    .line 1906
    .line 1907
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .line 1909
    .line 1910
    iget-object v5, v8, Lcom/abovevacant/epitaph/core/Tombstone;->d:Ljava/util/Map;

    .line 1911
    .line 1912
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v5

    .line 1916
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v5

    .line 1920
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v6

    .line 1924
    if-eqz v6, :cond_3c

    .line 1925
    .line 1926
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v6

    .line 1930
    check-cast v6, Ljava/util/Map$Entry;

    .line 1931
    .line 1932
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v7

    .line 1936
    check-cast v7, Lcom/abovevacant/epitaph/core/TombstoneThread;

    .line 1937
    .line 1938
    new-instance v8, Lio/sentry/protocol/SentryThread;

    .line 1939
    .line 1940
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1941
    .line 1942
    .line 1943
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v6

    .line 1947
    check-cast v6, Ljava/lang/Integer;

    .line 1948
    .line 1949
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1950
    .line 1951
    .line 1952
    move-result v6

    .line 1953
    int-to-long v11, v6

    .line 1954
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v6

    .line 1958
    iput-object v6, v8, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 1959
    .line 1960
    iget-object v6, v7, Lcom/abovevacant/epitaph/core/TombstoneThread;->b:Ljava/lang/String;

    .line 1961
    .line 1962
    iput-object v6, v8, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 1963
    .line 1964
    new-instance v6, Ljava/util/ArrayList;

    .line 1965
    .line 1966
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .line 1968
    .line 1969
    iget-object v9, v7, Lcom/abovevacant/epitaph/core/TombstoneThread;->d:Ljava/util/List;

    .line 1970
    .line 1971
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v9

    .line 1975
    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1976
    .line 1977
    .line 1978
    move-result v11

    .line 1979
    const-string v12, "0x%x"

    .line 1980
    .line 1981
    if-eqz v11, :cond_39

    .line 1982
    .line 1983
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v11

    .line 1987
    check-cast v11, Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 1988
    .line 1989
    iget-object v13, v11, Lcom/abovevacant/epitaph/core/BacktraceFrame;->c:Ljava/lang/String;

    .line 1990
    .line 1991
    iget-object v14, v11, Lcom/abovevacant/epitaph/core/BacktraceFrame;->b:Ljava/lang/String;

    .line 1992
    .line 1993
    const-string v15, "libart.so"

    .line 1994
    .line 1995
    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v15

    .line 1999
    if-eqz v15, :cond_32

    .line 2000
    .line 2001
    goto :goto_26

    .line 2002
    :cond_32
    const-string v15, "<anonymous"

    .line 2003
    .line 2004
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2005
    .line 2006
    .line 2007
    move-result v15

    .line 2008
    if-eqz v15, :cond_33

    .line 2009
    .line 2010
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 2011
    .line 2012
    .line 2013
    move-result v15

    .line 2014
    if-eqz v15, :cond_33

    .line 2015
    .line 2016
    goto :goto_26

    .line 2017
    :cond_33
    new-instance v15, Lio/sentry/protocol/SentryStackFrame;

    .line 2018
    .line 2019
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 2020
    .line 2021
    .line 2022
    iput-object v13, v15, Lio/sentry/protocol/SentryStackFrame;->u:Ljava/lang/String;

    .line 2023
    .line 2024
    iput-object v14, v15, Lio/sentry/protocol/SentryStackFrame;->n:Ljava/lang/String;

    .line 2025
    .line 2026
    move-object/from16 v16, v5

    .line 2027
    .line 2028
    iget-wide v4, v11, Lcom/abovevacant/epitaph/core/BacktraceFrame;->a:J

    .line 2029
    .line 2030
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2031
    .line 2032
    .line 2033
    move-result-object v4

    .line 2034
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v4

    .line 2038
    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v4

    .line 2042
    iput-object v4, v15, Lio/sentry/protocol/SentryStackFrame;->z:Ljava/lang/String;

    .line 2043
    .line 2044
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 2045
    .line 2046
    .line 2047
    move-result v4

    .line 2048
    if-eqz v4, :cond_34

    .line 2049
    .line 2050
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2051
    .line 2052
    goto :goto_27

    .line 2053
    :cond_34
    iget-object v4, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->k:Ljava/util/List;

    .line 2054
    .line 2055
    iget-object v5, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->l:Ljava/util/List;

    .line 2056
    .line 2057
    invoke-static {v14, v4, v5}, Lio/sentry/SentryStackTraceFactory;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v4

    .line 2061
    :goto_27
    iget-object v5, v0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->m:Ljava/lang/String;

    .line 2062
    .line 2063
    if-eqz v5, :cond_35

    .line 2064
    .line 2065
    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2066
    .line 2067
    .line 2068
    move-result v5

    .line 2069
    if-eqz v5, :cond_35

    .line 2070
    .line 2071
    const/4 v5, 0x1

    .line 2072
    goto :goto_28

    .line 2073
    :cond_35
    const/4 v5, 0x0

    .line 2074
    :goto_28
    if-eqz v4, :cond_36

    .line 2075
    .line 2076
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2077
    .line 2078
    .line 2079
    move-result v4

    .line 2080
    if-nez v4, :cond_37

    .line 2081
    .line 2082
    :cond_36
    if-eqz v5, :cond_38

    .line 2083
    .line 2084
    :cond_37
    const/4 v4, 0x1

    .line 2085
    goto :goto_29

    .line 2086
    :cond_38
    const/4 v4, 0x0

    .line 2087
    :goto_29
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v4

    .line 2091
    iput-object v4, v15, Lio/sentry/protocol/SentryStackFrame;->t:Ljava/lang/Boolean;

    .line 2092
    .line 2093
    const/4 v4, 0x0

    .line 2094
    invoke-virtual {v6, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2095
    .line 2096
    .line 2097
    move-object/from16 v5, v16

    .line 2098
    .line 2099
    const/4 v4, 0x1

    .line 2100
    goto :goto_26

    .line 2101
    :cond_39
    move-object/from16 v16, v5

    .line 2102
    .line 2103
    const/4 v4, 0x0

    .line 2104
    new-instance v5, Lio/sentry/protocol/SentryStackTrace;

    .line 2105
    .line 2106
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2107
    .line 2108
    .line 2109
    iput-object v6, v5, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 2110
    .line 2111
    sget-object v6, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;->NONE:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 2112
    .line 2113
    iput-object v6, v5, Lio/sentry/protocol/SentryStackTrace;->m:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 2114
    .line 2115
    new-instance v6, Ljava/util/HashMap;

    .line 2116
    .line 2117
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2118
    .line 2119
    .line 2120
    iget-object v9, v7, Lcom/abovevacant/epitaph/core/TombstoneThread;->c:Ljava/util/List;

    .line 2121
    .line 2122
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v9

    .line 2126
    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 2127
    .line 2128
    .line 2129
    move-result v11

    .line 2130
    if-eqz v11, :cond_3a

    .line 2131
    .line 2132
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v11

    .line 2136
    check-cast v11, Lcom/abovevacant/epitaph/core/Register;

    .line 2137
    .line 2138
    iget-object v13, v11, Lcom/abovevacant/epitaph/core/Register;->a:Ljava/lang/String;

    .line 2139
    .line 2140
    iget-wide v14, v11, Lcom/abovevacant/epitaph/core/Register;->b:J

    .line 2141
    .line 2142
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v11

    .line 2146
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v11

    .line 2150
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v11

    .line 2154
    invoke-virtual {v6, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    .line 2156
    .line 2157
    goto :goto_2a

    .line 2158
    :cond_3a
    iput-object v6, v5, Lio/sentry/protocol/SentryStackTrace;->k:Ljava/util/AbstractMap;

    .line 2159
    .line 2160
    iput-object v5, v8, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 2161
    .line 2162
    iget v6, v7, Lcom/abovevacant/epitaph/core/TombstoneThread;->a:I

    .line 2163
    .line 2164
    if-ne v10, v6, :cond_3b

    .line 2165
    .line 2166
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2167
    .line 2168
    iput-object v6, v8, Lio/sentry/protocol/SentryThread;->n:Ljava/lang/Boolean;

    .line 2169
    .line 2170
    iput-object v5, v2, Lio/sentry/protocol/SentryException;->n:Lio/sentry/protocol/SentryStackTrace;

    .line 2171
    .line 2172
    :cond_3b
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    .line 2174
    .line 2175
    move-object/from16 v5, v16

    .line 2176
    .line 2177
    const/4 v4, 0x1

    .line 2178
    goto/16 :goto_25

    .line 2179
    .line 2180
    :cond_3c
    invoke-virtual {v1, v3}, Lio/sentry/SentryEvent;->j(Ljava/util/List;)V

    .line 2181
    .line 2182
    .line 2183
    return-object v1

    .line 2184
    :cond_3d
    const/16 v22, 0x0

    .line 2185
    .line 2186
    const-string v0, "No InputStream provided; use parse(Tombstone) instead."

    .line 2187
    .line 2188
    invoke-static {v0}, Lk8;->j(Ljava/lang/String;)V

    .line 2189
    .line 2190
    .line 2191
    return-object v22

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_1b
        :pswitch_1a
        :pswitch_10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->j:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
