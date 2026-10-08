.class public final synthetic Lwc;
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
    iput p1, p0, Lwc;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 7
    iput p1, p0, Lwc;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, Lwc;->j:I

    .line 2
    .line 3
    const/high16 v0, 0x43910000    # 290.0f

    .line 4
    .line 5
    const/16 v1, 0x29a

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x534

    .line 9
    .line 10
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch p0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p1, Ljava/util/List;

    .line 24
    .line 25
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_0
    if-ge v7, v0, :cond_2

    .line 39
    .line 40
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->z:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 45
    .line 46
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    instance-of v3, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    :cond_0
    move-object v1, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroidx/compose/ui/text/intl/Locale;

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v7, v7, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    new-instance p1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/intl/LocaleList;-><init>(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :pswitch_0
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 86
    .line 87
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    .line 96
    .line 97
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_4

    .line 116
    .line 117
    check-cast p0, Ljava/lang/Float;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move-object p0, v5

    .line 121
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    move-object v5, p1

    .line 135
    check-cast v5, Ljava/lang/Float;

    .line 136
    .line 137
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    int-to-long v0, p0

    .line 149
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    int-to-long p0, p0

    .line 154
    const/16 v2, 0x20

    .line 155
    .line 156
    shl-long/2addr v0, v2

    .line 157
    const-wide v2, 0xffffffffL

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    and-long/2addr p0, v2

    .line 163
    or-long/2addr p0, v0

    .line 164
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 165
    .line 166
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 167
    .line 168
    .line 169
    move-object p0, v0

    .line 170
    :goto_3
    return-object p0

    .line 171
    :pswitch_1
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 172
    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 184
    .line 185
    const-wide v0, 0x200000000L

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_7

    .line 203
    .line 204
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 205
    .line 206
    const-wide v0, 0x100000000L

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    new-instance p0, Landroidx/compose/ui/unit/TextUnitType;

    .line 216
    .line 217
    const-wide/16 v0, 0x0

    .line 218
    .line 219
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 220
    .line 221
    .line 222
    :goto_4
    return-object p0

    .line 223
    :pswitch_2
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 224
    .line 225
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 226
    .line 227
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    sget-wide p0, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 234
    .line 235
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 236
    .line 237
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    check-cast p1, Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_9

    .line 251
    .line 252
    check-cast v0, Ljava/lang/Float;

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_9
    move-object v0, v5

    .line 256
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->w:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 268
    .line 269
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    if-eqz p1, :cond_a

    .line 273
    .line 274
    iget-object p0, v1, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 275
    .line 276
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    move-object v5, p0

    .line 281
    check-cast v5, Landroidx/compose/ui/unit/TextUnitType;

    .line 282
    .line 283
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget-wide p0, v5, Landroidx/compose/ui/unit/TextUnitType;->a:J

    .line 287
    .line 288
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 289
    .line 290
    .line 291
    move-result-wide p0

    .line 292
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 293
    .line 294
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 295
    .line 296
    .line 297
    :goto_6
    return-object v0

    .line 298
    :pswitch_3
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    check-cast p1, Ljava/lang/Integer;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    new-instance p1, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 310
    .line 311
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    .line 312
    .line 313
    .line 314
    return-object p1

    .line 315
    :pswitch_4
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    check-cast p1, Ljava/lang/Integer;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    new-instance p1, Landroidx/compose/ui/text/font/FontStyle;

    .line 327
    .line 328
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    .line 329
    .line 330
    .line 331
    return-object p1

    .line 332
    :pswitch_5
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    check-cast p1, Ljava/util/List;

    .line 338
    .line 339
    new-instance p0, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .line 347
    .line 348
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    :goto_7
    if-ge v7, v0, :cond_d

    .line 353
    .line 354
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->b:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 359
    .line 360
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 361
    .line 362
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-eqz v3, :cond_c

    .line 367
    .line 368
    instance-of v3, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 369
    .line 370
    if-nez v3, :cond_c

    .line 371
    .line 372
    :cond_b
    move-object v1, v5

    .line 373
    goto :goto_8

    .line 374
    :cond_c
    if-eqz v1, :cond_b

    .line 375
    .line 376
    iget-object v2, v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 377
    .line 378
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 383
    .line 384
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    add-int/lit8 v7, v7, 0x1

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_d
    return-object p0

    .line 394
    :pswitch_6
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 395
    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    check-cast p1, Ljava/lang/Integer;

    .line 400
    .line 401
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    new-instance p1, Landroidx/compose/ui/text/style/Hyphens;

    .line 406
    .line 407
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 408
    .line 409
    .line 410
    return-object p1

    .line 411
    :pswitch_7
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    check-cast p1, Ljava/lang/Integer;

    .line 417
    .line 418
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    new-instance p1, Landroidx/compose/ui/text/style/TextDirection;

    .line 423
    .line 424
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 425
    .line 426
    .line 427
    return-object p1

    .line 428
    :pswitch_8
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    check-cast p1, Ljava/util/List;

    .line 434
    .line 435
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    if-eqz p0, :cond_e

    .line 440
    .line 441
    check-cast p0, Ljava/lang/String;

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_e
    move-object p0, v5

    .line 445
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->i:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 453
    .line 454
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 455
    .line 456
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-eqz v1, :cond_f

    .line 461
    .line 462
    instance-of v1, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 463
    .line 464
    if-nez v1, :cond_f

    .line 465
    .line 466
    goto :goto_a

    .line 467
    :cond_f
    if-eqz p1, :cond_10

    .line 468
    .line 469
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 470
    .line 471
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    move-object v5, p1

    .line 476
    check-cast v5, Landroidx/compose/ui/text/TextLinkStyles;

    .line 477
    .line 478
    :cond_10
    :goto_a
    new-instance p1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 479
    .line 480
    invoke-direct {p1, p0, v5}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 481
    .line 482
    .line 483
    return-object p1

    .line 484
    :pswitch_9
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    check-cast p1, Ljava/lang/Integer;

    .line 490
    .line 491
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    new-instance p1, Landroidx/compose/ui/text/style/TextAlign;

    .line 496
    .line 497
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 498
    .line 499
    .line 500
    return-object p1

    .line 501
    :pswitch_a
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 502
    .line 503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    check-cast p1, Ljava/util/List;

    .line 507
    .line 508
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    if-eqz p0, :cond_11

    .line 513
    .line 514
    check-cast p0, Ljava/lang/Integer;

    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_11
    move-object p0, v5

    .line 518
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 522
    .line 523
    .line 524
    move-result p0

    .line 525
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    if-eqz p1, :cond_12

    .line 530
    .line 531
    move-object v5, p1

    .line 532
    check-cast v5, Ljava/lang/Integer;

    .line 533
    .line 534
    :cond_12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result p1

    .line 541
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 542
    .line 543
    .line 544
    move-result-wide p0

    .line 545
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 546
    .line 547
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 548
    .line 549
    .line 550
    return-object v0

    .line 551
    :pswitch_b
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 552
    .line 553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    check-cast p1, Ljava/lang/Float;

    .line 557
    .line 558
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 559
    .line 560
    .line 561
    move-result p0

    .line 562
    new-instance p1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 563
    .line 564
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    .line 565
    .line 566
    .line 567
    return-object p1

    .line 568
    :pswitch_c
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 569
    .line 570
    new-instance p0, Landroidx/compose/ui/text/font/FontWeight;

    .line 571
    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    check-cast p1, Ljava/lang/Integer;

    .line 576
    .line 577
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 582
    .line 583
    .line 584
    return-object p0

    .line 585
    :pswitch_d
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 586
    .line 587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    check-cast p1, Ljava/util/List;

    .line 591
    .line 592
    new-instance p0, Landroidx/compose/ui/text/style/TextIndent;

    .line 593
    .line 594
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    .line 599
    .line 600
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 601
    .line 602
    iget-object v1, v1, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 603
    .line 604
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 605
    .line 606
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    if-eqz v0, :cond_13

    .line 610
    .line 611
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Landroidx/compose/ui/unit/TextUnit;

    .line 616
    .line 617
    goto :goto_c

    .line 618
    :cond_13
    move-object v0, v5

    .line 619
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    iget-wide v3, v0, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 623
    .line 624
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    if-eqz p1, :cond_14

    .line 632
    .line 633
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    move-object v5, p1

    .line 638
    check-cast v5, Landroidx/compose/ui/unit/TextUnit;

    .line 639
    .line 640
    :cond_14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    iget-wide v0, v5, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 644
    .line 645
    invoke-direct {p0, v3, v4, v0, v1}, Landroidx/compose/ui/text/style/TextIndent;-><init>(JJ)V

    .line 646
    .line 647
    .line 648
    return-object p0

    .line 649
    :pswitch_e
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 650
    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    check-cast p1, Ljava/util/List;

    .line 655
    .line 656
    new-instance p0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 657
    .line 658
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    check-cast v0, Ljava/lang/Number;

    .line 663
    .line 664
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    check-cast p1, Ljava/lang/Number;

    .line 673
    .line 674
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 679
    .line 680
    .line 681
    return-object p0

    .line 682
    :pswitch_f
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 683
    .line 684
    new-instance p0, Landroidx/compose/ui/text/style/TextDecoration;

    .line 685
    .line 686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    check-cast p1, Ljava/lang/Integer;

    .line 690
    .line 691
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 692
    .line 693
    .line 694
    move-result p1

    .line 695
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    .line 696
    .line 697
    .line 698
    return-object p0

    .line 699
    :pswitch_10
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 700
    .line 701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    check-cast p1, Ljava/util/List;

    .line 705
    .line 706
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object p0

    .line 710
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 711
    .line 712
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 713
    .line 714
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    if-eqz v1, :cond_16

    .line 719
    .line 720
    instance-of v1, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 721
    .line 722
    if-nez v1, :cond_16

    .line 723
    .line 724
    :cond_15
    move-object p0, v5

    .line 725
    goto :goto_d

    .line 726
    :cond_16
    if-eqz p0, :cond_15

    .line 727
    .line 728
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 729
    .line 730
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    check-cast p0, Ljava/util/List;

    .line 735
    .line 736
    :goto_d
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object p1

    .line 740
    if-eqz p1, :cond_17

    .line 741
    .line 742
    move-object v5, p1

    .line 743
    check-cast v5, Ljava/lang/String;

    .line 744
    .line 745
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    new-instance p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 749
    .line 750
    invoke-direct {p1, p0, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    return-object p1

    .line 754
    :pswitch_11
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 755
    .line 756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 757
    .line 758
    .line 759
    check-cast p1, Ljava/util/List;

    .line 760
    .line 761
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object p0

    .line 765
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->h:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 766
    .line 767
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;->b:Lkotlin/jvm/functions/Function1;

    .line 768
    .line 769
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 770
    .line 771
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-eqz v3, :cond_19

    .line 776
    .line 777
    instance-of v3, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 778
    .line 779
    if-nez v3, :cond_19

    .line 780
    .line 781
    :cond_18
    move-object p0, v5

    .line 782
    goto :goto_e

    .line 783
    :cond_19
    if-eqz p0, :cond_18

    .line 784
    .line 785
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object p0

    .line 789
    check-cast p0, Landroidx/compose/ui/text/SpanStyle;

    .line 790
    .line 791
    :goto_e
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-eqz v4, :cond_1b

    .line 800
    .line 801
    instance-of v4, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 802
    .line 803
    if-nez v4, :cond_1b

    .line 804
    .line 805
    :cond_1a
    move-object v3, v5

    .line 806
    goto :goto_f

    .line 807
    :cond_1b
    if-eqz v3, :cond_1a

    .line 808
    .line 809
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v3

    .line 813
    check-cast v3, Landroidx/compose/ui/text/SpanStyle;

    .line 814
    .line 815
    :goto_f
    const/4 v4, 0x2

    .line 816
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v4

    .line 820
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    if-eqz v6, :cond_1d

    .line 825
    .line 826
    instance-of v6, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 827
    .line 828
    if-nez v6, :cond_1d

    .line 829
    .line 830
    :cond_1c
    move-object v4, v5

    .line 831
    goto :goto_10

    .line 832
    :cond_1d
    if-eqz v4, :cond_1c

    .line 833
    .line 834
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    check-cast v4, Landroidx/compose/ui/text/SpanStyle;

    .line 839
    .line 840
    :goto_10
    const/4 v6, 0x3

    .line 841
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    if-eqz v2, :cond_1e

    .line 850
    .line 851
    instance-of v0, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 852
    .line 853
    if-nez v0, :cond_1e

    .line 854
    .line 855
    goto :goto_11

    .line 856
    :cond_1e
    if-eqz p1, :cond_1f

    .line 857
    .line 858
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    move-object v5, p1

    .line 863
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 864
    .line 865
    :cond_1f
    :goto_11
    new-instance p1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 866
    .line 867
    invoke-direct {p1, p0, v3, v4, v5}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    .line 868
    .line 869
    .line 870
    :pswitch_12
    return-object p1

    .line 871
    :pswitch_13
    check-cast p1, Landroidx/room/DatabaseConfiguration;

    .line 872
    .line 873
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    .line 875
    .line 876
    new-instance p0, Lkotlin/NotImplementedError;

    .line 877
    .line 878
    invoke-direct {p0, v7}, Lkotlin/NotImplementedError;-><init>(I)V

    .line 879
    .line 880
    .line 881
    throw p0

    .line 882
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 883
    .line 884
    sget-object p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->c:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 885
    .line 886
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 887
    .line 888
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 889
    .line 890
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 891
    .line 892
    aget-object v1, v1, v6

    .line 893
    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    .line 896
    .line 897
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 898
    .line 899
    .line 900
    return-object v4

    .line 901
    :pswitch_15
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 902
    .line 903
    sget-object p0, Landroidx/compose/material/ProgressIndicatorKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 904
    .line 905
    iput v3, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 906
    .line 907
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 908
    .line 909
    .line 910
    move-result-object p0

    .line 911
    invoke-virtual {p1, p0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 912
    .line 913
    .line 914
    move-result-object p0

    .line 915
    sget-object v1, Landroidx/compose/material/ProgressIndicatorKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 916
    .line 917
    iput-object v1, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->b:Landroidx/compose/animation/core/Easing;

    .line 918
    .line 919
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 920
    .line 921
    .line 922
    move-result-object p0

    .line 923
    iget v0, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 924
    .line 925
    invoke-virtual {p1, p0, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 926
    .line 927
    .line 928
    return-object v4

    .line 929
    :pswitch_16
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 930
    .line 931
    sget-object p0, Landroidx/compose/material/ProgressIndicatorKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 932
    .line 933
    iput v3, p1, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->a:I

    .line 934
    .line 935
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 936
    .line 937
    .line 938
    move-result-object p0

    .line 939
    invoke-virtual {p1, p0, v7}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 940
    .line 941
    .line 942
    move-result-object p0

    .line 943
    sget-object v2, Landroidx/compose/material/ProgressIndicatorKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 944
    .line 945
    iput-object v2, p0, Landroidx/compose/animation/core/KeyframeBaseEntity;->b:Landroidx/compose/animation/core/Easing;

    .line 946
    .line 947
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 948
    .line 949
    .line 950
    move-result-object p0

    .line 951
    invoke-virtual {p1, p0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->a(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 952
    .line 953
    .line 954
    return-object v4

    .line 955
    :pswitch_17
    check-cast p1, Landroid/content/Context;

    .line 956
    .line 957
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 958
    .line 959
    .line 960
    move-result-object p0

    .line 961
    new-instance v0, Landroid/content/Intent;

    .line 962
    .line 963
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 964
    .line 965
    .line 966
    const-string v1, "android.intent.action.PROCESS_TEXT"

    .line 967
    .line 968
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    const-string v1, "text/plain"

    .line 973
    .line 974
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    invoke-virtual {p0, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 979
    .line 980
    .line 981
    move-result-object p0

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    .line 983
    .line 984
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 989
    .line 990
    .line 991
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    :goto_12
    if-ge v7, v1, :cond_22

    .line 996
    .line 997
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    move-object v3, v2

    .line 1002
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1003
    .line 1004
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1009
    .line 1010
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v4

    .line 1016
    if-nez v4, :cond_20

    .line 1017
    .line 1018
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1019
    .line 1020
    iget-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1021
    .line 1022
    if-eqz v4, :cond_21

    .line 1023
    .line 1024
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1025
    .line 1026
    if-eqz v3, :cond_20

    .line 1027
    .line 1028
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v3

    .line 1032
    if-nez v3, :cond_21

    .line 1033
    .line 1034
    :cond_20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    :cond_21
    add-int/lit8 v7, v7, 0x1

    .line 1038
    .line 1039
    goto :goto_12

    .line 1040
    :cond_22
    return-object v0

    .line 1041
    :pswitch_18
    check-cast p1, Landroidx/compose/ui/window/PopupLayout;

    .line 1042
    .line 1043
    sget-object p0, Landroidx/compose/ui/window/PopupLayout;->N:Lwc;

    .line 1044
    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1046
    .line 1047
    .line 1048
    move-result p0

    .line 1049
    if-eqz p0, :cond_23

    .line 1050
    .line 1051
    invoke-virtual {p1}, Landroidx/compose/ui/window/PopupLayout;->r()V

    .line 1052
    .line 1053
    .line 1054
    :cond_23
    return-object v4

    .line 1055
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 1056
    .line 1057
    invoke-interface {p1}, Landroidx/compose/ui/text/font/FontVariation$Setting;->b()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object p0

    .line 1061
    invoke-interface {p1}, Landroidx/compose/ui/text/font/FontVariation$Setting;->a()F

    .line 1062
    .line 1063
    .line 1064
    move-result p1

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    const-string v1, "\'"

    .line 1068
    .line 1069
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    const-string p0, "\' "

    .line 1076
    .line 1077
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object p0

    .line 1087
    return-object p0

    .line 1088
    :pswitch_1a
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 1089
    .line 1090
    sget-object p0, Landroidx/compose/ui/layout/PlaceableKt;->a:Lwc;

    .line 1091
    .line 1092
    return-object v4

    .line 1093
    :pswitch_1b
    check-cast p1, Ljava/lang/Boolean;

    .line 1094
    .line 1095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    return-object v4

    .line 1099
    :pswitch_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1100
    .line 1101
    .line 1102
    check-cast p1, Landroidx/compose/ui/node/OwnerScope;

    .line 1103
    .line 1104
    invoke-interface {p1}, Landroidx/compose/ui/node/OwnerScope;->z()Z

    .line 1105
    .line 1106
    .line 1107
    move-result p0

    .line 1108
    xor-int/2addr p0, v6

    .line 1109
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1110
    .line 1111
    .line 1112
    move-result-object p0

    .line 1113
    return-object p0

    .line 1114
    nop

    .line 1115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
