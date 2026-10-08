.class public final synthetic Lz6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz6;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 7
    iput p2, p0, Lz6;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p0, p0, Lz6;->j:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 13
    .line 14
    check-cast p2, Landroidx/compose/ui/text/TextRange;

    .line 15
    .line 16
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 17
    .line 18
    iget-wide p0, p2, Landroidx/compose/ui/text/TextRange;->a:J

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    shr-long/2addr p0, v0

    .line 23
    long-to-int p0, p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-wide p1, p2, Landroidx/compose/ui/text/TextRange;->a:J

    .line 29
    .line 30
    const-wide v0, 0xffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr p1, v0

    .line 36
    long-to-int p1, p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 51
    .line 52
    check-cast p2, Ljava/util/List;

    .line 53
    .line 54
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 55
    .line 56
    new-instance p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_0
    if-ge v2, v0, :cond_0

    .line 70
    .line 71
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 76
    .line 77
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->b:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 78
    .line 79
    invoke-static {v1, v3, p1}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    return-object p0

    .line 90
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 91
    .line 92
    check-cast p2, Landroidx/compose/ui/text/style/BaselineShift;

    .line 93
    .line 94
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 95
    .line 96
    iget p0, p2, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 104
    .line 105
    check-cast p2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 106
    .line 107
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 108
    .line 109
    iget-object p0, p2, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    .line 110
    .line 111
    iget-object p2, p2, Landroidx/compose/ui/text/LinkAnnotation$Url;->b:Landroidx/compose/ui/text/TextLinkStyles;

    .line 112
    .line 113
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->i:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 114
    .line 115
    invoke-static {p2, v0, p1}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 129
    .line 130
    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    .line 131
    .line 132
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 133
    .line 134
    iget p0, p2, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 135
    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 142
    .line 143
    check-cast p2, Landroidx/compose/ui/text/style/TextIndent;

    .line 144
    .line 145
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 146
    .line 147
    iget-wide v0, p2, Landroidx/compose/ui/text/style/TextIndent;->a:J

    .line 148
    .line 149
    new-instance p0, Landroidx/compose/ui/unit/TextUnit;

    .line 150
    .line 151
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->v:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 155
    .line 156
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    iget-wide v1, p2, Landroidx/compose/ui/text/style/TextIndent;->b:J

    .line 161
    .line 162
    new-instance p2, Landroidx/compose/ui/unit/TextUnit;

    .line 163
    .line 164
    invoke-direct {p2, v1, v2}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 165
    .line 166
    .line 167
    invoke-static {p2, v0, p1}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0

    .line 180
    :pswitch_5
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 181
    .line 182
    check-cast p2, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 183
    .line 184
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 185
    .line 186
    iget p0, p2, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    .line 187
    .line 188
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    iget p1, p2, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    .line 193
    .line 194
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    filled-new-array {p0, p1}, [Ljava/lang/Float;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 208
    .line 209
    check-cast p2, Landroidx/compose/ui/text/style/TextDecoration;

    .line 210
    .line 211
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 212
    .line 213
    iget p0, p2, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    .line 214
    .line 215
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :pswitch_7
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 221
    .line 222
    check-cast p2, Landroidx/compose/ui/text/AnnotatedString;

    .line 223
    .line 224
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 225
    .line 226
    iget-object p0, p2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 227
    .line 228
    iget-object p2, p2, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 229
    .line 230
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->a:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 231
    .line 232
    invoke-static {p2, v0, p1}, Landroidx/compose/ui/text/SaversKt;->a(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    return-object p0

    .line 245
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 246
    .line 247
    return-object p2

    .line 248
    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 255
    .line 256
    add-int/2addr p0, v4

    .line 257
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :pswitch_a
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 263
    .line 264
    check-cast p2, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    and-int/lit8 p2, p0, 0x3

    .line 271
    .line 272
    if-eq p2, v0, :cond_1

    .line 273
    .line 274
    move p2, v4

    .line 275
    goto :goto_1

    .line 276
    :cond_1
    move p2, v2

    .line 277
    :goto_1
    and-int/2addr p0, v4

    .line 278
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 279
    .line 280
    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_2

    .line 285
    .line 286
    sget-object p0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 287
    .line 288
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    check-cast p0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 293
    .line 294
    iget-wide v0, p0, Lnet/blip/android/ui/androidtheme/AndroidColors;->a:J

    .line 295
    .line 296
    const p0, 0x3d23d70a    # 0.04f

    .line 297
    .line 298
    .line 299
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 300
    .line 301
    .line 302
    move-result-wide v0

    .line 303
    sget-object p0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 304
    .line 305
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 306
    .line 307
    invoke-static {p2, v0, v1, p0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    invoke-static {p0}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-static {p0, p1, v2}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 320
    .line 321
    .line 322
    :goto_2
    return-object v3

    .line 323
    :pswitch_b
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 324
    .line 325
    check-cast p2, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    invoke-static {p0, p1}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->d(ILandroidx/compose/runtime/Composer;)V

    .line 335
    .line 336
    .line 337
    return-object v3

    .line 338
    :pswitch_c
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 339
    .line 340
    check-cast p2, Ljava/lang/Integer;

    .line 341
    .line 342
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    invoke-static {p0, p1}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 350
    .line 351
    .line 352
    return-object v3

    .line 353
    :pswitch_d
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 354
    .line 355
    check-cast p2, Ljava/lang/Integer;

    .line 356
    .line 357
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 361
    .line 362
    .line 363
    move-result p0

    .line 364
    invoke-static {p0, p1}, LOnboardingScreenKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 365
    .line 366
    .line 367
    return-object v3

    .line 368
    :pswitch_e
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 369
    .line 370
    check-cast p2, Ljava/lang/Integer;

    .line 371
    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    invoke-static {p0, p1}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 380
    .line 381
    .line 382
    return-object v3

    .line 383
    :pswitch_f
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 384
    .line 385
    check-cast p2, Lnet/blip/libblip/frontend/Transfer;

    .line 386
    .line 387
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 388
    .line 389
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 390
    .line 391
    if-ne p0, v0, :cond_3

    .line 392
    .line 393
    iget-wide v0, p1, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 394
    .line 395
    iget-wide v5, p2, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 396
    .line 397
    cmp-long p0, v0, v5

    .line 398
    .line 399
    if-nez p0, :cond_3

    .line 400
    .line 401
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 402
    .line 403
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 404
    .line 405
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    if-eqz p0, :cond_3

    .line 410
    .line 411
    iget-object p0, p1, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 412
    .line 413
    iget-object p1, p2, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 414
    .line 415
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    if-eqz p0, :cond_3

    .line 420
    .line 421
    move v2, v4

    .line 422
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    return-object p0

    .line 427
    :pswitch_10
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 428
    .line 429
    check-cast p2, Landroidx/navigation/NavHostController;

    .line 430
    .line 431
    iget-object p0, p2, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 432
    .line 433
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->n:Ljava/util/LinkedHashMap;

    .line 434
    .line 435
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 436
    .line 437
    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->m:Ljava/util/LinkedHashMap;

    .line 438
    .line 439
    new-instance v4, Ljava/util/ArrayList;

    .line 440
    .line 441
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .line 443
    .line 444
    new-array v5, v2, [Lkotlin/Pair;

    .line 445
    .line 446
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, [Lkotlin/Pair;

    .line 451
    .line 452
    invoke-static {v5}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->d:Landroid/os/Bundle;

    .line 457
    .line 458
    const-string v7, "android-support-nav:controller:navigatorState:names"

    .line 459
    .line 460
    if-eqz v6, :cond_7

    .line 461
    .line 462
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-eqz v8, :cond_7

    .line 467
    .line 468
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    if-eqz v8, :cond_6

    .line 473
    .line 474
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    if-eqz v9, :cond_7

    .line 483
    .line 484
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    if-eqz v10, :cond_4

    .line 498
    .line 499
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    if-eqz v10, :cond_5

    .line 504
    .line 505
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 509
    .line 510
    .line 511
    goto :goto_3

    .line 512
    :cond_5
    invoke-static {v9}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw v1

    .line 516
    :cond_6
    invoke-static {v7}, Landroidx/savedstate/SavedStateReaderKt;->a(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    throw v1

    .line 520
    :cond_7
    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 521
    .line 522
    iget-object v6, v6, Landroidx/navigation/NavigatorProvider;->a:Ljava/util/LinkedHashMap;

    .line 523
    .line 524
    invoke-static {v6}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    if-eqz v8, :cond_8

    .line 541
    .line 542
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v8

    .line 546
    check-cast v8, Ljava/util/Map$Entry;

    .line 547
    .line 548
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    check-cast v9, Ljava/lang/String;

    .line 553
    .line 554
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v8

    .line 558
    check-cast v8, Landroidx/navigation/Navigator;

    .line 559
    .line 560
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    goto :goto_4

    .line 564
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-nez v6, :cond_9

    .line 569
    .line 570
    new-array v1, v2, [Lkotlin/Pair;

    .line 571
    .line 572
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    check-cast v1, [Lkotlin/Pair;

    .line 577
    .line 578
    invoke-static {v1}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    invoke-static {v5, v7, v4}, Landroidx/savedstate/SavedStateWriter;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 583
    .line 584
    .line 585
    const-string v4, "android-support-nav:controller:navigatorState"

    .line 586
    .line 587
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 588
    .line 589
    .line 590
    :cond_9
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    const-string v5, "android-support-nav:controller:backStack"

    .line 595
    .line 596
    if-nez v4, :cond_c

    .line 597
    .line 598
    if-nez v1, :cond_a

    .line 599
    .line 600
    new-array p0, v2, [Lkotlin/Pair;

    .line 601
    .line 602
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object p0

    .line 606
    check-cast p0, [Lkotlin/Pair;

    .line 607
    .line 608
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    move-object v1, p0

    .line 613
    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    if-eqz v4, :cond_b

    .line 627
    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v4

    .line 632
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 633
    .line 634
    new-instance v6, Landroidx/navigation/NavBackStackEntryState;

    .line 635
    .line 636
    invoke-direct {v6, v4}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->b()Landroid/os/Bundle;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    goto :goto_5

    .line 647
    :cond_b
    invoke-virtual {v1, v5, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 648
    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_c
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    .line 652
    .line 653
    if-eqz v0, :cond_f

    .line 654
    .line 655
    if-nez v1, :cond_d

    .line 656
    .line 657
    new-array v0, v2, [Lkotlin/Pair;

    .line 658
    .line 659
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, [Lkotlin/Pair;

    .line 664
    .line 665
    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    move-object v1, v0

    .line 670
    :cond_d
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->e:[Landroid/os/Bundle;

    .line 671
    .line 672
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    instance-of v0, p0, Ljava/util/ArrayList;

    .line 680
    .line 681
    if-eqz v0, :cond_e

    .line 682
    .line 683
    check-cast p0, Ljava/util/ArrayList;

    .line 684
    .line 685
    goto :goto_6

    .line 686
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 689
    .line 690
    .line 691
    move-object p0, v0

    .line 692
    :goto_6
    invoke-virtual {v1, v5, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 693
    .line 694
    .line 695
    :cond_f
    :goto_7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 696
    .line 697
    .line 698
    move-result p0

    .line 699
    if-nez p0, :cond_13

    .line 700
    .line 701
    if-nez v1, :cond_10

    .line 702
    .line 703
    new-array p0, v2, [Lkotlin/Pair;

    .line 704
    .line 705
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object p0

    .line 709
    check-cast p0, [Lkotlin/Pair;

    .line 710
    .line 711
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    move-object v1, p0

    .line 716
    :cond_10
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 717
    .line 718
    .line 719
    move-result p0

    .line 720
    new-array p0, p0, [I

    .line 721
    .line 722
    new-instance v0, Ljava/util/ArrayList;

    .line 723
    .line 724
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    move v4, v2

    .line 736
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    if-eqz v5, :cond_12

    .line 741
    .line 742
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    check-cast v5, Ljava/util/Map$Entry;

    .line 747
    .line 748
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v6

    .line 752
    check-cast v6, Ljava/lang/Number;

    .line 753
    .line 754
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    check-cast v5, Ljava/lang/String;

    .line 763
    .line 764
    add-int/lit8 v7, v4, 0x1

    .line 765
    .line 766
    aput v6, p0, v4

    .line 767
    .line 768
    if-nez v5, :cond_11

    .line 769
    .line 770
    const-string v5, ""

    .line 771
    .line 772
    :cond_11
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move v4, v7

    .line 776
    goto :goto_8

    .line 777
    :cond_12
    const-string v3, "android-support-nav:controller:backStackDestIds"

    .line 778
    .line 779
    invoke-virtual {v1, v3, p0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 780
    .line 781
    .line 782
    const-string p0, "android-support-nav:controller:backStackIds"

    .line 783
    .line 784
    invoke-static {v1, p0, v0}, Landroidx/savedstate/SavedStateWriter;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 785
    .line 786
    .line 787
    :cond_13
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 788
    .line 789
    .line 790
    move-result p0

    .line 791
    if-nez p0, :cond_17

    .line 792
    .line 793
    if-nez v1, :cond_14

    .line 794
    .line 795
    new-array p0, v2, [Lkotlin/Pair;

    .line 796
    .line 797
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object p0

    .line 801
    check-cast p0, [Lkotlin/Pair;

    .line 802
    .line 803
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    move-object v1, p0

    .line 808
    :cond_14
    new-instance p0, Ljava/util/ArrayList;

    .line 809
    .line 810
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    if-eqz v0, :cond_16

    .line 826
    .line 827
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    check-cast v0, Ljava/util/Map$Entry;

    .line 832
    .line 833
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    check-cast v3, Ljava/lang/String;

    .line 838
    .line 839
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 844
    .line 845
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    new-instance v4, Ljava/util/ArrayList;

    .line 849
    .line 850
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 858
    .line 859
    .line 860
    move-result v5

    .line 861
    if-eqz v5, :cond_15

    .line 862
    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    .line 868
    .line 869
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntryState;->b()Landroid/os/Bundle;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    goto :goto_a

    .line 877
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    const-string v5, "android-support-nav:controller:backStackStates:"

    .line 880
    .line 881
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 892
    .line 893
    .line 894
    goto :goto_9

    .line 895
    :cond_16
    const-string p1, "android-support-nav:controller:backStackStates"

    .line 896
    .line 897
    invoke-static {v1, p1, p0}, Landroidx/savedstate/SavedStateWriter;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 898
    .line 899
    .line 900
    :cond_17
    iget-boolean p0, p2, Landroidx/navigation/NavController;->e:Z

    .line 901
    .line 902
    if-eqz p0, :cond_19

    .line 903
    .line 904
    if-nez v1, :cond_18

    .line 905
    .line 906
    new-array p0, v2, [Lkotlin/Pair;

    .line 907
    .line 908
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object p0

    .line 912
    check-cast p0, [Lkotlin/Pair;

    .line 913
    .line 914
    invoke-static {p0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 915
    .line 916
    .line 917
    move-result-object p0

    .line 918
    move-object v1, p0

    .line 919
    :cond_18
    const-string p0, "android-support-nav:controller:deepLinkHandled"

    .line 920
    .line 921
    iget-boolean p1, p2, Landroidx/navigation/NavController;->e:Z

    .line 922
    .line 923
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    .line 925
    .line 926
    :cond_19
    return-object v1

    .line 927
    :pswitch_11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 928
    .line 929
    check-cast p2, Ljava/lang/Integer;

    .line 930
    .line 931
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 935
    .line 936
    .line 937
    move-result p0

    .line 938
    invoke-static {p0, p1}, Lnet/blip/android/ui/list/ListRowKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 939
    .line 940
    .line 941
    return-object v3

    .line 942
    :pswitch_12
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 943
    .line 944
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListState;

    .line 945
    .line 946
    iget-object p0, p2, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 947
    .line 948
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 949
    .line 950
    .line 951
    move-result p0

    .line 952
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    .line 954
    .line 955
    move-result-object p0

    .line 956
    iget-object p1, p2, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 957
    .line 958
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 959
    .line 960
    .line 961
    move-result p1

    .line 962
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 963
    .line 964
    .line 965
    move-result-object p1

    .line 966
    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    .line 967
    .line 968
    .line 969
    move-result-object p0

    .line 970
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 971
    .line 972
    .line 973
    move-result-object p0

    .line 974
    return-object p0

    .line 975
    :pswitch_13
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 976
    .line 977
    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 978
    .line 979
    iget-object p0, p2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 980
    .line 981
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->a()I

    .line 982
    .line 983
    .line 984
    move-result p0

    .line 985
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 986
    .line 987
    .line 988
    move-result-object p0

    .line 989
    iget-object p1, p2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 990
    .line 991
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->b()I

    .line 992
    .line 993
    .line 994
    move-result p1

    .line 995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 996
    .line 997
    .line 998
    move-result-object p1

    .line 999
    filled-new-array {p0, p1}, [Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object p0

    .line 1003
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p0

    .line 1007
    return-object p0

    .line 1008
    :pswitch_14
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    .line 1009
    .line 1010
    check-cast p2, Ljava/lang/Integer;

    .line 1011
    .line 1012
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 1013
    .line 1014
    .line 1015
    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->a(I)J

    .line 1016
    .line 1017
    .line 1018
    move-result-wide p0

    .line 1019
    new-instance p2, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 1020
    .line 1021
    invoke-direct {p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;-><init>(J)V

    .line 1022
    .line 1023
    .line 1024
    return-object p2

    .line 1025
    :pswitch_15
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 1026
    .line 1027
    check-cast p2, Ljava/lang/Integer;

    .line 1028
    .line 1029
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1033
    .line 1034
    .line 1035
    move-result p0

    .line 1036
    invoke-static {p0, p1}, Lnet/blip/android/ui/home/HomeTopBarKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1037
    .line 1038
    .line 1039
    return-object v3

    .line 1040
    :pswitch_16
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 1041
    .line 1042
    check-cast p2, Ljava/lang/Integer;

    .line 1043
    .line 1044
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1045
    .line 1046
    .line 1047
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1048
    .line 1049
    .line 1050
    move-result p0

    .line 1051
    invoke-static {p0, p1}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->b(ILandroidx/compose/runtime/Composer;)V

    .line 1052
    .line 1053
    .line 1054
    return-object v3

    .line 1055
    :pswitch_17
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 1056
    .line 1057
    check-cast p2, Ljava/lang/Integer;

    .line 1058
    .line 1059
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    .line 1061
    .line 1062
    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1063
    .line 1064
    .line 1065
    move-result p0

    .line 1066
    invoke-static {p0, p1}, Lnet/blip/android/ui/help/HelpScreenSendToOtherPeopleKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1067
    .line 1068
    .line 1069
    return-object v3

    .line 1070
    :pswitch_18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result p0

    .line 1074
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p0

    .line 1078
    return-object p0

    .line 1079
    :pswitch_19
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 1080
    .line 1081
    check-cast p2, Landroidx/compose/material/DrawerState;

    .line 1082
    .line 1083
    iget-object p0, p2, Landroidx/compose/material/DrawerState;->a:Landroidx/compose/material/AnchoredDraggableState;

    .line 1084
    .line 1085
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 1086
    .line 1087
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 1088
    .line 1089
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object p0

    .line 1093
    check-cast p0, Landroidx/compose/material/DrawerValue;

    .line 1094
    .line 1095
    return-object p0

    .line 1096
    :pswitch_1a
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1097
    .line 1098
    check-cast p2, Ljava/lang/Integer;

    .line 1099
    .line 1100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    .line 1102
    .line 1103
    sget-object p0, Landroidx/compose/animation/EnterExitTransitionKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 1104
    .line 1105
    const/high16 p0, 0x43c80000    # 400.0f

    .line 1106
    .line 1107
    const/4 p1, 0x5

    .line 1108
    const/4 p2, 0x0

    .line 1109
    invoke-static {p2, p0, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 1110
    .line 1111
    .line 1112
    move-result-object p0

    .line 1113
    const p1, 0x3f333333    # 0.7f

    .line 1114
    .line 1115
    .line 1116
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 1117
    .line 1118
    invoke-static {p1, v0, v1, p0}, Landroidx/compose/animation/EnterExitTransitionKt;->f(FJLandroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    .line 1119
    .line 1120
    .line 1121
    move-result-object p0

    .line 1122
    return-object p0

    .line 1123
    :pswitch_1b
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 1124
    .line 1125
    check-cast p2, Ljava/lang/Integer;

    .line 1126
    .line 1127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1128
    .line 1129
    .line 1130
    const/high16 p0, 0x44c80000    # 1600.0f

    .line 1131
    .line 1132
    const/4 p1, 0x4

    .line 1133
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1134
    .line 1135
    invoke-static {p2, p0, v1, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 1136
    .line 1137
    .line 1138
    move-result-object p0

    .line 1139
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 1140
    .line 1141
    .line 1142
    move-result-object p0

    .line 1143
    return-object p0

    .line 1144
    :pswitch_1c
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 1145
    .line 1146
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1147
    .line 1148
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1149
    .line 1150
    .line 1151
    move-result-object p0

    .line 1152
    return-object p0

    .line 1153
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
