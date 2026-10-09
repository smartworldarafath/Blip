.class public final synthetic La7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, La7;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    const/16 p1, 0xe

    .line 2
    .line 3
    iput p1, p0, La7;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget p0, p0, La7;->j:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x2bc

    .line 5
    .line 6
    const/16 v2, 0x2d

    .line 7
    .line 8
    const/4 v3, 0x6

    .line 9
    const/16 v4, 0x3a

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/util/List;

    .line 18
    .line 19
    new-instance p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 20
    .line 21
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListState;-><init>(II)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    return-object v5

    .line 51
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 57
    .line 58
    const/4 p0, -0x1

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object p0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 70
    .line 71
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 75
    .line 76
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 77
    .line 78
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_4
    check-cast p1, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/StringOpsKt;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_5
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 139
    .line 140
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const-string p0, "JsonPrimitive"

    .line 146
    .line 147
    new-instance v0, Lx9;

    .line 148
    .line 149
    const/4 v1, 0x3

    .line 150
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 154
    .line 155
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 159
    .line 160
    .line 161
    const-string p0, "JsonNull"

    .line 162
    .line 163
    new-instance v0, Lx9;

    .line 164
    .line 165
    const/4 v1, 0x4

    .line 166
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 175
    .line 176
    .line 177
    const-string p0, "JsonLiteral"

    .line 178
    .line 179
    new-instance v0, Lkotlinx/serialization/json/a;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 190
    .line 191
    .line 192
    const-string p0, "JsonObject"

    .line 193
    .line 194
    new-instance v0, Lx9;

    .line 195
    .line 196
    const/4 v1, 0x5

    .line 197
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 201
    .line 202
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 206
    .line 207
    .line 208
    const-string p0, "JsonArray"

    .line 209
    .line 210
    new-instance v0, Lx9;

    .line 211
    .line 212
    invoke-direct {v0, v3}, Lx9;-><init>(I)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    invoke-static {p1, p0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->a(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 221
    .line 222
    .line 223
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    const/16 p0, 0xd

    .line 232
    .line 233
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const/16 v0, 0xa

    .line 238
    .line 239
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    filled-new-array {p0, v0}, [Ljava/lang/Character;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-string v0, ""

    .line 252
    .line 253
    invoke-static {p1, v0, p0}, Lnet/blip/shared/StringKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :pswitch_7
    check-cast p1, Ljava/lang/Character;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    const/16 p1, 0x30

    .line 265
    .line 266
    if-gt p1, p0, :cond_0

    .line 267
    .line 268
    if-ge p0, v4, :cond_0

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_0
    move v6, v7

    .line 272
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :pswitch_8
    check-cast p1, Ljava/lang/Character;

    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-ne p0, v4, :cond_1

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_1
    move v6, v7

    .line 287
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    return-object p0

    .line 292
    :pswitch_9
    check-cast p1, Ljava/lang/Character;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-ne p0, v4, :cond_2

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_2
    move v6, v7

    .line 302
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0

    .line 307
    :pswitch_a
    check-cast p1, Ljava/lang/Character;

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    const/16 p1, 0x54

    .line 314
    .line 315
    if-eq p0, p1, :cond_4

    .line 316
    .line 317
    const/16 p1, 0x74

    .line 318
    .line 319
    if-ne p0, p1, :cond_3

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_3
    move v6, v7

    .line 323
    :cond_4
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    return-object p0

    .line 328
    :pswitch_b
    check-cast p1, Ljava/lang/Character;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    if-ne p0, v2, :cond_5

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_5
    move v6, v7

    .line 338
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :pswitch_c
    check-cast p1, Ljava/lang/Character;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-ne p0, v2, :cond_6

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_6
    move v6, v7

    .line 353
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    return-object p0

    .line 358
    :pswitch_d
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 359
    .line 360
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 361
    .line 362
    return-object p0

    .line 363
    :pswitch_e
    check-cast p1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 369
    .line 370
    return-object p0

    .line 371
    :pswitch_f
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 372
    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->i:Ljava/util/List;

    .line 375
    .line 376
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    :goto_6
    if-ge v7, v1, :cond_7

    .line 381
    .line 382
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 387
    .line 388
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .line 390
    .line 391
    add-int/lit8 v7, v7, 0x1

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catchall_0
    move-exception p1

    .line 395
    goto :goto_7

    .line 396
    :cond_7
    monitor-exit p0

    .line 397
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 398
    .line 399
    return-object p0

    .line 400
    :goto_7
    monitor-exit p0

    .line 401
    throw p1

    .line 402
    :pswitch_10
    check-cast p1, Landroidx/compose/ui/focus/FocusEnterExitScope;

    .line 403
    .line 404
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 405
    .line 406
    return-object p0

    .line 407
    :pswitch_11
    return-object p1

    .line 408
    :pswitch_12
    check-cast p1, Lnet/blip/libblip/User;

    .line 409
    .line 410
    if-eqz p1, :cond_8

    .line 411
    .line 412
    iget-object v5, p1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 413
    .line 414
    :cond_8
    return-object v5

    .line 415
    :pswitch_13
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 416
    .line 417
    instance-of p0, p1, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 418
    .line 419
    if-eqz p0, :cond_9

    .line 420
    .line 421
    move-object v5, p1

    .line 422
    check-cast v5, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    .line 423
    .line 424
    :cond_9
    return-object v5

    .line 425
    :pswitch_14
    check-cast p1, Landroidx/compose/material/DrawerValue;

    .line 426
    .line 427
    sget-object p0, Landroidx/compose/material/DrawerKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 428
    .line 429
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 430
    .line 431
    return-object p0

    .line 432
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerType;

    .line 433
    .line 434
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 435
    .line 436
    return-object p0

    .line 437
    :pswitch_16
    invoke-static {p1}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    return-object p0

    .line 446
    :pswitch_17
    check-cast p1, Lnet/blip/libblip/Device;

    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    iget-object p0, p1, Lnet/blip/libblip/Device;->m:Ljava/lang/String;

    .line 452
    .line 453
    return-object p0

    .line 454
    :pswitch_18
    check-cast p1, Lnet/blip/libblip/Device;

    .line 455
    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    iget-object p0, p1, Lnet/blip/libblip/Device;->o:Ljava/lang/String;

    .line 460
    .line 461
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 462
    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    return-object p0

    .line 471
    :pswitch_19
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 472
    .line 473
    invoke-static {v1, v7, v5, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    return-object p0

    .line 482
    :pswitch_1a
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 483
    .line 484
    invoke-static {v1, v7, v5, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    return-object p0

    .line 493
    :pswitch_1b
    check-cast p1, Ljava/util/Map$Entry;

    .line 494
    .line 495
    sget-object p0, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    check-cast p0, Ljava/lang/String;

    .line 505
    .line 506
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string p0, " : "

    .line 519
    .line 520
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    instance-of p0, p1, [Ljava/lang/Object;

    .line 524
    .line 525
    if-eqz p0, :cond_a

    .line 526
    .line 527
    check-cast p1, [Ljava/lang/Object;

    .line 528
    .line 529
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p0

    .line 543
    return-object p0

    .line 544
    :pswitch_1c
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 545
    .line 546
    instance-of p0, p1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 547
    .line 548
    if-eqz p0, :cond_b

    .line 549
    .line 550
    move-object v5, p1

    .line 551
    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 552
    .line 553
    :cond_b
    return-object v5

    .line 554
    nop

    .line 555
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
