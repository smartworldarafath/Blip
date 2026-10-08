.class public final synthetic Lle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lle;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lle;->j:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v0, p1

    .line 23
    .line 24
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v1, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :pswitch_0
    move-object/from16 v0, p1

    .line 65
    .line 66
    check-cast v0, Landroid/content/res/Resources;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 76
    .line 77
    and-int/lit8 v0, v0, 0x30

    .line 78
    .line 79
    if-ne v0, v5, :cond_1

    .line 80
    .line 81
    move v8, v9

    .line 82
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :pswitch_1
    move-object/from16 v0, p1

    .line 88
    .line 89
    check-cast v0, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sget v1, Landroidx/compose/material/SwitchKt;->a:F

    .line 96
    .line 97
    const v1, 0x3f333333    # 0.7f

    .line 98
    .line 99
    .line 100
    mul-float/2addr v0, v1

    .line 101
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    :pswitch_2
    move-object/from16 v0, p1

    .line 107
    .line 108
    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    .line 109
    .line 110
    return-object v6

    .line 111
    :pswitch_3
    move-object/from16 v0, p1

    .line 112
    .line 113
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 114
    .line 115
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 118
    .line 119
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 120
    .line 121
    aget-object v2, v2, v4

    .line 122
    .line 123
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v6

    .line 132
    :pswitch_4
    move-object/from16 v0, p1

    .line 133
    .line 134
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    return-object v6

    .line 140
    :pswitch_5
    move-object/from16 v0, p1

    .line 141
    .line 142
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 143
    .line 144
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lle;

    .line 145
    .line 146
    return-object v6

    .line 147
    :pswitch_6
    move-object/from16 v0, p1

    .line 148
    .line 149
    check-cast v0, Lnet/blip/libblip/Device;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 155
    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    iget-boolean v0, v0, Lnet/blip/libblip/DeviceReach;->m:Z

    .line 159
    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    goto :goto_2

    .line 165
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    :goto_2
    return-object v0

    .line 168
    :pswitch_7
    move-object/from16 v0, p1

    .line 169
    .line 170
    check-cast v0, Lnet/blip/libblip/Device;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v0, v0, Lnet/blip/libblip/Device;->q:Ljava/time/Instant;

    .line 176
    .line 177
    return-object v0

    .line 178
    :pswitch_8
    move-object/from16 v0, p1

    .line 179
    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    xor-int/2addr v0, v9

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :pswitch_9
    move-object/from16 v0, p1

    .line 196
    .line 197
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    xor-int/2addr v0, v9

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    return-object v0

    .line 212
    :pswitch_a
    if-nez p1, :cond_3

    .line 213
    .line 214
    move v8, v9

    .line 215
    :cond_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    :pswitch_b
    move-object/from16 v0, p1

    .line 221
    .line 222
    check-cast v0, Lio/sentry/kotlin/multiplatform/Scope;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    sget-object v1, Lio/sentry/kotlin/multiplatform/SentryLevel;->FATAL:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 228
    .line 229
    check-cast v0, Lio/sentry/kotlin/multiplatform/JvmScopeProvider;

    .line 230
    .line 231
    iget-object v0, v0, Lio/sentry/kotlin/multiplatform/JvmScopeProvider;->a:Lio/sentry/IScope;

    .line 232
    .line 233
    if-eqz v1, :cond_4

    .line 234
    .line 235
    invoke-static {v1}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->a(Lio/sentry/kotlin/multiplatform/SentryLevel;)Lio/sentry/SentryLevel;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    :cond_4
    invoke-interface {v0, v7}, Lio/sentry/IScope;->n(Lio/sentry/SentryLevel;)V

    .line 240
    .line 241
    .line 242
    return-object v6

    .line 243
    :pswitch_c
    move-object/from16 v0, p1

    .line 244
    .line 245
    check-cast v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 246
    .line 247
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 248
    .line 249
    iget v1, v0, Landroidx/compose/animation/core/AnimationVector2D;->a:F

    .line 250
    .line 251
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector2D;->b:F

    .line 252
    .line 253
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    int-to-long v6, v1

    .line 258
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    int-to-long v0, v0

    .line 263
    shl-long v4, v6, v5

    .line 264
    .line 265
    and-long/2addr v0, v2

    .line 266
    or-long/2addr v0, v4

    .line 267
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 268
    .line 269
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :pswitch_d
    move-object/from16 v0, p1

    .line 274
    .line 275
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 276
    .line 277
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 278
    .line 279
    iget-wide v6, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 280
    .line 281
    const-wide v8, 0x7fffffff7fffffffL

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    and-long/2addr v8, v6

    .line 287
    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    cmp-long v1, v8, v10

    .line 293
    .line 294
    if-eqz v1, :cond_5

    .line 295
    .line 296
    new-instance v1, Landroidx/compose/animation/core/AnimationVector2D;

    .line 297
    .line 298
    shr-long v4, v6, v5

    .line 299
    .line 300
    long-to-int v4, v4

    .line 301
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    iget-wide v5, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 306
    .line 307
    and-long/2addr v2, v5

    .line 308
    long-to-int v0, v2

    .line 309
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-direct {v1, v4, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_5
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 318
    .line 319
    :goto_3
    return-object v1

    .line 320
    :pswitch_e
    move-object/from16 v0, p1

    .line 321
    .line 322
    check-cast v0, Ljava/lang/Integer;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    new-instance v1, Landroidx/compose/foundation/ScrollState;

    .line 329
    .line 330
    invoke-direct {v1, v0}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 331
    .line 332
    .line 333
    return-object v1

    .line 334
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    move-object/from16 v0, p1

    .line 338
    .line 339
    check-cast v0, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 346
    .line 347
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 348
    .line 349
    .line 350
    return-object v1

    .line 351
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    move-object/from16 v0, p1

    .line 355
    .line 356
    check-cast v0, Ljava/util/List;

    .line 357
    .line 358
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 359
    .line 360
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    .line 366
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    sget-object v4, Landroidx/compose/ui/text/Savers_androidKt;->e:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 371
    .line 372
    if-eqz v3, :cond_7

    .line 373
    .line 374
    instance-of v3, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 375
    .line 376
    if-nez v3, :cond_7

    .line 377
    .line 378
    :cond_6
    move-object v2, v7

    .line 379
    goto :goto_4

    .line 380
    :cond_7
    if-eqz v2, :cond_6

    .line 381
    .line 382
    iget-object v3, v4, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 383
    .line 384
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 389
    .line 390
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    iget v2, v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;->a:I

    .line 394
    .line 395
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_8

    .line 400
    .line 401
    move-object v7, v0

    .line 402
    check-cast v7, Ljava/lang/Boolean;

    .line 403
    .line 404
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/text/style/TextMotion;-><init>(IZ)V

    .line 412
    .line 413
    .line 414
    return-object v1

    .line 415
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    move-object/from16 v0, p1

    .line 419
    .line 420
    check-cast v0, Ljava/lang/Integer;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    new-instance v1, Landroidx/compose/ui/text/style/LineBreak;

    .line 427
    .line 428
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 429
    .line 430
    .line 431
    return-object v1

    .line 432
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    move-object/from16 v0, p1

    .line 436
    .line 437
    check-cast v0, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    new-instance v1, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 444
    .line 445
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 446
    .line 447
    .line 448
    return-object v1

    .line 449
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    move-object/from16 v0, p1

    .line 453
    .line 454
    check-cast v0, Ljava/util/List;

    .line 455
    .line 456
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    if-eqz v1, :cond_9

    .line 461
    .line 462
    check-cast v1, Ljava/lang/Boolean;

    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_9
    move-object v1, v7

    .line 466
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 478
    .line 479
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    sget-object v3, Landroidx/compose/ui/text/Savers_androidKt;->b:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 484
    .line 485
    if-eqz v2, :cond_a

    .line 486
    .line 487
    instance-of v2, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 488
    .line 489
    if-nez v2, :cond_a

    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_a
    if-eqz v0, :cond_b

    .line 493
    .line 494
    iget-object v2, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 495
    .line 496
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    move-object v7, v0

    .line 501
    check-cast v7, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 502
    .line 503
    :cond_b
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    iget v0, v7, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    .line 507
    .line 508
    new-instance v2, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 509
    .line 510
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    .line 511
    .line 512
    .line 513
    return-object v2

    .line 514
    :pswitch_14
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 515
    .line 516
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    move-object/from16 v0, p1

    .line 520
    .line 521
    check-cast v0, Ljava/util/List;

    .line 522
    .line 523
    new-instance v10, Landroidx/compose/ui/text/ParagraphStyle;

    .line 524
    .line 525
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->q:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 530
    .line 531
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 532
    .line 533
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    if-eqz v2, :cond_c

    .line 537
    .line 538
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 539
    .line 540
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_c
    move-object v2, v7

    .line 548
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    iget v11, v2, Landroidx/compose/ui/text/style/TextAlign;->a:I

    .line 552
    .line 553
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->r:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 558
    .line 559
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    if-eqz v2, :cond_d

    .line 563
    .line 564
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 565
    .line 566
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    check-cast v2, Landroidx/compose/ui/text/style/TextDirection;

    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_d
    move-object v2, v7

    .line 574
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    iget v12, v2, Landroidx/compose/ui/text/style/TextDirection;->a:I

    .line 578
    .line 579
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    .line 584
    .line 585
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 586
    .line 587
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    if-eqz v1, :cond_e

    .line 591
    .line 592
    iget-object v2, v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 593
    .line 594
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 599
    .line 600
    goto :goto_9

    .line 601
    :cond_e
    move-object v1, v7

    .line 602
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    iget-wide v13, v1, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 606
    .line 607
    const/4 v1, 0x3

    .line 608
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    sget-object v2, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent;

    .line 613
    .line 614
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->l:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 615
    .line 616
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-eqz v3, :cond_10

    .line 621
    .line 622
    instance-of v3, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 623
    .line 624
    if-nez v3, :cond_10

    .line 625
    .line 626
    :cond_f
    move-object v15, v7

    .line 627
    goto :goto_a

    .line 628
    :cond_10
    if-eqz v1, :cond_f

    .line 629
    .line 630
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 631
    .line 632
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    check-cast v1, Landroidx/compose/ui/text/style/TextIndent;

    .line 637
    .line 638
    move-object v15, v1

    .line 639
    :goto_a
    const/4 v1, 0x4

    .line 640
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    sget-object v3, Landroidx/compose/ui/text/Savers_androidKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 649
    .line 650
    if-eqz v2, :cond_12

    .line 651
    .line 652
    instance-of v2, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 653
    .line 654
    if-nez v2, :cond_12

    .line 655
    .line 656
    :cond_11
    move-object/from16 v16, v7

    .line 657
    .line 658
    goto :goto_b

    .line 659
    :cond_12
    if-eqz v1, :cond_11

    .line 660
    .line 661
    iget-object v2, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 662
    .line 663
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 668
    .line 669
    move-object/from16 v16, v1

    .line 670
    .line 671
    :goto_b
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    sget-object v2, Landroidx/compose/ui/text/style/LineHeightStyle;->d:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 676
    .line 677
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->A:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 678
    .line 679
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_14

    .line 684
    .line 685
    instance-of v3, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 686
    .line 687
    if-nez v3, :cond_14

    .line 688
    .line 689
    :cond_13
    move-object/from16 v17, v7

    .line 690
    .line 691
    goto :goto_c

    .line 692
    :cond_14
    if-eqz v1, :cond_13

    .line 693
    .line 694
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 695
    .line 696
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 701
    .line 702
    move-object/from16 v17, v1

    .line 703
    .line 704
    :goto_c
    const/4 v1, 0x6

    .line 705
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    sget-object v3, Landroidx/compose/ui/text/Savers_androidKt;->c:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 714
    .line 715
    if-eqz v2, :cond_16

    .line 716
    .line 717
    instance-of v2, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 718
    .line 719
    if-nez v2, :cond_16

    .line 720
    .line 721
    :cond_15
    move-object v1, v7

    .line 722
    goto :goto_d

    .line 723
    :cond_16
    if-eqz v1, :cond_15

    .line 724
    .line 725
    iget-object v2, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 726
    .line 727
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Landroidx/compose/ui/text/style/LineBreak;

    .line 732
    .line 733
    :goto_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    iget v1, v1, Landroidx/compose/ui/text/style/LineBreak;->a:I

    .line 737
    .line 738
    const/4 v2, 0x7

    .line 739
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->s:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 744
    .line 745
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    if-eqz v2, :cond_17

    .line 749
    .line 750
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 751
    .line 752
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    check-cast v2, Landroidx/compose/ui/text/style/Hyphens;

    .line 757
    .line 758
    goto :goto_e

    .line 759
    :cond_17
    move-object v2, v7

    .line 760
    :goto_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    iget v2, v2, Landroidx/compose/ui/text/style/Hyphens;->a:I

    .line 764
    .line 765
    const/16 v3, 0x8

    .line 766
    .line 767
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    sget-object v4, Landroidx/compose/ui/text/Savers_androidKt;->d:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 776
    .line 777
    if-eqz v3, :cond_19

    .line 778
    .line 779
    instance-of v3, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 780
    .line 781
    if-nez v3, :cond_19

    .line 782
    .line 783
    :cond_18
    :goto_f
    move/from16 v18, v1

    .line 784
    .line 785
    move/from16 v19, v2

    .line 786
    .line 787
    move-object/from16 v20, v7

    .line 788
    .line 789
    goto :goto_10

    .line 790
    :cond_19
    if-eqz v0, :cond_18

    .line 791
    .line 792
    iget-object v3, v4, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 793
    .line 794
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    move-object v7, v0

    .line 799
    check-cast v7, Landroidx/compose/ui/text/style/TextMotion;

    .line 800
    .line 801
    goto :goto_f

    .line 802
    :goto_10
    invoke-direct/range {v10 .. v20}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 803
    .line 804
    .line 805
    return-object v10

    .line 806
    :pswitch_15
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 807
    .line 808
    new-instance v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 809
    .line 810
    if-eqz p1, :cond_1a

    .line 811
    .line 812
    move-object/from16 v7, p1

    .line 813
    .line 814
    check-cast v7, Ljava/lang/String;

    .line 815
    .line 816
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-direct {v0, v7}, Landroidx/compose/ui/text/UrlAnnotation;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    return-object v0

    .line 823
    :pswitch_16
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 824
    .line 825
    new-instance v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 826
    .line 827
    if-eqz p1, :cond_1b

    .line 828
    .line 829
    move-object/from16 v7, p1

    .line 830
    .line 831
    check-cast v7, Ljava/lang/String;

    .line 832
    .line 833
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    invoke-direct {v0, v7}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;-><init>(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    return-object v0

    .line 840
    :pswitch_17
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 841
    .line 842
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    move-object/from16 v0, p1

    .line 846
    .line 847
    check-cast v0, Ljava/lang/Integer;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 854
    .line 855
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 856
    .line 857
    .line 858
    return-object v1

    .line 859
    :pswitch_18
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 860
    .line 861
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    move-object/from16 v0, p1

    .line 865
    .line 866
    check-cast v0, Ljava/lang/Integer;

    .line 867
    .line 868
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 873
    .line 874
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 875
    .line 876
    .line 877
    return-object v1

    .line 878
    :pswitch_19
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 879
    .line 880
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    move-object/from16 v0, p1

    .line 884
    .line 885
    check-cast v0, Ljava/lang/Float;

    .line 886
    .line 887
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->a(F)V

    .line 892
    .line 893
    .line 894
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 895
    .line 896
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 897
    .line 898
    .line 899
    return-object v1

    .line 900
    :pswitch_1a
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 901
    .line 902
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 903
    .line 904
    .line 905
    move-object/from16 v0, p1

    .line 906
    .line 907
    check-cast v0, Ljava/util/List;

    .line 908
    .line 909
    new-instance v2, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 910
    .line 911
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    sget v4, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->b:F

    .line 916
    .line 917
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->B:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 918
    .line 919
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 920
    .line 921
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    if-eqz v3, :cond_1c

    .line 925
    .line 926
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 927
    .line 928
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    check-cast v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 933
    .line 934
    goto :goto_11

    .line 935
    :cond_1c
    move-object v3, v7

    .line 936
    :goto_11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->a:F

    .line 940
    .line 941
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v4

    .line 945
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->C:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 946
    .line 947
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    if-eqz v4, :cond_1d

    .line 951
    .line 952
    iget-object v6, v6, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 953
    .line 954
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v4

    .line 958
    check-cast v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 959
    .line 960
    goto :goto_12

    .line 961
    :cond_1d
    move-object v4, v7

    .line 962
    :goto_12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    .line 964
    .line 965
    iget v4, v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->a:I

    .line 966
    .line 967
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->D:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 972
    .line 973
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    if-eqz v0, :cond_1e

    .line 977
    .line 978
    iget-object v1, v1, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 979
    .line 980
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    move-object v7, v0

    .line 985
    check-cast v7, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 986
    .line 987
    :cond_1e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 988
    .line 989
    .line 990
    iget v0, v7, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->a:I

    .line 991
    .line 992
    invoke-direct {v2, v3, v4, v0}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(FII)V

    .line 993
    .line 994
    .line 995
    return-object v2

    .line 996
    :pswitch_1b
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 997
    .line 998
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    move-object/from16 v0, p1

    .line 1002
    .line 1003
    check-cast v0, Ljava/util/List;

    .line 1004
    .line 1005
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    if-eqz v1, :cond_1f

    .line 1010
    .line 1011
    check-cast v1, Ljava/lang/String;

    .line 1012
    .line 1013
    goto :goto_13

    .line 1014
    :cond_1f
    move-object v1, v7

    .line 1015
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1016
    .line 1017
    .line 1018
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->i:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 1023
    .line 1024
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1025
    .line 1026
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v3

    .line 1030
    if-eqz v3, :cond_20

    .line 1031
    .line 1032
    instance-of v3, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 1033
    .line 1034
    if-nez v3, :cond_20

    .line 1035
    .line 1036
    goto :goto_14

    .line 1037
    :cond_20
    if-eqz v0, :cond_21

    .line 1038
    .line 1039
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 1040
    .line 1041
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    move-object v7, v0

    .line 1046
    check-cast v7, Landroidx/compose/ui/text/TextLinkStyles;

    .line 1047
    .line 1048
    :cond_21
    :goto_14
    new-instance v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1049
    .line 1050
    invoke-direct {v0, v1, v7}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 1051
    .line 1052
    .line 1053
    return-object v0

    .line 1054
    :pswitch_1c
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 1055
    .line 1056
    new-instance v0, Landroidx/compose/ui/text/intl/Locale;

    .line 1057
    .line 1058
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1059
    .line 1060
    .line 1061
    move-object/from16 v1, p1

    .line 1062
    .line 1063
    check-cast v1, Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    const-string v4, "und"

    .line 1074
    .line 1075
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    if-eqz v3, :cond_22

    .line 1080
    .line 1081
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 1082
    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    const-string v5, "The language tag "

    .line 1086
    .line 1087
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    const-string v1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtag delimiter and must be replaced with \'-\'."

    .line 1094
    .line 1095
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    :cond_22
    invoke-direct {v0, v2}, Landroidx/compose/ui/text/intl/Locale;-><init>(Ljava/util/Locale;)V

    .line 1106
    .line 1107
    .line 1108
    return-object v0

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
