.class public final synthetic La0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La0;->j:I

    .line 2
    .line 3
    iput-object p3, p0, La0;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, La0;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, La0;->j:I

    iput-object p2, p0, La0;->k:Ljava/lang/Object;

    iput-object p3, p0, La0;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 12
    iput p4, p0, La0;->j:I

    iput-object p1, p0, La0;->l:Ljava/lang/Object;

    iput-object p2, p0, La0;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, La0;->j:I

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x3

    .line 13
    const/4 v8, 0x1

    .line 14
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    iget-object v10, v0, La0;->l:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, La0;->k:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Landroidx/compose/animation/ContentTransform;

    .line 24
    .line 25
    check-cast v10, Landroidx/compose/animation/ContentTransform;

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const v1, 0x91b6db7

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v10, v2, v1}, Lnet/blip/shared/OnboardingStepperKt;->a(Landroidx/compose/animation/ContentTransform;Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)V

    .line 44
    .line 45
    .line 46
    return-object v9

    .line 47
    :pswitch_0
    check-cast v0, Lnet/blip/android/ui/onboarding/OnboardingSplashStep;

    .line 48
    .line 49
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    move-object/from16 v2, p1

    .line 52
    .line 53
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/OnboardingSplashStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 65
    .line 66
    .line 67
    return-object v9

    .line 68
    :pswitch_1
    check-cast v0, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;

    .line 69
    .line 70
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 71
    .line 72
    move-object/from16 v2, p1

    .line 73
    .line 74
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 75
    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    return-object v9

    .line 89
    :pswitch_2
    check-cast v0, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;

    .line 90
    .line 91
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 92
    .line 93
    move-object/from16 v2, p1

    .line 94
    .line 95
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 96
    .line 97
    check-cast v1, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 107
    .line 108
    .line 109
    return-object v9

    .line 110
    :pswitch_3
    check-cast v0, Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 111
    .line 112
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 113
    .line 114
    move-object/from16 v2, p1

    .line 115
    .line 116
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 117
    .line 118
    check-cast v1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    and-int/lit8 v3, v1, 0x3

    .line 125
    .line 126
    if-eq v3, v5, :cond_0

    .line 127
    .line 128
    move v6, v8

    .line 129
    :cond_0
    and-int/2addr v1, v8

    .line 130
    move-object v14, v2

    .line 131
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    invoke-virtual {v14, v1, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    const/high16 v1, 0x41000000    # 8.0f

    .line 140
    .line 141
    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/16 v2, 0x36

    .line 146
    .line 147
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 148
    .line 149
    invoke-static {v1, v3, v14, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-wide v2, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 154
    .line 155
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 164
    .line 165
    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 175
    .line 176
    .line 177
    iget-boolean v6, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 178
    .line 179
    if-eqz v6, :cond_1

    .line 180
    .line 181
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 182
    .line 183
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 188
    .line 189
    .line 190
    :goto_0
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 191
    .line 192
    invoke-static {v14, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 196
    .line 197
    invoke-static {v14, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 205
    .line 206
    invoke-static {v14, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 210
    .line 211
    .line 212
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 213
    .line 214
    invoke-static {v14, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    if-nez v1, :cond_2

    .line 226
    .line 227
    if-ne v2, v4, :cond_3

    .line 228
    .line 229
    :cond_2
    new-instance v2, Ll3;

    .line 230
    .line 231
    invoke-direct {v2, v0, v7}, Ll3;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_3
    move-object v13, v2

    .line 238
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    const/4 v15, 0x6

    .line 241
    const/16 v16, 0x2

    .line 242
    .line 243
    const-string v11, "Enable notifications"

    .line 244
    .line 245
    const/4 v12, 0x0

    .line 246
    invoke-static/range {v11 .. v16}, Lnet/blip/android/ui/onboarding/ComposablesKt;->a(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-nez v0, :cond_4

    .line 258
    .line 259
    if-ne v1, v4, :cond_5

    .line 260
    .line 261
    :cond_4
    new-instance v1, Lo1;

    .line 262
    .line 263
    const/16 v0, 0x1b

    .line 264
    .line 265
    invoke-direct {v1, v10, v0}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_5
    move-object v11, v1

    .line 272
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 273
    .line 274
    move-object v15, v14

    .line 275
    sget-object v14, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 276
    .line 277
    const/16 v16, 0x1fe

    .line 278
    .line 279
    const/4 v12, 0x0

    .line 280
    const/4 v13, 0x0

    .line 281
    invoke-static/range {v11 .. v16}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 282
    .line 283
    .line 284
    move-object v14, v15

    .line 285
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 290
    .line 291
    .line 292
    :goto_1
    return-object v9

    .line 293
    :pswitch_4
    check-cast v0, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;

    .line 294
    .line 295
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 296
    .line 297
    move-object/from16 v2, p1

    .line 298
    .line 299
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 300
    .line 301
    check-cast v1, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/OnboardingCompanionDeviceSetupStep;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 311
    .line 312
    .line 313
    return-object v9

    .line 314
    :pswitch_5
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 315
    .line 316
    move-object/from16 v2, p1

    .line 317
    .line 318
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 319
    .line 320
    check-cast v1, Ljava/lang/Integer;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-static {v0, v10, v2, v1}, Lnet/blip/shared/OnDisposeKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 330
    .line 331
    .line 332
    return-object v9

    .line 333
    :pswitch_6
    check-cast v10, Landroidx/lifecycle/LifecycleOwner;

    .line 334
    .line 335
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 336
    .line 337
    move-object/from16 v2, p1

    .line 338
    .line 339
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 340
    .line 341
    check-cast v1, Ljava/lang/Integer;

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-static {v10, v0, v2, v1}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->a(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 351
    .line 352
    .line 353
    return-object v9

    .line 354
    :pswitch_7
    check-cast v0, Landroidx/core/app/NotificationManagerCompat;

    .line 355
    .line 356
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 357
    .line 358
    move-object/from16 v2, p1

    .line 359
    .line 360
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 361
    .line 362
    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 371
    .line 372
    if-ne v1, v2, :cond_7

    .line 373
    .line 374
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-interface {v10, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_7
    return-object v9

    .line 388
    :pswitch_8
    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 389
    .line 390
    check-cast v10, Lfc;

    .line 391
    .line 392
    move-object/from16 v2, p1

    .line 393
    .line 394
    check-cast v2, Landroidx/compose/ui/graphics/Canvas;

    .line 395
    .line 396
    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 397
    .line 398
    iget-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 399
    .line 400
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    if-eqz v4, :cond_8

    .line 405
    .line 406
    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->Y:Landroidx/compose/ui/graphics/Canvas;

    .line 407
    .line 408
    iput-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->X:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 409
    .line 410
    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->f0:Lla;

    .line 419
    .line 420
    iget-object v1, v1, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 421
    .line 422
    invoke-virtual {v1, v0, v2, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 423
    .line 424
    .line 425
    iput-boolean v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->b0:Z

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_8
    iput-boolean v8, v0, Landroidx/compose/ui/node/NodeCoordinator;->b0:Z

    .line 429
    .line 430
    :goto_2
    return-object v9

    .line 431
    :pswitch_9
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 432
    .line 433
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 434
    .line 435
    move-object/from16 v2, p1

    .line 436
    .line 437
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 438
    .line 439
    check-cast v1, Ljava/lang/Integer;

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static {v0, v10, v2, v1}, Lnet/blip/android/ui/navigation/NavigationRootKt;->c(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 449
    .line 450
    .line 451
    return-object v9

    .line 452
    :pswitch_a
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 453
    .line 454
    check-cast v10, Landroidx/compose/animation/AnimatedContentScope;

    .line 455
    .line 456
    move-object/from16 v2, p1

    .line 457
    .line 458
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 459
    .line 460
    check-cast v1, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    and-int/lit8 v3, v1, 0x3

    .line 467
    .line 468
    if-eq v3, v5, :cond_9

    .line 469
    .line 470
    move v3, v8

    .line 471
    goto :goto_3

    .line 472
    :cond_9
    move v3, v6

    .line 473
    :goto_3
    and-int/2addr v1, v8

    .line 474
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 475
    .line 476
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-eqz v1, :cond_a

    .line 481
    .line 482
    iget-object v1, v0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    check-cast v1, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 488
    .line 489
    iget-object v1, v1, Landroidx/navigation/compose/ComposeNavigator$Destination;->o:Lkotlin/jvm/functions/Function4;

    .line 490
    .line 491
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-interface {v1, v10, v0, v2, v3}, Lkotlin/jvm/functions/Function4;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 500
    .line 501
    .line 502
    :goto_4
    return-object v9

    .line 503
    :pswitch_b
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 504
    .line 505
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 506
    .line 507
    move-object/from16 v2, p1

    .line 508
    .line 509
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 510
    .line 511
    check-cast v1, Ljava/lang/Integer;

    .line 512
    .line 513
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    const/16 v1, 0x31

    .line 517
    .line 518
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    invoke-static {v0, v10, v2, v1}, Landroidx/navigation/compose/NavBackStackEntryProviderKt;->b(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 523
    .line 524
    .line 525
    return-object v9

    .line 526
    :pswitch_c
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 527
    .line 528
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 529
    .line 530
    move-object/from16 v2, p1

    .line 531
    .line 532
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 533
    .line 534
    check-cast v1, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    and-int/lit8 v3, v1, 0x3

    .line 541
    .line 542
    if-eq v3, v5, :cond_b

    .line 543
    .line 544
    move v6, v8

    .line 545
    :cond_b
    and-int/2addr v1, v8

    .line 546
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 547
    .line 548
    invoke-virtual {v2, v1, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_c

    .line 553
    .line 554
    sget-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 555
    .line 556
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    sget-object v3, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 561
    .line 562
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    sget-object v4, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 567
    .line 568
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    filled-new-array {v1, v3, v0}, [Landroidx/compose/runtime/ProvidedValue;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const/16 v1, 0x8

    .line 577
    .line 578
    invoke-static {v0, v10, v2, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 579
    .line 580
    .line 581
    goto :goto_5

    .line 582
    :cond_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 583
    .line 584
    .line 585
    :goto_5
    return-object v9

    .line 586
    :pswitch_d
    check-cast v0, Landroidx/compose/material/Typography;

    .line 587
    .line 588
    check-cast v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 589
    .line 590
    move-object/from16 v2, p1

    .line 591
    .line 592
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 593
    .line 594
    check-cast v1, Ljava/lang/Integer;

    .line 595
    .line 596
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    and-int/lit8 v4, v1, 0x3

    .line 601
    .line 602
    if-eq v4, v5, :cond_d

    .line 603
    .line 604
    move v4, v8

    .line 605
    goto :goto_6

    .line 606
    :cond_d
    move v4, v6

    .line 607
    :goto_6
    and-int/2addr v1, v8

    .line 608
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 609
    .line 610
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    if-eqz v1, :cond_e

    .line 615
    .line 616
    iget-object v0, v0, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 617
    .line 618
    new-instance v1, Lc0;

    .line 619
    .line 620
    invoke-direct {v1, v10, v3, v6}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;IB)V

    .line 621
    .line 622
    .line 623
    const v3, 0x35f8ebe7

    .line 624
    .line 625
    .line 626
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    const/16 v3, 0x30

    .line 631
    .line 632
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 633
    .line 634
    .line 635
    goto :goto_7

    .line 636
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 637
    .line 638
    .line 639
    :goto_7
    return-object v9

    .line 640
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 641
    .line 642
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 643
    .line 644
    move-object/from16 v2, p1

    .line 645
    .line 646
    check-cast v2, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 647
    .line 648
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 649
    .line 650
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    .line 651
    .line 652
    invoke-direct {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V

    .line 653
    .line 654
    .line 655
    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 656
    .line 657
    invoke-interface {v10, v3, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    return-object v0

    .line 662
    :pswitch_f
    check-cast v0, Landroidx/compose/runtime/composer/RememberManager;

    .line 663
    .line 664
    check-cast v10, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 665
    .line 666
    move-object/from16 v2, p1

    .line 667
    .line 668
    check-cast v2, Ljava/lang/Integer;

    .line 669
    .line 670
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    instance-of v3, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 675
    .line 676
    if-eqz v3, :cond_f

    .line 677
    .line 678
    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 679
    .line 680
    check-cast v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 681
    .line 682
    iget-object v0, v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 683
    .line 684
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    goto :goto_8

    .line 688
    :cond_f
    instance-of v3, v1, Landroidx/compose/runtime/ReusableRememberObserverHolder;

    .line 689
    .line 690
    if-nez v3, :cond_11

    .line 691
    .line 692
    instance-of v3, v1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 693
    .line 694
    if-eqz v3, :cond_10

    .line 695
    .line 696
    invoke-static {v10, v2, v1}, Landroidx/compose/runtime/GapComposerKt;->d(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 700
    .line 701
    check-cast v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 702
    .line 703
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 704
    .line 705
    .line 706
    goto :goto_8

    .line 707
    :cond_10
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 708
    .line 709
    if-eqz v0, :cond_11

    .line 710
    .line 711
    invoke-static {v10, v2, v1}, Landroidx/compose/runtime/GapComposerKt;->d(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILjava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    move-object v0, v1

    .line 715
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 716
    .line 717
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    .line 718
    .line 719
    .line 720
    :cond_11
    :goto_8
    return-object v9

    .line 721
    :pswitch_10
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 722
    .line 723
    check-cast v10, Landroidx/media3/exoplayer/ExoPlayer;

    .line 724
    .line 725
    move-object/from16 v2, p1

    .line 726
    .line 727
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 728
    .line 729
    check-cast v1, Ljava/lang/Integer;

    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    invoke-static {v0, v10, v2, v1}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/Composer;I)V

    .line 739
    .line 740
    .line 741
    return-object v9

    .line 742
    :pswitch_11
    check-cast v0, Ljava/util/List;

    .line 743
    .line 744
    check-cast v10, Landroidx/compose/foundation/pager/PagerState;

    .line 745
    .line 746
    move-object/from16 v2, p1

    .line 747
    .line 748
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 749
    .line 750
    check-cast v1, Ljava/lang/Integer;

    .line 751
    .line 752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    and-int/lit8 v3, v1, 0x3

    .line 757
    .line 758
    if-eq v3, v5, :cond_12

    .line 759
    .line 760
    move v6, v8

    .line 761
    :cond_12
    and-int/2addr v1, v8

    .line 762
    move-object v14, v2

    .line 763
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 764
    .line 765
    invoke-virtual {v14, v1, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    if-eqz v1, :cond_14

    .line 770
    .line 771
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-eqz v1, :cond_13

    .line 776
    .line 777
    goto :goto_9

    .line 778
    :cond_13
    iget-object v1, v10, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 779
    .line 780
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    add-int/2addr v1, v8

    .line 785
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    const-string v1, " of "

    .line 798
    .line 799
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v12

    .line 809
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 810
    .line 811
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 816
    .line 817
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 818
    .line 819
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 820
    .line 821
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 826
    .line 827
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 828
    .line 829
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 830
    .line 831
    const/16 v26, 0x0

    .line 832
    .line 833
    const v27, 0xff7ffa

    .line 834
    .line 835
    .line 836
    const-wide/16 v18, 0x0

    .line 837
    .line 838
    const-wide/16 v21, 0x0

    .line 839
    .line 840
    const-wide/16 v23, 0x0

    .line 841
    .line 842
    const/16 v25, 0x0

    .line 843
    .line 844
    move-wide/from16 v16, v0

    .line 845
    .line 846
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 847
    .line 848
    .line 849
    move-result-object v13

    .line 850
    const/4 v15, 0x0

    .line 851
    const/16 v16, 0x1

    .line 852
    .line 853
    const/4 v11, 0x0

    .line 854
    invoke-static/range {v11 .. v16}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 855
    .line 856
    .line 857
    goto :goto_9

    .line 858
    :cond_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 859
    .line 860
    .line 861
    :goto_9
    return-object v9

    .line 862
    :pswitch_12
    check-cast v0, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 863
    .line 864
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 865
    .line 866
    move-object/from16 v2, p1

    .line 867
    .line 868
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 869
    .line 870
    check-cast v1, Ljava/lang/Integer;

    .line 871
    .line 872
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    and-int/lit8 v3, v1, 0x3

    .line 877
    .line 878
    if-eq v3, v5, :cond_15

    .line 879
    .line 880
    move v3, v8

    .line 881
    goto :goto_a

    .line 882
    :cond_15
    move v3, v6

    .line 883
    :goto_a
    and-int/2addr v1, v8

    .line 884
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 885
    .line 886
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 887
    .line 888
    .line 889
    move-result v1

    .line 890
    if-eqz v1, :cond_16

    .line 891
    .line 892
    iget-object v0, v0, Landroidx/navigation/compose/DialogNavigator$Destination;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 893
    .line 894
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    invoke-virtual {v0, v10, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    goto :goto_b

    .line 902
    :cond_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 903
    .line 904
    .line 905
    :goto_b
    return-object v9

    .line 906
    :pswitch_13
    check-cast v0, Ljava/util/List;

    .line 907
    .line 908
    check-cast v10, Ljava/util/Collection;

    .line 909
    .line 910
    move-object/from16 v2, p1

    .line 911
    .line 912
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 913
    .line 914
    check-cast v1, Ljava/lang/Integer;

    .line 915
    .line 916
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    invoke-static {v0, v10, v2, v1}, Landroidx/navigation/compose/DialogHostKt;->b(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    .line 924
    .line 925
    .line 926
    return-object v9

    .line 927
    :pswitch_14
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 928
    .line 929
    check-cast v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 930
    .line 931
    move-object/from16 v2, p1

    .line 932
    .line 933
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 934
    .line 935
    check-cast v1, Ljava/lang/Integer;

    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 941
    .line 942
    .line 943
    move-result v1

    .line 944
    invoke-static {v0, v10, v2, v1}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;Landroidx/compose/runtime/Composer;I)V

    .line 945
    .line 946
    .line 947
    return-object v9

    .line 948
    :pswitch_15
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 949
    .line 950
    check-cast v10, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 951
    .line 952
    move-object/from16 v2, p1

    .line 953
    .line 954
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 955
    .line 956
    check-cast v1, Ljava/lang/Integer;

    .line 957
    .line 958
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    invoke-virtual {v0, v10, v2, v1}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->a(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/Composer;I)V

    .line 966
    .line 967
    .line 968
    return-object v9

    .line 969
    :pswitch_16
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 970
    .line 971
    check-cast v10, Ljava/lang/String;

    .line 972
    .line 973
    move-object/from16 v2, p1

    .line 974
    .line 975
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 976
    .line 977
    check-cast v1, Ljava/lang/Integer;

    .line 978
    .line 979
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 980
    .line 981
    .line 982
    const/16 v1, 0x37

    .line 983
    .line 984
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    invoke-static {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/ComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 989
    .line 990
    .line 991
    return-object v9

    .line 992
    :pswitch_17
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 993
    .line 994
    check-cast v10, Ljava/lang/String;

    .line 995
    .line 996
    move-object/from16 v2, p1

    .line 997
    .line 998
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 999
    .line 1000
    check-cast v1, Ljava/lang/Integer;

    .line 1001
    .line 1002
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1006
    .line 1007
    .line 1008
    move-result v1

    .line 1009
    invoke-static {v0, v10, v2, v1}, Lnet/blip/android/ui/onboarding/ComposablesKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1010
    .line 1011
    .line 1012
    return-object v9

    .line 1013
    :pswitch_18
    check-cast v0, Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 1014
    .line 1015
    check-cast v10, Landroidx/navigation/NavHostController;

    .line 1016
    .line 1017
    move-object/from16 v2, p1

    .line 1018
    .line 1019
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1020
    .line 1021
    check-cast v1, Ljava/lang/Integer;

    .line 1022
    .line 1023
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    and-int/lit8 v3, v1, 0x3

    .line 1028
    .line 1029
    if-eq v3, v5, :cond_17

    .line 1030
    .line 1031
    move v3, v8

    .line 1032
    goto :goto_c

    .line 1033
    :cond_17
    move v3, v6

    .line 1034
    :goto_c
    and-int/2addr v1, v8

    .line 1035
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1036
    .line 1037
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    if-eqz v1, :cond_1a

    .line 1042
    .line 1043
    const/4 v15, 0x0

    .line 1044
    const/16 v16, 0xd

    .line 1045
    .line 1046
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1047
    .line 1048
    const/4 v12, 0x0

    .line 1049
    const/high16 v13, 0x42700000    # 60.0f

    .line 1050
    .line 1051
    const/4 v14, 0x0

    .line 1052
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1061
    .line 1062
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    sget-object v3, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1067
    .line 1068
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    check-cast v3, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 1073
    .line 1074
    iget v3, v3, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 1075
    .line 1076
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v8

    .line 1084
    or-int/2addr v5, v8

    .line 1085
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v8

    .line 1089
    if-nez v5, :cond_18

    .line 1090
    .line 1091
    if-ne v8, v4, :cond_19

    .line 1092
    .line 1093
    :cond_18
    new-instance v8, Lb;

    .line 1094
    .line 1095
    invoke-direct {v8, v7, v0, v10}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_19
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1102
    .line 1103
    invoke-static {v1, v3, v8, v2, v6}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt;->a(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_d

    .line 1107
    :cond_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1108
    .line 1109
    .line 1110
    :goto_d
    return-object v9

    .line 1111
    :pswitch_19
    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 1112
    .line 1113
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1114
    .line 1115
    move-object/from16 v2, p1

    .line 1116
    .line 1117
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1118
    .line 1119
    check-cast v1, Ljava/lang/Integer;

    .line 1120
    .line 1121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1122
    .line 1123
    .line 1124
    invoke-static {v8}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1125
    .line 1126
    .line 1127
    move-result v1

    .line 1128
    invoke-static {v10, v0, v2, v1}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1129
    .line 1130
    .line 1131
    return-object v9

    .line 1132
    :pswitch_1a
    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 1133
    .line 1134
    check-cast v10, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 1135
    .line 1136
    move-object/from16 v2, p1

    .line 1137
    .line 1138
    check-cast v2, Ljava/lang/Integer;

    .line 1139
    .line 1140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1141
    .line 1142
    .line 1143
    move-result v2

    .line 1144
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1145
    .line 1146
    iget-object v0, v0, Landroidx/compose/ui/platform/SemanticsNodeCopy;->b:Landroidx/collection/MutableIntSet;

    .line 1147
    .line 1148
    iget v3, v1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 1149
    .line 1150
    invoke-virtual {v0, v3}, Landroidx/collection/IntSet;->a(I)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v0

    .line 1154
    if-nez v0, :cond_1b

    .line 1155
    .line 1156
    invoke-virtual {v10, v2, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(ILandroidx/compose/ui/semantics/SemanticsNode;)V

    .line 1157
    .line 1158
    .line 1159
    iget-object v0, v10, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1160
    .line 1161
    invoke-interface {v0, v9}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    :cond_1b
    return-object v9

    .line 1165
    :pswitch_1b
    check-cast v0, Landroidx/compose/material/AnchoredDragScope;

    .line 1166
    .line 1167
    check-cast v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1168
    .line 1169
    move-object/from16 v2, p1

    .line 1170
    .line 1171
    check-cast v2, Ljava/lang/Float;

    .line 1172
    .line 1173
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1174
    .line 1175
    .line 1176
    move-result v2

    .line 1177
    check-cast v1, Ljava/lang/Float;

    .line 1178
    .line 1179
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1180
    .line 1181
    .line 1182
    move-result v1

    .line 1183
    check-cast v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;

    .line 1184
    .line 1185
    iget-object v0, v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;->a:Landroidx/compose/material/AnchoredDraggableState;

    .line 1186
    .line 1187
    iget-object v3, v0, Landroidx/compose/material/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 1188
    .line 1189
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 1190
    .line 1191
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 1192
    .line 1193
    .line 1194
    iget-object v0, v0, Landroidx/compose/material/AnchoredDraggableState;->k:Landroidx/compose/runtime/MutableFloatState;

    .line 1195
    .line 1196
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 1197
    .line 1198
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 1199
    .line 1200
    .line 1201
    iput v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 1202
    .line 1203
    return-object v9

    .line 1204
    :pswitch_1c
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1205
    .line 1206
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 1207
    .line 1208
    move-object/from16 v2, p1

    .line 1209
    .line 1210
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1211
    .line 1212
    check-cast v1, Ljava/lang/Integer;

    .line 1213
    .line 1214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    .line 1216
    .line 1217
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    invoke-static {v0, v10, v2, v1}, Landroidx/compose/material/AlertDialogKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1222
    .line 1223
    .line 1224
    return-object v9

    .line 1225
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
