.class public final synthetic Lv0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lv0;->j:I

    iput-wide p2, p0, Lv0;->k:J

    iput-object p4, p0, Lv0;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;J)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lv0;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv0;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lv0;->k:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv0;->j:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 14
    .line 15
    iget-wide v7, v0, Lv0;->k:J

    .line 16
    .line 17
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x2

    .line 21
    const/4 v12, 0x1

    .line 22
    iget-object v13, v0, Lv0;->l:Ljava/lang/Object;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    check-cast v13, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v1, p2

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    and-int/lit8 v2, v1, 0x3

    .line 42
    .line 43
    if-eq v2, v11, :cond_0

    .line 44
    .line 45
    move v10, v12

    .line 46
    :cond_0
    and-int/2addr v1, v12

    .line 47
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v13}, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 60
    .line 61
    .line 62
    move-result-object v20

    .line 63
    const/16 v22, 0x8

    .line 64
    .line 65
    const/16 v23, 0x3c

    .line 66
    .line 67
    const-string v15, "Back"

    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const/16 v18, 0x0

    .line 74
    .line 75
    const/16 v19, 0x0

    .line 76
    .line 77
    move-object/from16 v21, v0

    .line 78
    .line 79
    invoke-static/range {v14 .. v23}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object/from16 v21, v0

    .line 84
    .line 85
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v9

    .line 89
    :pswitch_0
    check-cast v13, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 94
    .line 95
    move-object/from16 v7, p2

    .line 96
    .line 97
    check-cast v7, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    and-int/lit8 v8, v7, 0x3

    .line 104
    .line 105
    if-eq v8, v11, :cond_2

    .line 106
    .line 107
    move v8, v12

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move v8, v10

    .line 110
    :goto_1
    and-int/2addr v7, v12

    .line 111
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 112
    .line 113
    invoke-virtual {v1, v7, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    const/high16 v7, 0x42600000    # 56.0f

    .line 120
    .line 121
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 122
    .line 123
    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 128
    .line 129
    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    iget-wide v14, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 134
    .line 135
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    invoke-static {v1, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 148
    .line 149
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 153
    .line 154
    .line 155
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 156
    .line 157
    if-eqz v15, :cond_3

    .line 158
    .line 159
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-static {v1, v10, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1, v14, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    const/high16 v2, 0x42500000    # 52.0f

    .line 186
    .line 187
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    invoke-static {v13, v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 192
    .line 193
    .line 194
    move-result-object v17

    .line 195
    const/16 v19, 0x206

    .line 196
    .line 197
    iget-wide v2, v0, Lv0;->k:J

    .line 198
    .line 199
    move-object/from16 v18, v1

    .line 200
    .line 201
    move-wide v15, v2

    .line 202
    invoke-static/range {v14 .. v19}, Lnet/blip/android/ui/peer/PeerScreenKt;->c(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 210
    .line 211
    .line 212
    :goto_3
    return-object v9

    .line 213
    :pswitch_1
    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    move-object/from16 v0, p1

    .line 216
    .line 217
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 218
    .line 219
    move-object/from16 v1, p2

    .line 220
    .line 221
    check-cast v1, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    sget v14, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    .line 228
    .line 229
    and-int/lit8 v14, v1, 0x3

    .line 230
    .line 231
    if-eq v14, v11, :cond_5

    .line 232
    .line 233
    move v11, v12

    .line 234
    goto :goto_4

    .line 235
    :cond_5
    move v11, v10

    .line 236
    :goto_4
    and-int/2addr v1, v12

    .line 237
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 238
    .line 239
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_8

    .line 244
    .line 245
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    cmp-long v1, v7, v14

    .line 251
    .line 252
    if-eqz v1, :cond_7

    .line 253
    .line 254
    const v1, -0x4a262578

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    const/16 v17, 0x0

    .line 269
    .line 270
    const/16 v18, 0xc

    .line 271
    .line 272
    const/16 v16, 0x0

    .line 273
    .line 274
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/SizeKt;->i(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    .line 279
    .line 280
    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 285
    .line 286
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 299
    .line 300
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 304
    .line 305
    .line 306
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 307
    .line 308
    if-eqz v13, :cond_6

    .line 309
    .line 310
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 315
    .line 316
    .line 317
    :goto_5
    invoke-static {v0, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v0, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    const/4 v1, 0x0

    .line 337
    invoke-static {v1, v0, v10, v12}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_7
    const v1, -0x4a2083ba

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 351
    .line 352
    .line 353
    invoke-static {v13, v0, v10, v10}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 361
    .line 362
    .line 363
    :goto_6
    return-object v9

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
