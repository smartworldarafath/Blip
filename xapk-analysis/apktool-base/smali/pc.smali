.class public final synthetic Lpc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lpc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lpc;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lpc;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lpc;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpc;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 10
    .line 11
    iget-object v6, v0, Lpc;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Lpc;->l:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lpc;->k:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Lnet/blip/libblip/Peer;

    .line 23
    .line 24
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 31
    .line 32
    move-object/from16 v10, p2

    .line 33
    .line 34
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    move-object/from16 v11, p3

    .line 37
    .line 38
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    move-object/from16 v12, p4

    .line 41
    .line 42
    check-cast v12, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    and-int/lit8 v1, v12, 0x30

    .line 55
    .line 56
    const/16 v13, 0x20

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    move-object v1, v11

    .line 61
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    move v1, v13

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/16 v1, 0x10

    .line 72
    .line 73
    :goto_0
    or-int/2addr v12, v1

    .line 74
    :cond_1
    and-int/lit16 v1, v12, 0x91

    .line 75
    .line 76
    const/16 v14, 0x90

    .line 77
    .line 78
    if-eq v1, v14, :cond_2

    .line 79
    .line 80
    move v1, v9

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v1, v8

    .line 83
    :goto_1
    and-int/lit8 v14, v12, 0x1

    .line 84
    .line 85
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 86
    .line 87
    invoke-virtual {v11, v14, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_c

    .line 92
    .line 93
    and-int/lit8 v1, v12, 0x70

    .line 94
    .line 95
    invoke-static {v0, v10, v11, v1}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 96
    .line 97
    .line 98
    instance-of v12, v0, Lnet/blip/libblip/Peer$Device;

    .line 99
    .line 100
    if-nez v12, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->e()Lnet/blip/libblip/User;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    if-eqz v12, :cond_3

    .line 107
    .line 108
    iget-boolean v12, v12, Lnet/blip/libblip/User;->r:Z

    .line 109
    .line 110
    if-ne v12, v9, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const v4, 0x294fcbfb

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    :goto_2
    const v12, 0x294a2e3c

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 127
    .line 128
    .line 129
    if-ne v1, v13, :cond_5

    .line 130
    .line 131
    move v12, v9

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move v12, v8

    .line 134
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    if-nez v12, :cond_6

    .line 139
    .line 140
    if-ne v14, v5, :cond_7

    .line 141
    .line 142
    :cond_6
    new-instance v14, Lk1;

    .line 143
    .line 144
    invoke-direct {v14, v10, v7, v4}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    move-object v15, v14

    .line 151
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 152
    .line 153
    const/high16 v21, 0x30000

    .line 154
    .line 155
    const/16 v22, 0x1e

    .line 156
    .line 157
    const/16 v16, 0x0

    .line 158
    .line 159
    const/16 v17, 0x0

    .line 160
    .line 161
    const/16 v18, 0x0

    .line 162
    .line 163
    sget-object v19, Lnet/blip/android/ui/peer/ComposableSingletons$PeerScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 164
    .line 165
    move-object/from16 v20, v11

    .line 166
    .line 167
    invoke-static/range {v15 .. v22}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 171
    .line 172
    .line 173
    :goto_4
    instance-of v0, v0, Lnet/blip/libblip/Peer$User;

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    const v0, 0x2950bbde

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 181
    .line 182
    .line 183
    if-ne v1, v13, :cond_8

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_8
    move v9, v8

    .line 187
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-nez v9, :cond_9

    .line 192
    .line 193
    if-ne v0, v5, :cond_a

    .line 194
    .line 195
    :cond_9
    new-instance v0, Lk1;

    .line 196
    .line 197
    invoke-direct {v0, v10, v6, v3}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_a
    move-object v15, v0

    .line 204
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    const/high16 v21, 0x30000

    .line 207
    .line 208
    const/16 v22, 0x1e

    .line 209
    .line 210
    const/16 v16, 0x0

    .line 211
    .line 212
    const/16 v17, 0x0

    .line 213
    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    sget-object v19, Lnet/blip/android/ui/peer/ComposableSingletons$PeerScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 217
    .line 218
    move-object/from16 v20, v11

    .line 219
    .line 220
    invoke-static/range {v15 .. v22}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_b
    const v0, 0x2956521b

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 234
    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 238
    .line 239
    .line 240
    :goto_6
    return-object v2

    .line 241
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 242
    .line 243
    check-cast v7, Lnet/blip/libblip/frontend/State;

    .line 244
    .line 245
    iget-object v1, v7, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 246
    .line 247
    check-cast v6, Lnet/blip/libblip/HardwareInfo;

    .line 248
    .line 249
    move-object/from16 v7, p1

    .line 250
    .line 251
    check-cast v7, Landroidx/compose/animation/AnimatedContentScope;

    .line 252
    .line 253
    move-object/from16 v10, p2

    .line 254
    .line 255
    check-cast v10, Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 256
    .line 257
    move-object/from16 v11, p3

    .line 258
    .line 259
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 260
    .line 261
    move-object/from16 v12, p4

    .line 262
    .line 263
    check-cast v12, Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    iget-object v7, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 275
    .line 276
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    const/4 v12, 0x5

    .line 281
    if-eqz v7, :cond_28

    .line 282
    .line 283
    const-string v13, ""

    .line 284
    .line 285
    if-eq v7, v9, :cond_23

    .line 286
    .line 287
    const/4 v14, 0x2

    .line 288
    if-eq v7, v14, :cond_1c

    .line 289
    .line 290
    const/4 v1, 0x4

    .line 291
    const/4 v4, 0x3

    .line 292
    if-eq v7, v4, :cond_16

    .line 293
    .line 294
    if-eq v7, v1, :cond_13

    .line 295
    .line 296
    if-eq v7, v12, :cond_10

    .line 297
    .line 298
    if-eq v7, v3, :cond_d

    .line 299
    .line 300
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 301
    .line 302
    const v0, -0x708924d1

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_9

    .line 312
    .line 313
    :cond_d
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 314
    .line 315
    const v3, -0x142582f1

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    if-nez v3, :cond_e

    .line 330
    .line 331
    if-ne v4, v5, :cond_f

    .line 332
    .line 333
    :cond_e
    new-instance v4, Lb8;

    .line 334
    .line 335
    invoke-direct {v4, v0, v1}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_f
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 342
    .line 343
    sget-object v0, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;->a:Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;

    .line 344
    .line 345
    invoke-virtual {v0, v4, v11, v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_9

    .line 352
    .line 353
    :cond_10
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 354
    .line 355
    const v1, -0x14259a2f

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    if-nez v1, :cond_11

    .line 370
    .line 371
    if-ne v3, v5, :cond_12

    .line 372
    .line 373
    :cond_11
    new-instance v3, Lb8;

    .line 374
    .line 375
    invoke-direct {v3, v0, v4}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :cond_12
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 382
    .line 383
    sget-object v0, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;->a:Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;

    .line 384
    .line 385
    invoke-virtual {v0, v3, v11, v8}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :cond_13
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 394
    .line 395
    const v1, -0x1425b20e

    .line 396
    .line 397
    .line 398
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    if-nez v1, :cond_14

    .line 410
    .line 411
    if-ne v3, v5, :cond_15

    .line 412
    .line 413
    :cond_14
    new-instance v3, Lb8;

    .line 414
    .line 415
    invoke-direct {v3, v0, v14}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 422
    .line 423
    sget-object v0, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;->a:Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;

    .line 424
    .line 425
    invoke-virtual {v0, v3, v11, v8}, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_9

    .line 432
    .line 433
    :cond_16
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 434
    .line 435
    const v3, -0x1425e9c9

    .line 436
    .line 437
    .line 438
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 439
    .line 440
    .line 441
    sget-object v3, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 442
    .line 443
    invoke-static {v3, v11}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-static {v3}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    if-nez v3, :cond_17

    .line 452
    .line 453
    new-instance v3, Lnet/blip/libblip/User;

    .line 454
    .line 455
    const/4 v6, 0x0

    .line 456
    const/16 v7, 0x1fff

    .line 457
    .line 458
    invoke-direct {v3, v6, v7}, Lnet/blip/libblip/User;-><init>(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    :cond_17
    move-object v13, v3

    .line 462
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    if-nez v3, :cond_18

    .line 471
    .line 472
    if-ne v6, v5, :cond_19

    .line 473
    .line 474
    :cond_18
    new-instance v6, Lc8;

    .line 475
    .line 476
    invoke-direct {v6, v0, v4}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    :cond_19
    move-object v14, v6

    .line 483
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 484
    .line 485
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    if-nez v3, :cond_1a

    .line 494
    .line 495
    if-ne v4, v5, :cond_1b

    .line 496
    .line 497
    :cond_1a
    new-instance v4, Lc8;

    .line 498
    .line 499
    invoke-direct {v4, v0, v1}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :cond_1b
    move-object v15, v4

    .line 506
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 507
    .line 508
    const/16 v17, 0x0

    .line 509
    .line 510
    sget-object v12, Lnet/blip/android/ui/onboarding/OnboardingProfileStep;->a:Lnet/blip/android/ui/onboarding/OnboardingProfileStep;

    .line 511
    .line 512
    move-object/from16 v16, v11

    .line 513
    .line 514
    invoke-virtual/range {v12 .. v17}, Lnet/blip/android/ui/onboarding/OnboardingProfileStep;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_9

    .line 521
    .line 522
    :cond_1c
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 523
    .line 524
    const v3, -0x14265b3a

    .line 525
    .line 526
    .line 527
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 528
    .line 529
    .line 530
    if-eqz v1, :cond_1e

    .line 531
    .line 532
    iget-object v1, v1, Lnet/blip/libblip/frontend/Registration;->o:Ljava/lang/String;

    .line 533
    .line 534
    if-nez v1, :cond_1d

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_1d
    move-object v13, v1

    .line 538
    :cond_1e
    :goto_7
    iget-boolean v14, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->n:Z

    .line 539
    .line 540
    iget-object v15, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->o:Lnet/blip/libblip/frontend/Err;

    .line 541
    .line 542
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    or-int/2addr v1, v3

    .line 551
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    if-nez v1, :cond_1f

    .line 556
    .line 557
    if-ne v3, v5, :cond_20

    .line 558
    .line 559
    :cond_1f
    new-instance v3, Lqc;

    .line 560
    .line 561
    invoke-direct {v3, v0, v6, v9}, Lqc;-><init>(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/HardwareInfo;I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    :cond_20
    move-object/from16 v16, v3

    .line 568
    .line 569
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 570
    .line 571
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    if-nez v1, :cond_21

    .line 580
    .line 581
    if-ne v3, v5, :cond_22

    .line 582
    .line 583
    :cond_21
    new-instance v3, Lb8;

    .line 584
    .line 585
    invoke-direct {v3, v0, v4}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    :cond_22
    move-object/from16 v17, v3

    .line 592
    .line 593
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 594
    .line 595
    const/16 v19, 0x0

    .line 596
    .line 597
    sget-object v12, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;->a:Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;

    .line 598
    .line 599
    move-object/from16 v18, v11

    .line 600
    .line 601
    invoke-virtual/range {v12 .. v19}, Lnet/blip/android/ui/onboarding/OnboardingCodeEntryStep;->a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 605
    .line 606
    .line 607
    goto :goto_9

    .line 608
    :cond_23
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 609
    .line 610
    const v3, -0x14269f07

    .line 611
    .line 612
    .line 613
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 614
    .line 615
    .line 616
    if-eqz v1, :cond_25

    .line 617
    .line 618
    iget-object v1, v1, Lnet/blip/libblip/frontend/Registration;->o:Ljava/lang/String;

    .line 619
    .line 620
    if-nez v1, :cond_24

    .line 621
    .line 622
    goto :goto_8

    .line 623
    :cond_24
    move-object v13, v1

    .line 624
    :cond_25
    :goto_8
    iget-boolean v14, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->n:Z

    .line 625
    .line 626
    iget-object v15, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->o:Lnet/blip/libblip/frontend/Err;

    .line 627
    .line 628
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    or-int/2addr v1, v3

    .line 637
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    if-nez v1, :cond_26

    .line 642
    .line 643
    if-ne v3, v5, :cond_27

    .line 644
    .line 645
    :cond_26
    new-instance v3, Lqc;

    .line 646
    .line 647
    invoke-direct {v3, v0, v6, v8}, Lqc;-><init>(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/HardwareInfo;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    :cond_27
    move-object/from16 v16, v3

    .line 654
    .line 655
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 656
    .line 657
    const/16 v18, 0x0

    .line 658
    .line 659
    sget-object v12, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;->a:Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;

    .line 660
    .line 661
    move-object/from16 v17, v11

    .line 662
    .line 663
    invoke-virtual/range {v12 .. v18}, Lnet/blip/android/ui/onboarding/OnboardingEmailEntryStep;->a(Ljava/lang/String;ZLnet/blip/libblip/frontend/Err;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 667
    .line 668
    .line 669
    goto :goto_9

    .line 670
    :cond_28
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 671
    .line 672
    const v1, -0x1426b554

    .line 673
    .line 674
    .line 675
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    if-nez v1, :cond_29

    .line 687
    .line 688
    if-ne v3, v5, :cond_2a

    .line 689
    .line 690
    :cond_29
    new-instance v3, Lb8;

    .line 691
    .line 692
    invoke-direct {v3, v0, v12}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    :cond_2a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 699
    .line 700
    sget-object v0, Lnet/blip/android/ui/onboarding/OnboardingSplashStep;->a:Lnet/blip/android/ui/onboarding/OnboardingSplashStep;

    .line 701
    .line 702
    invoke-virtual {v0, v3, v11, v8}, Lnet/blip/android/ui/onboarding/OnboardingSplashStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 706
    .line 707
    .line 708
    :goto_9
    return-object v2

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
