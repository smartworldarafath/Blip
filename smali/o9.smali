.class public final synthetic Lo9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Z

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo9;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lo9;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-boolean p5, p0, Lo9;->m:Z

    .line 10
    .line 11
    iput-object p3, p0, Lo9;->l:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p4, p0, Lo9;->n:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iput-object p1, p0, Lo9;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lo9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9;->k:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lo9;->l:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lo9;->m:Z

    iput-object p4, p0, Lo9;->n:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lo9;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lo9;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/16 v4, 0x10

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 13
    .line 14
    iget-object v8, v0, Lo9;->o:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lo9;->k:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v14, v8

    .line 22
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 27
    .line 28
    move-object/from16 v8, p2

    .line 29
    .line 30
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 31
    .line 32
    move-object/from16 v10, p3

    .line 33
    .line 34
    check-cast v10, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v1, v10, 0x11

    .line 44
    .line 45
    if-eq v1, v4, :cond_0

    .line 46
    .line 47
    move v1, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v1, v6

    .line 50
    :goto_0
    and-int/lit8 v4, v10, 0x1

    .line 51
    .line 52
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    const/16 v19, 0x0

    .line 61
    .line 62
    const/16 v20, 0xa

    .line 63
    .line 64
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    const/high16 v16, 0x41c00000    # 24.0f

    .line 67
    .line 68
    const/16 v17, 0x0

    .line 69
    .line 70
    const/high16 v18, 0x41000000    # 8.0f

    .line 71
    .line 72
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/high16 v4, 0x42680000    # 58.0f

    .line 77
    .line 78
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 83
    .line 84
    const/16 v10, 0x30

    .line 85
    .line 86
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 87
    .line 88
    invoke-static {v4, v11, v8, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 93
    .line 94
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-static {v8, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 107
    .line 108
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 112
    .line 113
    .line 114
    iget-boolean v12, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 115
    .line 116
    if-eqz v12, :cond_1

    .line 117
    .line 118
    sget-object v12, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 119
    .line 120
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 125
    .line 126
    .line 127
    :goto_1
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 128
    .line 129
    invoke-static {v8, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 133
    .line 134
    invoke-static {v8, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 142
    .line 143
    invoke-static {v8, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 147
    .line 148
    .line 149
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 150
    .line 151
    invoke-static {v8, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v6, v8}, Lnet/blip/android/ui/home/HomeTopBarKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 155
    .line 156
    .line 157
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-nez v1, :cond_2

    .line 175
    .line 176
    if-ne v4, v7, :cond_3

    .line 177
    .line 178
    :cond_2
    new-instance v4, Ls;

    .line 179
    .line 180
    invoke-direct {v4, v3, v9}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    move-object v15, v4

    .line 187
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    const/16 v20, 0x6000

    .line 190
    .line 191
    const/16 v21, 0xe

    .line 192
    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    sget-object v18, Lnet/blip/android/ui/home/ComposableSingletons$HomeTopBarKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    move-object/from16 v19, v8

    .line 200
    .line 201
    invoke-static/range {v15 .. v21}, Landroidx/compose/material/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-ne v1, v7, :cond_4

    .line 209
    .line 210
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    move-object v11, v1

    .line 220
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-ne v1, v7, :cond_5

    .line 227
    .line 228
    new-instance v1, Lo1;

    .line 229
    .line 230
    const/16 v3, 0x11

    .line 231
    .line 232
    invoke-direct {v1, v11, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    new-instance v10, Lq9;

    .line 241
    .line 242
    iget-object v12, v0, Lo9;->l:Lkotlin/jvm/functions/Function0;

    .line 243
    .line 244
    iget-object v13, v0, Lo9;->n:Lkotlin/jvm/functions/Function0;

    .line 245
    .line 246
    iget-boolean v15, v0, Lo9;->m:Z

    .line 247
    .line 248
    invoke-direct/range {v10 .. v15}, Lq9;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 249
    .line 250
    .line 251
    const v0, 0x366e3098

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v10, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 255
    .line 256
    .line 257
    move-result-object v18

    .line 258
    const/16 v20, 0x6006

    .line 259
    .line 260
    const/16 v21, 0xe

    .line 261
    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    const/16 v17, 0x0

    .line 265
    .line 266
    move-object v15, v1

    .line 267
    move-object/from16 v19, v8

    .line 268
    .line 269
    invoke-static/range {v15 .. v21}, Landroidx/compose/material/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 277
    .line 278
    .line 279
    :goto_2
    return-object v2

    .line 280
    :pswitch_0
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 281
    .line 282
    move-object/from16 v1, p1

    .line 283
    .line 284
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 285
    .line 286
    move-object/from16 v10, p2

    .line 287
    .line 288
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 289
    .line 290
    move-object/from16 v11, p3

    .line 291
    .line 292
    check-cast v11, Ljava/lang/Integer;

    .line 293
    .line 294
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    and-int/lit8 v1, v11, 0x11

    .line 302
    .line 303
    if-eq v1, v4, :cond_7

    .line 304
    .line 305
    move v1, v5

    .line 306
    goto :goto_3

    .line 307
    :cond_7
    move v1, v6

    .line 308
    :goto_3
    and-int/lit8 v4, v11, 0x1

    .line 309
    .line 310
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 311
    .line 312
    invoke-virtual {v10, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_e

    .line 317
    .line 318
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    if-nez v1, :cond_8

    .line 327
    .line 328
    if-ne v4, v7, :cond_9

    .line 329
    .line 330
    :cond_8
    new-instance v4, Lk1;

    .line 331
    .line 332
    const/4 v1, 0x2

    .line 333
    invoke-direct {v4, v9, v8, v1}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_9
    move-object v11, v4

    .line 340
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 341
    .line 342
    const/high16 v17, 0x30000

    .line 343
    .line 344
    const/16 v18, 0x1a

    .line 345
    .line 346
    const/4 v12, 0x0

    .line 347
    iget-boolean v13, v0, Lo9;->m:Z

    .line 348
    .line 349
    const/4 v14, 0x0

    .line 350
    sget-object v15, Lnet/blip/android/ui/home/ComposableSingletons$HomeTopBarKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 351
    .line 352
    move-object/from16 v16, v10

    .line 353
    .line 354
    invoke-static/range {v11 .. v18}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 355
    .line 356
    .line 357
    const/4 v1, 0x0

    .line 358
    invoke-static {v1, v10, v6, v5}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lo9;->l:Lkotlin/jvm/functions/Function0;

    .line 362
    .line 363
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    if-nez v4, :cond_a

    .line 372
    .line 373
    if-ne v5, v7, :cond_b

    .line 374
    .line 375
    :cond_a
    new-instance v5, Lk1;

    .line 376
    .line 377
    invoke-direct {v5, v1, v8, v3}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_b
    move-object v11, v5

    .line 384
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 385
    .line 386
    const/high16 v17, 0x30000

    .line 387
    .line 388
    const/16 v18, 0x1e

    .line 389
    .line 390
    const/4 v12, 0x0

    .line 391
    const/4 v13, 0x0

    .line 392
    const/4 v14, 0x0

    .line 393
    sget-object v15, Lnet/blip/android/ui/home/ComposableSingletons$HomeTopBarKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 394
    .line 395
    move-object/from16 v16, v10

    .line 396
    .line 397
    invoke-static/range {v11 .. v18}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v0, Lo9;->n:Lkotlin/jvm/functions/Function0;

    .line 401
    .line 402
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    if-nez v1, :cond_c

    .line 411
    .line 412
    if-ne v3, v7, :cond_d

    .line 413
    .line 414
    :cond_c
    new-instance v3, Lk1;

    .line 415
    .line 416
    const/4 v1, 0x4

    .line 417
    invoke-direct {v3, v0, v8, v1}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_d
    move-object v11, v3

    .line 424
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 425
    .line 426
    const/high16 v17, 0x30000

    .line 427
    .line 428
    const/16 v18, 0x1e

    .line 429
    .line 430
    const/4 v12, 0x0

    .line 431
    const/4 v13, 0x0

    .line 432
    const/4 v14, 0x0

    .line 433
    sget-object v15, Lnet/blip/android/ui/home/ComposableSingletons$HomeTopBarKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 434
    .line 435
    move-object/from16 v16, v10

    .line 436
    .line 437
    invoke-static/range {v11 .. v18}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 438
    .line 439
    .line 440
    goto :goto_4

    .line 441
    :cond_e
    move-object/from16 v16, v10

    .line 442
    .line 443
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 444
    .line 445
    .line 446
    :goto_4
    return-object v2

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
