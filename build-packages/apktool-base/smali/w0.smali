.class public final synthetic Lw0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:J

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lw0;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lw0;->l:J

    .line 8
    .line 9
    iput-object p3, p0, Lw0;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lw0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JI)V
    .locals 0

    .line 14
    const/4 p5, 0x0

    iput p5, p0, Lw0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lw0;->k:Ljava/lang/Object;

    iput-wide p3, p0, Lw0;->l:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/painter/Painter;I)V
    .locals 0

    .line 15
    const/4 p5, 0x1

    iput p5, p0, Lw0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0;->k:Ljava/lang/Object;

    iput-wide p2, p0, Lw0;->l:J

    iput-object p4, p0, Lw0;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;JLandroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lw0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0;->m:Ljava/lang/Object;

    iput-wide p2, p0, Lw0;->l:J

    iput-object p4, p0, Lw0;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw0;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-wide v4, v0, Lw0;->l:J

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v8, v0, Lw0;->k:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v9, v0, Lw0;->m:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v9, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;

    .line 20
    .line 21
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    move-object/from16 v0, p1

    .line 24
    .line 25
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit8 v10, v1, 0x3

    .line 36
    .line 37
    if-eq v10, v3, :cond_0

    .line 38
    .line 39
    move v2, v6

    .line 40
    :cond_0
    and-int/2addr v1, v6

    .line 41
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v9}, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 54
    .line 55
    .line 56
    move-result-object v16

    .line 57
    const/16 v18, 0x8

    .line 58
    .line 59
    const/16 v19, 0x3c

    .line 60
    .line 61
    const-string v11, "Share"

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x0

    .line 66
    const/4 v15, 0x0

    .line 67
    move-object/from16 v17, v0

    .line 68
    .line 69
    invoke-static/range {v10 .. v19}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 87
    .line 88
    if-ne v1, v2, :cond_1

    .line 89
    .line 90
    new-instance v1, Lcd;

    .line 91
    .line 92
    const/16 v2, 0xb

    .line 93
    .line 94
    invoke-direct {v1, v8, v2}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    move-object v11, v1

    .line 101
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    new-instance v1, Li0;

    .line 104
    .line 105
    const/4 v2, 0x7

    .line 106
    invoke-direct {v1, v2, v9, v8}, Li0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const v2, 0x4cf0e14d    # 1.26290536E8f

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    .line 115
    move-result-object v17

    .line 116
    const v19, 0x180030

    .line 117
    .line 118
    .line 119
    const/16 v20, 0x3c

    .line 120
    .line 121
    const/4 v12, 0x0

    .line 122
    const-wide/16 v13, 0x0

    .line 123
    .line 124
    const/4 v15, 0x0

    .line 125
    const/16 v16, 0x0

    .line 126
    .line 127
    move-object/from16 v18, v0

    .line 128
    .line 129
    invoke-static/range {v10 .. v20}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-object v7

    .line 137
    :pswitch_0
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 138
    .line 139
    check-cast v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 140
    .line 141
    move-object/from16 v0, p1

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 144
    .line 145
    move-object/from16 v1, p2

    .line 146
    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    and-int/lit8 v11, v1, 0x3

    .line 158
    .line 159
    if-eq v11, v3, :cond_3

    .line 160
    .line 161
    move v3, v6

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move v3, v2

    .line 164
    :goto_1
    and-int/2addr v1, v6

    .line 165
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 166
    .line 167
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 174
    .line 175
    const/high16 v3, 0x3f800000    # 1.0f

    .line 176
    .line 177
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 182
    .line 183
    invoke-static {v11, v4, v5, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 188
    .line 189
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 194
    .line 195
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 208
    .line 209
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 213
    .line 214
    .line 215
    iget-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 216
    .line 217
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 218
    .line 219
    if-eqz v14, :cond_4

    .line 220
    .line 221
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 226
    .line 227
    .line 228
    :goto_2
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 229
    .line 230
    invoke-static {v0, v11, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 234
    .line 235
    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 243
    .line 244
    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 248
    .line 249
    .line 250
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 251
    .line 252
    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 253
    .line 254
    .line 255
    if-nez v9, :cond_5

    .line 256
    .line 257
    const v1, -0x12f49db0

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_5
    const v4, -0x12f49daf

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 271
    .line 272
    .line 273
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 274
    .line 275
    invoke-virtual {v4, v1, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1, v3}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 292
    .line 293
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 306
    .line 307
    .line 308
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 309
    .line 310
    if-eqz v2, :cond_6

    .line 311
    .line 312
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 317
    .line 318
    .line 319
    :goto_3
    invoke-static {v0, v3, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v4, v0, v13, v0}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    invoke-interface {v9, v0, v10}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 335
    .line 336
    .line 337
    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 339
    .line 340
    .line 341
    :goto_4
    invoke-virtual {v8, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 349
    .line 350
    .line 351
    :goto_5
    return-object v7

    .line 352
    :pswitch_1
    move-object v11, v8

    .line 353
    check-cast v11, Landroidx/compose/ui/Modifier;

    .line 354
    .line 355
    move-object v14, v9

    .line 356
    check-cast v14, Landroidx/compose/ui/graphics/painter/Painter;

    .line 357
    .line 358
    move-object/from16 v15, p1

    .line 359
    .line 360
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 361
    .line 362
    move-object/from16 v1, p2

    .line 363
    .line 364
    check-cast v1, Ljava/lang/Integer;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    const/16 v1, 0x207

    .line 370
    .line 371
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 372
    .line 373
    .line 374
    move-result v16

    .line 375
    iget-wide v12, v0, Lw0;->l:J

    .line 376
    .line 377
    invoke-static/range {v11 .. v16}, Lnet/blip/android/ui/peer/PeerScreenKt;->c(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;I)V

    .line 378
    .line 379
    .line 380
    return-object v7

    .line 381
    :pswitch_2
    check-cast v9, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 382
    .line 383
    move-object v1, v8

    .line 384
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 385
    .line 386
    move-object/from16 v4, p1

    .line 387
    .line 388
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 389
    .line 390
    move-object/from16 v2, p2

    .line 391
    .line 392
    check-cast v2, Ljava/lang/Integer;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    iget-wide v2, v0, Lw0;->l:J

    .line 402
    .line 403
    move-object v0, v9

    .line 404
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 405
    .line 406
    .line 407
    return-object v7

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
