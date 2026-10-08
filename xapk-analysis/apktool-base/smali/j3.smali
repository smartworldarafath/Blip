.class public final synthetic Lj3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lnet/blip/android/ui/util/NuancedPermissionState;

.field public final synthetic m:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;


# direct methods
.method public synthetic constructor <init>(FLkotlin/jvm/functions/Function1;Lnet/blip/android/ui/util/NuancedPermissionState;Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lj3;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Lj3;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lj3;->l:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 9
    .line 10
    iput-object p4, p0, Lj3;->m:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Landroidx/compose/animation/AnimatedContentScope;

    .line 8
    .line 9
    move-object/from16 v3, p3

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    move-object/from16 v4, p4

    .line 14
    .line 15
    check-cast v4, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    instance-of v2, v1, Lnet/blip/android/ui/audiopicker/ListState$Loading;

    .line 27
    .line 28
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 31
    .line 32
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 33
    .line 34
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 35
    .line 36
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 37
    .line 38
    iget v12, v0, Lj3;->j:F

    .line 39
    .line 40
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 41
    .line 42
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    const v0, -0x7668e858

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 54
    .line 55
    .line 56
    const/4 v11, 0x0

    .line 57
    const/4 v13, 0x7

    .line 58
    move v0, v9

    .line 59
    const/4 v9, 0x0

    .line 60
    move v1, v10

    .line 61
    const/4 v10, 0x0

    .line 62
    move v2, v0

    .line 63
    move v0, v1

    .line 64
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 73
    .line 74
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 87
    .line 88
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 92
    .line 93
    .line 94
    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 95
    .line 96
    if-eqz v11, :cond_0

    .line 97
    .line 98
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-static {v3, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v3, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 131
    .line 132
    iget-wide v4, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 133
    .line 134
    const/16 v24, 0x0

    .line 135
    .line 136
    const/16 v25, 0xd

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/16 v19, 0x0

    .line 141
    .line 142
    const-wide/16 v20, 0x0

    .line 143
    .line 144
    const/16 v22, 0x1

    .line 145
    .line 146
    move-object/from16 v23, v3

    .line 147
    .line 148
    move-wide/from16 v17, v4

    .line 149
    .line 150
    invoke-static/range {v16 .. v25}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_4

    .line 160
    .line 161
    :cond_1
    move v2, v9

    .line 162
    move v9, v10

    .line 163
    instance-of v10, v1, Lnet/blip/android/ui/audiopicker/ListState$NoPermission;

    .line 164
    .line 165
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 166
    .line 167
    const/high16 v13, 0x42400000    # 48.0f

    .line 168
    .line 169
    const/high16 v2, 0x42800000    # 64.0f

    .line 170
    .line 171
    if-eqz v10, :cond_5

    .line 172
    .line 173
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 174
    .line 175
    const v1, -0x7663026d

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 179
    .line 180
    .line 181
    move-object v1, v11

    .line 182
    const/4 v11, 0x0

    .line 183
    move v10, v13

    .line 184
    const/4 v13, 0x7

    .line 185
    move/from16 v17, v9

    .line 186
    .line 187
    const/4 v9, 0x0

    .line 188
    move/from16 v18, v10

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    move/from16 v31, v17

    .line 192
    .line 193
    move-object/from16 v17, v1

    .line 194
    .line 195
    move/from16 v1, v31

    .line 196
    .line 197
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    iget-wide v11, v3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 206
    .line 207
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    invoke-static {v3, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 220
    .line 221
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 225
    .line 226
    .line 227
    iget-boolean v13, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 228
    .line 229
    if-eqz v13, :cond_2

    .line 230
    .line 231
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 236
    .line 237
    .line 238
    :goto_1
    invoke-static {v3, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v3, v12, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v3, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 255
    .line 256
    .line 257
    const/high16 v10, 0x42400000    # 48.0f

    .line 258
    .line 259
    invoke-static {v8, v2, v10}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {}, Landroidx/compose/material/icons/automirrored/rounded/HelpOutlineKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 264
    .line 265
    .line 266
    move-result-object v18

    .line 267
    iget-object v0, v0, Lj3;->l:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 268
    .line 269
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-nez v4, :cond_3

    .line 278
    .line 279
    move-object/from16 v4, v17

    .line 280
    .line 281
    if-ne v5, v4, :cond_4

    .line 282
    .line 283
    :cond_3
    new-instance v5, Ll3;

    .line 284
    .line 285
    invoke-direct {v5, v0, v1}, Ll3;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    :cond_4
    move-object/from16 v23, v5

    .line 292
    .line 293
    check-cast v23, Lkotlin/jvm/functions/Function0;

    .line 294
    .line 295
    const/16 v25, 0x6d86

    .line 296
    .line 297
    const/16 v26, 0x20

    .line 298
    .line 299
    const-string v19, "Can\'t show audio files"

    .line 300
    .line 301
    const-string v20, "Blip doesn\'t have permission to show the audio files on your phone"

    .line 302
    .line 303
    const-string v21, "Allow"

    .line 304
    .line 305
    const/16 v22, 0x0

    .line 306
    .line 307
    move-object/from16 v17, v2

    .line 308
    .line 309
    move-object/from16 v24, v3

    .line 310
    .line 311
    invoke-static/range {v17 .. v26}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 312
    .line 313
    .line 314
    const/4 v0, 0x1

    .line 315
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :cond_5
    move v10, v9

    .line 324
    move-object v9, v1

    .line 325
    move v1, v10

    .line 326
    move-object v10, v11

    .line 327
    instance-of v11, v9, Lnet/blip/android/ui/audiopicker/ListState$Loaded;

    .line 328
    .line 329
    if-eqz v11, :cond_a

    .line 330
    .line 331
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 332
    .line 333
    const v11, -0x7657bb30

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 337
    .line 338
    .line 339
    move-object v11, v9

    .line 340
    check-cast v11, Lnet/blip/android/ui/audiopicker/ListState$Loaded;

    .line 341
    .line 342
    iget-object v11, v11, Lnet/blip/android/ui/audiopicker/ListState$Loaded;->a:Ljava/util/List;

    .line 343
    .line 344
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    if-eqz v11, :cond_7

    .line 349
    .line 350
    const v0, -0x7657f3bd

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 354
    .line 355
    .line 356
    const/4 v11, 0x0

    .line 357
    const/4 v13, 0x7

    .line 358
    const/4 v9, 0x0

    .line 359
    const/4 v10, 0x0

    .line 360
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    iget-wide v10, v3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 369
    .line 370
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 371
    .line 372
    .line 373
    move-result v10

    .line 374
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 375
    .line 376
    .line 377
    move-result-object v11

    .line 378
    invoke-static {v3, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 383
    .line 384
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 388
    .line 389
    .line 390
    iget-boolean v12, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 391
    .line 392
    if-eqz v12, :cond_6

    .line 393
    .line 394
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 399
    .line 400
    .line 401
    :goto_2
    invoke-static {v3, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v3, v11, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v3, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 418
    .line 419
    .line 420
    const/high16 v10, 0x42400000    # 48.0f

    .line 421
    .line 422
    invoke-static {v8, v2, v10}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 423
    .line 424
    .line 425
    move-result-object v19

    .line 426
    invoke-static {}, Landroidx/compose/material/icons/automirrored/rounded/HelpOutlineKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 427
    .line 428
    .line 429
    move-result-object v20

    .line 430
    const/16 v27, 0xd86

    .line 431
    .line 432
    const/16 v28, 0x70

    .line 433
    .line 434
    const-string v21, "Nothing to display"

    .line 435
    .line 436
    const-string v22, "No audio files found on this phone"

    .line 437
    .line 438
    const/16 v23, 0x0

    .line 439
    .line 440
    const/16 v24, 0x0

    .line 441
    .line 442
    const/16 v25, 0x0

    .line 443
    .line 444
    move-object/from16 v26, v3

    .line 445
    .line 446
    invoke-static/range {v19 .. v28}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 447
    .line 448
    .line 449
    const/4 v0, 0x1

    .line 450
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 454
    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_7
    const v2, -0x764f0e92

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 461
    .line 462
    .line 463
    const/high16 v2, 0x3f800000    # 1.0f

    .line 464
    .line 465
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 466
    .line 467
    .line 468
    move-result-object v28

    .line 469
    const/high16 v2, 0x41000000    # 8.0f

    .line 470
    .line 471
    add-float/2addr v12, v2

    .line 472
    new-instance v4, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 473
    .line 474
    invoke-direct {v4, v2, v2, v2, v12}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    iget-object v5, v0, Lj3;->k:Lkotlin/jvm/functions/Function1;

    .line 482
    .line 483
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    or-int/2addr v2, v6

    .line 488
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    if-nez v2, :cond_8

    .line 493
    .line 494
    if-ne v6, v10, :cond_9

    .line 495
    .line 496
    :cond_8
    new-instance v6, Lp2;

    .line 497
    .line 498
    iget-object v0, v0, Lj3;->m:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 499
    .line 500
    const/4 v2, 0x1

    .line 501
    invoke-direct {v6, v9, v5, v0, v2}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    :cond_9
    move-object/from16 v29, v6

    .line 508
    .line 509
    check-cast v29, Lkotlin/jvm/functions/Function1;

    .line 510
    .line 511
    const/16 v19, 0x6

    .line 512
    .line 513
    const/16 v20, 0x1fa

    .line 514
    .line 515
    const/16 v21, 0x0

    .line 516
    .line 517
    const/16 v22, 0x0

    .line 518
    .line 519
    const/16 v23, 0x0

    .line 520
    .line 521
    const/16 v25, 0x0

    .line 522
    .line 523
    const/16 v27, 0x0

    .line 524
    .line 525
    const/16 v30, 0x0

    .line 526
    .line 527
    move-object/from16 v26, v3

    .line 528
    .line 529
    move-object/from16 v24, v4

    .line 530
    .line 531
    invoke-static/range {v19 .. v30}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(IILandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 535
    .line 536
    .line 537
    :goto_3
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 538
    .line 539
    .line 540
    goto :goto_4

    .line 541
    :cond_a
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 542
    .line 543
    const v0, -0x7630f4a6

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 550
    .line 551
    .line 552
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 553
    .line 554
    return-object v0
.end method
