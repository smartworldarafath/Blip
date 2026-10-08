.class public final synthetic Lh;
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
    iput p1, p0, Lh;->j:I

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
    .locals 7

    .line 1
    iget p0, p0, Lh;->j:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/ui/platform/CompositionLocalsKt;->o:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->r(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/compose/ui/text/intl/Locale;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 34
    .line 35
    instance-of p0, p1, Landroidx/compose/ui/node/LayoutNode;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 41
    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-boolean p0, v0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 45
    .line 46
    if-ne p0, v2, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Apply is called on deactivated node "

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-object v3

    .line 66
    :pswitch_1
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_2
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 80
    .line 81
    return-object p0

    .line 82
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 83
    .line 84
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->c(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 85
    .line 86
    .line 87
    return-object v3

    .line 88
    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 89
    .line 90
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 91
    .line 92
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 93
    .line 94
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    check-cast p0, Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string p1, "android.software.leanback"

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_2

    .line 116
    .line 117
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec;->a:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;

    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion;->c:Landroidx/compose/foundation/gestures/BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    sget-object p0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->b:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    .line 126
    .line 127
    :goto_0
    return-object p0

    .line 128
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 129
    .line 130
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 133
    .line 134
    .line 135
    return-object v3

    .line 136
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 137
    .line 138
    sget p0, Landroidx/compose/foundation/text/BasicTextFieldKt;->a:I

    .line 139
    .line 140
    return-object v3

    .line 141
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->a1()V

    .line 144
    .line 145
    .line 146
    return-object v3

    .line 147
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 153
    .line 154
    .line 155
    return-object v3

    .line 156
    :pswitch_9
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 157
    .line 158
    sget-object p0, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object p0, p1, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 164
    .line 165
    return-object p0

    .line 166
    :pswitch_a
    check-cast p1, Lkotlin/time/Duration;

    .line 167
    .line 168
    sget-object p0, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 169
    .line 170
    iget-wide p0, p1, Lkotlin/time/Duration;->j:J

    .line 171
    .line 172
    sget-object v0, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 173
    .line 174
    const/16 v0, 0x1e

    .line 175
    .line 176
    sget-object v3, Lkotlin/time/DurationUnit;->l:Lkotlin/time/DurationUnit;

    .line 177
    .line 178
    invoke-static {v0, v3}, Lkotlin/time/DurationKt;->d(ILkotlin/time/DurationUnit;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    invoke-static {p0, p1, v3, v4}, Lkotlin/time/Duration;->c(JJ)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-lez p0, :cond_3

    .line 187
    .line 188
    move v1, v2

    .line 189
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_b
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const/4 p0, 0x3

    .line 200
    invoke-static {v0, p0}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {v0, p0}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {p1, p0}, Landroidx/compose/animation/AnimatedContentKt;->d(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :pswitch_c
    check-cast p1, Lnet/blip/android/ui/audiopicker/AudioFile;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    iget-object p0, p1, Lnet/blip/android/ui/audiopicker/AudioFile;->d:Landroid/net/Uri;

    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_d
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State;

    .line 222
    .line 223
    return-object p1

    .line 224
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 225
    .line 226
    sget-object p0, Landroidx/compose/ui/text/AnnotatedStringKt;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 227
    .line 228
    instance-of p0, p1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 229
    .line 230
    xor-int/2addr p0, v2

    .line 231
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    return-object p0

    .line 236
    :pswitch_f
    check-cast p1, Landroid/view/View;

    .line 237
    .line 238
    return-object v3

    .line 239
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 240
    .line 241
    sget-object p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 242
    .line 243
    return-object v3

    .line 244
    :pswitch_11
    check-cast p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 245
    .line 246
    sget-object p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->A:Lo2;

    .line 253
    .line 254
    new-instance v0, Lq0;

    .line 255
    .line 256
    const/4 v1, 0x4

    .line 257
    invoke-direct {v0, v1, p1}, Lq0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    return-object v3

    .line 264
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/unit/TextUnit;

    .line 265
    .line 266
    sget-object p0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 267
    .line 268
    iget-wide p0, p1, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 269
    .line 270
    const/16 v0, 0xa

    .line 271
    .line 272
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 277
    .line 278
    .line 279
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-gtz v0, :cond_4

    .line 292
    .line 293
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    .line 294
    .line 295
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 296
    .line 297
    .line 298
    move-result-wide p0

    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :cond_4
    const/16 v0, 0xc

    .line 302
    .line 303
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 304
    .line 305
    .line 306
    move-result-wide v3

    .line 307
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 308
    .line 309
    .line 310
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-gtz v0, :cond_5

    .line 323
    .line 324
    const-wide p0, 0x3fd3333333333333L    # 0.3

    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 330
    .line 331
    .line 332
    move-result-wide p0

    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_5
    const/16 v0, 0xe

    .line 336
    .line 337
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 338
    .line 339
    .line 340
    move-result-wide v3

    .line 341
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 342
    .line 343
    .line 344
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-gtz v0, :cond_6

    .line 357
    .line 358
    const-wide/high16 p0, 0x3fd0000000000000L    # 0.25

    .line 359
    .line 360
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 361
    .line 362
    .line 363
    move-result-wide p0

    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_6
    const/16 v0, 0x10

    .line 367
    .line 368
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v3

    .line 372
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 373
    .line 374
    .line 375
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-gtz v0, :cond_7

    .line 388
    .line 389
    const-wide p0, 0x3fc3333333333333L    # 0.15

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 395
    .line 396
    .line 397
    move-result-wide p0

    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_7
    const/16 v0, 0x12

    .line 401
    .line 402
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 403
    .line 404
    .line 405
    move-result-wide v3

    .line 406
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 407
    .line 408
    .line 409
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-gtz v0, :cond_8

    .line 422
    .line 423
    const-wide p0, 0x3fb999999999999aL    # 0.1

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 429
    .line 430
    .line 431
    move-result-wide p0

    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :cond_8
    const/16 v0, 0x14

    .line 435
    .line 436
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    invoke-static {p0, p1, v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 441
    .line 442
    .line 443
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    const-wide v3, -0x4056666666666666L    # -0.05

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    if-gtz v0, :cond_9

    .line 461
    .line 462
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 463
    .line 464
    .line 465
    move-result-wide p0

    .line 466
    goto/16 :goto_1

    .line 467
    .line 468
    :cond_9
    const/16 v0, 0x18

    .line 469
    .line 470
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v5

    .line 474
    invoke-static {p0, p1, v5, v6}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 475
    .line 476
    .line 477
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-gtz v0, :cond_a

    .line 490
    .line 491
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 492
    .line 493
    .line 494
    move-result-wide p0

    .line 495
    goto :goto_1

    .line 496
    :cond_a
    const/16 v0, 0x1c

    .line 497
    .line 498
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v0

    .line 502
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 503
    .line 504
    .line 505
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-gtz v0, :cond_b

    .line 518
    .line 519
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 520
    .line 521
    .line 522
    move-result-wide p0

    .line 523
    goto :goto_1

    .line 524
    :cond_b
    const/16 v0, 0x20

    .line 525
    .line 526
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 527
    .line 528
    .line 529
    move-result-wide v0

    .line 530
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 531
    .line 532
    .line 533
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-gtz v0, :cond_c

    .line 546
    .line 547
    const-wide p0, -0x403ccccccccccccdL    # -0.15

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 553
    .line 554
    .line 555
    move-result-wide p0

    .line 556
    goto :goto_1

    .line 557
    :cond_c
    const/16 v0, 0x24

    .line 558
    .line 559
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 560
    .line 561
    .line 562
    move-result-wide v0

    .line 563
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->a(JJ)V

    .line 564
    .line 565
    .line 566
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 567
    .line 568
    .line 569
    move-result p0

    .line 570
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 575
    .line 576
    .line 577
    move-result p0

    .line 578
    if-gtz p0, :cond_d

    .line 579
    .line 580
    const-wide/high16 p0, -0x4018000000000000L    # -0.75

    .line 581
    .line 582
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 583
    .line 584
    .line 585
    move-result-wide p0

    .line 586
    goto :goto_1

    .line 587
    :cond_d
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 588
    .line 589
    .line 590
    move-result-wide p0

    .line 591
    :goto_1
    new-instance v0, Landroidx/compose/ui/unit/TextUnit;

    .line 592
    .line 593
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 594
    .line 595
    .line 596
    return-object v0

    .line 597
    :pswitch_13
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 598
    .line 599
    sget-object p0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 600
    .line 601
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 602
    .line 603
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 604
    .line 605
    invoke-interface {p1, p0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    return-object v3

    .line 609
    :pswitch_14
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 610
    .line 611
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 612
    .line 613
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 614
    .line 615
    invoke-interface {p1, p0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    return-object v3

    .line 619
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 620
    .line 621
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNode_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 622
    .line 623
    .line 624
    move-result p0

    .line 625
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    return-object p0

    .line 630
    :pswitch_16
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 631
    .line 632
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 633
    .line 634
    move-object v0, p1

    .line 635
    check-cast v0, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    invoke-static {v0, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 644
    .line 645
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 646
    .line 647
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object p0

    .line 651
    check-cast p0, Landroid/content/Context;

    .line 652
    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    return-object p0

    .line 658
    :pswitch_17
    check-cast p1, Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 659
    .line 660
    return-object p1

    .line 661
    :pswitch_18
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 662
    .line 663
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 664
    .line 665
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNode_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 666
    .line 667
    .line 668
    move-result p0

    .line 669
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 670
    .line 671
    .line 672
    move-result-object p0

    .line 673
    return-object p0

    .line 674
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 675
    .line 676
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->R0:Ljava/lang/Class;

    .line 677
    .line 678
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 679
    .line 680
    return-object p0

    .line 681
    :pswitch_1a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 682
    .line 683
    return-object p0

    .line 684
    :pswitch_1b
    check-cast p1, Landroid/content/Context;

    .line 685
    .line 686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 690
    .line 691
    if-eqz p0, :cond_e

    .line 692
    .line 693
    check-cast p1, Landroid/content/ContextWrapper;

    .line 694
    .line 695
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    :cond_e
    return-object v0

    .line 700
    :pswitch_1c
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    .line 701
    .line 702
    if-nez p1, :cond_f

    .line 703
    .line 704
    goto :goto_2

    .line 705
    :cond_f
    iget p0, p1, Landroidx/compose/ui/input/pointer/PointerType;->a:I

    .line 706
    .line 707
    const/4 p1, 0x2

    .line 708
    if-ne p0, p1, :cond_10

    .line 709
    .line 710
    move v1, v2

    .line 711
    :cond_10
    :goto_2
    xor-int/lit8 p0, v1, 0x1

    .line 712
    .line 713
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 714
    .line 715
    .line 716
    move-result-object p0

    .line 717
    return-object p0

    .line 718
    nop

    .line 719
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
