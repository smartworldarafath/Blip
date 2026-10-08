.class public final Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lnet/blip/libblip/frontend/State;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->j:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->k:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->m:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->n:Lnet/blip/libblip/frontend/State;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->p:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    and-int/lit8 v5, v4, 0x6

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    move-object v5, v3

    .line 32
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    const/4 v5, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v5, 0x2

    .line 43
    :goto_0
    or-int/2addr v5, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v5, v4

    .line 46
    :goto_1
    and-int/lit8 v4, v4, 0x30

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v4, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v5, v4

    .line 65
    :cond_3
    and-int/lit16 v4, v5, 0x93

    .line 66
    .line 67
    const/16 v7, 0x92

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x1

    .line 71
    if-eq v4, v7, :cond_4

    .line 72
    .line 73
    move v4, v9

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v4, v8

    .line 76
    :goto_3
    and-int/2addr v5, v9

    .line 77
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    invoke-virtual {v3, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_13

    .line 84
    .line 85
    iget-object v4, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->j:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v14, v2

    .line 92
    check-cast v14, Lnet/blip/libblip/frontend/Transfer;

    .line 93
    .line 94
    const v2, -0x143da29c

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v14, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 111
    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    if-ne v4, v5, :cond_6

    .line 115
    .line 116
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    move-object v12, v4

    .line 126
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    iget-object v2, v14, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    invoke-static {v2}, Lnet/blip/libblip/Metadata_DerivedKt;->b(Lbsarchive/Metadata;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_4

    .line 137
    :cond_7
    const/4 v2, 0x0

    .line 138
    :goto_4
    if-nez v2, :cond_8

    .line 139
    .line 140
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 141
    .line 142
    :cond_8
    iget-object v7, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->k:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v7, v2}, Lnet/blip/android/ui/util/TransferClipboardKt;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 149
    .line 150
    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const/16 p1, 0x20

    .line 155
    .line 156
    iget-wide v6, v3, Landroidx/compose/runtime/GapComposer;->T:J

    .line 157
    .line 158
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 167
    .line 168
    invoke-static {v3, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 173
    .line 174
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 178
    .line 179
    .line 180
    iget-boolean v15, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 181
    .line 182
    if-eqz v15, :cond_9

    .line 183
    .line 184
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 185
    .line 186
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 191
    .line 192
    .line 193
    :goto_5
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 194
    .line 195
    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    .line 197
    .line 198
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 199
    .line 200
    invoke-static {v3, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 208
    .line 209
    invoke-static {v3, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 213
    .line 214
    .line 215
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 216
    .line 217
    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    .line 219
    .line 220
    const/high16 v2, 0x41400000    # 12.0f

    .line 221
    .line 222
    invoke-static {v10, v2}, Lnet/blip/shared/OutsetParentKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    const/16 v18, 0x0

    .line 227
    .line 228
    const/16 v20, 0x7

    .line 229
    .line 230
    const/16 v16, 0x0

    .line 231
    .line 232
    const/16 v17, 0x0

    .line 233
    .line 234
    move/from16 v19, v2

    .line 235
    .line 236
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const/high16 v6, 0x41800000    # 16.0f

    .line 241
    .line 242
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-static {v2, v6}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    sget-object v6, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Ljava/util/Map;

    .line 251
    .line 252
    new-instance v6, Landroidx/compose/ui/unit/IntOffset;

    .line 253
    .line 254
    move-object/from16 p2, v5

    .line 255
    .line 256
    const/16 p3, 0x0

    .line 257
    .line 258
    const-wide v4, 0x100000001L

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 264
    .line 265
    .line 266
    const/4 v4, 0x0

    .line 267
    const/high16 v5, 0x43c80000    # 400.0f

    .line 268
    .line 269
    invoke-static {v4, v5, v6, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;

    .line 279
    .line 280
    invoke-direct {v1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;-><init>(Landroidx/compose/animation/core/SpringSpec;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    move-object/from16 v2, p2

    .line 292
    .line 293
    if-ne v1, v2, :cond_a

    .line 294
    .line 295
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_a
    move-object/from16 v16, v1

    .line 303
    .line 304
    check-cast v16, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 305
    .line 306
    const-wide/16 v4, 0x0

    .line 307
    .line 308
    const/4 v1, 0x6

    .line 309
    invoke-static {v1, v4, v5, v9}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 310
    .line 311
    .line 312
    move-result-object v17

    .line 313
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    iget-object v4, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->l:Lkotlin/jvm/functions/Function1;

    .line 318
    .line 319
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    or-int/2addr v1, v5

    .line 324
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    or-int/2addr v1, v5

    .line 329
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-nez v1, :cond_b

    .line 334
    .line 335
    if-ne v5, v2, :cond_c

    .line 336
    .line 337
    :cond_b
    new-instance v5, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;

    .line 338
    .line 339
    invoke-direct {v5, v12, v4, v14}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$2$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_c
    move-object/from16 v19, v5

    .line 346
    .line 347
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 348
    .line 349
    iget-object v1, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->m:Lkotlin/jvm/functions/Function1;

    .line 350
    .line 351
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    or-int/2addr v4, v5

    .line 360
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-nez v4, :cond_d

    .line 365
    .line 366
    if-ne v5, v2, :cond_e

    .line 367
    .line 368
    :cond_d
    new-instance v5, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;

    .line 369
    .line 370
    invoke-direct {v5, v1, v14}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_e
    move-object/from16 v20, v5

    .line 377
    .line 378
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 379
    .line 380
    const/16 v21, 0x1bc

    .line 381
    .line 382
    const/16 v18, 0x0

    .line 383
    .line 384
    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    iget-object v4, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->n:Lnet/blip/libblip/frontend/State;

    .line 389
    .line 390
    iget-object v4, v4, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 391
    .line 392
    if-eqz v4, :cond_10

    .line 393
    .line 394
    iget-object v5, v14, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 395
    .line 396
    if-eqz v5, :cond_f

    .line 397
    .line 398
    invoke-static {v4, v5}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    goto :goto_6

    .line 403
    :cond_f
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 404
    .line 405
    new-array v1, v8, [Lkotlin/Pair;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    const-string v0, "transfer missing peer_id"

    .line 411
    .line 412
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 413
    .line 414
    .line 415
    throw p3

    .line 416
    :cond_10
    move-object/from16 v4, p3

    .line 417
    .line 418
    :goto_6
    invoke-static {v1, v14, v4, v3, v8}, Lnet/blip/android/ui/home/TransferGridCellKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Landroidx/compose/runtime/Composer;I)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    check-cast v1, Ljava/lang/Boolean;

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    if-nez v4, :cond_11

    .line 440
    .line 441
    if-ne v5, v2, :cond_12

    .line 442
    .line 443
    :cond_11
    new-instance v5, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$4$1;

    .line 444
    .line 445
    invoke-direct {v5, v12}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 452
    .line 453
    const/high16 v2, 0x41a00000    # 20.0f

    .line 454
    .line 455
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    int-to-long v6, v2

    .line 460
    const/high16 v2, -0x3dc00000    # -48.0f

    .line 461
    .line 462
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    int-to-long v8, v2

    .line 467
    shl-long v6, v6, p1

    .line 468
    .line 469
    const-wide v15, 0xffffffffL

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    and-long/2addr v8, v15

    .line 475
    or-long/2addr v6, v8

    .line 476
    new-instance v10, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;

    .line 477
    .line 478
    iget-object v13, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->o:Lkotlin/jvm/functions/Function1;

    .line 479
    .line 480
    iget-object v15, v0, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5;->p:Lkotlin/jvm/functions/Function1;

    .line 481
    .line 482
    invoke-direct/range {v10 .. v15}, Lnet/blip/android/ui/home/TransferGridKt$TransferGrid$5$1$1$4$1$5;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/frontend/Transfer;Lkotlin/jvm/functions/Function1;)V

    .line 483
    .line 484
    .line 485
    const v0, -0x3283fe79

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v10, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 489
    .line 490
    .line 491
    move-result-object v17

    .line 492
    const v19, 0x180c00

    .line 493
    .line 494
    .line 495
    const/16 v20, 0x34

    .line 496
    .line 497
    const/4 v12, 0x0

    .line 498
    const/4 v15, 0x0

    .line 499
    const/16 v16, 0x0

    .line 500
    .line 501
    move v10, v1

    .line 502
    move-object/from16 v18, v3

    .line 503
    .line 504
    move-object v11, v5

    .line 505
    move-wide v13, v6

    .line 506
    invoke-static/range {v10 .. v20}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 507
    .line 508
    .line 509
    const/4 v0, 0x1

    .line 510
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 511
    .line 512
    .line 513
    const/4 v0, 0x0

    .line 514
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 515
    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 519
    .line 520
    .line 521
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 522
    .line 523
    return-object v0
.end method
