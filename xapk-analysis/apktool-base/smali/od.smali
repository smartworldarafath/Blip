.class public final synthetic Lod;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lod;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lod;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lod;->k:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Lod;->l:Z

    .line 12
    .line 13
    iput-object p4, p0, Lod;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lod;->o:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Lod;->p:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p7, p0, Lod;->q:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lod;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod;->m:Ljava/lang/Object;

    iput-object p2, p0, Lod;->n:Ljava/lang/Object;

    iput-boolean p3, p0, Lod;->k:Z

    iput-boolean p4, p0, Lod;->l:Z

    iput-object p5, p0, Lod;->o:Ljava/lang/Object;

    iput-object p6, p0, Lod;->p:Ljava/lang/Object;

    iput-object p7, p0, Lod;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lod;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lod;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lod;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lod;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lod;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lod;->m:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v7, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 22
    .line 23
    move-object v15, v6

    .line 24
    check-cast v15, Landroidx/compose/ui/text/input/VisualTransformation;

    .line 25
    .line 26
    move-object/from16 v16, v5

    .line 27
    .line 28
    check-cast v16, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 29
    .line 30
    move-object/from16 v20, v4

    .line 31
    .line 32
    check-cast v20, Landroidx/compose/ui/graphics/Shape;

    .line 33
    .line 34
    move-object/from16 v21, v3

    .line 35
    .line 36
    check-cast v21, Landroidx/compose/material/TextFieldColors;

    .line 37
    .line 38
    move-object/from16 v12, p1

    .line 39
    .line 40
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 45
    .line 46
    move-object/from16 v3, p3

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    and-int/lit8 v4, v3, 0x6

    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    move-object v4, v1

    .line 59
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v4, 0x2

    .line 70
    :goto_0
    or-int/2addr v3, v4

    .line 71
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 72
    .line 73
    const/16 v5, 0x12

    .line 74
    .line 75
    if-eq v4, v5, :cond_2

    .line 76
    .line 77
    move v8, v9

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v8, 0x0

    .line 80
    :goto_1
    and-int/lit8 v4, v3, 0x1

    .line 81
    .line 82
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    invoke-virtual {v1, v4, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    iget-object v4, v7, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 91
    .line 92
    iget-object v11, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 93
    .line 94
    shl-int/lit8 v3, v3, 0x3

    .line 95
    .line 96
    and-int/lit8 v24, v3, 0x70

    .line 97
    .line 98
    sget-object v10, Landroidx/compose/material/TextFieldDefaults;->a:Landroidx/compose/material/TextFieldDefaults;

    .line 99
    .line 100
    iget-boolean v13, v0, Lod;->k:Z

    .line 101
    .line 102
    iget-boolean v14, v0, Lod;->l:Z

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    const/16 v22, 0x0

    .line 111
    .line 112
    move-object/from16 v23, v1

    .line 113
    .line 114
    invoke-virtual/range {v10 .. v24}, Landroidx/compose/material/TextFieldDefaults;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move-object/from16 v23, v1

    .line 119
    .line 120
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-object v2

    .line 124
    :pswitch_0
    check-cast v7, Lnet/blip/libblip/Peer;

    .line 125
    .line 126
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 127
    .line 128
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 131
    .line 132
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 133
    .line 134
    move-object/from16 v1, p1

    .line 135
    .line 136
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 137
    .line 138
    move-object/from16 v10, p2

    .line 139
    .line 140
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 141
    .line 142
    move-object/from16 v11, p3

    .line 143
    .line 144
    check-cast v11, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    and-int/lit8 v1, v11, 0x11

    .line 154
    .line 155
    const/16 v12, 0x10

    .line 156
    .line 157
    if-eq v1, v12, :cond_4

    .line 158
    .line 159
    move v1, v9

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const/4 v1, 0x0

    .line 162
    :goto_3
    and-int/2addr v11, v9

    .line 163
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 164
    .line 165
    invoke-virtual {v10, v11, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_16

    .line 170
    .line 171
    const/high16 v1, 0x41000000    # 8.0f

    .line 172
    .line 173
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 174
    .line 175
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    sget-object v1, Landroidx/compose/material/MenuDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 187
    .line 188
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/PaddingKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 193
    .line 194
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 199
    .line 200
    iget-object v14, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 201
    .line 202
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 209
    .line 210
    iget-wide v8, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 211
    .line 212
    const/16 v1, 0xc

    .line 213
    .line 214
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 215
    .line 216
    .line 217
    move-result-wide v17

    .line 218
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 219
    .line 220
    .line 221
    move-result-wide v22

    .line 222
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 223
    .line 224
    const/16 v25, 0x0

    .line 225
    .line 226
    const v26, 0xfdfff8

    .line 227
    .line 228
    .line 229
    const-wide/16 v20, 0x0

    .line 230
    .line 231
    const/16 v24, 0x0

    .line 232
    .line 233
    move-wide v15, v8

    .line 234
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    const/16 v22, 0x1f8

    .line 241
    .line 242
    const/4 v15, 0x0

    .line 243
    const/16 v16, 0x0

    .line 244
    .line 245
    const/16 v17, 0x0

    .line 246
    .line 247
    const/16 v18, 0x0

    .line 248
    .line 249
    const/16 v19, 0x0

    .line 250
    .line 251
    move-object/from16 v20, v10

    .line 252
    .line 253
    invoke-static/range {v12 .. v22}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 254
    .line 255
    .line 256
    const/high16 v8, 0x41800000    # 16.0f

    .line 257
    .line 258
    invoke-static {v11, v8}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-static {v10, v8}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 263
    .line 264
    .line 265
    const/4 v8, 0x0

    .line 266
    const/4 v9, 0x0

    .line 267
    const/4 v12, 0x1

    .line 268
    invoke-static {v8, v10, v9, v12}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 269
    .line 270
    .line 271
    const/high16 v9, 0x40800000    # 4.0f

    .line 272
    .line 273
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 289
    .line 290
    if-nez v9, :cond_5

    .line 291
    .line 292
    if-ne v12, v13, :cond_6

    .line 293
    .line 294
    :cond_5
    new-instance v12, Lk9;

    .line 295
    .line 296
    const/4 v9, 0x7

    .line 297
    invoke-direct {v12, v9, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_6
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 304
    .line 305
    const/high16 v18, 0x30000

    .line 306
    .line 307
    const/16 v19, 0x1a

    .line 308
    .line 309
    move-object v9, v13

    .line 310
    const/4 v13, 0x0

    .line 311
    iget-boolean v14, v0, Lod;->k:Z

    .line 312
    .line 313
    const/4 v15, 0x0

    .line 314
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 315
    .line 316
    move-object/from16 v17, v10

    .line 317
    .line 318
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v13

    .line 329
    if-nez v12, :cond_7

    .line 330
    .line 331
    if-ne v13, v9, :cond_8

    .line 332
    .line 333
    :cond_7
    new-instance v13, Lk9;

    .line 334
    .line 335
    const/16 v12, 0x8

    .line 336
    .line 337
    invoke-direct {v13, v12, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_8
    move-object v12, v13

    .line 344
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 345
    .line 346
    const/high16 v18, 0x30000

    .line 347
    .line 348
    const/16 v19, 0x1e

    .line 349
    .line 350
    const/4 v13, 0x0

    .line 351
    const/4 v14, 0x0

    .line 352
    const/4 v15, 0x0

    .line 353
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 354
    .line 355
    move-object/from16 v17, v10

    .line 356
    .line 357
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v13

    .line 368
    if-nez v12, :cond_9

    .line 369
    .line 370
    if-ne v13, v9, :cond_a

    .line 371
    .line 372
    :cond_9
    new-instance v13, Lk9;

    .line 373
    .line 374
    const/16 v12, 0x9

    .line 375
    .line 376
    invoke-direct {v13, v12, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_a
    move-object v12, v13

    .line 383
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 384
    .line 385
    const/high16 v18, 0x30000

    .line 386
    .line 387
    const/16 v19, 0x1e

    .line 388
    .line 389
    const/4 v13, 0x0

    .line 390
    const/4 v14, 0x0

    .line 391
    const/4 v15, 0x0

    .line 392
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    move-object/from16 v17, v10

    .line 395
    .line 396
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v13

    .line 407
    if-nez v12, :cond_b

    .line 408
    .line 409
    if-ne v13, v9, :cond_c

    .line 410
    .line 411
    :cond_b
    new-instance v13, Lk9;

    .line 412
    .line 413
    const/16 v12, 0xa

    .line 414
    .line 415
    invoke-direct {v13, v12, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_c
    move-object v12, v13

    .line 422
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 423
    .line 424
    const/high16 v18, 0x30000

    .line 425
    .line 426
    const/16 v19, 0x1e

    .line 427
    .line 428
    const/4 v13, 0x0

    .line 429
    const/4 v14, 0x0

    .line 430
    const/4 v15, 0x0

    .line 431
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 432
    .line 433
    move-object/from16 v17, v10

    .line 434
    .line 435
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 436
    .line 437
    .line 438
    iget-boolean v0, v0, Lod;->l:Z

    .line 439
    .line 440
    if-eqz v0, :cond_f

    .line 441
    .line 442
    const v0, -0x5e249a90

    .line 443
    .line 444
    .line 445
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    if-nez v0, :cond_d

    .line 457
    .line 458
    if-ne v12, v9, :cond_e

    .line 459
    .line 460
    :cond_d
    new-instance v12, Lk9;

    .line 461
    .line 462
    const/16 v0, 0xb

    .line 463
    .line 464
    invoke-direct {v12, v0, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    :cond_e
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 471
    .line 472
    const/high16 v18, 0x30000

    .line 473
    .line 474
    const/16 v19, 0x1e

    .line 475
    .line 476
    const/4 v13, 0x0

    .line 477
    const/4 v14, 0x0

    .line 478
    const/4 v15, 0x0

    .line 479
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 480
    .line 481
    move-object/from16 v17, v10

    .line 482
    .line 483
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 484
    .line 485
    .line 486
    const/4 v0, 0x0

    .line 487
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 488
    .line 489
    .line 490
    goto :goto_4

    .line 491
    :cond_f
    const/4 v0, 0x0

    .line 492
    const v12, -0x5e20f3d7

    .line 493
    .line 494
    .line 495
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 499
    .line 500
    .line 501
    :goto_4
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    if-nez v0, :cond_10

    .line 510
    .line 511
    if-ne v12, v9, :cond_11

    .line 512
    .line 513
    :cond_10
    new-instance v12, Lk9;

    .line 514
    .line 515
    invoke-direct {v12, v1, v5, v6}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 522
    .line 523
    const/high16 v18, 0x30000

    .line 524
    .line 525
    const/16 v19, 0x1e

    .line 526
    .line 527
    const/4 v13, 0x0

    .line 528
    const/4 v14, 0x0

    .line 529
    const/4 v15, 0x0

    .line 530
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 531
    .line 532
    move-object/from16 v17, v10

    .line 533
    .line 534
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 535
    .line 536
    .line 537
    const/high16 v0, 0x40c00000    # 6.0f

    .line 538
    .line 539
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 544
    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    const/4 v12, 0x1

    .line 548
    invoke-static {v8, v10, v1, v12}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 549
    .line 550
    .line 551
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-ne v0, v9, :cond_12

    .line 563
    .line 564
    new-instance v0, Lcd;

    .line 565
    .line 566
    const/4 v1, 0x5

    .line 567
    invoke-direct {v0, v5, v1}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_12
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 574
    .line 575
    const/16 v1, 0x30

    .line 576
    .line 577
    invoke-static {v7, v0, v10, v1}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    if-ne v0, v9, :cond_13

    .line 585
    .line 586
    new-instance v0, Lld;

    .line 587
    .line 588
    const/4 v1, 0x0

    .line 589
    invoke-direct {v0, v5, v4, v1}, Lld;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :cond_13
    move-object v12, v0

    .line 596
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 597
    .line 598
    const v18, 0x30006

    .line 599
    .line 600
    .line 601
    const/16 v19, 0x1e

    .line 602
    .line 603
    const/4 v13, 0x0

    .line 604
    const/4 v14, 0x0

    .line 605
    const/4 v15, 0x0

    .line 606
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 607
    .line 608
    move-object/from16 v17, v10

    .line 609
    .line 610
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 611
    .line 612
    .line 613
    instance-of v0, v7, Lnet/blip/libblip/Peer$User;

    .line 614
    .line 615
    if-eqz v0, :cond_15

    .line 616
    .line 617
    const v0, -0x5e16d776

    .line 618
    .line 619
    .line 620
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    if-ne v0, v9, :cond_14

    .line 628
    .line 629
    new-instance v0, Lld;

    .line 630
    .line 631
    const/4 v12, 0x1

    .line 632
    invoke-direct {v0, v5, v3, v12}, Lld;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    :cond_14
    move-object v12, v0

    .line 639
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 640
    .line 641
    const v18, 0x30006

    .line 642
    .line 643
    .line 644
    const/16 v19, 0x1e

    .line 645
    .line 646
    const/4 v13, 0x0

    .line 647
    const/4 v14, 0x0

    .line 648
    const/4 v15, 0x0

    .line 649
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 650
    .line 651
    move-object/from16 v17, v10

    .line 652
    .line 653
    invoke-static/range {v12 .. v19}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 654
    .line 655
    .line 656
    const/4 v1, 0x0

    .line 657
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 658
    .line 659
    .line 660
    goto :goto_5

    .line 661
    :cond_15
    const/4 v1, 0x0

    .line 662
    const v0, -0x5e139257

    .line 663
    .line 664
    .line 665
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 669
    .line 670
    .line 671
    goto :goto_5

    .line 672
    :cond_16
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 673
    .line 674
    .line 675
    :goto_5
    return-object v2

    .line 676
    nop

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
