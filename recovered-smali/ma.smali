.class public final synthetic Lma;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lma;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lma;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput p1, p0, Lma;->j:I

    iput-object p2, p0, Lma;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lma;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object p0, p0, Lma;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-float/2addr v0, p1

    .line 25
    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    cmpl-float v3, v0, v3

    .line 35
    .line 36
    if-lez v3, :cond_0

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sub-float/2addr p1, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    cmpg-float v0, v0, v2

    .line 51
    .line 52
    if-gez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    neg-float p1, p1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-float/2addr v0, p1

    .line 64
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a:Landroidx/compose/runtime/MutableFloatState;

    .line 65
    .line 66
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_0
    check-cast p0, Lma;

    .line 77
    .line 78
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 79
    .line 80
    instance-of v0, p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;

    .line 85
    .line 86
    iget-object p1, p1, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsNode;->x:Landroidx/compose/foundation/text/contextmenu/modifier/a;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string p0, "TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode."

    .line 95
    .line 96
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-object v4

    .line 100
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 101
    .line 102
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_2
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 113
    .line 114
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    const/16 v4, 0x20

    .line 127
    .line 128
    shr-long/2addr v2, v4

    .line 129
    long-to-int v2, v2

    .line 130
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    float-to-int v2, v2

    .line 135
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    const-wide v5, 0xffffffffL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    and-long/2addr v3, v5

    .line 145
    long-to-int p1, v3

    .line 146
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    float-to-int p1, p1

    .line 151
    invoke-virtual {p0, v1, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    .line 160
    .line 161
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_3
    check-cast p0, Lnet/blip/android/ui/util/CaptureScope;

    .line 165
    .line 166
    check-cast p1, Lkotlin/time/Duration;

    .line 167
    .line 168
    iget-object p0, p0, Lnet/blip/android/ui/util/CaptureScope;->a:Lkotlin/jvm/functions/Function0;

    .line 169
    .line 170
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_4
    check-cast p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 177
    .line 178
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 179
    .line 180
    iget v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->b:F

    .line 181
    .line 182
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 183
    .line 184
    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 185
    .line 186
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    mul-float/2addr v1, v0

    .line 191
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j(F)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->c:Landroidx/compose/ui/graphics/Shape;

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l(Landroidx/compose/ui/graphics/Shape;)V

    .line 197
    .line 198
    .line 199
    iget-boolean v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->d:Z

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d(Z)V

    .line 202
    .line 203
    .line 204
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->e:J

    .line 205
    .line 206
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->c(J)V

    .line 207
    .line 208
    .line 209
    iget-wide v0, p0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;->f:J

    .line 210
    .line 211
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m(J)V

    .line 212
    .line 213
    .line 214
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p0

    .line 217
    :pswitch_5
    check-cast p0, Ln;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Ln;->a()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :pswitch_6
    check-cast p0, Lnet/blip/libblip/SentryConfig;

    .line 228
    .line 229
    check-cast p1, Lio/sentry/kotlin/multiplatform/SentryEvent;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, Lnet/blip/libblip/SentryConfig;->d:Lr1;

    .line 235
    .line 236
    invoke-virtual {p0}, Lr1;->a()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Ljava/lang/String;

    .line 241
    .line 242
    if-eqz p0, :cond_3

    .line 243
    .line 244
    new-instance v4, Lio/sentry/kotlin/multiplatform/protocol/User;

    .line 245
    .line 246
    invoke-direct {v4, p0}, Lio/sentry/kotlin/multiplatform/protocol/User;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_3
    iput-object v4, p1, Lio/sentry/kotlin/multiplatform/SentryEvent;->k:Lio/sentry/kotlin/multiplatform/protocol/User;

    .line 250
    .line 251
    return-object p1

    .line 252
    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/lazy/layout/f;

    .line 253
    .line 254
    check-cast p1, Ljava/util/List;

    .line 255
    .line 256
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/f;->a()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Ljava/lang/Float;

    .line 263
    .line 264
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    return-object p0

    .line 272
    :pswitch_8
    check-cast p0, Landroidx/compose/ui/semantics/Role;

    .line 273
    .line 274
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 275
    .line 276
    iget p0, p0, Landroidx/compose/ui/semantics/Role;->a:I

    .line 277
    .line 278
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->c(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 279
    .line 280
    .line 281
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 282
    .line 283
    return-object p0

    .line 284
    :pswitch_9
    check-cast p0, Lnet/blip/shared/SelectionListState;

    .line 285
    .line 286
    check-cast p1, Ljava/lang/Integer;

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lnet/blip/shared/SelectionListState;->a:Landroidx/compose/runtime/MutableState;

    .line 292
    .line 293
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 299
    .line 300
    return-object p0

    .line 301
    :pswitch_a
    check-cast p0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 302
    .line 303
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 304
    .line 305
    iget-wide v0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 306
    .line 307
    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->a(J)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_4

    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 314
    .line 315
    .line 316
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    return-object p0

    .line 319
    :pswitch_b
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 320
    .line 321
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 322
    .line 323
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->k:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 324
    .line 325
    iget-wide v1, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 326
    .line 327
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->j:I

    .line 328
    .line 329
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 330
    .line 331
    .line 332
    move-result-wide p0

    .line 333
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 334
    .line 335
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 336
    .line 337
    .line 338
    return-object v0

    .line 339
    :pswitch_c
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    .line 340
    .line 341
    check-cast p1, Ljava/lang/Float;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    int-to-float v0, v0

    .line 352
    add-float/2addr v0, p1

    .line 353
    iget v4, p0, Landroidx/compose/foundation/ScrollState;->g:F

    .line 354
    .line 355
    add-float/2addr v0, v4

    .line 356
    iget-object v4, p0, Landroidx/compose/foundation/ScrollState;->f:Landroidx/compose/runtime/MutableIntState;

    .line 357
    .line 358
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 359
    .line 360
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    int-to-float v4, v4

    .line 365
    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    cmpg-float v0, v0, v2

    .line 370
    .line 371
    if-nez v0, :cond_5

    .line 372
    .line 373
    move v1, v3

    .line 374
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    int-to-float v0, v0

    .line 379
    sub-float/2addr v2, v0

    .line 380
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->f()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    add-int/2addr v3, v0

    .line 389
    iget-object v4, p0, Landroidx/compose/foundation/ScrollState;->a:Landroidx/compose/runtime/MutableIntState;

    .line 390
    .line 391
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 392
    .line 393
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 394
    .line 395
    .line 396
    int-to-float v0, v0

    .line 397
    sub-float v0, v2, v0

    .line 398
    .line 399
    iput v0, p0, Landroidx/compose/foundation/ScrollState;->g:F

    .line 400
    .line 401
    if-nez v1, :cond_6

    .line 402
    .line 403
    move p1, v2

    .line 404
    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    return-object p0

    .line 409
    :pswitch_d
    check-cast p0, Landroidx/room/RoomConnectionManager;

    .line 410
    .line 411
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->g:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 417
    .line 418
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 419
    .line 420
    return-object p0

    .line 421
    :pswitch_e
    check-cast p0, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 422
    .line 423
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    .line 424
    .line 425
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;->b(Landroidx/compose/ui/text/input/EditCommand;)V

    .line 426
    .line 427
    .line 428
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 429
    .line 430
    return-object p0

    .line 431
    :pswitch_f
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 432
    .line 433
    check-cast p1, Ljava/lang/Throwable;

    .line 434
    .line 435
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 436
    .line 437
    const-string v0, "Recomposer effect job completed"

    .line 438
    .line 439
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 440
    .line 441
    invoke-direct {v1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 445
    .line 446
    .line 447
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 448
    .line 449
    monitor-enter v2

    .line 450
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 451
    .line 452
    if-eqz v0, :cond_7

    .line 453
    .line 454
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 455
    .line 456
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 457
    .line 458
    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 462
    .line 463
    .line 464
    iput-object v4, p0, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 465
    .line 466
    new-instance v1, Lec;

    .line 467
    .line 468
    const/16 v3, 0x9

    .line 469
    .line 470
    invoke-direct {v1, v3, p0, p1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 474
    .line 475
    .line 476
    goto :goto_2

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    move-object p0, v0

    .line 479
    goto :goto_3

    .line 480
    :cond_7
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->e:Ljava/lang/Throwable;

    .line 481
    .line 482
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 483
    .line 484
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->j:Landroidx/compose/runtime/Recomposer$State;

    .line 485
    .line 486
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .line 488
    .line 489
    :goto_2
    monitor-exit v2

    .line 490
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 491
    .line 492
    return-object p0

    .line 493
    :goto_3
    monitor-exit v2

    .line 494
    throw p0

    .line 495
    :pswitch_10
    check-cast p0, Landroidx/compose/runtime/ControlledComposition;

    .line 496
    .line 497
    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 498
    .line 499
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 500
    .line 501
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->d(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 505
    .line 506
    return-object p0

    .line 507
    :pswitch_11
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 508
    .line 509
    check-cast p1, Landroid/view/MotionEvent;

    .line 510
    .line 511
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->g()Lkotlin/jvm/functions/Function1;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    check-cast p0, Lm2;

    .line 516
    .line 517
    invoke-virtual {p0, p1}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 521
    .line 522
    return-object p0

    .line 523
    :pswitch_12
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 524
    .line 525
    check-cast p1, Ljava/lang/Integer;

    .line 526
    .line 527
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v1, ": "

    .line 544
    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    return-object p0

    .line 564
    :pswitch_13
    check-cast p0, Lnet/blip/shared/Paintable;

    .line 565
    .line 566
    check-cast p1, Lnet/blip/shared/AvatarTheme$Appearance;

    .line 567
    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    return-object p0

    .line 572
    :pswitch_14
    check-cast p0, Landroidx/compose/ui/platform/UriHandler;

    .line 573
    .line 574
    check-cast p1, Ljava/lang/String;

    .line 575
    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 580
    .line 581
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidUriHandler;->a(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 585
    .line 586
    return-object p0

    .line 587
    :pswitch_15
    check-cast p0, Landroid/content/Context;

    .line 588
    .line 589
    check-cast p1, Ljava/lang/Boolean;

    .line 590
    .line 591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    new-instance p1, Landroid/content/Intent;

    .line 595
    .line 596
    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 597
    .line 598
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    const-string v0, "package"

    .line 602
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    .line 616
    .line 617
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 618
    .line 619
    return-object p0

    .line 620
    :pswitch_16
    check-cast p0, Landroidx/collection/MutableObjectList;

    .line 621
    .line 622
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    .line 623
    .line 624
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 628
    .line 629
    return-object p0

    .line 630
    :pswitch_17
    check-cast p0, Landroidx/navigation/Navigator;

    .line 631
    .line 632
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 633
    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 638
    .line 639
    if-eqz v0, :cond_8

    .line 640
    .line 641
    goto :goto_4

    .line 642
    :cond_8
    move-object v0, v4

    .line 643
    :goto_4
    if-nez v0, :cond_9

    .line 644
    .line 645
    goto :goto_5

    .line 646
    :cond_9
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 647
    .line 648
    .line 649
    invoke-virtual {p0, v0}, Landroidx/navigation/Navigator;->c(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    if-nez v1, :cond_a

    .line 654
    .line 655
    goto :goto_5

    .line 656
    :cond_a
    invoke-virtual {v1, v0}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-eqz v0, :cond_b

    .line 661
    .line 662
    move-object v4, p1

    .line 663
    goto :goto_5

    .line 664
    :cond_b
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 665
    .line 666
    .line 667
    move-result-object p0

    .line 668
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    invoke-virtual {p0, v1, p1}, Landroidx/navigation/NavigatorState;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    :goto_5
    return-object v4

    .line 681
    :pswitch_18
    move-object v1, p0

    .line 682
    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 683
    .line 684
    move-object v0, p1

    .line 685
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 686
    .line 687
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    move-object p0, v0

    .line 691
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 692
    .line 693
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 694
    .line 695
    .line 696
    const/4 v7, 0x0

    .line 697
    const/16 v8, 0x3e

    .line 698
    .line 699
    const-wide/16 v2, 0x0

    .line 700
    .line 701
    const-wide/16 v4, 0x0

    .line 702
    .line 703
    const/4 v6, 0x0

    .line 704
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 705
    .line 706
    .line 707
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 708
    .line 709
    return-object p0

    .line 710
    :pswitch_19
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 711
    .line 712
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 713
    .line 714
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    move-object v0, p1

    .line 718
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 719
    .line 720
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 721
    .line 722
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 723
    .line 724
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 729
    .line 730
    .line 731
    move-result-wide v2

    .line 732
    const-wide/16 v4, 0x0

    .line 733
    .line 734
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    :try_start_1
    invoke-interface {v1, v0, p0}, Landroidx/compose/ui/graphics/Canvas;->c(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 739
    .line 740
    .line 741
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 742
    .line 743
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 744
    .line 745
    .line 746
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 747
    .line 748
    .line 749
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 750
    .line 751
    return-object p0

    .line 752
    :catchall_1
    move-exception v0

    .line 753
    move-object p0, v0

    .line 754
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 755
    .line 756
    .line 757
    throw p0

    .line 758
    :pswitch_1a
    check-cast p0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 759
    .line 760
    check-cast p1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 761
    .line 762
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {v0, p0}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 770
    .line 771
    .line 772
    new-instance p0, Lma;

    .line 773
    .line 774
    const/4 v1, 0x3

    .line 775
    invoke-direct {p0, v1, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {p1, p0}, Landroidx/compose/ui/draw/CacheDrawScope;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 779
    .line 780
    .line 781
    move-result-object p0

    .line 782
    return-object p0

    .line 783
    :pswitch_1b
    check-cast p0, Lkotlin/text/MatcherMatchResult$groups$1;

    .line 784
    .line 785
    check-cast p1, Ljava/lang/Integer;

    .line 786
    .line 787
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result p1

    .line 791
    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 792
    .line 793
    .line 794
    move-result-object p0

    .line 795
    return-object p0

    .line 796
    :pswitch_1c
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 797
    .line 798
    if-eqz p0, :cond_c

    .line 799
    .line 800
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->b(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 805
    .line 806
    .line 807
    move-result-object p0

    .line 808
    return-object p0

    .line 809
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
