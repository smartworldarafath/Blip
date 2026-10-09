.class public final synthetic Landroidx/compose/ui/text/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/b;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/ui/text/b;->j:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x3

    .line 7
    sget-object v3, Landroidx/compose/ui/text/SaversKt$ColorSaver$2;->j:Landroidx/compose/ui/text/SaversKt$ColorSaver$2;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    new-instance v8, Landroidx/compose/ui/text/SpanStyle;

    .line 25
    .line 26
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    sget v9, Landroidx/compose/ui/graphics/Color;->i:I

    .line 31
    .line 32
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 33
    .line 34
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-interface {v3, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-wide v10, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 53
    .line 54
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    .line 59
    .line 60
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 61
    .line 62
    iget-object v6, v6, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroidx/compose/ui/unit/TextUnit;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v5, 0x0

    .line 77
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-wide v12, v5, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 81
    .line 82
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->k:Landroidx/compose/ui/text/font/FontWeight;

    .line 87
    .line 88
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->m:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 89
    .line 90
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    if-eqz v14, :cond_3

    .line 95
    .line 96
    instance-of v14, v5, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 97
    .line 98
    if-nez v14, :cond_3

    .line 99
    .line 100
    :cond_2
    const/4 v4, 0x0

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-eqz v4, :cond_2

    .line 103
    .line 104
    iget-object v5, v5, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Landroidx/compose/ui/text/font/FontWeight;

    .line 111
    .line 112
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->t:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 117
    .line 118
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-eqz v14, :cond_5

    .line 123
    .line 124
    instance-of v14, v5, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 125
    .line 126
    if-nez v14, :cond_5

    .line 127
    .line 128
    :cond_4
    const/4 v14, 0x0

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    if-eqz v2, :cond_4

    .line 131
    .line 132
    iget-object v5, v5, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroidx/compose/ui/text/font/FontStyle;

    .line 139
    .line 140
    move-object v14, v2

    .line 141
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->u:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 146
    .line 147
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_7

    .line 152
    .line 153
    instance-of v5, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 154
    .line 155
    if-nez v5, :cond_7

    .line 156
    .line 157
    :cond_6
    const/4 v15, 0x0

    .line 158
    goto :goto_4

    .line 159
    :cond_7
    if-eqz v1, :cond_6

    .line 160
    .line 161
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 162
    .line 163
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 168
    .line 169
    move-object v15, v1

    .line 170
    :goto_4
    const/4 v1, 0x6

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-eqz v1, :cond_8

    .line 176
    .line 177
    check-cast v1, Ljava/lang/String;

    .line 178
    .line 179
    move-object/from16 v17, v1

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    const/16 v17, 0x0

    .line 183
    .line 184
    :goto_5
    const/4 v1, 0x7

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_9
    const/4 v1, 0x0

    .line 202
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iget-wide v1, v1, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 206
    .line 207
    const/16 v5, 0x8

    .line 208
    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->n:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 214
    .line 215
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    if-eqz v16, :cond_b

    .line 220
    .line 221
    instance-of v7, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 222
    .line 223
    if-nez v7, :cond_b

    .line 224
    .line 225
    :cond_a
    const/16 v20, 0x0

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_b
    if-eqz v5, :cond_a

    .line 229
    .line 230
    iget-object v6, v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 231
    .line 232
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Landroidx/compose/ui/text/style/BaselineShift;

    .line 237
    .line 238
    move-object/from16 v20, v5

    .line 239
    .line 240
    :goto_7
    const/16 v5, 0x9

    .line 241
    .line 242
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->k:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 247
    .line 248
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_d

    .line 253
    .line 254
    instance-of v7, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 255
    .line 256
    if-nez v7, :cond_d

    .line 257
    .line 258
    :cond_c
    const/16 v21, 0x0

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_d
    if-eqz v5, :cond_c

    .line 262
    .line 263
    iget-object v6, v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 264
    .line 265
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 270
    .line 271
    move-object/from16 v21, v5

    .line 272
    .line 273
    :goto_8
    const/16 v5, 0xa

    .line 274
    .line 275
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->l:Landroidx/compose/ui/text/intl/LocaleList;

    .line 280
    .line 281
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 282
    .line 283
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_f

    .line 288
    .line 289
    instance-of v7, v6, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 290
    .line 291
    if-nez v7, :cond_f

    .line 292
    .line 293
    :cond_e
    const/16 v22, 0x0

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_f
    if-eqz v5, :cond_e

    .line 297
    .line 298
    iget-object v6, v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 299
    .line 300
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Landroidx/compose/ui/text/intl/LocaleList;

    .line 305
    .line 306
    move-object/from16 v22, v5

    .line 307
    .line 308
    :goto_9
    const/16 v5, 0xb

    .line 309
    .line 310
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    if-eqz v5, :cond_10

    .line 318
    .line 319
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_10
    const/4 v3, 0x0

    .line 327
    :goto_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iget-wide v5, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 331
    .line 332
    const/16 v3, 0xc

    .line 333
    .line 334
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->j:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 339
    .line 340
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v16

    .line 344
    move-wide/from16 v18, v1

    .line 345
    .line 346
    if-eqz v16, :cond_12

    .line 347
    .line 348
    instance-of v1, v7, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 349
    .line 350
    if-nez v1, :cond_12

    .line 351
    .line 352
    :cond_11
    const/16 v25, 0x0

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_12
    if-eqz v3, :cond_11

    .line 356
    .line 357
    iget-object v1, v7, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 358
    .line 359
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Landroidx/compose/ui/text/style/TextDecoration;

    .line 364
    .line 365
    move-object/from16 v25, v1

    .line 366
    .line 367
    :goto_b
    const/16 v1, 0xd

    .line 368
    .line 369
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 374
    .line 375
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->o:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 376
    .line 377
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_14

    .line 382
    .line 383
    instance-of v2, v1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 384
    .line 385
    if-nez v2, :cond_14

    .line 386
    .line 387
    :cond_13
    const/16 v26, 0x0

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_14
    if-eqz v0, :cond_13

    .line 391
    .line 392
    iget-object v1, v1, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 393
    .line 394
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object v7, v0

    .line 399
    check-cast v7, Landroidx/compose/ui/graphics/Shadow;

    .line 400
    .line 401
    move-object/from16 v26, v7

    .line 402
    .line 403
    :goto_c
    const v27, 0xc020

    .line 404
    .line 405
    .line 406
    const/16 v16, 0x0

    .line 407
    .line 408
    move-wide/from16 v23, v5

    .line 409
    .line 410
    move-wide v9, v10

    .line 411
    move-wide v11, v12

    .line 412
    move-object v13, v4

    .line 413
    invoke-direct/range {v8 .. v27}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 414
    .line 415
    .line 416
    return-object v8

    .line 417
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 418
    .line 419
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    move-object/from16 v0, p1

    .line 423
    .line 424
    check-cast v0, Ljava/util/List;

    .line 425
    .line 426
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-eqz v3, :cond_15

    .line 431
    .line 432
    check-cast v3, Landroidx/compose/ui/text/AnnotationType;

    .line 433
    .line 434
    goto :goto_d

    .line 435
    :cond_15
    const/4 v3, 0x0

    .line 436
    :goto_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    if-eqz v4, :cond_16

    .line 444
    .line 445
    check-cast v4, Ljava/lang/Integer;

    .line 446
    .line 447
    goto :goto_e

    .line 448
    :cond_16
    const/4 v4, 0x0

    .line 449
    :goto_e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    if-eqz v2, :cond_17

    .line 461
    .line 462
    check-cast v2, Ljava/lang/Integer;

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_17
    const/4 v2, 0x0

    .line 466
    :goto_f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    if-eqz v1, :cond_18

    .line 478
    .line 479
    check-cast v1, Ljava/lang/String;

    .line 480
    .line 481
    goto :goto_10

    .line 482
    :cond_18
    const/4 v1, 0x0

    .line 483
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    packed-switch v3, :pswitch_data_1

    .line 491
    .line 492
    .line 493
    invoke-static {}, Lk8;->e()V

    .line 494
    .line 495
    .line 496
    const/4 v7, 0x0

    .line 497
    goto/16 :goto_19

    .line 498
    .line 499
    :pswitch_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    if-eqz v0, :cond_19

    .line 504
    .line 505
    move-object v7, v0

    .line 506
    check-cast v7, Ljava/lang/String;

    .line 507
    .line 508
    goto :goto_11

    .line 509
    :cond_19
    const/4 v7, 0x0

    .line 510
    :goto_11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 514
    .line 515
    new-instance v3, Landroidx/compose/ui/text/StringAnnotation;

    .line 516
    .line 517
    invoke-direct {v3, v7}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-direct {v0, v4, v2, v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    :goto_12
    move-object v7, v0

    .line 524
    goto/16 :goto_19

    .line 525
    .line 526
    :pswitch_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->f:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 531
    .line 532
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 533
    .line 534
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    if-eqz v5, :cond_1b

    .line 539
    .line 540
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 541
    .line 542
    if-nez v5, :cond_1b

    .line 543
    .line 544
    :cond_1a
    const/4 v7, 0x0

    .line 545
    goto :goto_13

    .line 546
    :cond_1b
    if-eqz v0, :cond_1a

    .line 547
    .line 548
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 549
    .line 550
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    move-object v7, v0

    .line 555
    check-cast v7, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 556
    .line 557
    :goto_13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 561
    .line 562
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    goto :goto_12

    .line 566
    :pswitch_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->e:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 571
    .line 572
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 573
    .line 574
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-eqz v5, :cond_1d

    .line 579
    .line 580
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 581
    .line 582
    if-nez v5, :cond_1d

    .line 583
    .line 584
    :cond_1c
    const/4 v7, 0x0

    .line 585
    goto :goto_14

    .line 586
    :cond_1d
    if-eqz v0, :cond_1c

    .line 587
    .line 588
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 589
    .line 590
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    move-object v7, v0

    .line 595
    check-cast v7, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 596
    .line 597
    :goto_14
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 601
    .line 602
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    goto :goto_12

    .line 606
    :pswitch_4
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->d:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 611
    .line 612
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 613
    .line 614
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v5

    .line 618
    if-eqz v5, :cond_1f

    .line 619
    .line 620
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 621
    .line 622
    if-nez v5, :cond_1f

    .line 623
    .line 624
    :cond_1e
    const/4 v7, 0x0

    .line 625
    goto :goto_15

    .line 626
    :cond_1f
    if-eqz v0, :cond_1e

    .line 627
    .line 628
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 629
    .line 630
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    move-object v7, v0

    .line 635
    check-cast v7, Landroidx/compose/ui/text/UrlAnnotation;

    .line 636
    .line 637
    :goto_15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 641
    .line 642
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto :goto_12

    .line 646
    :pswitch_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->c:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 651
    .line 652
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 653
    .line 654
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    if-eqz v5, :cond_21

    .line 659
    .line 660
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 661
    .line 662
    if-nez v5, :cond_21

    .line 663
    .line 664
    :cond_20
    const/4 v7, 0x0

    .line 665
    goto :goto_16

    .line 666
    :cond_21
    if-eqz v0, :cond_20

    .line 667
    .line 668
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 669
    .line 670
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    move-object v7, v0

    .line 675
    check-cast v7, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 676
    .line 677
    :goto_16
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 681
    .line 682
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_12

    .line 686
    .line 687
    :pswitch_6
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->h:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 692
    .line 693
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 694
    .line 695
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-eqz v5, :cond_23

    .line 700
    .line 701
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 702
    .line 703
    if-nez v5, :cond_23

    .line 704
    .line 705
    :cond_22
    const/4 v7, 0x0

    .line 706
    goto :goto_17

    .line 707
    :cond_23
    if-eqz v0, :cond_22

    .line 708
    .line 709
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 710
    .line 711
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    move-object v7, v0

    .line 716
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    .line 717
    .line 718
    :goto_17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 719
    .line 720
    .line 721
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 722
    .line 723
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_12

    .line 727
    .line 728
    :pswitch_7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->g:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 733
    .line 734
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 735
    .line 736
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_25

    .line 741
    .line 742
    instance-of v5, v3, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 743
    .line 744
    if-nez v5, :cond_25

    .line 745
    .line 746
    :cond_24
    const/4 v7, 0x0

    .line 747
    goto :goto_18

    .line 748
    :cond_25
    if-eqz v0, :cond_24

    .line 749
    .line 750
    iget-object v3, v3, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 751
    .line 752
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    move-object v7, v0

    .line 757
    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 758
    .line 759
    :goto_18
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 763
    .line 764
    invoke-direct {v0, v4, v2, v7, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_12

    .line 768
    .line 769
    :goto_19
    return-object v7

    .line 770
    :pswitch_8
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 771
    .line 772
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    move-object/from16 v0, p1

    .line 776
    .line 777
    check-cast v0, Ljava/util/List;

    .line 778
    .line 779
    new-instance v7, Landroidx/compose/ui/graphics/Shadow;

    .line 780
    .line 781
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    sget v2, Landroidx/compose/ui/graphics/Color;->i:I

    .line 786
    .line 787
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 788
    .line 789
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 790
    .line 791
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    if-eqz v1, :cond_26

    .line 795
    .line 796
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 801
    .line 802
    goto :goto_1a

    .line 803
    :cond_26
    const/4 v1, 0x0

    .line 804
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    iget-wide v8, v1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 808
    .line 809
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->x:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 814
    .line 815
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    if-eqz v1, :cond_27

    .line 819
    .line 820
    iget-object v2, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 821
    .line 822
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 827
    .line 828
    goto :goto_1b

    .line 829
    :cond_27
    const/4 v1, 0x0

    .line 830
    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    iget-wide v10, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 834
    .line 835
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    if-eqz v0, :cond_28

    .line 840
    .line 841
    check-cast v0, Ljava/lang/Float;

    .line 842
    .line 843
    goto :goto_1c

    .line 844
    :cond_28
    const/4 v0, 0x0

    .line 845
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 849
    .line 850
    .line 851
    move-result v12

    .line 852
    invoke-direct/range {v7 .. v12}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJF)V

    .line 853
    .line 854
    .line 855
    return-object v7

    .line 856
    nop

    .line 857
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
