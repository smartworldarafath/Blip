.class public final synthetic Ln9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    const/4 p8, 0x2

    .line 2
    iput p8, p0, Ln9;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ln9;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ln9;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Ln9;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-boolean p5, p0, Ln9;->m:Z

    .line 16
    .line 17
    iput-object p6, p0, Ln9;->p:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p7, p0, Ln9;->q:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 22
    const/4 p8, 0x1

    iput p8, p0, Ln9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9;->n:Ljava/lang/Object;

    iput-object p2, p0, Ln9;->k:Ljava/lang/Object;

    iput-object p3, p0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Ln9;->o:Ljava/lang/Object;

    iput-boolean p5, p0, Ln9;->m:Z

    iput-object p6, p0, Ln9;->p:Ljava/lang/Object;

    iput-object p7, p0, Ln9;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/PeerPickerViewModel;Landroidx/navigation/NavController;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLandroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Ln9;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9;->k:Ljava/lang/Object;

    iput-object p2, p0, Ln9;->n:Ljava/lang/Object;

    iput-object p3, p0, Ln9;->o:Ljava/lang/Object;

    iput-object p4, p0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Ln9;->p:Ljava/lang/Object;

    iput-boolean p6, p0, Ln9;->m:Z

    iput-object p7, p0, Ln9;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ln9;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Ln9;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Ln9;->p:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Ln9;->o:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Ln9;->n:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Ln9;->k:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v9, v8

    .line 22
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    move-object v10, v7

    .line 25
    check-cast v10, Lnet/blip/libblip/Peer;

    .line 26
    .line 27
    move-object v11, v6

    .line 28
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    move-object v14, v5

    .line 31
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    move-object v15, v4

    .line 34
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    move-object/from16 v16, p1

    .line 37
    .line 38
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    move-object/from16 v1, p2

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v17

    .line 51
    iget-object v12, v0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    iget-boolean v13, v0, Ln9;->m:Z

    .line 54
    .line 55
    invoke-static/range {v9 .. v17}, Lnet/blip/android/ui/home/PeerTrayKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :pswitch_0
    move-object/from16 v18, v7

    .line 60
    .line 61
    check-cast v18, Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    move-object/from16 v19, v8

    .line 64
    .line 65
    check-cast v19, Lnet/blip/libblip/PeerPickerViewModel;

    .line 66
    .line 67
    move-object/from16 v21, v6

    .line 68
    .line 69
    check-cast v21, Lkotlin/jvm/functions/Function2;

    .line 70
    .line 71
    move-object/from16 v23, v5

    .line 72
    .line 73
    check-cast v23, Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    move-object/from16 v24, v4

    .line 76
    .line 77
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    move-object/from16 v25, p1

    .line 80
    .line 81
    check-cast v25, Landroidx/compose/runtime/Composer;

    .line 82
    .line 83
    move-object/from16 v1, p2

    .line 84
    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const v1, 0x180001

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v26

    .line 97
    iget-object v1, v0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    iget-boolean v0, v0, Ln9;->m:Z

    .line 100
    .line 101
    move/from16 v22, v0

    .line 102
    .line 103
    move-object/from16 v20, v1

    .line 104
    .line 105
    invoke-static/range {v18 .. v26}, Lnet/blip/android/ui/home/PeerTrayKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    return-object v2

    .line 109
    :pswitch_1
    check-cast v8, Lnet/blip/libblip/PeerPickerViewModel;

    .line 110
    .line 111
    check-cast v7, Landroidx/navigation/NavController;

    .line 112
    .line 113
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast v5, Landroid/content/Context;

    .line 116
    .line 117
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 118
    .line 119
    move-object/from16 v1, p1

    .line 120
    .line 121
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 122
    .line 123
    move-object/from16 v9, p2

    .line 124
    .line 125
    check-cast v9, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    and-int/lit8 v10, v9, 0x3

    .line 132
    .line 133
    const/4 v11, 0x2

    .line 134
    const/4 v12, 0x0

    .line 135
    if-eq v10, v11, :cond_0

    .line 136
    .line 137
    move v10, v3

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    move v10, v12

    .line 140
    :goto_0
    and-int/2addr v9, v3

    .line 141
    move-object v11, v1

    .line 142
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 143
    .line 144
    invoke-virtual {v11, v9, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 151
    .line 152
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    check-cast v9, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 157
    .line 158
    iget-wide v9, v9, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 159
    .line 160
    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 161
    .line 162
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 163
    .line 164
    invoke-static {v14, v9, v10, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    move-object v10, v4

    .line 169
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 170
    .line 171
    const v13, 0x3c75c28f    # 0.015f

    .line 172
    .line 173
    .line 174
    invoke-static {v3, v4, v13}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v13, Lq4;

    .line 182
    .line 183
    invoke-direct {v13, v3, v4}, Lq4;-><init>(J)V

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v13}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const/high16 v4, 0x41800000    # 16.0f

    .line 191
    .line 192
    const/high16 v9, 0x41200000    # 10.0f

    .line 193
    .line 194
    invoke-static {v3, v4, v9, v4, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 199
    .line 200
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 201
    .line 202
    invoke-static {v4, v9, v11, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 207
    .line 208
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 221
    .line 222
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 226
    .line 227
    .line 228
    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 229
    .line 230
    if-eqz v13, :cond_1

    .line 231
    .line 232
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 233
    .line 234
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 239
    .line 240
    .line 241
    :goto_1
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 242
    .line 243
    invoke-static {v11, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 247
    .line 248
    invoke-static {v11, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 256
    .line 257
    invoke-static {v11, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 261
    .line 262
    .line 263
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 264
    .line 265
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    const/high16 v3, 0x41000000    # 8.0f

    .line 269
    .line 270
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 279
    .line 280
    iget-wide v3, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->c:J

    .line 281
    .line 282
    const/16 v18, 0x36

    .line 283
    .line 284
    const/16 v19, 0x0

    .line 285
    .line 286
    move-object v1, v14

    .line 287
    const-string v14, "Send directly"

    .line 288
    .line 289
    move-wide v15, v3

    .line 290
    move-object/from16 v17, v11

    .line 291
    .line 292
    invoke-static/range {v13 .. v19}, Lnet/blip/android/ui/components/SubheadingKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 293
    .line 294
    .line 295
    const/high16 v3, 0x40800000    # 4.0f

    .line 296
    .line 297
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v11}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->e(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 317
    .line 318
    if-nez v3, :cond_2

    .line 319
    .line 320
    if-ne v4, v9, :cond_3

    .line 321
    .line 322
    :cond_2
    new-instance v4, Lc;

    .line 323
    .line 324
    const/16 v3, 0x19

    .line 325
    .line 326
    invoke-direct {v4, v3, v7}, Lc;-><init>(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 333
    .line 334
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    or-int/2addr v3, v12

    .line 343
    iget-object v12, v0, Ln9;->l:Lkotlin/jvm/functions/Function1;

    .line 344
    .line 345
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    or-int/2addr v3, v13

    .line 350
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    or-int/2addr v3, v13

    .line 355
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    if-nez v3, :cond_4

    .line 360
    .line 361
    if-ne v13, v9, :cond_5

    .line 362
    .line 363
    :cond_4
    new-instance v13, Lnet/blip/android/ui/home/c;

    .line 364
    .line 365
    invoke-direct {v13, v6, v1, v12, v5}, Lnet/blip/android/ui/home/c;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_5
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 372
    .line 373
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    if-nez v1, :cond_6

    .line 382
    .line 383
    if-ne v3, v9, :cond_7

    .line 384
    .line 385
    :cond_6
    new-instance v3, Lg9;

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    invoke-direct {v3, v7, v1}, Lg9;-><init>(Landroidx/navigation/NavController;I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 395
    .line 396
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    if-ne v1, v9, :cond_8

    .line 401
    .line 402
    new-instance v1, Lo1;

    .line 403
    .line 404
    const/16 v5, 0xd

    .line 405
    .line 406
    invoke-direct {v1, v10, v5}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_8
    move-object v10, v1

    .line 413
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 414
    .line 415
    const/high16 v12, 0x180000

    .line 416
    .line 417
    move-object v6, v4

    .line 418
    const/4 v4, 0x0

    .line 419
    iget-boolean v0, v0, Ln9;->m:Z

    .line 420
    .line 421
    move-object v9, v3

    .line 422
    move-object v5, v8

    .line 423
    move-object v7, v13

    .line 424
    move v8, v0

    .line 425
    invoke-static/range {v4 .. v12}, Lnet/blip/android/ui/home/PeerTrayKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 426
    .line 427
    .line 428
    const/4 v1, 0x1

    .line 429
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 430
    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 434
    .line 435
    .line 436
    :goto_2
    return-object v2

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
