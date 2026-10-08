.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->a:I

    .line 4
    .line 5
    const-string v2, "PRAGMA page_size"

    .line 6
    .line 7
    const-string v3, "PRAGMA page_count"

    .line 8
    .line 9
    sget-object v4, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->m:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 10
    .line 11
    const-string v6, "bytes"

    .line 12
    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v8, 0x3

    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x1

    .line 19
    iget-object v14, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v15, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v15, Ljava/util/ArrayList;

    .line 29
    .line 30
    check-cast v14, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Landroid/database/Cursor;

    .line 35
    .line 36
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 37
    .line 38
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_7

    .line 43
    .line 44
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const/4 v4, 0x7

    .line 49
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    move v4, v13

    .line 56
    :goto_1
    const/16 v16, 0x0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    move v4, v12

    .line 60
    goto :goto_1

    .line 61
    :goto_2
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->a()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v5, v11}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 70
    .line 71
    .line 72
    move-object/from16 p0, v14

    .line 73
    .line 74
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    invoke-virtual {v5, v13, v14}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->f(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v13

    .line 85
    invoke-virtual {v5, v13, v14}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->h(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 86
    .line 87
    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 91
    .line 92
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    if-nez v13, :cond_1

    .line 97
    .line 98
    sget-object v13, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_1
    new-instance v14, Lcom/google/android/datatransport/Encoding;

    .line 102
    .line 103
    invoke-direct {v14, v13}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v13, v14

    .line 107
    :goto_3
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    invoke-direct {v4, v13, v14}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 115
    .line 116
    .line 117
    :goto_4
    const/4 v4, 0x6

    .line 118
    goto/16 :goto_8

    .line 119
    .line 120
    :cond_2
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 121
    .line 122
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    if-nez v13, :cond_3

    .line 127
    .line 128
    sget-object v13, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_3
    new-instance v14, Lcom/google/android/datatransport/Encoding;

    .line 132
    .line 133
    invoke-direct {v14, v13}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    move-object v13, v14

    .line 137
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    .line 139
    .line 140
    move-result-object v17

    .line 141
    filled-new-array {v6}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v19

    .line 145
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    filled-new-array {v14}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v21

    .line 153
    const/16 v23, 0x0

    .line 154
    .line 155
    const-string v24, "sequence_num"

    .line 156
    .line 157
    const-string v18, "event_payloads"

    .line 158
    .line 159
    const-string v20, "event_id = ?"

    .line 160
    .line 161
    const/16 v22, 0x0

    .line 162
    .line 163
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    :try_start_0
    sget-object v17, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 168
    .line 169
    new-instance v11, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    move v7, v12

    .line 175
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 176
    .line 177
    .line 178
    move-result v19

    .line 179
    if-eqz v19, :cond_4

    .line 180
    .line 181
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    array-length v10, v10

    .line 189
    add-int/2addr v7, v10

    .line 190
    const/4 v10, 0x4

    .line 191
    goto :goto_6

    .line 192
    :cond_4
    new-array v7, v7, [B

    .line 193
    .line 194
    move v8, v12

    .line 195
    move v10, v8

    .line 196
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-ge v10, v9, :cond_5

    .line 201
    .line 202
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    check-cast v9, [B

    .line 207
    .line 208
    move/from16 v22, v10

    .line 209
    .line 210
    array-length v10, v9

    .line 211
    invoke-static {v9, v12, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    .line 213
    .line 214
    array-length v9, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    add-int/2addr v8, v9

    .line 216
    add-int/lit8 v10, v22, 0x1

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 220
    .line 221
    .line 222
    invoke-direct {v4, v13, v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :goto_8
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-nez v7, :cond_6

    .line 234
    .line 235
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->d(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->b()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    new-instance v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;

    .line 251
    .line 252
    move-object/from16 v7, p0

    .line 253
    .line 254
    invoke-direct {v5, v2, v3, v7, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-object v14, v7

    .line 261
    const/4 v7, 0x5

    .line 262
    const/4 v8, 0x3

    .line 263
    const/4 v9, 0x2

    .line 264
    const/4 v10, 0x4

    .line 265
    const/4 v13, 0x1

    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :catchall_0
    move-exception v0

    .line 269
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 270
    .line 271
    .line 272
    throw v0

    .line 273
    :cond_7
    const/16 v16, 0x0

    .line 274
    .line 275
    return-object v16

    .line 276
    :pswitch_0
    check-cast v15, Ljava/util/HashMap;

    .line 277
    .line 278
    check-cast v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    .line 279
    .line 280
    iget-object v1, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->b:Ljava/util/ArrayList;

    .line 281
    .line 282
    move-object/from16 v5, p1

    .line 283
    .line 284
    check-cast v5, Landroid/database/Cursor;

    .line 285
    .line 286
    sget-object v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_10

    .line 296
    .line 297
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    const/4 v11, 0x1

    .line 302
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->k:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 307
    .line 308
    if-nez v7, :cond_8

    .line 309
    .line 310
    :goto_a
    move v7, v12

    .line 311
    const/4 v9, 0x2

    .line 312
    :goto_b
    const/4 v13, 0x5

    .line 313
    goto :goto_d

    .line 314
    :cond_8
    if-ne v7, v11, :cond_9

    .line 315
    .line 316
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->l:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_9
    const/4 v9, 0x2

    .line 320
    if-ne v7, v9, :cond_a

    .line 321
    .line 322
    move-object v8, v4

    .line 323
    move v7, v12

    .line 324
    goto :goto_b

    .line 325
    :cond_a
    const/4 v9, 0x3

    .line 326
    if-ne v7, v9, :cond_b

    .line 327
    .line 328
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->n:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_b
    const/4 v10, 0x4

    .line 332
    if-ne v7, v10, :cond_c

    .line 333
    .line 334
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->o:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_c
    const/4 v13, 0x5

    .line 338
    if-ne v7, v13, :cond_d

    .line 339
    .line 340
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->p:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 341
    .line 342
    :goto_c
    move v7, v12

    .line 343
    const/4 v9, 0x2

    .line 344
    goto :goto_d

    .line 345
    :cond_d
    const/4 v9, 0x6

    .line 346
    if-ne v7, v9, :cond_e

    .line 347
    .line 348
    sget-object v8, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->q:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_e
    const-string v9, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 352
    .line 353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    const-string v10, "SQLiteEventStore"

    .line 358
    .line 359
    invoke-static {v10, v9, v7}, Lcom/google/android/datatransport/runtime/logging/Logging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    goto :goto_c

    .line 363
    :goto_d
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 364
    .line 365
    .line 366
    move-result-wide v11

    .line 367
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    if-nez v10, :cond_f

    .line 372
    .line 373
    new-instance v10, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v15, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    :cond_f
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    check-cast v6, Ljava/util/List;

    .line 386
    .line 387
    new-instance v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    .line 388
    .line 389
    invoke-direct {v10, v11, v12, v8}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;-><init>(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)V

    .line 390
    .line 391
    .line 392
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move v12, v7

    .line 396
    goto :goto_9

    .line 397
    :cond_10
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_11

    .line 410
    .line 411
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Ljava/util/Map$Entry;

    .line 416
    .line 417
    sget v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->c:I

    .line 418
    .line 419
    new-instance v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    .line 420
    .line 421
    invoke-direct {v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    check-cast v7, Ljava/lang/String;

    .line 429
    .line 430
    iput-object v7, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->a:Ljava/lang/String;

    .line 431
    .line 432
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    check-cast v5, Ljava/util/List;

    .line 437
    .line 438
    iput-object v5, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->b:Ljava/util/List;

    .line 439
    .line 440
    new-instance v5, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    .line 441
    .line 442
    iget-object v7, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->a:Ljava/lang/String;

    .line 443
    .line 444
    iget-object v6, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->b:Ljava/util/List;

    .line 445
    .line 446
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-direct {v5, v7, v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_11
    iget-object v4, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->k:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 458
    .line 459
    invoke-interface {v4}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 460
    .line 461
    .line 462
    move-result-wide v4

    .line 463
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    .line 464
    .line 465
    invoke-direct {v6, v4, v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;-><init>(J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v6}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->q(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    check-cast v4, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 473
    .line 474
    iput-object v4, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->a:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 485
    .line 486
    .line 487
    move-result-wide v3

    .line 488
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 497
    .line 498
    .line 499
    move-result-wide v5

    .line 500
    mul-long/2addr v5, v3

    .line 501
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    .line 502
    .line 503
    iget-wide v2, v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->b:J

    .line 504
    .line 505
    new-instance v4, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    .line 506
    .line 507
    invoke-direct {v4, v5, v6, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;-><init>(JJ)V

    .line 508
    .line 509
    .line 510
    new-instance v2, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 511
    .line 512
    invoke-direct {v2, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;-><init>(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;)V

    .line 513
    .line 514
    .line 515
    iput-object v2, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->c:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 516
    .line 517
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->n:Ljavax/inject/Provider;

    .line 518
    .line 519
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Ljava/lang/String;

    .line 524
    .line 525
    iput-object v0, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->d:Ljava/lang/String;

    .line 526
    .line 527
    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    .line 528
    .line 529
    iget-object v2, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->a:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 530
    .line 531
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    iget-object v3, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->c:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 536
    .line 537
    iget-object v4, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->d:Ljava/lang/String;

    .line 538
    .line 539
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;-><init>(Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;Ljava/util/List;Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    return-object v0

    .line 543
    :pswitch_1
    move v7, v12

    .line 544
    const/16 v16, 0x0

    .line 545
    .line 546
    check-cast v15, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 547
    .line 548
    check-cast v14, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 549
    .line 550
    move-object/from16 v1, p1

    .line 551
    .line 552
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 553
    .line 554
    sget-object v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->o:Lcom/google/android/datatransport/Encoding;

    .line 555
    .line 556
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 569
    .line 570
    .line 571
    move-result-wide v8

    .line 572
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 581
    .line 582
    .line 583
    move-result-wide v2

    .line 584
    mul-long/2addr v2, v8

    .line 585
    iget-object v8, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->m:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 586
    .line 587
    check-cast v8, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    .line 588
    .line 589
    iget-wide v9, v8, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->b:J

    .line 590
    .line 591
    cmp-long v2, v2, v9

    .line 592
    .line 593
    if-ltz v2, :cond_12

    .line 594
    .line 595
    const-wide/16 v1, 0x1

    .line 596
    .line 597
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->i()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->A(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const-wide/16 v0, -0x1

    .line 605
    .line 606
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    goto/16 :goto_14

    .line 611
    .line 612
    :cond_12
    invoke-static {v1, v14}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->n(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    if-eqz v0, :cond_13

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 619
    .line 620
    .line 621
    move-result-wide v2

    .line 622
    goto :goto_f

    .line 623
    :cond_13
    new-instance v0, Landroid/content/ContentValues;

    .line 624
    .line 625
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 626
    .line 627
    .line 628
    const-string v2, "backend_name"

    .line 629
    .line 630
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->a(Lcom/google/android/datatransport/Priority;)I

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    const-string v3, "priority"

    .line 650
    .line 651
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    .line 653
    .line 654
    const-string v2, "next_request_ms"

    .line 655
    .line 656
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    if-eqz v2, :cond_14

    .line 664
    .line 665
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    const-string v3, "extras"

    .line 674
    .line 675
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    :cond_14
    const-string v2, "transport_contexts"

    .line 679
    .line 680
    move-object/from16 v3, v16

    .line 681
    .line 682
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 683
    .line 684
    .line 685
    move-result-wide v9

    .line 686
    move-wide v2, v9

    .line 687
    :goto_f
    iget v0, v8, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->f:I

    .line 688
    .line 689
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->d()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    iget-object v4, v4, Lcom/google/android/datatransport/runtime/EncodedPayload;->b:[B

    .line 694
    .line 695
    array-length v8, v4

    .line 696
    if-gt v8, v0, :cond_15

    .line 697
    .line 698
    const/4 v8, 0x1

    .line 699
    goto :goto_10

    .line 700
    :cond_15
    const/4 v8, 0x0

    .line 701
    :goto_10
    new-instance v9, Landroid/content/ContentValues;

    .line 702
    .line 703
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 704
    .line 705
    .line 706
    const-string v10, "context_id"

    .line 707
    .line 708
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    .line 714
    .line 715
    const-string v2, "transport_name"

    .line 716
    .line 717
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->i()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->e()J

    .line 725
    .line 726
    .line 727
    move-result-wide v2

    .line 728
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    const-string v3, "timestamp_ms"

    .line 733
    .line 734
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->j()J

    .line 738
    .line 739
    .line 740
    move-result-wide v2

    .line 741
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    const-string v3, "uptime_ms"

    .line 746
    .line 747
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->d()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    iget-object v2, v2, Lcom/google/android/datatransport/runtime/EncodedPayload;->a:Lcom/google/android/datatransport/Encoding;

    .line 755
    .line 756
    iget-object v2, v2, Lcom/google/android/datatransport/Encoding;->a:Ljava/lang/String;

    .line 757
    .line 758
    const-string v3, "payload_encoding"

    .line 759
    .line 760
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const-string v2, "code"

    .line 764
    .line 765
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->c()Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    .line 771
    .line 772
    const-string v2, "num_attempts"

    .line 773
    .line 774
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    .line 776
    .line 777
    const-string v2, "inline"

    .line 778
    .line 779
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    .line 785
    .line 786
    if-eqz v8, :cond_16

    .line 787
    .line 788
    move-object v2, v4

    .line 789
    goto :goto_11

    .line 790
    :cond_16
    const/4 v7, 0x0

    .line 791
    new-array v2, v7, [B

    .line 792
    .line 793
    :goto_11
    const-string v3, "payload"

    .line 794
    .line 795
    invoke-virtual {v9, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 796
    .line 797
    .line 798
    const-string v2, "events"

    .line 799
    .line 800
    const/4 v3, 0x0

    .line 801
    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 802
    .line 803
    .line 804
    move-result-wide v9

    .line 805
    const-string v2, "event_id"

    .line 806
    .line 807
    if-nez v8, :cond_17

    .line 808
    .line 809
    array-length v3, v4

    .line 810
    int-to-double v7, v3

    .line 811
    int-to-double v11, v0

    .line 812
    div-double/2addr v7, v11

    .line 813
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 814
    .line 815
    .line 816
    move-result-wide v7

    .line 817
    double-to-int v3, v7

    .line 818
    const/4 v13, 0x1

    .line 819
    :goto_12
    if-gt v13, v3, :cond_17

    .line 820
    .line 821
    add-int/lit8 v5, v13, -0x1

    .line 822
    .line 823
    mul-int/2addr v5, v0

    .line 824
    mul-int v7, v13, v0

    .line 825
    .line 826
    array-length v8, v4

    .line 827
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 828
    .line 829
    .line 830
    move-result v7

    .line 831
    invoke-static {v4, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    new-instance v7, Landroid/content/ContentValues;

    .line 836
    .line 837
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 838
    .line 839
    .line 840
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 841
    .line 842
    .line 843
    move-result-object v8

    .line 844
    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 845
    .line 846
    .line 847
    const-string v8, "sequence_num"

    .line 848
    .line 849
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 850
    .line 851
    .line 852
    move-result-object v11

    .line 853
    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 857
    .line 858
    .line 859
    const-string v5, "event_payloads"

    .line 860
    .line 861
    const/4 v8, 0x0

    .line 862
    invoke-virtual {v1, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 863
    .line 864
    .line 865
    add-int/lit8 v13, v13, 0x1

    .line 866
    .line 867
    goto :goto_12

    .line 868
    :cond_17
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->h()Ljava/util/Map;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 881
    .line 882
    .line 883
    move-result v3

    .line 884
    if-eqz v3, :cond_18

    .line 885
    .line 886
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    check-cast v3, Ljava/util/Map$Entry;

    .line 891
    .line 892
    new-instance v4, Landroid/content/ContentValues;

    .line 893
    .line 894
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .line 896
    .line 897
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 898
    .line 899
    .line 900
    move-result-object v5

    .line 901
    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    .line 903
    .line 904
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    check-cast v5, Ljava/lang/String;

    .line 909
    .line 910
    const-string v6, "name"

    .line 911
    .line 912
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    check-cast v3, Ljava/lang/String;

    .line 920
    .line 921
    const-string v5, "value"

    .line 922
    .line 923
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    const-string v3, "event_metadata"

    .line 927
    .line 928
    const/4 v8, 0x0

    .line 929
    invoke-virtual {v1, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 930
    .line 931
    .line 932
    goto :goto_13

    .line 933
    :cond_18
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    :goto_14
    return-object v0

    .line 938
    nop

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
