.class public final synthetic Lzc;
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

    .line 13
    iput p2, p0, Lzc;->j:I

    iput-object p3, p0, Lzc;->k:Ljava/lang/Object;

    iput-object p4, p0, Lzc;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lzc;->j:I

    iput-object p2, p0, Lzc;->k:Ljava/lang/Object;

    iput-object p3, p0, Lzc;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lnet/blip/shared/Paintable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lzc;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lzc;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lzc;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzc;->j:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v6, v0, Lzc;->l:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Lzc;->k:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v2, p2

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v0, v6, v1, v2}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 37
    .line 38
    .line 39
    return-object v5

    .line 40
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 41
    .line 42
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 43
    .line 44
    move-object/from16 v7, p1

    .line 45
    .line 46
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 47
    .line 48
    move-object/from16 v8, p2

    .line 49
    .line 50
    check-cast v8, Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->k()Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 64
    .line 65
    move-object v10, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v10, v2

    .line 68
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->v:Landroidx/compose/ui/text/TextRange;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-wide v11, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 73
    .line 74
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 75
    .line 76
    const/16 v4, 0x20

    .line 77
    .line 78
    shr-long v13, v11, v4

    .line 79
    .line 80
    long-to-int v4, v13

    .line 81
    invoke-interface {v1, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const-wide v13, 0xffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    and-long/2addr v11, v13

    .line 91
    long-to-int v11, v11

    .line 92
    invoke-interface {v1, v11}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v4, v1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    new-instance v1, Landroidx/compose/ui/text/TextRange;

    .line 101
    .line 102
    invoke-direct {v1, v11, v12}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    move-object v1, v2

    .line 107
    :goto_1
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->i:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 108
    .line 109
    new-instance v11, Landroidx/compose/foundation/text/selection/e;

    .line 110
    .line 111
    invoke-direct {v11, v0, v6, v8}, Landroidx/compose/foundation/text/selection/e;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 115
    .line 116
    if-eqz v10, :cond_c

    .line 117
    .line 118
    if-eqz v1, :cond_c

    .line 119
    .line 120
    if-eqz v4, :cond_c

    .line 121
    .line 122
    instance-of v0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 123
    .line 124
    if-nez v0, :cond_2

    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_2
    check-cast v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 129
    .line 130
    iget-wide v12, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 131
    .line 132
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->h:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v6, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 135
    .line 136
    invoke-virtual {v6}, Lkotlinx/coroutines/sync/MutexImpl;->f()Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-nez v14, :cond_3

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    iget-object v4, v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 144
    .line 145
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 146
    .line 147
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;

    .line 152
    .line 153
    if-eqz v4, :cond_4

    .line 154
    .line 155
    iget-wide v14, v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;->b:J

    .line 156
    .line 157
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_4

    .line 162
    .line 163
    iget-object v12, v4, Landroidx/compose/foundation/text/selection/TextClassificationResult;->a:Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-eqz v12, :cond_4

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    move-object v4, v2

    .line 173
    :goto_2
    invoke-virtual {v6, v2}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    move-object v2, v4

    .line 177
    :goto_3
    if-nez v2, :cond_5

    .line 178
    .line 179
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/text/selection/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto/16 :goto_6

    .line 183
    .line 184
    :cond_5
    iget-object v4, v2, Landroidx/compose/foundation/text/selection/TextClassificationResult;->d:Ljava/util/ArrayList;

    .line 185
    .line 186
    iget-object v2, v2, Landroidx/compose/foundation/text/selection/TextClassificationResult;->c:Landroid/view/textclassifier/TextClassification;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-nez v6, :cond_6

    .line 197
    .line 198
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    new-instance v12, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 205
    .line 206
    invoke-direct {v12, v0, v2, v3, v6}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;ILandroid/graphics/drawable/Drawable;)V

    .line 207
    .line 208
    .line 209
    iget-object v6, v7, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 210
    .line 211
    invoke-virtual {v6, v12}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    if-nez v6, :cond_7

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-nez v6, :cond_9

    .line 230
    .line 231
    :cond_7
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    if-nez v6, :cond_8

    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    if-eqz v6, :cond_9

    .line 242
    .line 243
    :cond_8
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v12, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 248
    .line 249
    const/4 v13, -0x1

    .line 250
    invoke-direct {v12, v0, v2, v13, v6}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;ILandroid/graphics/drawable/Drawable;)V

    .line 251
    .line 252
    .line 253
    iget-object v6, v7, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 254
    .line 255
    invoke-virtual {v6, v12}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    :goto_4
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/text/selection/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    :goto_5
    if-ge v3, v11, :cond_b

    .line 270
    .line 271
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v12

    .line 275
    check-cast v12, Landroid/app/RemoteAction;

    .line 276
    .line 277
    if-lez v3, :cond_a

    .line 278
    .line 279
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    check-cast v12, Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    new-instance v13, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 286
    .line 287
    invoke-direct {v13, v0, v2, v3, v12}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;ILandroid/graphics/drawable/Drawable;)V

    .line 288
    .line 289
    .line 290
    iget-object v12, v7, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    .line 291
    .line 292
    invoke-virtual {v12, v13}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    :goto_6
    iget-wide v11, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 299
    .line 300
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/text/contextmenu/ProcessText_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    .line 301
    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_c
    :goto_7
    invoke-virtual {v11, v7}, Landroidx/compose/foundation/text/selection/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    if-eqz v10, :cond_d

    .line 308
    .line 309
    if-eqz v1, :cond_d

    .line 310
    .line 311
    iget-wide v11, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 312
    .line 313
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/text/contextmenu/ProcessText_androidKt;->a(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/String;J)V

    .line 314
    .line 315
    .line 316
    :cond_d
    :goto_8
    return-object v5

    .line 317
    :pswitch_1
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 318
    .line 319
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 320
    .line 321
    move-object/from16 v1, p1

    .line 322
    .line 323
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 324
    .line 325
    move-object/from16 v2, p2

    .line 326
    .line 327
    check-cast v2, Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    const/16 v2, 0x31

    .line 333
    .line 334
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    invoke-static {v0, v6, v1, v2}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 339
    .line 340
    .line 341
    return-object v5

    .line 342
    :pswitch_2
    check-cast v0, Landroidx/compose/material/FabPlacement;

    .line 343
    .line 344
    check-cast v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 345
    .line 346
    move-object/from16 v1, p1

    .line 347
    .line 348
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 349
    .line 350
    move-object/from16 v7, p2

    .line 351
    .line 352
    check-cast v7, Ljava/lang/Integer;

    .line 353
    .line 354
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    sget-object v8, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 359
    .line 360
    and-int/lit8 v8, v7, 0x3

    .line 361
    .line 362
    if-eq v8, v2, :cond_e

    .line 363
    .line 364
    move v3, v4

    .line 365
    :cond_e
    and-int/lit8 v2, v7, 0x1

    .line 366
    .line 367
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 368
    .line 369
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_f

    .line 374
    .line 375
    sget-object v2, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 376
    .line 377
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const/16 v2, 0x8

    .line 382
    .line 383
    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 384
    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 388
    .line 389
    .line 390
    :goto_9
    return-object v5

    .line 391
    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 392
    .line 393
    check-cast v6, Landroidx/compose/material/ScaffoldState;

    .line 394
    .line 395
    move-object/from16 v1, p1

    .line 396
    .line 397
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 398
    .line 399
    move-object/from16 v7, p2

    .line 400
    .line 401
    check-cast v7, Ljava/lang/Integer;

    .line 402
    .line 403
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    sget-object v8, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 408
    .line 409
    and-int/lit8 v8, v7, 0x3

    .line 410
    .line 411
    if-eq v8, v2, :cond_10

    .line 412
    .line 413
    move v2, v4

    .line 414
    goto :goto_a

    .line 415
    :cond_10
    move v2, v3

    .line 416
    :goto_a
    and-int/2addr v4, v7

    .line 417
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 418
    .line 419
    invoke-virtual {v1, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-eqz v2, :cond_11

    .line 424
    .line 425
    iget-object v2, v6, Landroidx/compose/material/ScaffoldState;->a:Landroidx/compose/material/SnackbarHostState;

    .line 426
    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-interface {v0, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 436
    .line 437
    .line 438
    :goto_b
    return-object v5

    .line 439
    :pswitch_4
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 440
    .line 441
    check-cast v6, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 442
    .line 443
    move-object/from16 v1, p1

    .line 444
    .line 445
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 446
    .line 447
    move-object/from16 v7, p2

    .line 448
    .line 449
    check-cast v7, Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    sget-object v8, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 456
    .line 457
    and-int/lit8 v8, v7, 0x3

    .line 458
    .line 459
    if-eq v8, v2, :cond_12

    .line 460
    .line 461
    move v3, v4

    .line 462
    :cond_12
    and-int/lit8 v2, v7, 0x1

    .line 463
    .line 464
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 465
    .line 466
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_13

    .line 471
    .line 472
    const/4 v2, 0x6

    .line 473
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v0, v6, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_13
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 482
    .line 483
    .line 484
    :goto_c
    return-object v5

    .line 485
    :pswitch_5
    check-cast v0, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 486
    .line 487
    check-cast v6, Landroidx/lifecycle/Lifecycle$Event;

    .line 488
    .line 489
    move-object/from16 v1, p1

    .line 490
    .line 491
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 492
    .line 493
    move-object/from16 v2, p2

    .line 494
    .line 495
    check-cast v2, Ljava/lang/Integer;

    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    invoke-static {v0, v6, v1, v2}, Lcom/google/accompanist/permissions/PermissionsUtilKt;->a(Lcom/google/accompanist/permissions/MutablePermissionState;Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/Composer;I)V

    .line 505
    .line 506
    .line 507
    return-object v5

    .line 508
    :pswitch_6
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 509
    .line 510
    check-cast v6, Lnet/blip/shared/Paintable;

    .line 511
    .line 512
    move-object/from16 v1, p1

    .line 513
    .line 514
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 515
    .line 516
    move-object/from16 v7, p2

    .line 517
    .line 518
    check-cast v7, Ljava/lang/Integer;

    .line 519
    .line 520
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    and-int/lit8 v8, v7, 0x3

    .line 525
    .line 526
    if-eq v8, v2, :cond_14

    .line 527
    .line 528
    move v3, v4

    .line 529
    :cond_14
    and-int/lit8 v2, v7, 0x1

    .line 530
    .line 531
    move-object v11, v1

    .line 532
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 533
    .line 534
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    if-eqz v1, :cond_15

    .line 539
    .line 540
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    check-cast v0, Ljava/lang/Boolean;

    .line 545
    .line 546
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 547
    .line 548
    .line 549
    move-result v8

    .line 550
    new-instance v0, Ld;

    .line 551
    .line 552
    invoke-direct {v0, v6}, Ld;-><init>(Lnet/blip/shared/Paintable;)V

    .line 553
    .line 554
    .line 555
    const v1, 0x6dbde0c5

    .line 556
    .line 557
    .line 558
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 559
    .line 560
    .line 561
    move-result-object v10

    .line 562
    const/16 v12, 0xc00

    .line 563
    .line 564
    const/4 v13, 0x5

    .line 565
    const/4 v7, 0x0

    .line 566
    const/4 v9, 0x0

    .line 567
    invoke-static/range {v7 .. v13}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->a(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 568
    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 572
    .line 573
    .line 574
    :goto_d
    return-object v5

    .line 575
    :pswitch_7
    move-object v13, v0

    .line 576
    check-cast v13, Ljava/lang/String;

    .line 577
    .line 578
    move-object v14, v6

    .line 579
    check-cast v14, Ljava/lang/String;

    .line 580
    .line 581
    move-object/from16 v0, p1

    .line 582
    .line 583
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 584
    .line 585
    move-object/from16 v1, p2

    .line 586
    .line 587
    check-cast v1, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    and-int/lit8 v6, v1, 0x3

    .line 594
    .line 595
    if-eq v6, v2, :cond_16

    .line 596
    .line 597
    move v3, v4

    .line 598
    :cond_16
    and-int/2addr v1, v4

    .line 599
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 600
    .line 601
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 602
    .line 603
    .line 604
    move-result v1

    .line 605
    if-eqz v1, :cond_17

    .line 606
    .line 607
    const/16 v18, 0x0

    .line 608
    .line 609
    const/16 v19, 0x9

    .line 610
    .line 611
    const/4 v12, 0x0

    .line 612
    const-wide/16 v15, 0x0

    .line 613
    .line 614
    move-object/from16 v17, v0

    .line 615
    .line 616
    invoke-static/range {v12 .. v19}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 617
    .line 618
    .line 619
    goto :goto_e

    .line 620
    :cond_17
    move-object/from16 v17, v0

    .line 621
    .line 622
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 623
    .line 624
    .line 625
    :goto_e
    return-object v5

    .line 626
    :pswitch_8
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 627
    .line 628
    check-cast v6, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;

    .line 629
    .line 630
    move-object/from16 v1, p1

    .line 631
    .line 632
    check-cast v1, Ljava/lang/Float;

    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    move-object/from16 v2, p2

    .line 639
    .line 640
    check-cast v2, Ljava/lang/Float;

    .line 641
    .line 642
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    sget-object v2, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 646
    .line 647
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 648
    .line 649
    sub-float/2addr v1, v2

    .line 650
    iget-object v2, v6, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 651
    .line 652
    invoke-interface {v2, v1}, Landroidx/compose/foundation/gestures/ScrollScope;->f(F)F

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 657
    .line 658
    add-float/2addr v2, v1

    .line 659
    iput v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 660
    .line 661
    return-object v5

    .line 662
    nop

    .line 663
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
