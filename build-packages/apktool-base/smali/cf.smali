.class public final synthetic Lcf;
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
    const/16 p1, 0x10

    .line 2
    .line 3
    iput p1, p0, Lcf;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    .line 9
    iput p1, p0, Lcf;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lcf;->j:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p2, Lkotlin/Unit;

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lh;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 20
    .line 21
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    instance-of p0, p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Lkotlinx/coroutines/ThreadContextElement;

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-object v3

    .line 35
    :pswitch_1
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 36
    .line 37
    instance-of p0, p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 38
    .line 39
    if-eqz p0, :cond_5

    .line 40
    .line 41
    instance-of p0, p1, Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    move-object v3, p1

    .line 46
    check-cast v3, Ljava/lang/Integer;

    .line 47
    .line 48
    :cond_2
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move p0, v2

    .line 56
    :goto_1
    if-nez p0, :cond_4

    .line 57
    .line 58
    move-object p1, p2

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    add-int/2addr p0, v2

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_5
    :goto_2
    return-object p1

    .line 66
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 67
    .line 68
    check-cast p2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 69
    .line 70
    sget-object p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->g:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 71
    .line 72
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->a()F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object p1, p2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->f:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/compose/foundation/gestures/Orientation;

    .line 89
    .line 90
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 91
    .line 92
    if-ne p1, p2, :cond_6

    .line 93
    .line 94
    move v0, v2

    .line 95
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 109
    .line 110
    check-cast p2, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-interface {p1, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 126
    .line 127
    check-cast p2, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    invoke-interface {p1, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 143
    .line 144
    check-cast p2, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-interface {p1, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 160
    .line 161
    check-cast p2, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-interface {p1, p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :pswitch_7
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 177
    .line 178
    check-cast p2, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    and-int/lit8 p2, p0, 0x3

    .line 185
    .line 186
    const/4 v4, 0x2

    .line 187
    if-eq p2, v4, :cond_7

    .line 188
    .line 189
    move v0, v2

    .line 190
    :cond_7
    and-int/2addr p0, v2

    .line 191
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 192
    .line 193
    invoke-virtual {p1, p0, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_8

    .line 198
    .line 199
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 200
    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_8
    throw v3

    .line 204
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 205
    .line 206
    check-cast p2, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-static {p0, p1}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 220
    .line 221
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 222
    .line 223
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsSortKt;->a:[Ljava/util/Comparator;

    .line 224
    .line 225
    const/4 p0, 0x0

    .line 226
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 231
    .line 232
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 233
    .line 234
    iget-object p1, p1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-nez p1, :cond_9

    .line 241
    .line 242
    move-object p1, p0

    .line 243
    :cond_9
    check-cast p1, Ljava/lang/Number;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iget-object p2, p2, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 250
    .line 251
    iget-object p2, p2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 252
    .line 253
    invoke-virtual {p2, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    if-nez p2, :cond_a

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_a
    move-object p0, p2

    .line 261
    :goto_3
    check-cast p0, Ljava/lang/Number;

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :pswitch_a
    if-nez p1, :cond_b

    .line 277
    .line 278
    move-object p1, p2

    .line 279
    :cond_b
    return-object p1

    .line 280
    :pswitch_b
    if-nez p1, :cond_c

    .line 281
    .line 282
    if-nez p2, :cond_c

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_c
    invoke-static {}, Lio/sentry/d;->i()V

    .line 286
    .line 287
    .line 288
    :goto_4
    return-object v3

    .line 289
    :pswitch_c
    check-cast p1, Ljava/lang/String;

    .line 290
    .line 291
    check-cast p2, Ljava/lang/String;

    .line 292
    .line 293
    return-object p1

    .line 294
    :pswitch_d
    check-cast p1, Ljava/lang/Boolean;

    .line 295
    .line 296
    check-cast p2, Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 299
    .line 300
    .line 301
    return-object p1

    .line 302
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/autofill/FillableData;

    .line 303
    .line 304
    check-cast p2, Landroidx/compose/ui/autofill/FillableData;

    .line 305
    .line 306
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 307
    .line 308
    return-object p1

    .line 309
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/autofill/ContentDataType;

    .line 310
    .line 311
    check-cast p2, Landroidx/compose/ui/autofill/ContentDataType;

    .line 312
    .line 313
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 314
    .line 315
    return-object p1

    .line 316
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/autofill/ContentType;

    .line 317
    .line 318
    check-cast p2, Landroidx/compose/ui/autofill/ContentType;

    .line 319
    .line 320
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 321
    .line 322
    return-object p1

    .line 323
    :pswitch_11
    check-cast p1, Ljava/lang/String;

    .line 324
    .line 325
    check-cast p2, Ljava/lang/String;

    .line 326
    .line 327
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 328
    .line 329
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 330
    .line 331
    const-string p1, "merge function called on unmergeable property PaneTitle."

    .line 332
    .line 333
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :pswitch_12
    check-cast p1, Landroidx/compose/ui/graphics/Shape;

    .line 338
    .line 339
    check-cast p2, Landroidx/compose/ui/graphics/Shape;

    .line 340
    .line 341
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 342
    .line 343
    return-object p1

    .line 344
    :pswitch_13
    check-cast p1, Ljava/util/List;

    .line 345
    .line 346
    check-cast p2, Ljava/util/List;

    .line 347
    .line 348
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 349
    .line 350
    if-eqz p1, :cond_d

    .line 351
    .line 352
    new-instance p0, Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    .line 359
    .line 360
    move-object p2, p0

    .line 361
    :cond_d
    return-object p2

    .line 362
    :pswitch_14
    check-cast p1, Lkotlin/Unit;

    .line 363
    .line 364
    check-cast p2, Lkotlin/Unit;

    .line 365
    .line 366
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 367
    .line 368
    return-object p1

    .line 369
    :pswitch_15
    check-cast p1, Ljava/lang/String;

    .line 370
    .line 371
    check-cast p2, Ljava/lang/String;

    .line 372
    .line 373
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 374
    .line 375
    return-object p1

    .line 376
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/semantics/Role;

    .line 377
    .line 378
    check-cast p2, Landroidx/compose/ui/semantics/Role;

    .line 379
    .line 380
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 381
    .line 382
    return-object p1

    .line 383
    :pswitch_17
    check-cast p1, Lkotlin/Unit;

    .line 384
    .line 385
    check-cast p2, Lkotlin/Unit;

    .line 386
    .line 387
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 388
    .line 389
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 390
    .line 391
    const-string p1, "merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node."

    .line 392
    .line 393
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw p0

    .line 397
    :pswitch_18
    check-cast p1, Lkotlin/Unit;

    .line 398
    .line 399
    check-cast p2, Lkotlin/Unit;

    .line 400
    .line 401
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 402
    .line 403
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 404
    .line 405
    const-string p1, "merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node."

    .line 406
    .line 407
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
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
