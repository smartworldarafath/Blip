.class public final synthetic Lv8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv8;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv8;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lv8;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lv8;->o:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lv8;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lv8;->k:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lv8;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8;->m:Ljava/lang/Object;

    iput-object p2, p0, Lv8;->n:Ljava/lang/Object;

    iput-object p3, p0, Lv8;->o:Ljava/lang/Object;

    iput-object p4, p0, Lv8;->p:Ljava/lang/Object;

    iput-object p5, p0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lv8;->k:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/navigation/NavHostController;Landroid/content/Context;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/UriHandler;)V
    .locals 1

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lv8;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8;->n:Ljava/lang/Object;

    iput-object p2, p0, Lv8;->m:Ljava/lang/Object;

    iput-object p3, p0, Lv8;->k:Ljava/lang/Object;

    iput-object p4, p0, Lv8;->o:Ljava/lang/Object;

    iput-object p5, p0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lv8;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Device;Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lv8;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8;->m:Ljava/lang/Object;

    iput-object p2, p0, Lv8;->k:Ljava/lang/Object;

    iput-object p3, p0, Lv8;->n:Ljava/lang/Object;

    iput-object p4, p0, Lv8;->o:Ljava/lang/Object;

    iput-object p5, p0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lv8;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv8;->j:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 14
    .line 15
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 16
    .line 17
    sget-object v8, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 18
    .line 19
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 20
    .line 21
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 22
    .line 23
    iget-object v11, v0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    iget-object v13, v0, Lv8;->k:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v14, v0, Lv8;->p:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v15, v0, Lv8;->o:Ljava/lang/Object;

    .line 32
    .line 33
    move/from16 v16, v1

    .line 34
    .line 35
    iget-object v1, v0, Lv8;->n:Ljava/lang/Object;

    .line 36
    .line 37
    move-object/from16 v17, v1

    .line 38
    .line 39
    iget-object v1, v0, Lv8;->m:Ljava/lang/Object;

    .line 40
    .line 41
    move-object/from16 v18, v1

    .line 42
    .line 43
    packed-switch v16, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    move-object/from16 v19, v18

    .line 47
    .line 48
    check-cast v19, Ljava/lang/String;

    .line 49
    .line 50
    move-object/from16 v0, v17

    .line 51
    .line 52
    check-cast v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 53
    .line 54
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    move-object/from16 v16, p1

    .line 61
    .line 62
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 63
    .line 64
    move-object/from16 v17, p2

    .line 65
    .line 66
    check-cast v17, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v17

    .line 72
    const/16 v35, 0x1

    .line 73
    .line 74
    and-int/lit8 v1, v17, 0x3

    .line 75
    .line 76
    move-object/from16 p0, v0

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    if-eq v1, v0, :cond_0

    .line 80
    .line 81
    move/from16 v0, v35

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    and-int/lit8 v1, v17, 0x1

    .line 86
    .line 87
    move-object/from16 v17, v13

    .line 88
    .line 89
    move-object/from16 v13, v16

    .line 90
    .line 91
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 92
    .line 93
    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    const/high16 v0, 0x41400000    # 12.0f

    .line 100
    .line 101
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v10, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 106
    .line 107
    .line 108
    move-result-object v20

    .line 109
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 110
    .line 111
    .line 112
    move-result-object v22

    .line 113
    const-wide/16 v23, 0x0

    .line 114
    .line 115
    const/16 v25, 0x1c

    .line 116
    .line 117
    const/high16 v21, 0x41800000    # 16.0f

    .line 118
    .line 119
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v16

    .line 129
    move-object/from16 v53, v11

    .line 130
    .line 131
    move-object/from16 v11, v16

    .line 132
    .line 133
    check-cast v11, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 134
    .line 135
    move-object/from16 v18, v14

    .line 136
    .line 137
    move-object/from16 v16, v15

    .line 138
    .line 139
    iget-wide v14, v11, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 140
    .line 141
    invoke-static {v1, v14, v15, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/high16 v8, 0x41c00000    # 24.0f

    .line 146
    .line 147
    const/high16 v11, 0x41400000    # 12.0f

    .line 148
    .line 149
    invoke-static {v1, v8, v8, v8, v11}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/4 v8, 0x0

    .line 154
    invoke-static {v7, v6, v13, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 159
    .line 160
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 178
    .line 179
    .line 180
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 181
    .line 182
    if-eqz v11, :cond_1

    .line 183
    .line 184
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-static {v13, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v13, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v13, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 205
    .line 206
    .line 207
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 208
    .line 209
    invoke-static {v13, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 213
    .line 214
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 219
    .line 220
    iget-object v7, v7, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 221
    .line 222
    const/16 v8, 0x12

    .line 223
    .line 224
    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 225
    .line 226
    .line 227
    move-result-wide v23

    .line 228
    const/16 v31, 0x0

    .line 229
    .line 230
    const v32, 0xfffffd

    .line 231
    .line 232
    .line 233
    const-wide/16 v21, 0x0

    .line 234
    .line 235
    const/16 v25, 0x0

    .line 236
    .line 237
    const-wide/16 v26, 0x0

    .line 238
    .line 239
    const-wide/16 v28, 0x0

    .line 240
    .line 241
    const/16 v30, 0x0

    .line 242
    .line 243
    move-object/from16 v20, v7

    .line 244
    .line 245
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 246
    .line 247
    .line 248
    move-result-object v21

    .line 249
    const/16 v28, 0x0

    .line 250
    .line 251
    const/16 v29, 0x1fa

    .line 252
    .line 253
    const/16 v20, 0x0

    .line 254
    .line 255
    const/16 v22, 0x0

    .line 256
    .line 257
    const/16 v23, 0x0

    .line 258
    .line 259
    const/16 v24, 0x0

    .line 260
    .line 261
    const/16 v25, 0x0

    .line 262
    .line 263
    const/16 v26, 0x0

    .line 264
    .line 265
    move-object/from16 v27, v13

    .line 266
    .line 267
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v7, v27

    .line 271
    .line 272
    const v8, -0x6dde8000

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 276
    .line 277
    .line 278
    const/4 v8, 0x0

    .line 279
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 280
    .line 281
    .line 282
    const/high16 v8, 0x41800000    # 16.0f

    .line 283
    .line 284
    invoke-static {v10, v8}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    invoke-static {v7, v11}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 289
    .line 290
    .line 291
    const/high16 v11, 0x41000000    # 8.0f

    .line 292
    .line 293
    invoke-static {v11}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    invoke-static {v10, v11}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 298
    .line 299
    .line 300
    move-result-object v11

    .line 301
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    new-instance v13, Lnet/blip/shared/d;

    .line 305
    .line 306
    invoke-direct {v13, v12}, Lnet/blip/shared/d;-><init>(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-static {v11, v13}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v22

    .line 313
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    move-object/from16 v20, v11

    .line 318
    .line 319
    check-cast v20, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 320
    .line 321
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 326
    .line 327
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 328
    .line 329
    const/16 v11, 0x10

    .line 330
    .line 331
    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v39

    .line 335
    const/16 v47, 0x0

    .line 336
    .line 337
    const v48, 0xfffffd

    .line 338
    .line 339
    .line 340
    const-wide/16 v37, 0x0

    .line 341
    .line 342
    const/16 v41, 0x0

    .line 343
    .line 344
    const-wide/16 v42, 0x0

    .line 345
    .line 346
    const-wide/16 v44, 0x0

    .line 347
    .line 348
    const/16 v46, 0x0

    .line 349
    .line 350
    move-object/from16 v36, v1

    .line 351
    .line 352
    invoke-static/range {v36 .. v48}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 353
    .line 354
    .line 355
    move-result-object v24

    .line 356
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 361
    .line 362
    iget-wide v13, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 363
    .line 364
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 369
    .line 370
    move-object/from16 v19, v12

    .line 371
    .line 372
    iget-wide v11, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 373
    .line 374
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 379
    .line 380
    move-object/from16 v52, v9

    .line 381
    .line 382
    iget-wide v8, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 383
    .line 384
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 389
    .line 390
    move-wide/from16 v46, v8

    .line 391
    .line 392
    iget-wide v8, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 393
    .line 394
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 399
    .line 400
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 401
    .line 402
    sget-wide v42, Landroidx/compose/ui/graphics/Color;->g:J

    .line 403
    .line 404
    const v51, 0x17fd92

    .line 405
    .line 406
    .line 407
    move-wide/from16 v44, v42

    .line 408
    .line 409
    move-wide/from16 v48, v0

    .line 410
    .line 411
    move-object/from16 v50, v7

    .line 412
    .line 413
    move-wide/from16 v38, v8

    .line 414
    .line 415
    move-wide/from16 v40, v11

    .line 416
    .line 417
    move-wide/from16 v36, v13

    .line 418
    .line 419
    invoke-static/range {v36 .. v51}, Landroidx/compose/material/TextFieldDefaults;->d(JJJJJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material/TextFieldColors;

    .line 420
    .line 421
    .line 422
    move-result-object v32

    .line 423
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    move-object/from16 v1, v52

    .line 428
    .line 429
    if-ne v0, v1, :cond_2

    .line 430
    .line 431
    new-instance v0, Li2;

    .line 432
    .line 433
    move-object/from16 v8, v16

    .line 434
    .line 435
    const/16 v9, 0x10

    .line 436
    .line 437
    invoke-direct {v0, v8, v9}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    goto :goto_2

    .line 444
    :cond_2
    move-object/from16 v8, v16

    .line 445
    .line 446
    :goto_2
    move-object/from16 v21, v0

    .line 447
    .line 448
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 449
    .line 450
    const/16 v31, 0x0

    .line 451
    .line 452
    const/16 v34, 0x30

    .line 453
    .line 454
    const/16 v23, 0x0

    .line 455
    .line 456
    const/16 v25, 0x0

    .line 457
    .line 458
    const/16 v27, 0x0

    .line 459
    .line 460
    const/16 v28, 0x1

    .line 461
    .line 462
    const/16 v29, 0x0

    .line 463
    .line 464
    const/16 v30, 0x0

    .line 465
    .line 466
    move-object/from16 v26, p0

    .line 467
    .line 468
    move-object/from16 v33, v7

    .line 469
    .line 470
    invoke-static/range {v20 .. v34}, Landroidx/compose/material/TextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;I)V

    .line 471
    .line 472
    .line 473
    const v0, -0x6dc86ceb

    .line 474
    .line 475
    .line 476
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 477
    .line 478
    .line 479
    const/4 v0, 0x0

    .line 480
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 481
    .line 482
    .line 483
    const/high16 v15, 0x41800000    # 16.0f

    .line 484
    .line 485
    invoke-static {v10, v15}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 490
    .line 491
    .line 492
    const/high16 v0, 0x3f800000    # 1.0f

    .line 493
    .line 494
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v9, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 499
    .line 500
    new-instance v10, Lp;

    .line 501
    .line 502
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 503
    .line 504
    move/from16 v12, v35

    .line 505
    .line 506
    invoke-direct {v10, v12, v11}, Lp;-><init>(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    const/high16 v11, 0x41200000    # 10.0f

    .line 510
    .line 511
    invoke-direct {v9, v11, v12, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 512
    .line 513
    .line 514
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 515
    .line 516
    const/4 v11, 0x6

    .line 517
    invoke-static {v9, v10, v7, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    iget-wide v12, v7, Landroidx/compose/runtime/GapComposer;->T:J

    .line 522
    .line 523
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 524
    .line 525
    .line 526
    move-result v10

    .line 527
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 536
    .line 537
    .line 538
    iget-boolean v13, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 539
    .line 540
    if-eqz v13, :cond_3

    .line 541
    .line 542
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 543
    .line 544
    .line 545
    goto :goto_3

    .line 546
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 547
    .line 548
    .line 549
    :goto_3
    invoke-static {v7, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 550
    .line 551
    .line 552
    invoke-static {v7, v12, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v10, v7, v2, v7}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v7, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v14, v18

    .line 562
    .line 563
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    if-nez v0, :cond_4

    .line 572
    .line 573
    if-ne v2, v1, :cond_5

    .line 574
    .line 575
    :cond_4
    new-instance v2, Ls;

    .line 576
    .line 577
    invoke-direct {v2, v11, v14}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    :cond_5
    move-object/from16 v20, v2

    .line 584
    .line 585
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 586
    .line 587
    sget-object v23, Lnet/blip/android/ui/components/ComposableSingletons$TextFieldDialogKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 588
    .line 589
    const/16 v25, 0x1fe

    .line 590
    .line 591
    const/16 v21, 0x0

    .line 592
    .line 593
    const/16 v22, 0x0

    .line 594
    .line 595
    move-object/from16 v24, v7

    .line 596
    .line 597
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 598
    .line 599
    .line 600
    move-object/from16 v0, v53

    .line 601
    .line 602
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    if-nez v2, :cond_6

    .line 611
    .line 612
    if-ne v3, v1, :cond_7

    .line 613
    .line 614
    :cond_6
    new-instance v3, Lk9;

    .line 615
    .line 616
    const/16 v1, 0xe

    .line 617
    .line 618
    invoke-direct {v3, v1, v8, v0}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    :cond_7
    move-object/from16 v20, v3

    .line 625
    .line 626
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 627
    .line 628
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 633
    .line 634
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 635
    .line 636
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 637
    .line 638
    move-object/from16 v13, v17

    .line 639
    .line 640
    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    check-cast v0, Ljava/lang/Boolean;

    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 647
    .line 648
    .line 649
    move-result v21

    .line 650
    sget-object v23, Lnet/blip/android/ui/components/ComposableSingletons$TextFieldDialogKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 651
    .line 652
    const/16 v25, 0x1fa

    .line 653
    .line 654
    const/16 v22, 0x0

    .line 655
    .line 656
    move-object/from16 v24, v7

    .line 657
    .line 658
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 659
    .line 660
    .line 661
    const/4 v12, 0x1

    .line 662
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 666
    .line 667
    .line 668
    goto :goto_4

    .line 669
    :cond_8
    move-object/from16 v19, v12

    .line 670
    .line 671
    move-object v7, v13

    .line 672
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 673
    .line 674
    .line 675
    :goto_4
    return-object v19

    .line 676
    :pswitch_0
    move-object v0, v11

    .line 677
    move-object/from16 v19, v12

    .line 678
    .line 679
    move-object/from16 v1, v17

    .line 680
    .line 681
    check-cast v1, Lnet/blip/android/ui/navigation/AuthScope;

    .line 682
    .line 683
    move-object/from16 v9, v18

    .line 684
    .line 685
    check-cast v9, Landroidx/navigation/NavHostController;

    .line 686
    .line 687
    check-cast v13, Landroid/content/Context;

    .line 688
    .line 689
    check-cast v15, Lnet/blip/libblip/frontend/State;

    .line 690
    .line 691
    check-cast v14, Landroidx/compose/ui/platform/UriHandler;

    .line 692
    .line 693
    move-object/from16 v11, p1

    .line 694
    .line 695
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 696
    .line 697
    move-object/from16 v12, p2

    .line 698
    .line 699
    check-cast v12, Ljava/lang/Integer;

    .line 700
    .line 701
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 702
    .line 703
    .line 704
    move-result v12

    .line 705
    move-object/from16 p0, v11

    .line 706
    .line 707
    and-int/lit8 v11, v12, 0x3

    .line 708
    .line 709
    move/from16 p1, v12

    .line 710
    .line 711
    const/4 v12, 0x2

    .line 712
    if-eq v11, v12, :cond_9

    .line 713
    .line 714
    const/4 v11, 0x1

    .line 715
    :goto_5
    const/16 v35, 0x1

    .line 716
    .line 717
    goto :goto_6

    .line 718
    :cond_9
    const/4 v11, 0x0

    .line 719
    goto :goto_5

    .line 720
    :goto_6
    and-int/lit8 v12, p1, 0x1

    .line 721
    .line 722
    move-object/from16 v16, v14

    .line 723
    .line 724
    move-object/from16 v14, p0

    .line 725
    .line 726
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 727
    .line 728
    invoke-virtual {v14, v12, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 729
    .line 730
    .line 731
    move-result v11

    .line 732
    if-eqz v11, :cond_b

    .line 733
    .line 734
    const/high16 v11, 0x3f800000    # 1.0f

    .line 735
    .line 736
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 737
    .line 738
    .line 739
    move-result-object v10

    .line 740
    sget-object v11, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 741
    .line 742
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v11

    .line 746
    check-cast v11, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 747
    .line 748
    iget-wide v11, v11, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 749
    .line 750
    invoke-static {v10, v11, v12, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 751
    .line 752
    .line 753
    move-result-object v20

    .line 754
    const/16 v24, 0x0

    .line 755
    .line 756
    const/16 v25, 0xd

    .line 757
    .line 758
    const/16 v21, 0x0

    .line 759
    .line 760
    const/high16 v22, 0x42700000    # 60.0f

    .line 761
    .line 762
    const/16 v23, 0x0

    .line 763
    .line 764
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 765
    .line 766
    .line 767
    move-result-object v8

    .line 768
    invoke-static {v14}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 769
    .line 770
    .line 771
    move-result-object v10

    .line 772
    invoke-static {v8, v10}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 773
    .line 774
    .line 775
    move-result-object v8

    .line 776
    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    const/high16 v10, 0x41000000    # 8.0f

    .line 781
    .line 782
    const/4 v11, 0x0

    .line 783
    const/4 v12, 0x2

    .line 784
    invoke-static {v8, v10, v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 785
    .line 786
    .line 787
    move-result-object v20

    .line 788
    const/16 v25, 0x7

    .line 789
    .line 790
    const/16 v22, 0x0

    .line 791
    .line 792
    move/from16 v24, v10

    .line 793
    .line 794
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    const/4 v10, 0x0

    .line 799
    invoke-static {v7, v6, v14, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 804
    .line 805
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 810
    .line 811
    .line 812
    move-result-object v10

    .line 813
    invoke-static {v14, v8}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 814
    .line 815
    .line 816
    move-result-object v8

    .line 817
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 818
    .line 819
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 823
    .line 824
    .line 825
    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 826
    .line 827
    if-eqz v11, :cond_a

    .line 828
    .line 829
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 830
    .line 831
    .line 832
    goto :goto_7

    .line 833
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 834
    .line 835
    .line 836
    :goto_7
    invoke-static {v14, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v14, v10, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 840
    .line 841
    .line 842
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-static {v14, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 847
    .line 848
    .line 849
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 850
    .line 851
    .line 852
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 853
    .line 854
    invoke-static {v14, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 855
    .line 856
    .line 857
    new-instance v2, Lkf;

    .line 858
    .line 859
    const/4 v8, 0x0

    .line 860
    invoke-direct {v2, v1, v9, v8}, Lkf;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/navigation/NavHostController;I)V

    .line 861
    .line 862
    .line 863
    const v3, 0x313d1a5c

    .line 864
    .line 865
    .line 866
    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 867
    .line 868
    .line 869
    move-result-object v22

    .line 870
    const/16 v24, 0x180

    .line 871
    .line 872
    const/16 v25, 0x3

    .line 873
    .line 874
    const/16 v20, 0x0

    .line 875
    .line 876
    const/16 v21, 0x0

    .line 877
    .line 878
    move-object/from16 v23, v14

    .line 879
    .line 880
    invoke-static/range {v20 .. v25}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 881
    .line 882
    .line 883
    move-object/from16 v11, v23

    .line 884
    .line 885
    invoke-static {v8, v11}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 886
    .line 887
    .line 888
    new-instance v2, Lkf;

    .line 889
    .line 890
    const/4 v12, 0x1

    .line 891
    invoke-direct {v2, v1, v9, v12}, Lkf;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/navigation/NavHostController;I)V

    .line 892
    .line 893
    .line 894
    const v1, -0x5fc5f87b

    .line 895
    .line 896
    .line 897
    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 898
    .line 899
    .line 900
    move-result-object v22

    .line 901
    const/16 v24, 0x1b0

    .line 902
    .line 903
    const/16 v25, 0x1

    .line 904
    .line 905
    const-string v21, "Your devices"

    .line 906
    .line 907
    invoke-static/range {v20 .. v25}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 908
    .line 909
    .line 910
    invoke-static {v8, v11}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 911
    .line 912
    .line 913
    new-instance v1, Lu;

    .line 914
    .line 915
    const/16 v2, 0xe

    .line 916
    .line 917
    invoke-direct {v1, v13, v15, v0, v2}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 918
    .line 919
    .line 920
    const v2, -0x6de078dc

    .line 921
    .line 922
    .line 923
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 924
    .line 925
    .line 926
    move-result-object v22

    .line 927
    const/16 v24, 0x180

    .line 928
    .line 929
    const/16 v25, 0x3

    .line 930
    .line 931
    const/16 v21, 0x0

    .line 932
    .line 933
    invoke-static/range {v20 .. v25}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 934
    .line 935
    .line 936
    invoke-static {v8, v11}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 937
    .line 938
    .line 939
    new-instance v1, Ld;

    .line 940
    .line 941
    const/16 v2, 0x15

    .line 942
    .line 943
    move-object/from16 v14, v16

    .line 944
    .line 945
    invoke-direct {v1, v2, v14}, Ld;-><init>(ILjava/lang/Object;)V

    .line 946
    .line 947
    .line 948
    const v2, -0x7bfaf93d

    .line 949
    .line 950
    .line 951
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 952
    .line 953
    .line 954
    move-result-object v22

    .line 955
    const/16 v24, 0x1b0

    .line 956
    .line 957
    const/16 v25, 0x1

    .line 958
    .line 959
    const-string v21, "Support"

    .line 960
    .line 961
    invoke-static/range {v20 .. v25}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 962
    .line 963
    .line 964
    invoke-static {v8, v11}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 965
    .line 966
    .line 967
    new-instance v1, Lea;

    .line 968
    .line 969
    const/4 v12, 0x2

    .line 970
    invoke-direct {v1, v0, v12}, Lea;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 971
    .line 972
    .line 973
    const v0, 0x75ea8662

    .line 974
    .line 975
    .line 976
    invoke-static {v0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 977
    .line 978
    .line 979
    move-result-object v22

    .line 980
    const/16 v24, 0x180

    .line 981
    .line 982
    const/16 v25, 0x3

    .line 983
    .line 984
    const/16 v21, 0x0

    .line 985
    .line 986
    invoke-static/range {v20 .. v25}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 987
    .line 988
    .line 989
    const/4 v12, 0x1

    .line 990
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 991
    .line 992
    .line 993
    goto :goto_8

    .line 994
    :cond_b
    move-object v11, v14

    .line 995
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 996
    .line 997
    .line 998
    :goto_8
    return-object v19

    .line 999
    :pswitch_1
    move-object v1, v9

    .line 1000
    move-object v0, v11

    .line 1001
    move-object/from16 v19, v12

    .line 1002
    .line 1003
    move-object/from16 v2, v18

    .line 1004
    .line 1005
    check-cast v2, Lnet/blip/libblip/Device;

    .line 1006
    .line 1007
    check-cast v13, Landroid/content/Context;

    .line 1008
    .line 1009
    move-object/from16 v3, v17

    .line 1010
    .line 1011
    check-cast v3, Lnet/blip/android/ui/navigation/AuthScope;

    .line 1012
    .line 1013
    check-cast v15, Ljava/lang/String;

    .line 1014
    .line 1015
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 1016
    .line 1017
    move-object/from16 v4, p1

    .line 1018
    .line 1019
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 1020
    .line 1021
    move-object/from16 v5, p2

    .line 1022
    .line 1023
    check-cast v5, Ljava/lang/Integer;

    .line 1024
    .line 1025
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1026
    .line 1027
    .line 1028
    move-result v5

    .line 1029
    and-int/lit8 v6, v5, 0x3

    .line 1030
    .line 1031
    const/4 v12, 0x2

    .line 1032
    if-eq v6, v12, :cond_c

    .line 1033
    .line 1034
    const/4 v6, 0x1

    .line 1035
    :goto_9
    const/16 v35, 0x1

    .line 1036
    .line 1037
    goto :goto_a

    .line 1038
    :cond_c
    const/4 v6, 0x0

    .line 1039
    goto :goto_9

    .line 1040
    :goto_a
    and-int/lit8 v5, v5, 0x1

    .line 1041
    .line 1042
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1043
    .line 1044
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1045
    .line 1046
    .line 1047
    move-result v5

    .line 1048
    if-eqz v5, :cond_11

    .line 1049
    .line 1050
    sget-object v5, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1051
    .line 1052
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v5

    .line 1056
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1057
    .line 1058
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 1059
    .line 1060
    const/16 v26, 0x30

    .line 1061
    .line 1062
    const/16 v27, 0x5

    .line 1063
    .line 1064
    const/16 v20, 0x0

    .line 1065
    .line 1066
    const-string v21, "Remove device"

    .line 1067
    .line 1068
    const/16 v22, 0x0

    .line 1069
    .line 1070
    move-object/from16 v25, v4

    .line 1071
    .line 1072
    move-wide/from16 v23, v5

    .line 1073
    .line 1074
    invoke-static/range {v20 .. v27}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 1075
    .line 1076
    .line 1077
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v5

    .line 1081
    check-cast v5, Ljava/lang/Boolean;

    .line 1082
    .line 1083
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    if-eqz v5, :cond_10

    .line 1088
    .line 1089
    const v5, 0x23ca411

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v2}, Lnet/blip/libblip/Device_DerivedKt;->a(Lnet/blip/libblip/Device;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1100
    .line 1101
    .line 1102
    const-string v5, "Remove "

    .line 1103
    .line 1104
    const-string v6, "?"

    .line 1105
    .line 1106
    invoke-static {v5, v2, v6}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v20

    .line 1110
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    if-ne v2, v1, :cond_d

    .line 1115
    .line 1116
    new-instance v2, Lcd;

    .line 1117
    .line 1118
    const/16 v5, 0xd

    .line 1119
    .line 1120
    invoke-direct {v2, v14, v5}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1124
    .line 1125
    .line 1126
    :cond_d
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 1127
    .line 1128
    new-instance v5, Lkotlin/Pair;

    .line 1129
    .line 1130
    const-string v6, "Cancel"

    .line 1131
    .line 1132
    invoke-direct {v5, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v2

    .line 1139
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v6

    .line 1143
    or-int/2addr v2, v6

    .line 1144
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v6

    .line 1148
    or-int/2addr v2, v6

    .line 1149
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v6

    .line 1153
    or-int/2addr v2, v6

    .line 1154
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v6

    .line 1158
    if-nez v2, :cond_e

    .line 1159
    .line 1160
    if-ne v6, v1, :cond_f

    .line 1161
    .line 1162
    :cond_e
    new-instance v6, Lp1;

    .line 1163
    .line 1164
    invoke-direct {v6, v13, v3, v15, v0}, Lp1;-><init>(Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1168
    .line 1169
    .line 1170
    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1171
    .line 1172
    new-instance v0, Lkotlin/Pair;

    .line 1173
    .line 1174
    const-string v1, "Remove"

    .line 1175
    .line 1176
    invoke-direct {v0, v1, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    const/16 v27, 0x6000

    .line 1180
    .line 1181
    const/16 v28, 0x24

    .line 1182
    .line 1183
    const-string v21, "The device will get signed out of Blip and removed from your account."

    .line 1184
    .line 1185
    const/16 v22, 0x0

    .line 1186
    .line 1187
    const/16 v25, 0x0

    .line 1188
    .line 1189
    move-object/from16 v23, v0

    .line 1190
    .line 1191
    move-object/from16 v26, v4

    .line 1192
    .line 1193
    move-object/from16 v24, v5

    .line 1194
    .line 1195
    invoke-static/range {v20 .. v28}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1196
    .line 1197
    .line 1198
    const/4 v8, 0x0

    .line 1199
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1200
    .line 1201
    .line 1202
    goto :goto_b

    .line 1203
    :cond_10
    const/4 v8, 0x0

    .line 1204
    const v0, 0x248c3f1

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1211
    .line 1212
    .line 1213
    goto :goto_b

    .line 1214
    :cond_11
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1215
    .line 1216
    .line 1217
    :goto_b
    return-object v19

    .line 1218
    :pswitch_2
    move-object v1, v9

    .line 1219
    move-object/from16 v19, v12

    .line 1220
    .line 1221
    const/4 v8, 0x0

    .line 1222
    move-object/from16 v2, v18

    .line 1223
    .line 1224
    check-cast v2, Landroidx/navigation/NavHostController;

    .line 1225
    .line 1226
    move-object/from16 v3, v17

    .line 1227
    .line 1228
    check-cast v3, Landroidx/compose/runtime/State;

    .line 1229
    .line 1230
    check-cast v15, Ljava/util/List;

    .line 1231
    .line 1232
    check-cast v14, Landroidx/compose/foundation/pager/PagerState;

    .line 1233
    .line 1234
    move-object/from16 v21, v13

    .line 1235
    .line 1236
    check-cast v21, Landroid/content/Context;

    .line 1237
    .line 1238
    move-object/from16 v4, p1

    .line 1239
    .line 1240
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 1241
    .line 1242
    move-object/from16 v5, p2

    .line 1243
    .line 1244
    check-cast v5, Ljava/lang/Integer;

    .line 1245
    .line 1246
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    and-int/lit8 v6, v5, 0x3

    .line 1251
    .line 1252
    const/4 v12, 0x2

    .line 1253
    if-eq v6, v12, :cond_12

    .line 1254
    .line 1255
    const/4 v8, 0x1

    .line 1256
    :cond_12
    const/16 v35, 0x1

    .line 1257
    .line 1258
    and-int/lit8 v5, v5, 0x1

    .line 1259
    .line 1260
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1261
    .line 1262
    invoke-virtual {v4, v5, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v5

    .line 1266
    if-eqz v5, :cond_15

    .line 1267
    .line 1268
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v3

    .line 1272
    check-cast v3, Ljava/lang/Number;

    .line 1273
    .line 1274
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    invoke-static {v10, v3}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v3

    .line 1282
    new-instance v5, La0;

    .line 1283
    .line 1284
    const/16 v6, 0xb

    .line 1285
    .line 1286
    invoke-direct {v5, v6, v15, v14}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    const v6, 0x351c059d

    .line 1290
    .line 1291
    .line 1292
    invoke-static {v6, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    new-instance v20, Ld4;

    .line 1297
    .line 1298
    const/16 v25, 0x1

    .line 1299
    .line 1300
    iget-object v0, v0, Lv8;->l:Lkotlin/jvm/functions/Function1;

    .line 1301
    .line 1302
    move-object/from16 v24, v0

    .line 1303
    .line 1304
    move-object/from16 v23, v14

    .line 1305
    .line 1306
    move-object/from16 v22, v15

    .line 1307
    .line 1308
    invoke-direct/range {v20 .. v25}, Ld4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1309
    .line 1310
    .line 1311
    move-object/from16 v0, v20

    .line 1312
    .line 1313
    const v6, 0x7120715e

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v6, v0, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v26

    .line 1320
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1321
    .line 1322
    .line 1323
    move-result v0

    .line 1324
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v6

    .line 1328
    if-nez v0, :cond_13

    .line 1329
    .line 1330
    if-ne v6, v1, :cond_14

    .line 1331
    .line 1332
    :cond_13
    new-instance v6, Li3;

    .line 1333
    .line 1334
    const/4 v12, 0x2

    .line 1335
    invoke-direct {v6, v2, v12}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    :cond_14
    move-object/from16 v27, v6

    .line 1342
    .line 1343
    check-cast v27, Lkotlin/jvm/functions/Function0;

    .line 1344
    .line 1345
    const/16 v29, 0xd80

    .line 1346
    .line 1347
    const/16 v30, 0x2

    .line 1348
    .line 1349
    const-wide/16 v23, 0x0

    .line 1350
    .line 1351
    move-object/from16 v22, v3

    .line 1352
    .line 1353
    move-object/from16 v28, v4

    .line 1354
    .line 1355
    move-object/from16 v25, v5

    .line 1356
    .line 1357
    invoke-static/range {v22 .. v30}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1358
    .line 1359
    .line 1360
    goto :goto_c

    .line 1361
    :cond_15
    move-object/from16 v28, v4

    .line 1362
    .line 1363
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1364
    .line 1365
    .line 1366
    :goto_c
    return-object v19

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
