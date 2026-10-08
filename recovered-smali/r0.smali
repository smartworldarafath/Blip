.class public final synthetic Lr0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 11
    iput p2, p0, Lr0;->j:I

    iput p1, p0, Lr0;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    iput p1, p0, Lr0;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput p2, p0, Lr0;->k:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 83

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lr0;->j:I

    .line 4
    .line 5
    iget v0, v0, Lr0;->k:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    .line 18
    .line 19
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    int-to-long v4, v0

    .line 24
    const/4 v0, 0x1

    .line 25
    :try_start_0
    invoke-interface {v1, v0, v4, v5}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 26
    .line 27
    .line 28
    const-string v4, "id"

    .line 29
    .line 30
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v5, "state"

    .line 35
    .line 36
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-string v6, "worker_class_name"

    .line 41
    .line 42
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const-string v7, "input_merger_class_name"

    .line 47
    .line 48
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const-string v8, "input"

    .line 53
    .line 54
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const-string v9, "output"

    .line 59
    .line 60
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    const-string v10, "initial_delay"

    .line 65
    .line 66
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const-string v11, "interval_duration"

    .line 71
    .line 72
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    const-string v12, "flex_duration"

    .line 77
    .line 78
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    const-string v13, "run_attempt_count"

    .line 83
    .line 84
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    const-string v14, "backoff_policy"

    .line 89
    .line 90
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const-string v15, "backoff_delay_duration"

    .line 95
    .line 96
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    const-string v0, "last_enqueue_time"

    .line 101
    .line 102
    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const-string v2, "minimum_retention_duration"

    .line 107
    .line 108
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const-string v3, "schedule_requested_at"

    .line 113
    .line 114
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    move/from16 p1, v3

    .line 119
    .line 120
    const-string v3, "run_in_foreground"

    .line 121
    .line 122
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    move/from16 v16, v3

    .line 127
    .line 128
    const-string v3, "out_of_quota_policy"

    .line 129
    .line 130
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    move/from16 v17, v3

    .line 135
    .line 136
    const-string v3, "period_count"

    .line 137
    .line 138
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move/from16 v18, v3

    .line 143
    .line 144
    const-string v3, "generation"

    .line 145
    .line 146
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v19, v3

    .line 151
    .line 152
    const-string v3, "next_schedule_time_override"

    .line 153
    .line 154
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    move/from16 v20, v3

    .line 159
    .line 160
    const-string v3, "next_schedule_time_override_generation"

    .line 161
    .line 162
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    move/from16 v21, v3

    .line 167
    .line 168
    const-string v3, "stop_reason"

    .line 169
    .line 170
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    move/from16 v22, v3

    .line 175
    .line 176
    const-string v3, "trace_tag"

    .line 177
    .line 178
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    move/from16 v23, v3

    .line 183
    .line 184
    const-string v3, "backoff_on_system_interruptions"

    .line 185
    .line 186
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    move/from16 v24, v3

    .line 191
    .line 192
    const-string v3, "required_network_type"

    .line 193
    .line 194
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    move/from16 v25, v3

    .line 199
    .line 200
    const-string v3, "required_network_request"

    .line 201
    .line 202
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    move/from16 v26, v3

    .line 207
    .line 208
    const-string v3, "requires_charging"

    .line 209
    .line 210
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    move/from16 v27, v3

    .line 215
    .line 216
    const-string v3, "requires_device_idle"

    .line 217
    .line 218
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move/from16 v28, v3

    .line 223
    .line 224
    const-string v3, "requires_battery_not_low"

    .line 225
    .line 226
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    move/from16 v29, v3

    .line 231
    .line 232
    const-string v3, "requires_storage_not_low"

    .line 233
    .line 234
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    move/from16 v30, v3

    .line 239
    .line 240
    const-string v3, "trigger_content_update_delay"

    .line 241
    .line 242
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    move/from16 v31, v3

    .line 247
    .line 248
    const-string v3, "trigger_max_content_delay"

    .line 249
    .line 250
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    move/from16 v32, v3

    .line 255
    .line 256
    const-string v3, "content_uri_triggers"

    .line 257
    .line 258
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    move/from16 v33, v3

    .line 263
    .line 264
    new-instance v3, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 270
    .line 271
    .line 272
    move-result v34

    .line 273
    if-eqz v34, :cond_9

    .line 274
    .line 275
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v36

    .line 279
    move-object/from16 v69, v3

    .line 280
    .line 281
    move/from16 v34, v4

    .line 282
    .line 283
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v3

    .line 287
    long-to-int v3, v3

    .line 288
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    .line 289
    .line 290
    .line 291
    move-result-object v37

    .line 292
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v38

    .line 296
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v39

    .line 300
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    sget-object v4, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 305
    .line 306
    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 307
    .line 308
    .line 309
    move-result-object v40

    .line 310
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-static {v3}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 315
    .line 316
    .line 317
    move-result-object v41

    .line 318
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v42

    .line 322
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v44

    .line 326
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v46

    .line 330
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    long-to-int v3, v3

    .line 335
    move/from16 v49, v3

    .line 336
    .line 337
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 338
    .line 339
    .line 340
    move-result-wide v3

    .line 341
    long-to-int v3, v3

    .line 342
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    .line 343
    .line 344
    .line 345
    move-result-object v50

    .line 346
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 347
    .line 348
    .line 349
    move-result-wide v51

    .line 350
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 351
    .line 352
    .line 353
    move-result-wide v53

    .line 354
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v55

    .line 358
    move/from16 v3, p1

    .line 359
    .line 360
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 361
    .line 362
    .line 363
    move-result-wide v57

    .line 364
    move/from16 p1, v2

    .line 365
    .line 366
    move/from16 v4, v16

    .line 367
    .line 368
    move/from16 v16, v3

    .line 369
    .line 370
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 371
    .line 372
    .line 373
    move-result-wide v2

    .line 374
    long-to-int v2, v2

    .line 375
    if-eqz v2, :cond_0

    .line 376
    .line 377
    const/16 v59, 0x1

    .line 378
    .line 379
    :goto_1
    move/from16 v2, v17

    .line 380
    .line 381
    move/from16 v17, v4

    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_0
    const/16 v59, 0x0

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :goto_2
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v3

    .line 391
    long-to-int v3, v3

    .line 392
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->d(I)Landroidx/work/OutOfQuotaPolicy;

    .line 393
    .line 394
    .line 395
    move-result-object v60

    .line 396
    move/from16 v3, v18

    .line 397
    .line 398
    move/from16 v18, v5

    .line 399
    .line 400
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 401
    .line 402
    .line 403
    move-result-wide v4

    .line 404
    long-to-int v4, v4

    .line 405
    move/from16 v70, v3

    .line 406
    .line 407
    move/from16 v5, v19

    .line 408
    .line 409
    move/from16 v19, v2

    .line 410
    .line 411
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 412
    .line 413
    .line 414
    move-result-wide v2

    .line 415
    long-to-int v2, v2

    .line 416
    move/from16 v3, v20

    .line 417
    .line 418
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v63

    .line 422
    move/from16 v20, v0

    .line 423
    .line 424
    move/from16 v62, v2

    .line 425
    .line 426
    move/from16 v0, v21

    .line 427
    .line 428
    move/from16 v21, v3

    .line 429
    .line 430
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    long-to-int v2, v2

    .line 435
    move/from16 v61, v4

    .line 436
    .line 437
    move/from16 v3, v22

    .line 438
    .line 439
    move/from16 v22, v5

    .line 440
    .line 441
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    long-to-int v4, v4

    .line 446
    move/from16 v5, v23

    .line 447
    .line 448
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 449
    .line 450
    .line 451
    move-result v23

    .line 452
    if-eqz v23, :cond_1

    .line 453
    .line 454
    const/16 v67, 0x0

    .line 455
    .line 456
    :goto_3
    move/from16 v23, v0

    .line 457
    .line 458
    move/from16 v0, v24

    .line 459
    .line 460
    goto :goto_4

    .line 461
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v23

    .line 465
    move-object/from16 v67, v23

    .line 466
    .line 467
    goto :goto_3

    .line 468
    :goto_4
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 469
    .line 470
    .line 471
    move-result v24

    .line 472
    if-eqz v24, :cond_2

    .line 473
    .line 474
    move/from16 v65, v2

    .line 475
    .line 476
    move/from16 v24, v3

    .line 477
    .line 478
    const/4 v2, 0x0

    .line 479
    goto :goto_5

    .line 480
    :cond_2
    move/from16 v65, v2

    .line 481
    .line 482
    move/from16 v24, v3

    .line 483
    .line 484
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v2

    .line 488
    long-to-int v2, v2

    .line 489
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    :goto_5
    if-eqz v2, :cond_4

    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    if-eqz v2, :cond_3

    .line 500
    .line 501
    const/4 v2, 0x1

    .line 502
    goto :goto_6

    .line 503
    :cond_3
    const/4 v2, 0x0

    .line 504
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    move-object/from16 v68, v2

    .line 509
    .line 510
    :goto_7
    move/from16 v66, v4

    .line 511
    .line 512
    move/from16 v2, v25

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :catchall_0
    move-exception v0

    .line 516
    move-object/from16 v31, v1

    .line 517
    .line 518
    goto/16 :goto_11

    .line 519
    .line 520
    :cond_4
    const/16 v68, 0x0

    .line 521
    .line 522
    goto :goto_7

    .line 523
    :goto_8
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 524
    .line 525
    .line 526
    move-result-wide v3

    .line 527
    long-to-int v3, v3

    .line 528
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->c(I)Landroidx/work/NetworkType;

    .line 529
    .line 530
    .line 531
    move-result-object v73

    .line 532
    move/from16 v3, v26

    .line 533
    .line 534
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->g([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 539
    .line 540
    .line 541
    move-result-object v72

    .line 542
    move/from16 v25, v2

    .line 543
    .line 544
    move/from16 v26, v3

    .line 545
    .line 546
    move/from16 v4, v27

    .line 547
    .line 548
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 549
    .line 550
    .line 551
    move-result-wide v2

    .line 552
    long-to-int v2, v2

    .line 553
    if-eqz v2, :cond_5

    .line 554
    .line 555
    const/16 v74, 0x1

    .line 556
    .line 557
    :goto_9
    move/from16 v27, v4

    .line 558
    .line 559
    move/from16 v2, v28

    .line 560
    .line 561
    goto :goto_a

    .line 562
    :cond_5
    const/16 v74, 0x0

    .line 563
    .line 564
    goto :goto_9

    .line 565
    :goto_a
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 566
    .line 567
    .line 568
    move-result-wide v3

    .line 569
    long-to-int v3, v3

    .line 570
    if-eqz v3, :cond_6

    .line 571
    .line 572
    const/16 v75, 0x1

    .line 573
    .line 574
    :goto_b
    move/from16 v28, v5

    .line 575
    .line 576
    move/from16 v3, v29

    .line 577
    .line 578
    goto :goto_c

    .line 579
    :cond_6
    const/16 v75, 0x0

    .line 580
    .line 581
    goto :goto_b

    .line 582
    :goto_c
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 583
    .line 584
    .line 585
    move-result-wide v4

    .line 586
    long-to-int v4, v4

    .line 587
    if-eqz v4, :cond_7

    .line 588
    .line 589
    const/16 v76, 0x1

    .line 590
    .line 591
    :goto_d
    move v5, v2

    .line 592
    move/from16 v29, v3

    .line 593
    .line 594
    move/from16 v4, v30

    .line 595
    .line 596
    goto :goto_e

    .line 597
    :cond_7
    const/16 v76, 0x0

    .line 598
    .line 599
    goto :goto_d

    .line 600
    :goto_e
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 601
    .line 602
    .line 603
    move-result-wide v2

    .line 604
    long-to-int v2, v2

    .line 605
    if-eqz v2, :cond_8

    .line 606
    .line 607
    const/16 v77, 0x1

    .line 608
    .line 609
    :goto_f
    move/from16 v2, v31

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_8
    const/16 v77, 0x0

    .line 613
    .line 614
    goto :goto_f

    .line 615
    :goto_10
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 616
    .line 617
    .line 618
    move-result-wide v78

    .line 619
    move/from16 v3, v32

    .line 620
    .line 621
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v80

    .line 625
    move/from16 v30, v0

    .line 626
    .line 627
    move/from16 v0, v33

    .line 628
    .line 629
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 630
    .line 631
    .line 632
    move-result-object v31

    .line 633
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->a([B)Ljava/util/LinkedHashSet;

    .line 634
    .line 635
    .line 636
    move-result-object v82

    .line 637
    new-instance v48, Landroidx/work/Constraints;

    .line 638
    .line 639
    move-object/from16 v71, v48

    .line 640
    .line 641
    invoke-direct/range {v71 .. v82}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 642
    .line 643
    .line 644
    move-object/from16 v48, v71

    .line 645
    .line 646
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    .line 647
    .line 648
    invoke-direct/range {v35 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .line 650
    .line 651
    move/from16 v33, v0

    .line 652
    .line 653
    move-object/from16 v0, v35

    .line 654
    .line 655
    move-object/from16 v31, v1

    .line 656
    .line 657
    move-object/from16 v1, v69

    .line 658
    .line 659
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    .line 661
    .line 662
    move/from16 v32, v3

    .line 663
    .line 664
    move/from16 v0, v20

    .line 665
    .line 666
    move/from16 v20, v21

    .line 667
    .line 668
    move/from16 v21, v23

    .line 669
    .line 670
    move/from16 v23, v28

    .line 671
    .line 672
    move-object v3, v1

    .line 673
    move/from16 v28, v5

    .line 674
    .line 675
    move/from16 v5, v18

    .line 676
    .line 677
    move-object/from16 v1, v31

    .line 678
    .line 679
    move/from16 v18, v70

    .line 680
    .line 681
    move/from16 v31, v2

    .line 682
    .line 683
    move/from16 v2, p1

    .line 684
    .line 685
    move/from16 p1, v16

    .line 686
    .line 687
    move/from16 v16, v17

    .line 688
    .line 689
    move/from16 v17, v19

    .line 690
    .line 691
    move/from16 v19, v22

    .line 692
    .line 693
    move/from16 v22, v24

    .line 694
    .line 695
    move/from16 v24, v30

    .line 696
    .line 697
    move/from16 v30, v4

    .line 698
    .line 699
    move/from16 v4, v34

    .line 700
    .line 701
    goto/16 :goto_0

    .line 702
    .line 703
    :catchall_1
    move-exception v0

    .line 704
    goto :goto_11

    .line 705
    :cond_9
    move-object/from16 v31, v1

    .line 706
    .line 707
    move-object v1, v3

    .line 708
    invoke-interface/range {v31 .. v31}, Ljava/lang/AutoCloseable;->close()V

    .line 709
    .line 710
    .line 711
    return-object v1

    .line 712
    :goto_11
    invoke-interface/range {v31 .. v31}, Ljava/lang/AutoCloseable;->close()V

    .line 713
    .line 714
    .line 715
    throw v0

    .line 716
    :pswitch_0
    move-object/from16 v1, p1

    .line 717
    .line 718
    check-cast v1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    .line 719
    .line 720
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    if-eqz v2, :cond_a

    .line 725
    .line 726
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    goto :goto_12

    .line 731
    :cond_a
    const/4 v3, 0x0

    .line 732
    :goto_12
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 737
    .line 738
    .line 739
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->b()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    const/4 v3, -0x1

    .line 744
    if-ne v2, v3, :cond_b

    .line 745
    .line 746
    const/4 v2, 0x2

    .line 747
    goto :goto_13

    .line 748
    :cond_b
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->b()I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    :goto_13
    const/4 v3, 0x0

    .line 753
    :goto_14
    if-ge v3, v2, :cond_c

    .line 754
    .line 755
    add-int v4, v0, v3

    .line 756
    .line 757
    invoke-interface {v1, v4}, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;->a(I)V

    .line 758
    .line 759
    .line 760
    add-int/lit8 v3, v3, 0x1

    .line 761
    .line 762
    goto :goto_14

    .line 763
    :cond_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 764
    .line 765
    return-object v0

    .line 766
    :pswitch_1
    move-object/from16 v1, p1

    .line 767
    .line 768
    check-cast v1, Ljava/lang/Integer;

    .line 769
    .line 770
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 771
    .line 772
    .line 773
    neg-int v0, v0

    .line 774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    return-object v0

    .line 779
    :pswitch_2
    move-object/from16 v1, p1

    .line 780
    .line 781
    check-cast v1, Ljava/lang/Integer;

    .line 782
    .line 783
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 784
    .line 785
    .line 786
    neg-int v0, v0

    .line 787
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    return-object v0

    .line 792
    :pswitch_3
    move-object/from16 v1, p1

    .line 793
    .line 794
    check-cast v1, Ljava/lang/Integer;

    .line 795
    .line 796
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 797
    .line 798
    .line 799
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    return-object v0

    .line 804
    :pswitch_4
    move-object/from16 v1, p1

    .line 805
    .line 806
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 807
    .line 808
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->Y0(I)Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    return-object v0

    .line 817
    :pswitch_5
    move-object/from16 v1, p1

    .line 818
    .line 819
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 820
    .line 821
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->f1(I)Z

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    return-object v0

    .line 830
    :pswitch_6
    move-object/from16 v1, p1

    .line 831
    .line 832
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 833
    .line 834
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->f1(I)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    return-object v0

    .line 843
    :pswitch_7
    move-object/from16 v1, p1

    .line 844
    .line 845
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 846
    .line 847
    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 848
    .line 849
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->f1(I)Z

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    return-object v0

    .line 858
    :pswitch_8
    move-object/from16 v1, p1

    .line 859
    .line 860
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 861
    .line 862
    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 863
    .line 864
    invoke-virtual {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->f1(I)Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    return-object v0

    .line 873
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
