.class public final synthetic Lq7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq7;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lq7;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 79

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq7;->j:I

    .line 4
    .line 5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v0, v0, Lq7;->k:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 22
    .line 23
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :try_start_0
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :pswitch_0
    move-object/from16 v1, p1

    .line 60
    .line 61
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v2, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 67
    .line 68
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :try_start_1
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    long-to-int v3, v6

    .line 95
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v3, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->b:Landroidx/work/WorkInfo$State;

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    goto :goto_3

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :pswitch_1
    move-object/from16 v1, p1

    .line 126
    .line 127
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const-string v2, "DELETE FROM workspec WHERE id=?"

    .line 133
    .line 134
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :try_start_2
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    .line 143
    .line 144
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 145
    .line 146
    .line 147
    return-object v3

    .line 148
    :catchall_2
    move-exception v0

    .line 149
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :pswitch_2
    move-object/from16 v1, p1

    .line 154
    .line 155
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    .line 161
    .line 162
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :try_start_3
    invoke-interface {v2, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 170
    .line 171
    .line 172
    invoke-static {v1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    .line 173
    .line 174
    .line 175
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 176
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0

    .line 184
    :catchall_3
    move-exception v0

    .line 185
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :pswitch_3
    move-object/from16 v1, p1

    .line 190
    .line 191
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    const-string v2, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 197
    .line 198
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :try_start_4
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    :goto_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_2

    .line 215
    .line 216
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    sget-object v3, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 221
    .line 222
    invoke-static {v2}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :catchall_4
    move-exception v0

    .line 231
    goto :goto_5

    .line 232
    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :pswitch_4
    move-object/from16 v1, p1

    .line 241
    .line 242
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    const-string v2, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    .line 248
    .line 249
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    :try_start_5
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 257
    .line 258
    .line 259
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 260
    .line 261
    .line 262
    return-object v3

    .line 263
    :catchall_5
    move-exception v0

    .line 264
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :pswitch_5
    move-object/from16 v1, p1

    .line 269
    .line 270
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    .line 276
    .line 277
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :try_start_6
    invoke-interface {v2, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    .line 288
    .line 289
    .line 290
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 291
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    return-object v0

    .line 299
    :catchall_6
    move-exception v0

    .line 300
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :pswitch_6
    move-object/from16 v1, p1

    .line 305
    .line 306
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    .line 312
    .line 313
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    :try_start_7
    invoke-interface {v2, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    .line 324
    .line 325
    .line 326
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 327
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    return-object v0

    .line 335
    :catchall_7
    move-exception v0

    .line 336
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :pswitch_7
    move-object/from16 v1, p1

    .line 341
    .line 342
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 348
    .line 349
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    :try_start_8
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .line 360
    .line 361
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_3

    .line 366
    .line 367
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :catchall_8
    move-exception v0

    .line 376
    goto :goto_7

    .line 377
    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 378
    .line 379
    .line 380
    return-object v0

    .line 381
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 382
    .line 383
    .line 384
    throw v0

    .line 385
    :pswitch_8
    move-object/from16 v1, p1

    .line 386
    .line 387
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    const-string v3, "SELECT state FROM workspec WHERE id=?"

    .line 393
    .line 394
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    :try_start_9
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_5

    .line 406
    .line 407
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_4

    .line 412
    .line 413
    const/4 v0, 0x0

    .line 414
    goto :goto_8

    .line 415
    :cond_4
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    long-to-int v0, v3

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    :goto_8
    if-nez v0, :cond_6

    .line 425
    .line 426
    :cond_5
    const/4 v2, 0x0

    .line 427
    goto :goto_9

    .line 428
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    .line 433
    .line 434
    .line 435
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 436
    goto :goto_9

    .line 437
    :catchall_9
    move-exception v0

    .line 438
    goto :goto_a

    .line 439
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 440
    .line 441
    .line 442
    return-object v2

    .line 443
    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :pswitch_9
    move-object/from16 v1, p1

    .line 448
    .line 449
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 455
    .line 456
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    :try_start_a
    invoke-interface {v1, v5, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const-string v0, "id"

    .line 464
    .line 465
    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    const-string v3, "state"

    .line 470
    .line 471
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    const-string v6, "worker_class_name"

    .line 476
    .line 477
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    const-string v7, "input_merger_class_name"

    .line 482
    .line 483
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    const-string v8, "input"

    .line 488
    .line 489
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    const-string v9, "output"

    .line 494
    .line 495
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    const-string v10, "initial_delay"

    .line 500
    .line 501
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v10

    .line 505
    const-string v11, "interval_duration"

    .line 506
    .line 507
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v11

    .line 511
    const-string v12, "flex_duration"

    .line 512
    .line 513
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    const-string v13, "run_attempt_count"

    .line 518
    .line 519
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    const-string v14, "backoff_policy"

    .line 524
    .line 525
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    move-result v14

    .line 529
    const-string v15, "backoff_delay_duration"

    .line 530
    .line 531
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    move-result v15

    .line 535
    const-string v2, "last_enqueue_time"

    .line 536
    .line 537
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    const-string v4, "minimum_retention_duration"

    .line 542
    .line 543
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    const-string v5, "schedule_requested_at"

    .line 548
    .line 549
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    move/from16 p0, v5

    .line 554
    .line 555
    const-string v5, "run_in_foreground"

    .line 556
    .line 557
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    move/from16 p1, v5

    .line 562
    .line 563
    const-string v5, "out_of_quota_policy"

    .line 564
    .line 565
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    move/from16 v16, v5

    .line 570
    .line 571
    const-string v5, "period_count"

    .line 572
    .line 573
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    move/from16 v17, v5

    .line 578
    .line 579
    const-string v5, "generation"

    .line 580
    .line 581
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    move/from16 v18, v5

    .line 586
    .line 587
    const-string v5, "next_schedule_time_override"

    .line 588
    .line 589
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    move/from16 v19, v5

    .line 594
    .line 595
    const-string v5, "next_schedule_time_override_generation"

    .line 596
    .line 597
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    move/from16 v20, v5

    .line 602
    .line 603
    const-string v5, "stop_reason"

    .line 604
    .line 605
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    move/from16 v21, v5

    .line 610
    .line 611
    const-string v5, "trace_tag"

    .line 612
    .line 613
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    move/from16 v22, v5

    .line 618
    .line 619
    const-string v5, "backoff_on_system_interruptions"

    .line 620
    .line 621
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    move/from16 v23, v5

    .line 626
    .line 627
    const-string v5, "required_network_type"

    .line 628
    .line 629
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    move/from16 v24, v5

    .line 634
    .line 635
    const-string v5, "required_network_request"

    .line 636
    .line 637
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    move/from16 v25, v5

    .line 642
    .line 643
    const-string v5, "requires_charging"

    .line 644
    .line 645
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    move/from16 v26, v5

    .line 650
    .line 651
    const-string v5, "requires_device_idle"

    .line 652
    .line 653
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    move-result v5

    .line 657
    move/from16 v27, v5

    .line 658
    .line 659
    const-string v5, "requires_battery_not_low"

    .line 660
    .line 661
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    move/from16 v28, v5

    .line 666
    .line 667
    const-string v5, "requires_storage_not_low"

    .line 668
    .line 669
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    move-result v5

    .line 673
    move/from16 v29, v5

    .line 674
    .line 675
    const-string v5, "trigger_content_update_delay"

    .line 676
    .line 677
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    move-result v5

    .line 681
    move/from16 v30, v5

    .line 682
    .line 683
    const-string v5, "trigger_max_content_delay"

    .line 684
    .line 685
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    move/from16 v31, v5

    .line 690
    .line 691
    const-string v5, "content_uri_triggers"

    .line 692
    .line 693
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    move-result v5

    .line 697
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 698
    .line 699
    .line 700
    move-result v32

    .line 701
    if-eqz v32, :cond_10

    .line 702
    .line 703
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v34

    .line 707
    move v0, v4

    .line 708
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 709
    .line 710
    .line 711
    move-result-wide v3

    .line 712
    long-to-int v3, v3

    .line 713
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    .line 714
    .line 715
    .line 716
    move-result-object v35

    .line 717
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v36

    .line 721
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v37

    .line 725
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    sget-object v4, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 730
    .line 731
    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 732
    .line 733
    .line 734
    move-result-object v38

    .line 735
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 740
    .line 741
    .line 742
    move-result-object v39

    .line 743
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 744
    .line 745
    .line 746
    move-result-wide v40

    .line 747
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 748
    .line 749
    .line 750
    move-result-wide v42

    .line 751
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 752
    .line 753
    .line 754
    move-result-wide v44

    .line 755
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 756
    .line 757
    .line 758
    move-result-wide v3

    .line 759
    long-to-int v3, v3

    .line 760
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 761
    .line 762
    .line 763
    move-result-wide v6

    .line 764
    long-to-int v4, v6

    .line 765
    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    .line 766
    .line 767
    .line 768
    move-result-object v48

    .line 769
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 770
    .line 771
    .line 772
    move-result-wide v49

    .line 773
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 774
    .line 775
    .line 776
    move-result-wide v51

    .line 777
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 778
    .line 779
    .line 780
    move-result-wide v53

    .line 781
    move/from16 v0, p0

    .line 782
    .line 783
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 784
    .line 785
    .line 786
    move-result-wide v55

    .line 787
    move/from16 v0, p1

    .line 788
    .line 789
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 790
    .line 791
    .line 792
    move-result-wide v6

    .line 793
    long-to-int v0, v6

    .line 794
    if-eqz v0, :cond_7

    .line 795
    .line 796
    const/16 v57, 0x1

    .line 797
    .line 798
    :goto_b
    move/from16 v0, v16

    .line 799
    .line 800
    goto :goto_c

    .line 801
    :cond_7
    const/16 v57, 0x0

    .line 802
    .line 803
    goto :goto_b

    .line 804
    :goto_c
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 805
    .line 806
    .line 807
    move-result-wide v6

    .line 808
    long-to-int v0, v6

    .line 809
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->d(I)Landroidx/work/OutOfQuotaPolicy;

    .line 810
    .line 811
    .line 812
    move-result-object v58

    .line 813
    move/from16 v0, v17

    .line 814
    .line 815
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 816
    .line 817
    .line 818
    move-result-wide v6

    .line 819
    long-to-int v0, v6

    .line 820
    move/from16 v2, v18

    .line 821
    .line 822
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 823
    .line 824
    .line 825
    move-result-wide v6

    .line 826
    long-to-int v2, v6

    .line 827
    move/from16 v4, v19

    .line 828
    .line 829
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 830
    .line 831
    .line 832
    move-result-wide v61

    .line 833
    move/from16 v4, v20

    .line 834
    .line 835
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 836
    .line 837
    .line 838
    move-result-wide v6

    .line 839
    long-to-int v4, v6

    .line 840
    move/from16 v6, v21

    .line 841
    .line 842
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 843
    .line 844
    .line 845
    move-result-wide v6

    .line 846
    long-to-int v6, v6

    .line 847
    move/from16 v7, v22

    .line 848
    .line 849
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 850
    .line 851
    .line 852
    move-result v8

    .line 853
    if-eqz v8, :cond_8

    .line 854
    .line 855
    const/16 v65, 0x0

    .line 856
    .line 857
    :goto_d
    move/from16 v7, v23

    .line 858
    .line 859
    goto :goto_e

    .line 860
    :cond_8
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v7

    .line 864
    move-object/from16 v65, v7

    .line 865
    .line 866
    goto :goto_d

    .line 867
    :goto_e
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 868
    .line 869
    .line 870
    move-result v8

    .line 871
    if-eqz v8, :cond_9

    .line 872
    .line 873
    const/4 v7, 0x0

    .line 874
    goto :goto_f

    .line 875
    :cond_9
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 876
    .line 877
    .line 878
    move-result-wide v7

    .line 879
    long-to-int v7, v7

    .line 880
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 881
    .line 882
    .line 883
    move-result-object v7

    .line 884
    :goto_f
    if-eqz v7, :cond_b

    .line 885
    .line 886
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    if-eqz v7, :cond_a

    .line 891
    .line 892
    const/4 v7, 0x1

    .line 893
    goto :goto_10

    .line 894
    :cond_a
    const/4 v7, 0x0

    .line 895
    :goto_10
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 896
    .line 897
    .line 898
    move-result-object v7

    .line 899
    move-object/from16 v66, v7

    .line 900
    .line 901
    :goto_11
    move/from16 v7, v24

    .line 902
    .line 903
    goto :goto_12

    .line 904
    :catchall_a
    move-exception v0

    .line 905
    goto/16 :goto_1c

    .line 906
    .line 907
    :cond_b
    const/16 v66, 0x0

    .line 908
    .line 909
    goto :goto_11

    .line 910
    :goto_12
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 911
    .line 912
    .line 913
    move-result-wide v7

    .line 914
    long-to-int v7, v7

    .line 915
    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->c(I)Landroidx/work/NetworkType;

    .line 916
    .line 917
    .line 918
    move-result-object v69

    .line 919
    move/from16 v7, v25

    .line 920
    .line 921
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 922
    .line 923
    .line 924
    move-result-object v7

    .line 925
    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->g([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 926
    .line 927
    .line 928
    move-result-object v68

    .line 929
    move/from16 v7, v26

    .line 930
    .line 931
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 932
    .line 933
    .line 934
    move-result-wide v7

    .line 935
    long-to-int v7, v7

    .line 936
    if-eqz v7, :cond_c

    .line 937
    .line 938
    const/16 v70, 0x1

    .line 939
    .line 940
    :goto_13
    move/from16 v7, v27

    .line 941
    .line 942
    goto :goto_14

    .line 943
    :cond_c
    const/16 v70, 0x0

    .line 944
    .line 945
    goto :goto_13

    .line 946
    :goto_14
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 947
    .line 948
    .line 949
    move-result-wide v7

    .line 950
    long-to-int v7, v7

    .line 951
    if-eqz v7, :cond_d

    .line 952
    .line 953
    const/16 v71, 0x1

    .line 954
    .line 955
    :goto_15
    move/from16 v7, v28

    .line 956
    .line 957
    goto :goto_16

    .line 958
    :cond_d
    const/16 v71, 0x0

    .line 959
    .line 960
    goto :goto_15

    .line 961
    :goto_16
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 962
    .line 963
    .line 964
    move-result-wide v7

    .line 965
    long-to-int v7, v7

    .line 966
    if-eqz v7, :cond_e

    .line 967
    .line 968
    const/16 v72, 0x1

    .line 969
    .line 970
    :goto_17
    move/from16 v7, v29

    .line 971
    .line 972
    goto :goto_18

    .line 973
    :cond_e
    const/16 v72, 0x0

    .line 974
    .line 975
    goto :goto_17

    .line 976
    :goto_18
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 977
    .line 978
    .line 979
    move-result-wide v7

    .line 980
    long-to-int v7, v7

    .line 981
    if-eqz v7, :cond_f

    .line 982
    .line 983
    const/16 v73, 0x1

    .line 984
    .line 985
    :goto_19
    move/from16 v7, v30

    .line 986
    .line 987
    goto :goto_1a

    .line 988
    :cond_f
    const/16 v73, 0x0

    .line 989
    .line 990
    goto :goto_19

    .line 991
    :goto_1a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 992
    .line 993
    .line 994
    move-result-wide v74

    .line 995
    move/from16 v7, v31

    .line 996
    .line 997
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 998
    .line 999
    .line 1000
    move-result-wide v76

    .line 1001
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->a([B)Ljava/util/LinkedHashSet;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v78

    .line 1009
    new-instance v46, Landroidx/work/Constraints;

    .line 1010
    .line 1011
    move-object/from16 v67, v46

    .line 1012
    .line 1013
    invoke-direct/range {v67 .. v78}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1014
    .line 1015
    .line 1016
    move-object/from16 v46, v67

    .line 1017
    .line 1018
    new-instance v33, Landroidx/work/impl/model/WorkSpec;

    .line 1019
    .line 1020
    move/from16 v59, v0

    .line 1021
    .line 1022
    move/from16 v60, v2

    .line 1023
    .line 1024
    move/from16 v47, v3

    .line 1025
    .line 1026
    move/from16 v63, v4

    .line 1027
    .line 1028
    move/from16 v64, v6

    .line 1029
    .line 1030
    invoke-direct/range {v33 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1031
    .line 1032
    .line 1033
    move-object/from16 v2, v33

    .line 1034
    .line 1035
    goto :goto_1b

    .line 1036
    :cond_10
    const/4 v2, 0x0

    .line 1037
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1038
    .line 1039
    .line 1040
    return-object v2

    .line 1041
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1042
    .line 1043
    .line 1044
    throw v0

    .line 1045
    :pswitch_a
    move-object/from16 v1, p1

    .line 1046
    .line 1047
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1048
    .line 1049
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    const-string v2, "DELETE from WorkProgress where work_spec_id=?"

    .line 1053
    .line 1054
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    const/4 v2, 0x1

    .line 1059
    :try_start_b
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1063
    .line 1064
    .line 1065
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1066
    .line 1067
    .line 1068
    return-object v3

    .line 1069
    :catchall_b
    move-exception v0

    .line 1070
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1071
    .line 1072
    .line 1073
    throw v0

    .line 1074
    :pswitch_b
    move-object/from16 v1, p1

    .line 1075
    .line 1076
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1077
    .line 1078
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1079
    .line 1080
    .line 1081
    const-string v2, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 1082
    .line 1083
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    const/4 v2, 0x1

    .line 1088
    :try_start_c
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    .line 1092
    .line 1093
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    :goto_1d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v2

    .line 1100
    if-eqz v2, :cond_11

    .line 1101
    .line 1102
    const/4 v2, 0x0

    .line 1103
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1108
    .line 1109
    .line 1110
    goto :goto_1d

    .line 1111
    :catchall_c
    move-exception v0

    .line 1112
    goto :goto_1e

    .line 1113
    :cond_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1114
    .line 1115
    .line 1116
    return-object v0

    .line 1117
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1118
    .line 1119
    .line 1120
    throw v0

    .line 1121
    :pswitch_c
    move-object/from16 v1, p1

    .line 1122
    .line 1123
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1124
    .line 1125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1126
    .line 1127
    .line 1128
    const-string v2, "DELETE FROM SystemIdInfo where work_spec_id=?"

    .line 1129
    .line 1130
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v1

    .line 1134
    const/4 v2, 0x1

    .line 1135
    :try_start_d
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1139
    .line 1140
    .line 1141
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1142
    .line 1143
    .line 1144
    return-object v3

    .line 1145
    :catchall_d
    move-exception v0

    .line 1146
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1147
    .line 1148
    .line 1149
    throw v0

    .line 1150
    :pswitch_d
    move-object/from16 v1, p1

    .line 1151
    .line 1152
    check-cast v1, Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1155
    .line 1156
    .line 1157
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    if-eqz v2, :cond_13

    .line 1162
    .line 1163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1164
    .line 1165
    .line 1166
    move-result v2

    .line 1167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1168
    .line 1169
    .line 1170
    move-result v3

    .line 1171
    if-ge v2, v3, :cond_12

    .line 1172
    .line 1173
    goto :goto_1f

    .line 1174
    :cond_12
    move-object v0, v1

    .line 1175
    goto :goto_1f

    .line 1176
    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    :goto_1f
    return-object v0

    .line 1181
    :pswitch_e
    move-object/from16 v1, p1

    .line 1182
    .line 1183
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1184
    .line 1185
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 1186
    .line 1187
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1188
    .line 1189
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1194
    .line 1195
    .line 1196
    return-object v3

    .line 1197
    :pswitch_f
    move-object/from16 v1, p1

    .line 1198
    .line 1199
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1200
    .line 1201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    .line 1205
    .line 1206
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    const/4 v2, 0x1

    .line 1211
    :try_start_e
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    if-eqz v0, :cond_14

    .line 1219
    .line 1220
    const/4 v2, 0x0

    .line 1221
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    if-eqz v0, :cond_15

    .line 1226
    .line 1227
    :cond_14
    const/4 v2, 0x0

    .line 1228
    goto :goto_20

    .line 1229
    :cond_15
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v2

    .line 1233
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1237
    goto :goto_20

    .line 1238
    :catchall_e
    move-exception v0

    .line 1239
    goto :goto_21

    .line 1240
    :goto_20
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1241
    .line 1242
    .line 1243
    return-object v2

    .line 1244
    :goto_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1245
    .line 1246
    .line 1247
    throw v0

    .line 1248
    :pswitch_10
    move-object/from16 v1, p1

    .line 1249
    .line 1250
    check-cast v1, Ljava/lang/String;

    .line 1251
    .line 1252
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v0

    .line 1260
    return-object v0

    .line 1261
    :pswitch_11
    move-object/from16 v1, p1

    .line 1262
    .line 1263
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1264
    .line 1265
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 1266
    .line 1267
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1268
    .line 1269
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1274
    .line 1275
    .line 1276
    const/4 v0, 0x5

    .line 1277
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->c(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1278
    .line 1279
    .line 1280
    return-object v3

    .line 1281
    :pswitch_12
    move-object/from16 v1, p1

    .line 1282
    .line 1283
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1284
    .line 1285
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1286
    .line 1287
    .line 1288
    const-string v2, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1289
    .line 1290
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v1

    .line 1294
    const/4 v2, 0x1

    .line 1295
    :try_start_f
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 1299
    .line 1300
    .line 1301
    move-result v0

    .line 1302
    if-eqz v0, :cond_16

    .line 1303
    .line 1304
    const/4 v2, 0x0

    .line 1305
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1306
    .line 1307
    .line 1308
    move-result-wide v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1309
    long-to-int v0, v3

    .line 1310
    if-eqz v0, :cond_16

    .line 1311
    .line 1312
    const/4 v4, 0x1

    .line 1313
    goto :goto_22

    .line 1314
    :catchall_f
    move-exception v0

    .line 1315
    goto :goto_23

    .line 1316
    :cond_16
    const/4 v4, 0x0

    .line 1317
    :goto_22
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1318
    .line 1319
    .line 1320
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    return-object v0

    .line 1325
    :goto_23
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1326
    .line 1327
    .line 1328
    throw v0

    .line 1329
    :pswitch_13
    move-object/from16 v1, p1

    .line 1330
    .line 1331
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1332
    .line 1333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    const-string v2, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 1337
    .line 1338
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v1

    .line 1342
    const/4 v2, 0x1

    .line 1343
    :try_start_10
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    .line 1347
    .line 1348
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .line 1350
    .line 1351
    :goto_24
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 1352
    .line 1353
    .line 1354
    move-result v2

    .line 1355
    if-eqz v2, :cond_17

    .line 1356
    .line 1357
    const/4 v2, 0x0

    .line 1358
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v3

    .line 1362
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1363
    .line 1364
    .line 1365
    goto :goto_24

    .line 1366
    :catchall_10
    move-exception v0

    .line 1367
    goto :goto_25

    .line 1368
    :cond_17
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1369
    .line 1370
    .line 1371
    return-object v0

    .line 1372
    :goto_25
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1373
    .line 1374
    .line 1375
    throw v0

    .line 1376
    nop

    .line 1377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
