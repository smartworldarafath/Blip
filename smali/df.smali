.class public final synthetic Ldf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/Device;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lnet/blip/android/ui/navigation/AuthScope;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Device;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ldf;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ldf;->k:Lnet/blip/libblip/Device;

    .line 8
    .line 9
    iput-object p2, p0, Ldf;->l:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p3, p0, Ldf;->m:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Ldf;->n:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p5, p0, Ldf;->o:Lnet/blip/android/ui/navigation/AuthScope;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Device;Lnet/blip/android/ui/navigation/AuthScope;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Ldf;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf;->k:Lnet/blip/libblip/Device;

    iput-object p2, p0, Ldf;->o:Lnet/blip/android/ui/navigation/AuthScope;

    iput-object p3, p0, Ldf;->l:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Ldf;->m:Ljava/lang/String;

    iput-object p5, p0, Ldf;->n:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ldf;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/lit8 v7, v6, 0x3

    .line 26
    .line 27
    if-eq v7, v3, :cond_0

    .line 28
    .line 29
    move v3, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v5

    .line 32
    :goto_0
    and-int/2addr v4, v6

    .line 33
    move-object v13, v1

    .line 34
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v13, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_6

    .line 41
    .line 42
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 47
    .line 48
    if-ne v1, v3, :cond_1

    .line 49
    .line 50
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-ne v4, v3, :cond_2

    .line 66
    .line 67
    new-instance v4, Lcd;

    .line 68
    .line 69
    const/16 v6, 0xe

    .line 70
    .line 71
    invoke-direct {v4, v1, v6}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object v10, v4

    .line 78
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 79
    .line 80
    new-instance v4, Ld4;

    .line 81
    .line 82
    iget-object v6, v0, Ldf;->k:Lnet/blip/libblip/Device;

    .line 83
    .line 84
    iget-object v7, v0, Ldf;->l:Lkotlin/jvm/functions/Function1;

    .line 85
    .line 86
    iget-object v8, v0, Ldf;->m:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v4, v6, v7, v8, v1}, Ld4;-><init>(Lnet/blip/libblip/Device;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    .line 89
    .line 90
    .line 91
    const v1, 0x152561f6

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    const v14, 0x186030

    .line 99
    .line 100
    .line 101
    const/16 v15, 0x2d

    .line 102
    .line 103
    move-object v1, v6

    .line 104
    const/4 v6, 0x0

    .line 105
    move-object/from16 v19, v7

    .line 106
    .line 107
    sget-object v7, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsDeviceScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    move-object/from16 v18, v8

    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    invoke-static/range {v6 .. v15}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-ne v4, v3, :cond_3

    .line 122
    .line 123
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 133
    .line 134
    iget-boolean v6, v1, Lnet/blip/libblip/Device;->r:Z

    .line 135
    .line 136
    if-nez v6, :cond_5

    .line 137
    .line 138
    const v6, -0x710b8949

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-ne v6, v3, :cond_4

    .line 149
    .line 150
    new-instance v6, Lcd;

    .line 151
    .line 152
    const/16 v3, 0xf

    .line 153
    .line 154
    invoke-direct {v6, v4, v3}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    move-object v10, v6

    .line 161
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 162
    .line 163
    new-instance v14, Lv8;

    .line 164
    .line 165
    iget-object v3, v0, Ldf;->n:Landroid/content/Context;

    .line 166
    .line 167
    iget-object v0, v0, Ldf;->o:Lnet/blip/android/ui/navigation/AuthScope;

    .line 168
    .line 169
    move-object/from16 v17, v0

    .line 170
    .line 171
    move-object v15, v1

    .line 172
    move-object/from16 v16, v3

    .line 173
    .line 174
    move-object/from16 v20, v4

    .line 175
    .line 176
    invoke-direct/range {v14 .. v20}, Lv8;-><init>(Lnet/blip/libblip/Device;Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    .line 177
    .line 178
    .line 179
    const v0, 0x2ef872d1

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v14, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    const v14, 0x186030

    .line 187
    .line 188
    .line 189
    const/16 v15, 0x2d

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    sget-object v7, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsDeviceScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    const/4 v9, 0x0

    .line 196
    const/4 v11, 0x0

    .line 197
    invoke-static/range {v6 .. v15}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_5
    const v0, -0x70f5f389

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 215
    .line 216
    .line 217
    :goto_1
    return-object v2

    .line 218
    :pswitch_0
    move-object/from16 v1, p1

    .line 219
    .line 220
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 221
    .line 222
    move-object/from16 v6, p2

    .line 223
    .line 224
    check-cast v6, Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    and-int/lit8 v7, v6, 0x3

    .line 231
    .line 232
    if-eq v7, v3, :cond_7

    .line 233
    .line 234
    move v3, v4

    .line 235
    goto :goto_2

    .line 236
    :cond_7
    move v3, v5

    .line 237
    :goto_2
    and-int/2addr v6, v4

    .line 238
    move-object v10, v1

    .line 239
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    invoke-virtual {v10, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_9

    .line 246
    .line 247
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 248
    .line 249
    const/high16 v3, 0x3f800000    # 1.0f

    .line 250
    .line 251
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 256
    .line 257
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 262
    .line 263
    iget-wide v6, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 264
    .line 265
    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 266
    .line 267
    invoke-static {v1, v6, v7, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    const/4 v15, 0x0

    .line 272
    const/16 v16, 0xd

    .line 273
    .line 274
    const/4 v12, 0x0

    .line 275
    const/high16 v13, 0x42400000    # 48.0f

    .line 276
    .line 277
    const/4 v14, 0x0

    .line 278
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v10}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v1, v3}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const/high16 v3, 0x41000000    # 8.0f

    .line 295
    .line 296
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 301
    .line 302
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 303
    .line 304
    invoke-static {v3, v6, v10, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    iget-wide v5, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 309
    .line 310
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 328
    .line 329
    .line 330
    iget-boolean v7, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 331
    .line 332
    if-eqz v7, :cond_8

    .line 333
    .line 334
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 335
    .line 336
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :cond_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 341
    .line 342
    .line 343
    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 344
    .line 345
    invoke-static {v10, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    .line 347
    .line 348
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 349
    .line 350
    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 358
    .line 359
    invoke-static {v10, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 363
    .line 364
    .line 365
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 366
    .line 367
    invoke-static {v10, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    .line 369
    .line 370
    new-instance v8, Lnet/blip/libblip/Peer$Device;

    .line 371
    .line 372
    iget-object v1, v0, Ldf;->o:Lnet/blip/android/ui/navigation/AuthScope;

    .line 373
    .line 374
    iget-object v3, v1, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 375
    .line 376
    iget-object v3, v3, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v5, v0, Ldf;->k:Lnet/blip/libblip/Device;

    .line 379
    .line 380
    invoke-direct {v8, v5, v3}, Lnet/blip/libblip/Peer$Device;-><init>(Lnet/blip/libblip/Device;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const/4 v11, 0x0

    .line 384
    const/4 v12, 0x5

    .line 385
    const/4 v7, 0x0

    .line 386
    const/4 v9, 0x0

    .line 387
    invoke-static/range {v7 .. v12}, Lnet/blip/android/ui/settings/SettingsPeerHeaderKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 388
    .line 389
    .line 390
    const/4 v12, 0x0

    .line 391
    const/16 v13, 0xf

    .line 392
    .line 393
    const-wide/16 v8, 0x0

    .line 394
    .line 395
    move-object v11, v10

    .line 396
    const/4 v10, 0x0

    .line 397
    invoke-static/range {v7 .. v13}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V

    .line 398
    .line 399
    .line 400
    move-object v10, v11

    .line 401
    new-instance v11, Ldf;

    .line 402
    .line 403
    iget-object v13, v0, Ldf;->l:Lkotlin/jvm/functions/Function1;

    .line 404
    .line 405
    iget-object v14, v0, Ldf;->m:Ljava/lang/String;

    .line 406
    .line 407
    iget-object v15, v0, Ldf;->n:Landroid/content/Context;

    .line 408
    .line 409
    move-object/from16 v16, v1

    .line 410
    .line 411
    move-object v12, v5

    .line 412
    invoke-direct/range {v11 .. v16}, Ldf;-><init>(Lnet/blip/libblip/Device;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Lnet/blip/android/ui/navigation/AuthScope;)V

    .line 413
    .line 414
    .line 415
    const v0, 0x39ec470b

    .line 416
    .line 417
    .line 418
    invoke-static {v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    const/16 v11, 0x180

    .line 423
    .line 424
    const/4 v12, 0x3

    .line 425
    const/4 v8, 0x0

    .line 426
    invoke-static/range {v7 .. v12}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 427
    .line 428
    .line 429
    const/4 v12, 0x0

    .line 430
    const/16 v13, 0xf

    .line 431
    .line 432
    const-wide/16 v8, 0x0

    .line 433
    .line 434
    move-object v11, v10

    .line 435
    const/4 v10, 0x0

    .line 436
    invoke-static/range {v7 .. v13}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V

    .line 437
    .line 438
    .line 439
    move-object v10, v11

    .line 440
    const/16 v11, 0x180

    .line 441
    .line 442
    const/4 v12, 0x3

    .line 443
    const/4 v8, 0x0

    .line 444
    sget-object v9, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsDeviceScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 445
    .line 446
    invoke-static/range {v7 .. v12}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 454
    .line 455
    .line 456
    :goto_4
    return-object v2

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
