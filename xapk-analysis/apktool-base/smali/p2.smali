.class public final synthetic Lp2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/NestedScrollScope;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    iput p2, p0, Lp2;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lp2;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lp2;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lp2;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lp2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2;->k:Ljava/lang/Object;

    iput-object p2, p0, Lp2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lp2;->l:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Lp2;->j:I

    iput-object p1, p0, Lp2;->k:Ljava/lang/Object;

    iput-object p2, p0, Lp2;->l:Ljava/lang/Object;

    iput-object p3, p0, Lp2;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V
    .locals 0

    .line 16
    const/4 p4, 0x5

    iput p4, p0, Lp2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2;->k:Ljava/lang/Object;

    iput-object p2, p0, Lp2;->l:Ljava/lang/Object;

    iput-object p3, p0, Lp2;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp2;->j:I

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/high16 v5, -0x40800000    # -1.0f

    .line 13
    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    const/4 v9, 0x0

    .line 19
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    iget-object v11, v0, Lp2;->m:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v12, v0, Lp2;->l:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v0, v0, Lp2;->k:Ljava/lang/Object;

    .line 26
    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 31
    .line 32
    check-cast v12, Landroidx/compose/animation/core/Animatable;

    .line 33
    .line 34
    check-cast v11, Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h(F)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v12}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o(F)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p(F)V

    .line 95
    .line 96
    .line 97
    return-object v10

    .line 98
    :pswitch_0
    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 99
    .line 100
    check-cast v12, Landroidx/compose/ui/graphics/painter/Painter;

    .line 101
    .line 102
    check-cast v11, Landroidx/compose/ui/graphics/painter/Painter;

    .line 103
    .line 104
    move-object/from16 v1, p1

    .line 105
    .line 106
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State;

    .line 107
    .line 108
    sget v2, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 109
    .line 110
    instance-of v2, v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 111
    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    new-instance v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Lcoil3/compose/AsyncImagePainter$State$Loading;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    instance-of v0, v1, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 130
    .line 131
    iget-object v0, v1, Lcoil3/compose/AsyncImagePainter$State$Error;->a:Lcoil3/request/ErrorResult;

    .line 132
    .line 133
    iget-object v0, v0, Lcoil3/request/ErrorResult;->c:Ljava/lang/Throwable;

    .line 134
    .line 135
    instance-of v0, v0, Lcoil3/request/NullRequestDataException;

    .line 136
    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    if-eqz v12, :cond_3

    .line 140
    .line 141
    invoke-static {v1, v12}, Lcoil3/compose/AsyncImagePainter$State$Error;->b(Lcoil3/compose/AsyncImagePainter$State$Error;Landroidx/compose/ui/graphics/painter/Painter;)Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    if-eqz v11, :cond_3

    .line 147
    .line 148
    invoke-static {v1, v11}, Lcoil3/compose/AsyncImagePainter$State$Error;->b(Lcoil3/compose/AsyncImagePainter$State$Error;Landroidx/compose/ui/graphics/painter/Painter;)Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :cond_3
    :goto_0
    return-object v1

    .line 153
    :pswitch_1
    check-cast v0, Landroidx/compose/ui/text/input/EditProcessor;

    .line 154
    .line 155
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 158
    .line 159
    move-object/from16 v1, p1

    .line 160
    .line 161
    check-cast v1, Ljava/util/List;

    .line 162
    .line 163
    iget-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, Landroidx/compose/ui/text/input/TextInputSession;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v2, :cond_4

    .line 172
    .line 173
    iget-object v1, v2, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 174
    .line 175
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 182
    .line 183
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_4

    .line 188
    .line 189
    iget-object v1, v2, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 190
    .line 191
    invoke-interface {v1, v9, v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->f(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    return-object v10

    .line 198
    :pswitch_2
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 199
    .line 200
    check-cast v12, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 201
    .line 202
    check-cast v11, Landroidx/compose/ui/text/SpanStyle;

    .line 203
    .line 204
    move-object/from16 v1, p1

    .line 205
    .line 206
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 207
    .line 208
    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 209
    .line 210
    if-eqz v2, :cond_6

    .line 211
    .line 212
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 213
    .line 214
    iget v3, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 215
    .line 216
    iget v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 217
    .line 218
    instance-of v2, v2, Landroidx/compose/ui/text/SpanStyle;

    .line 219
    .line 220
    if-eqz v2, :cond_6

    .line 221
    .line 222
    iget v2, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 223
    .line 224
    if-ne v4, v2, :cond_6

    .line 225
    .line 226
    iget v2, v12, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 227
    .line 228
    if-ne v3, v2, :cond_6

    .line 229
    .line 230
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 231
    .line 232
    if-nez v11, :cond_5

    .line 233
    .line 234
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 235
    .line 236
    const/16 v31, 0x0

    .line 237
    .line 238
    const v32, 0xffff

    .line 239
    .line 240
    .line 241
    const-wide/16 v14, 0x0

    .line 242
    .line 243
    const-wide/16 v16, 0x0

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    const/16 v19, 0x0

    .line 248
    .line 249
    const/16 v20, 0x0

    .line 250
    .line 251
    const/16 v21, 0x0

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const-wide/16 v23, 0x0

    .line 256
    .line 257
    const/16 v25, 0x0

    .line 258
    .line 259
    const/16 v26, 0x0

    .line 260
    .line 261
    const/16 v27, 0x0

    .line 262
    .line 263
    const-wide/16 v28, 0x0

    .line 264
    .line 265
    const/16 v30, 0x0

    .line 266
    .line 267
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 268
    .line 269
    .line 270
    move-object v11, v13

    .line 271
    :cond_5
    invoke-direct {v2, v4, v3, v11}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_6
    move-object v2, v1

    .line 276
    :goto_1
    invoke-virtual {v12, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 281
    .line 282
    return-object v2

    .line 283
    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 284
    .line 285
    check-cast v12, Ljava/lang/String;

    .line 286
    .line 287
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 288
    .line 289
    move-object/from16 v1, p1

    .line 290
    .line 291
    check-cast v1, Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    new-instance v2, Lnet/blip/libblip/event/UpdateDevice;

    .line 297
    .line 298
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 299
    .line 300
    invoke-direct {v2, v12, v1, v9, v3}, Lnet/blip/libblip/event/UpdateDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/event/UpdateDevice$Settings;Lokio/ByteString;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-interface {v11, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    return-object v10

    .line 312
    :pswitch_4
    check-cast v0, Lnet/blip/shared/SelectionListState;

    .line 313
    .line 314
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 315
    .line 316
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 317
    .line 318
    move-object/from16 v1, p1

    .line 319
    .line 320
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    new-instance v2, Lnet/blip/shared/SelectableLazyListScope;

    .line 326
    .line 327
    new-instance v3, Lma;

    .line 328
    .line 329
    const/16 v4, 0x13

    .line 330
    .line 331
    invoke-direct {v3, v4, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-direct {v2, v1, v3}, Lnet/blip/shared/SelectableLazyListScope;-><init>(Landroidx/compose/foundation/lazy/LazyListScope;Lma;)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v12, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    invoke-interface {v11, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    return-object v10

    .line 344
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 345
    .line 346
    check-cast v12, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 347
    .line 348
    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 349
    .line 350
    move-object/from16 v1, p1

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 353
    .line 354
    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 355
    .line 356
    invoke-interface {v0, v2, v3, v12}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->d(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_7

    .line 361
    .line 362
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 363
    .line 364
    .line 365
    iput-boolean v8, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 366
    .line 367
    :cond_7
    return-object v10

    .line 368
    :pswitch_6
    check-cast v0, Lcom/google/accompanist/permissions/PermissionState;

    .line 369
    .line 370
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 371
    .line 372
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 373
    .line 374
    move-object/from16 v1, p1

    .line 375
    .line 376
    check-cast v1, Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-interface {v12, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-interface {v11, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v0}, Lcom/google/accompanist/permissions/PermissionState;->b()V

    .line 395
    .line 396
    .line 397
    return-object v10

    .line 398
    :pswitch_7
    check-cast v0, Landroid/content/Context;

    .line 399
    .line 400
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 401
    .line 402
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 403
    .line 404
    move-object/from16 v1, p1

    .line 405
    .line 406
    check-cast v1, Ljava/lang/Boolean;

    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_9

    .line 413
    .line 414
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Ljava/lang/Boolean;

    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_8

    .line 425
    .line 426
    goto :goto_2

    .line 427
    :cond_8
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    .line 432
    .line 433
    .line 434
    move-result-wide v1

    .line 435
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    check-cast v3, Ljava/time/Instant;

    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 442
    .line 443
    .line 444
    move-result-wide v3

    .line 445
    sub-long/2addr v1, v3

    .line 446
    const-wide/16 v3, 0x15e

    .line 447
    .line 448
    cmp-long v1, v1, v3

    .line 449
    .line 450
    if-gez v1, :cond_9

    .line 451
    .line 452
    const-string v1, "Permission is blocked, please allow in Settings"

    .line 453
    .line 454
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 459
    .line 460
    .line 461
    new-instance v1, Landroid/content/Intent;

    .line 462
    .line 463
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 464
    .line 465
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    const-string v2, "package"

    .line 469
    .line 470
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 482
    .line 483
    .line 484
    :cond_9
    :goto_2
    return-object v10

    .line 485
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 486
    .line 487
    check-cast v12, Landroidx/compose/runtime/State;

    .line 488
    .line 489
    check-cast v11, Landroidx/compose/runtime/State;

    .line 490
    .line 491
    move-object/from16 v1, p1

    .line 492
    .line 493
    check-cast v1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 494
    .line 495
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    check-cast v2, Ljava/lang/Number;

    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 506
    .line 507
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g(F)V

    .line 508
    .line 509
    .line 510
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Ljava/lang/Number;

    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h(F)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, Ljava/lang/Number;

    .line 528
    .line 529
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 534
    .line 535
    .line 536
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    check-cast v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 541
    .line 542
    iget-wide v2, v0, Landroidx/compose/ui/graphics/TransformOrigin;->a:J

    .line 543
    .line 544
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n(J)V

    .line 545
    .line 546
    .line 547
    return-object v10

    .line 548
    :pswitch_9
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 549
    .line 550
    check-cast v12, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 551
    .line 552
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 553
    .line 554
    move-object/from16 v1, p1

    .line 555
    .line 556
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 557
    .line 558
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 559
    .line 560
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 561
    .line 562
    .line 563
    new-instance v2, Lna;

    .line 564
    .line 565
    invoke-direct {v2, v12, v1, v11}, Lna;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 573
    .line 574
    .line 575
    new-instance v3, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1;

    .line 576
    .line 577
    invoke-direct {v3, v0, v2, v1}, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lna;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 578
    .line 579
    .line 580
    return-object v3

    .line 581
    :pswitch_a
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 582
    .line 583
    check-cast v12, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 584
    .line 585
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 586
    .line 587
    move-object/from16 v1, p1

    .line 588
    .line 589
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 590
    .line 591
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_a

    .line 596
    .line 597
    goto :goto_3

    .line 598
    :cond_a
    iget-object v0, v12, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 599
    .line 600
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-nez v0, :cond_b

    .line 605
    .line 606
    invoke-interface {v11, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Ljava/lang/Boolean;

    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 617
    .line 618
    .line 619
    move-result-object v9

    .line 620
    goto :goto_4

    .line 621
    :cond_b
    const-string v0, "Focus search landed at the root."

    .line 622
    .line 623
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :goto_4
    return-object v9

    .line 627
    :pswitch_b
    check-cast v0, Landroidx/compose/foundation/gestures/DragScope;

    .line 628
    .line 629
    check-cast v12, Landroidx/compose/foundation/gestures/DraggableNode;

    .line 630
    .line 631
    check-cast v11, Landroidx/compose/foundation/gestures/Orientation;

    .line 632
    .line 633
    move-object/from16 v1, p1

    .line 634
    .line 635
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 636
    .line 637
    iget-wide v7, v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a:J

    .line 638
    .line 639
    iget-boolean v1, v12, Landroidx/compose/foundation/gestures/DraggableNode;->W:Z

    .line 640
    .line 641
    if-eqz v1, :cond_c

    .line 642
    .line 643
    invoke-static {v7, v8, v5}, Landroidx/compose/ui/geometry/Offset;->g(JF)J

    .line 644
    .line 645
    .line 646
    move-result-wide v5

    .line 647
    goto :goto_5

    .line 648
    :cond_c
    invoke-static {v7, v8, v6}, Landroidx/compose/ui/geometry/Offset;->g(JF)J

    .line 649
    .line 650
    .line 651
    move-result-wide v5

    .line 652
    :goto_5
    sget-object v1, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 653
    .line 654
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 655
    .line 656
    if-ne v11, v1, :cond_d

    .line 657
    .line 658
    and-long v1, v5, v3

    .line 659
    .line 660
    :goto_6
    long-to-int v1, v1

    .line 661
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    goto :goto_7

    .line 666
    :cond_d
    shr-long v1, v5, v2

    .line 667
    .line 668
    goto :goto_6

    .line 669
    :goto_7
    invoke-interface {v0, v1}, Landroidx/compose/foundation/gestures/DragScope;->a(F)V

    .line 670
    .line 671
    .line 672
    return-object v10

    .line 673
    :pswitch_c
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 674
    .line 675
    check-cast v12, Landroidx/navigation/NavBackStackEntry;

    .line 676
    .line 677
    check-cast v11, Landroidx/navigation/compose/DialogNavigator;

    .line 678
    .line 679
    move-object/from16 v1, p1

    .line 680
    .line 681
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 682
    .line 683
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    new-instance v1, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;

    .line 687
    .line 688
    invoke-direct {v1, v11, v12, v0}, Landroidx/navigation/compose/DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    .line 689
    .line 690
    .line 691
    return-object v1

    .line 692
    :pswitch_d
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 693
    .line 694
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 695
    .line 696
    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 697
    .line 698
    move-object/from16 v1, p1

    .line 699
    .line 700
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 701
    .line 702
    iget-object v2, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 703
    .line 704
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 705
    .line 706
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    check-cast v2, Ljava/lang/Number;

    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    iget v3, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 717
    .line 718
    sub-float/2addr v2, v3

    .line 719
    invoke-virtual {v12, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->f(F)F

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    iget-object v4, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 724
    .line 725
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 726
    .line 727
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    check-cast v4, Ljava/lang/Number;

    .line 732
    .line 733
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    iput v4, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 738
    .line 739
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->b()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    check-cast v0, Ljava/lang/Number;

    .line 744
    .line 745
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 750
    .line 751
    sub-float/2addr v2, v3

    .line 752
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    const/high16 v2, 0x3f000000    # 0.5f

    .line 757
    .line 758
    cmpl-float v0, v0, v2

    .line 759
    .line 760
    if-lez v0, :cond_e

    .line 761
    .line 762
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 763
    .line 764
    .line 765
    :cond_e
    return-object v10

    .line 766
    :pswitch_e
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 767
    .line 768
    check-cast v12, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 769
    .line 770
    move-object/from16 v16, v11

    .line 771
    .line 772
    check-cast v16, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 773
    .line 774
    move-object/from16 v1, p1

    .line 775
    .line 776
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 777
    .line 778
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 779
    .line 780
    .line 781
    move-result-object v5

    .line 782
    if-eqz v5, :cond_21

    .line 783
    .line 784
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 789
    .line 790
    .line 791
    move-result-object v13

    .line 792
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->A:Landroidx/compose/runtime/MutableState;

    .line 793
    .line 794
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 795
    .line 796
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    check-cast v1, Landroidx/compose/ui/text/TextRange;

    .line 801
    .line 802
    iget-wide v14, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 803
    .line 804
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->B:Landroidx/compose/runtime/MutableState;

    .line 805
    .line 806
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 807
    .line 808
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    check-cast v1, Landroidx/compose/ui/text/TextRange;

    .line 813
    .line 814
    move/from16 v19, v2

    .line 815
    .line 816
    move-wide/from16 v20, v3

    .line 817
    .line 818
    iget-wide v2, v1, Landroidx/compose/ui/text/TextRange;->a:J

    .line 819
    .line 820
    iget-object v1, v5, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 821
    .line 822
    iget-object v4, v1, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 823
    .line 824
    iget-object v5, v1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 825
    .line 826
    iget-object v11, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->y:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 827
    .line 828
    iget-wide v6, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->z:J

    .line 829
    .line 830
    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-nez v0, :cond_10

    .line 835
    .line 836
    invoke-virtual {v11, v6, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 837
    .line 838
    .line 839
    move-object/from16 v17, v1

    .line 840
    .line 841
    move-object/from16 v18, v11

    .line 842
    .line 843
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 844
    .line 845
    .line 846
    :cond_f
    :goto_8
    move-object/from16 v0, v17

    .line 847
    .line 848
    goto :goto_b

    .line 849
    :cond_10
    move-object/from16 v17, v1

    .line 850
    .line 851
    move-object v0, v11

    .line 852
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    if-nez v1, :cond_13

    .line 857
    .line 858
    iget-object v1, v4, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    .line 859
    .line 860
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 861
    .line 862
    .line 863
    move-result-wide v6

    .line 864
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 865
    .line 866
    invoke-direct {v1, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 867
    .line 868
    .line 869
    const-wide/16 v11, 0x10

    .line 870
    .line 871
    cmp-long v6, v6, v11

    .line 872
    .line 873
    if-nez v6, :cond_11

    .line 874
    .line 875
    goto :goto_9

    .line 876
    :cond_11
    move-object v9, v1

    .line 877
    :goto_9
    if-eqz v9, :cond_12

    .line 878
    .line 879
    iget-wide v6, v9, Landroidx/compose/ui/graphics/Color;->a:J

    .line 880
    .line 881
    goto :goto_a

    .line 882
    :cond_12
    sget-wide v6, Landroidx/compose/ui/graphics/Color;->b:J

    .line 883
    .line 884
    :goto_a
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 885
    .line 886
    .line 887
    move-result v1

    .line 888
    const v9, 0x3e4ccccd    # 0.2f

    .line 889
    .line 890
    .line 891
    mul-float/2addr v1, v9

    .line 892
    invoke-static {v6, v7, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 893
    .line 894
    .line 895
    move-result-wide v6

    .line 896
    invoke-virtual {v0, v6, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 897
    .line 898
    .line 899
    move-object/from16 v18, v0

    .line 900
    .line 901
    move-wide v14, v2

    .line 902
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 903
    .line 904
    .line 905
    goto :goto_8

    .line 906
    :cond_13
    iget-wide v1, v12, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 907
    .line 908
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-nez v1, :cond_f

    .line 913
    .line 914
    invoke-virtual {v0, v6, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->f(J)V

    .line 915
    .line 916
    .line 917
    iget-wide v14, v12, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 918
    .line 919
    move-object/from16 v18, v0

    .line 920
    .line 921
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->a(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 922
    .line 923
    .line 924
    goto :goto_8

    .line 925
    :goto_b
    iget-wide v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 926
    .line 927
    shr-long v2, v0, v19

    .line 928
    .line 929
    long-to-int v2, v2

    .line 930
    int-to-float v2, v2

    .line 931
    iget v3, v5, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 932
    .line 933
    cmpg-float v2, v2, v3

    .line 934
    .line 935
    if-gez v2, :cond_14

    .line 936
    .line 937
    goto :goto_c

    .line 938
    :cond_14
    iget-boolean v2, v5, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    .line 939
    .line 940
    if-nez v2, :cond_16

    .line 941
    .line 942
    and-long v2, v0, v20

    .line 943
    .line 944
    long-to-int v2, v2

    .line 945
    int-to-float v2, v2

    .line 946
    iget v3, v5, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 947
    .line 948
    cmpg-float v2, v2, v3

    .line 949
    .line 950
    if-gez v2, :cond_15

    .line 951
    .line 952
    goto :goto_c

    .line 953
    :cond_15
    const/4 v2, 0x0

    .line 954
    goto :goto_d

    .line 955
    :cond_16
    :goto_c
    move v2, v8

    .line 956
    :goto_d
    if-eqz v2, :cond_18

    .line 957
    .line 958
    iget v2, v4, Landroidx/compose/ui/text/TextLayoutInput;->f:I

    .line 959
    .line 960
    const/4 v3, 0x3

    .line 961
    if-ne v2, v3, :cond_17

    .line 962
    .line 963
    goto :goto_e

    .line 964
    :cond_17
    move v7, v8

    .line 965
    goto :goto_f

    .line 966
    :cond_18
    :goto_e
    const/4 v7, 0x0

    .line 967
    :goto_f
    if-eqz v7, :cond_19

    .line 968
    .line 969
    shr-long v2, v0, v19

    .line 970
    .line 971
    long-to-int v2, v2

    .line 972
    int-to-float v2, v2

    .line 973
    and-long v0, v0, v20

    .line 974
    .line 975
    long-to-int v0, v0

    .line 976
    int-to-float v0, v0

    .line 977
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 978
    .line 979
    .line 980
    move-result v1

    .line 981
    int-to-long v1, v1

    .line 982
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    int-to-long v8, v0

    .line 987
    shl-long v0, v1, v19

    .line 988
    .line 989
    and-long v2, v8, v20

    .line 990
    .line 991
    or-long/2addr v0, v2

    .line 992
    const-wide/16 v2, 0x0

    .line 993
    .line 994
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 999
    .line 1000
    .line 1001
    invoke-static {v13, v0}, Landroidx/compose/ui/graphics/Canvas;->l(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    .line 1002
    .line 1003
    .line 1004
    :cond_19
    iget-object v0, v4, Landroidx/compose/ui/text/TextLayoutInput;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1005
    .line 1006
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 1007
    .line 1008
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 1009
    .line 1010
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 1011
    .line 1012
    if-nez v1, :cond_1a

    .line 1013
    .line 1014
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration;

    .line 1015
    .line 1016
    :cond_1a
    move-object/from16 v22, v1

    .line 1017
    .line 1018
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    .line 1019
    .line 1020
    if-nez v1, :cond_1b

    .line 1021
    .line 1022
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow;

    .line 1023
    .line 1024
    :cond_1b
    move-object/from16 v21, v1

    .line 1025
    .line 1026
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 1027
    .line 1028
    if-nez v0, :cond_1c

    .line 1029
    .line 1030
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 1031
    .line 1032
    :cond_1c
    :try_start_0
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    sget-object v1, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->a:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 1037
    .line 1038
    if-eqz v19, :cond_1e

    .line 1039
    .line 1040
    if-eq v2, v1, :cond_1d

    .line 1041
    .line 1042
    :try_start_1
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    .line 1043
    .line 1044
    .line 1045
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    move/from16 v20, v6

    .line 1047
    .line 1048
    :goto_10
    move-object/from16 v23, v0

    .line 1049
    .line 1050
    move-object/from16 v17, v5

    .line 1051
    .line 1052
    move-object/from16 v18, v13

    .line 1053
    .line 1054
    goto :goto_11

    .line 1055
    :catchall_0
    move-exception v0

    .line 1056
    goto :goto_15

    .line 1057
    :cond_1d
    const/high16 v20, 0x3f800000    # 1.0f

    .line 1058
    .line 1059
    goto :goto_10

    .line 1060
    :goto_11
    :try_start_2
    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/text/MultiParagraph;->j(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1061
    .line 1062
    .line 1063
    move-object/from16 v13, v18

    .line 1064
    .line 1065
    goto :goto_14

    .line 1066
    :catchall_1
    move-exception v0

    .line 1067
    move-object/from16 v13, v18

    .line 1068
    .line 1069
    goto :goto_15

    .line 1070
    :cond_1e
    move-object/from16 v23, v0

    .line 1071
    .line 1072
    move-object/from16 v17, v5

    .line 1073
    .line 1074
    if-eq v2, v1, :cond_1f

    .line 1075
    .line 1076
    :try_start_3
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v0

    .line 1080
    :goto_12
    move-wide/from16 v19, v0

    .line 1081
    .line 1082
    move-object/from16 v18, v13

    .line 1083
    .line 1084
    goto :goto_13

    .line 1085
    :cond_1f
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->b:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1086
    .line 1087
    goto :goto_12

    .line 1088
    :goto_13
    :try_start_4
    invoke-static/range {v17 .. v23}, Landroidx/compose/ui/text/MultiParagraph;->i(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1089
    .line 1090
    .line 1091
    move-object/from16 v13, v18

    .line 1092
    .line 1093
    :goto_14
    if-eqz v7, :cond_21

    .line 1094
    .line 1095
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_16

    .line 1099
    :goto_15
    if-eqz v7, :cond_20

    .line 1100
    .line 1101
    invoke-interface {v13}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 1102
    .line 1103
    .line 1104
    :cond_20
    throw v0

    .line 1105
    :cond_21
    :goto_16
    return-object v10

    .line 1106
    :pswitch_f
    check-cast v0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 1107
    .line 1108
    check-cast v12, Lkotlinx/coroutines/Job;

    .line 1109
    .line 1110
    check-cast v11, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 1111
    .line 1112
    move-object/from16 v1, p1

    .line 1113
    .line 1114
    check-cast v1, Ljava/lang/Float;

    .line 1115
    .line 1116
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->z:Z

    .line 1121
    .line 1122
    if-eqz v2, :cond_22

    .line 1123
    .line 1124
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1125
    .line 1126
    :cond_22
    mul-float v2, v5, v1

    .line 1127
    .line 1128
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ContentInViewNode;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1129
    .line 1130
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(F)J

    .line 1131
    .line 1132
    .line 1133
    move-result-wide v2

    .line 1134
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v2

    .line 1138
    check-cast v11, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1139
    .line 1140
    iget-object v4, v11, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1141
    .line 1142
    iget-object v6, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->k:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 1143
    .line 1144
    invoke-virtual {v4, v6, v2, v3, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 1145
    .line 1146
    .line 1147
    move-result-wide v2

    .line 1148
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v2

    .line 1152
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    mul-float/2addr v0, v5

    .line 1157
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 1158
    .line 1159
    .line 1160
    move-result v2

    .line 1161
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    cmpg-float v2, v2, v3

    .line 1166
    .line 1167
    if-gez v2, :cond_23

    .line 1168
    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    const-string v3, "Scroll animation cancelled because scroll was not consumed ("

    .line 1172
    .line 1173
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    const-string v0, " < "

    .line 1180
    .line 1181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1185
    .line 1186
    .line 1187
    const-string v0, ")"

    .line 1188
    .line 1189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v0

    .line 1196
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 1197
    .line 1198
    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1202
    .line 1203
    .line 1204
    invoke-interface {v12, v1}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 1205
    .line 1206
    .line 1207
    :cond_23
    return-object v10

    .line 1208
    :pswitch_10
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1209
    .line 1210
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 1211
    .line 1212
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 1213
    .line 1214
    move-object/from16 v1, p1

    .line 1215
    .line 1216
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1217
    .line 1218
    sget v2, Landroidx/compose/foundation/text/BasicTextFieldKt;->a:I

    .line 1219
    .line 1220
    invoke-interface {v12, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    check-cast v2, Ljava/lang/String;

    .line 1228
    .line 1229
    iget-object v3, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 1230
    .line 1231
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1232
    .line 1233
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v2

    .line 1237
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 1238
    .line 1239
    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1240
    .line 1241
    invoke-interface {v11, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1242
    .line 1243
    .line 1244
    if-nez v2, :cond_24

    .line 1245
    .line 1246
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1247
    .line 1248
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    :cond_24
    return-object v10

    .line 1252
    :pswitch_11
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 1253
    .line 1254
    check-cast v11, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 1255
    .line 1256
    move-object/from16 v1, p1

    .line 1257
    .line 1258
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    .line 1259
    .line 1260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1261
    .line 1262
    .line 1263
    check-cast v0, Lnet/blip/android/ui/audiopicker/ListState$Loaded;

    .line 1264
    .line 1265
    iget-object v0, v0, Lnet/blip/android/ui/audiopicker/ListState$Loaded;->a:Ljava/util/List;

    .line 1266
    .line 1267
    new-instance v2, Lh;

    .line 1268
    .line 1269
    const/16 v3, 0x10

    .line 1270
    .line 1271
    invoke-direct {v2, v3}, Lh;-><init>(I)V

    .line 1272
    .line 1273
    .line 1274
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    new-instance v4, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;

    .line 1279
    .line 1280
    invoke-direct {v4, v2, v0}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2;-><init>(Lh;Ljava/util/List;)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v2, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$3;

    .line 1284
    .line 1285
    invoke-direct {v2, v0}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;)V

    .line 1286
    .line 1287
    .line 1288
    new-instance v5, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;

    .line 1289
    .line 1290
    invoke-direct {v5, v0, v12, v11}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V

    .line 1291
    .line 1292
    .line 1293
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1294
    .line 1295
    const v6, 0x2fd4df92

    .line 1296
    .line 1297
    .line 1298
    invoke-direct {v0, v6, v8, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-interface {v1, v3, v4, v2, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 1302
    .line 1303
    .line 1304
    return-object v10

    .line 1305
    :pswitch_12
    check-cast v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1306
    .line 1307
    check-cast v11, Landroidx/compose/ui/node/LayoutNode;

    .line 1308
    .line 1309
    check-cast v12, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1310
    .line 1311
    move-object/from16 v1, p1

    .line 1312
    .line 1313
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1314
    .line 1315
    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 1316
    .line 1317
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v1

    .line 1321
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    iget-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Landroid/view/View;

    .line 1326
    .line 1327
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 1328
    .line 1329
    .line 1330
    move-result v2

    .line 1331
    const/16 v3, 0x8

    .line 1332
    .line 1333
    if-eq v2, v3, :cond_27

    .line 1334
    .line 1335
    iput-boolean v8, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->H:Z

    .line 1336
    .line 1337
    iget-object v2, v11, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 1338
    .line 1339
    instance-of v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1340
    .line 1341
    if-eqz v3, :cond_25

    .line 1342
    .line 1343
    move-object v9, v2

    .line 1344
    check-cast v9, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1345
    .line 1346
    :cond_25
    if-eqz v9, :cond_26

    .line 1347
    .line 1348
    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v1

    .line 1352
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v2

    .line 1356
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v12, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1360
    .line 1361
    .line 1362
    :cond_26
    const/4 v1, 0x0

    .line 1363
    iput-boolean v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->H:Z

    .line 1364
    .line 1365
    :cond_27
    return-object v10

    .line 1366
    nop

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
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
