.class public final synthetic Ly0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Ly0;->j:I

    .line 2
    .line 3
    iput-wide p2, p0, Ly0;->k:J

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
    .locals 83

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly0;->j:I

    .line 4
    .line 5
    iget-wide v3, v0, Ly0;->k:J

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p1

    .line 11
    .line 12
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    invoke-interface {v1, v0, v3, v4}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 25
    .line 26
    .line 27
    const-string v3, "id"

    .line 28
    .line 29
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v4, "state"

    .line 34
    .line 35
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "worker_class_name"

    .line 40
    .line 41
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "input_merger_class_name"

    .line 46
    .line 47
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "input"

    .line 52
    .line 53
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "output"

    .line 58
    .line 59
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const-string v9, "initial_delay"

    .line 64
    .line 65
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const-string v10, "interval_duration"

    .line 70
    .line 71
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const-string v11, "flex_duration"

    .line 76
    .line 77
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const-string v12, "run_attempt_count"

    .line 82
    .line 83
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    const-string v13, "backoff_policy"

    .line 88
    .line 89
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    const-string v14, "backoff_delay_duration"

    .line 94
    .line 95
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    const-string v15, "last_enqueue_time"

    .line 100
    .line 101
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const-string v0, "minimum_retention_duration"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const-string v2, "schedule_requested_at"

    .line 112
    .line 113
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    move/from16 p1, v2

    .line 118
    .line 119
    const-string v2, "run_in_foreground"

    .line 120
    .line 121
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    move/from16 v16, v2

    .line 126
    .line 127
    const-string v2, "out_of_quota_policy"

    .line 128
    .line 129
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    move/from16 v17, v2

    .line 134
    .line 135
    const-string v2, "period_count"

    .line 136
    .line 137
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    move/from16 v18, v2

    .line 142
    .line 143
    const-string v2, "generation"

    .line 144
    .line 145
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move/from16 v19, v2

    .line 150
    .line 151
    const-string v2, "next_schedule_time_override"

    .line 152
    .line 153
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    move/from16 v20, v2

    .line 158
    .line 159
    const-string v2, "next_schedule_time_override_generation"

    .line 160
    .line 161
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    move/from16 v21, v2

    .line 166
    .line 167
    const-string v2, "stop_reason"

    .line 168
    .line 169
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    move/from16 v22, v2

    .line 174
    .line 175
    const-string v2, "trace_tag"

    .line 176
    .line 177
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    move/from16 v23, v2

    .line 182
    .line 183
    const-string v2, "backoff_on_system_interruptions"

    .line 184
    .line 185
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    move/from16 v24, v2

    .line 190
    .line 191
    const-string v2, "required_network_type"

    .line 192
    .line 193
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    move/from16 v25, v2

    .line 198
    .line 199
    const-string v2, "required_network_request"

    .line 200
    .line 201
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    move/from16 v26, v2

    .line 206
    .line 207
    const-string v2, "requires_charging"

    .line 208
    .line 209
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    move/from16 v27, v2

    .line 214
    .line 215
    const-string v2, "requires_device_idle"

    .line 216
    .line 217
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    move/from16 v28, v2

    .line 222
    .line 223
    const-string v2, "requires_battery_not_low"

    .line 224
    .line 225
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    move/from16 v29, v2

    .line 230
    .line 231
    const-string v2, "requires_storage_not_low"

    .line 232
    .line 233
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    move/from16 v30, v2

    .line 238
    .line 239
    const-string v2, "trigger_content_update_delay"

    .line 240
    .line 241
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    move/from16 v31, v2

    .line 246
    .line 247
    const-string v2, "trigger_max_content_delay"

    .line 248
    .line 249
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    move/from16 v32, v2

    .line 254
    .line 255
    const-string v2, "content_uri_triggers"

    .line 256
    .line 257
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->b(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    move/from16 v33, v2

    .line 262
    .line 263
    new-instance v2, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .line 267
    .line 268
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 269
    .line 270
    .line 271
    move-result v34

    .line 272
    if-eqz v34, :cond_9

    .line 273
    .line 274
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v36

    .line 278
    move-object/from16 v69, v2

    .line 279
    .line 280
    move/from16 v34, v3

    .line 281
    .line 282
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 283
    .line 284
    .line 285
    move-result-wide v2

    .line 286
    long-to-int v2, v2

    .line 287
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    .line 288
    .line 289
    .line 290
    move-result-object v37

    .line 291
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v38

    .line 295
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v39

    .line 299
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    sget-object v3, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 304
    .line 305
    invoke-static {v2}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 306
    .line 307
    .line 308
    move-result-object v40

    .line 309
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v2}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    .line 314
    .line 315
    .line 316
    move-result-object v41

    .line 317
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v42

    .line 321
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v44

    .line 325
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v46

    .line 329
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 330
    .line 331
    .line 332
    move-result-wide v2

    .line 333
    long-to-int v2, v2

    .line 334
    move/from16 v49, v2

    .line 335
    .line 336
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 337
    .line 338
    .line 339
    move-result-wide v2

    .line 340
    long-to-int v2, v2

    .line 341
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    .line 342
    .line 343
    .line 344
    move-result-object v50

    .line 345
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v51

    .line 349
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 350
    .line 351
    .line 352
    move-result-wide v53

    .line 353
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v55

    .line 357
    move/from16 v2, p1

    .line 358
    .line 359
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v57

    .line 363
    move/from16 p1, v4

    .line 364
    .line 365
    move/from16 v3, v16

    .line 366
    .line 367
    move/from16 v16, v5

    .line 368
    .line 369
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    long-to-int v4, v4

    .line 374
    if-eqz v4, :cond_0

    .line 375
    .line 376
    const/16 v59, 0x1

    .line 377
    .line 378
    :goto_1
    move v5, v2

    .line 379
    move/from16 v4, v17

    .line 380
    .line 381
    move/from16 v17, v3

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
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v2

    .line 391
    long-to-int v2, v2

    .line 392
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->d(I)Landroidx/work/OutOfQuotaPolicy;

    .line 393
    .line 394
    .line 395
    move-result-object v60

    .line 396
    move/from16 v2, v18

    .line 397
    .line 398
    move/from16 v18, v4

    .line 399
    .line 400
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 401
    .line 402
    .line 403
    move-result-wide v3

    .line 404
    long-to-int v3, v3

    .line 405
    move/from16 v61, v3

    .line 406
    .line 407
    move/from16 v4, v19

    .line 408
    .line 409
    move/from16 v19, v2

    .line 410
    .line 411
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

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
    move/from16 v70, v4

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
    const/16 v35, 0x0

    .line 453
    .line 454
    if-eqz v23, :cond_1

    .line 455
    .line 456
    move-object/from16 v67, v35

    .line 457
    .line 458
    :goto_3
    move/from16 v23, v0

    .line 459
    .line 460
    move/from16 v0, v24

    .line 461
    .line 462
    goto :goto_4

    .line 463
    :cond_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v23

    .line 467
    move-object/from16 v67, v23

    .line 468
    .line 469
    goto :goto_3

    .line 470
    :goto_4
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 471
    .line 472
    .line 473
    move-result v24

    .line 474
    if-eqz v24, :cond_2

    .line 475
    .line 476
    move/from16 v65, v2

    .line 477
    .line 478
    move/from16 v24, v3

    .line 479
    .line 480
    move-object/from16 v2, v35

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_2
    move/from16 v65, v2

    .line 484
    .line 485
    move/from16 v24, v3

    .line 486
    .line 487
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 488
    .line 489
    .line 490
    move-result-wide v2

    .line 491
    long-to-int v2, v2

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    :goto_5
    if-eqz v2, :cond_4

    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_3

    .line 503
    .line 504
    const/4 v2, 0x1

    .line 505
    goto :goto_6

    .line 506
    :cond_3
    const/4 v2, 0x0

    .line 507
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 508
    .line 509
    .line 510
    move-result-object v35

    .line 511
    :cond_4
    move/from16 v66, v4

    .line 512
    .line 513
    move/from16 v2, v25

    .line 514
    .line 515
    move-object/from16 v68, v35

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    move-object/from16 v31, v1

    .line 520
    .line 521
    goto/16 :goto_10

    .line 522
    .line 523
    :goto_7
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
    :goto_8
    move/from16 v27, v4

    .line 558
    .line 559
    move/from16 v2, v28

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_5
    const/16 v74, 0x0

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :goto_9
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
    :goto_a
    move/from16 v28, v5

    .line 575
    .line 576
    move/from16 v3, v29

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_6
    const/16 v75, 0x0

    .line 580
    .line 581
    goto :goto_a

    .line 582
    :goto_b
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
    :goto_c
    move v5, v2

    .line 592
    move/from16 v29, v3

    .line 593
    .line 594
    move/from16 v4, v30

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_7
    const/16 v76, 0x0

    .line 598
    .line 599
    goto :goto_c

    .line 600
    :goto_d
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
    :goto_e
    move/from16 v2, v31

    .line 610
    .line 611
    goto :goto_f

    .line 612
    :cond_8
    const/16 v77, 0x0

    .line 613
    .line 614
    goto :goto_e

    .line 615
    :goto_f
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
    move v0, v4

    .line 663
    move/from16 v4, p1

    .line 664
    .line 665
    move/from16 p1, v22

    .line 666
    .line 667
    move/from16 v22, v24

    .line 668
    .line 669
    move/from16 v24, v30

    .line 670
    .line 671
    move/from16 v30, v0

    .line 672
    .line 673
    move v0, v2

    .line 674
    move-object v2, v1

    .line 675
    move-object/from16 v1, v31

    .line 676
    .line 677
    move/from16 v31, v0

    .line 678
    .line 679
    move/from16 v32, v3

    .line 680
    .line 681
    move/from16 v0, v20

    .line 682
    .line 683
    move/from16 v20, v21

    .line 684
    .line 685
    move/from16 v21, v23

    .line 686
    .line 687
    move/from16 v23, v28

    .line 688
    .line 689
    move/from16 v3, v34

    .line 690
    .line 691
    move/from16 v28, v5

    .line 692
    .line 693
    move/from16 v5, v16

    .line 694
    .line 695
    move/from16 v16, v17

    .line 696
    .line 697
    move/from16 v17, v18

    .line 698
    .line 699
    move/from16 v18, v19

    .line 700
    .line 701
    move/from16 v19, v70

    .line 702
    .line 703
    goto/16 :goto_0

    .line 704
    .line 705
    :catchall_1
    move-exception v0

    .line 706
    goto :goto_10

    .line 707
    :cond_9
    move-object/from16 v31, v1

    .line 708
    .line 709
    move-object v1, v2

    .line 710
    invoke-interface/range {v31 .. v31}, Ljava/lang/AutoCloseable;->close()V

    .line 711
    .line 712
    .line 713
    return-object v1

    .line 714
    :goto_10
    invoke-interface/range {v31 .. v31}, Ljava/lang/AutoCloseable;->close()V

    .line 715
    .line 716
    .line 717
    throw v0

    .line 718
    :pswitch_0
    move-object/from16 v1, p1

    .line 719
    .line 720
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 721
    .line 722
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 723
    .line 724
    new-instance v3, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 725
    .line 726
    sget-object v4, Landroidx/compose/foundation/text/Handle;->j:Landroidx/compose/foundation/text/Handle;

    .line 727
    .line 728
    sget-object v7, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->k:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 729
    .line 730
    const/4 v8, 0x1

    .line 731
    iget-wide v5, v0, Ly0;->k:J

    .line 732
    .line 733
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 734
    .line 735
    .line 736
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 740
    .line 741
    return-object v0

    .line 742
    :pswitch_1
    move-object/from16 v0, p1

    .line 743
    .line 744
    check-cast v0, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 745
    .line 746
    sget v1, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    .line 747
    .line 748
    iget-object v1, v0, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 749
    .line 750
    invoke-interface {v1}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->i()J

    .line 751
    .line 752
    .line 753
    move-result-wide v1

    .line 754
    const/16 v5, 0x20

    .line 755
    .line 756
    shr-long/2addr v1, v5

    .line 757
    long-to-int v1, v1

    .line 758
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    const/high16 v2, 0x40000000    # 2.0f

    .line 763
    .line 764
    div-float/2addr v1, v2

    .line 765
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->d(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    new-instance v4, Lz0;

    .line 774
    .line 775
    const/4 v5, 0x0

    .line 776
    invoke-direct {v4, v1, v2, v3, v5}, Lz0;-><init>(FLjava/lang/Object;Ljava/lang/Object;I)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v4}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    return-object v0

    .line 784
    nop

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
