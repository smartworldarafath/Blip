.class public final synthetic Lt5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt5;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lt5;->j:I

    .line 4
    .line 5
    const/high16 v1, 0x41a00000    # 20.0f

    .line 6
    .line 7
    const/high16 v2, 0x41400000    # 12.0f

    .line 8
    .line 9
    const/16 v3, 0x90

    .line 10
    .line 11
    const/16 v4, 0x10

    .line 12
    .line 13
    const/16 v5, 0x20

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x6

    .line 22
    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 34
    .line 35
    move-object/from16 v2, p3

    .line 36
    .line 37
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v3, p4

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    const-string v4, "deviceId"

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    shr-int/lit8 v0, v3, 0x3

    .line 69
    .line 70
    and-int/lit8 v0, v0, 0xe

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v3, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 77
    .line 78
    invoke-virtual {v3, v1, v9, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object v12

    .line 82
    :pswitch_0
    move-object/from16 v0, p1

    .line 83
    .line 84
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 85
    .line 86
    move-object/from16 v1, p2

    .line 87
    .line 88
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 89
    .line 90
    move-object/from16 v2, p3

    .line 91
    .line 92
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 93
    .line 94
    move-object/from16 v3, p4

    .line 95
    .line 96
    check-cast v3, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    const-string v4, "peerId"

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v9}, Lnet/blip/libblip/PeerId_DerivedKt;->a(Ljava/lang/String;)Lnet/blip/libblip/PeerId;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    shr-int/lit8 v3, v3, 0x3

    .line 128
    .line 129
    and-int/lit8 v3, v3, 0xe

    .line 130
    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    sget-object v4, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    invoke-virtual {v4, v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-object v12

    .line 141
    :pswitch_1
    move-object/from16 v0, p1

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 144
    .line 145
    move-object/from16 v1, p2

    .line 146
    .line 147
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 148
    .line 149
    move-object/from16 v2, p3

    .line 150
    .line 151
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 152
    .line 153
    move-object/from16 v3, p4

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Integer;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    const-string v4, "urls"

    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-nez v0, :cond_3

    .line 180
    .line 181
    :cond_2
    const-string v0, ""

    .line 182
    .line 183
    :cond_3
    sget-object v14, Lkotlinx/serialization/json/Json;->d:Lkotlinx/serialization/json/Json$Default;

    .line 184
    .line 185
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 189
    .line 190
    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    .line 191
    .line 192
    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object v5, v14, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 202
    .line 203
    new-instance v6, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 204
    .line 205
    invoke-direct {v6, v0, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;Lkotlinx/serialization/json/JsonConfiguration;)V

    .line 206
    .line 207
    .line 208
    new-instance v13, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 209
    .line 210
    sget-object v15, Lkotlinx/serialization/json/internal/WriteMode;->l:Lkotlinx/serialization/json/internal/WriteMode;

    .line 211
    .line 212
    iget-object v0, v4, Lkotlinx/serialization/internal/ArrayListSerializer;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    .line 213
    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    move-object/from16 v17, v0

    .line 217
    .line 218
    move-object/from16 v16, v6

    .line 219
    .line 220
    invoke-direct/range {v13 .. v18}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v0, v16

    .line 224
    .line 225
    invoke-virtual {v13, v4}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->x(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->d()B

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    const/16 v6, 0xa

    .line 234
    .line 235
    if-ne v5, v6, :cond_5

    .line 236
    .line 237
    check-cast v4, Ljava/lang/Iterable;

    .line 238
    .line 239
    new-instance v0, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_4

    .line 257
    .line 258
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_0

    .line 272
    :cond_4
    shr-int/lit8 v3, v3, 0x3

    .line 273
    .line 274
    and-int/lit8 v3, v3, 0xe

    .line 275
    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    sget-object v4, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 281
    .line 282
    invoke-virtual {v4, v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    return-object v12

    .line 286
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v2, "Expected EOF after parsing, but had "

    .line 289
    .line 290
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget v2, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 294
    .line 295
    sub-int/2addr v2, v8

    .line 296
    iget-object v3, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v2, " instead"

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v0, v1, v10, v9, v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    throw v9

    .line 318
    :pswitch_2
    move-object/from16 v0, p1

    .line 319
    .line 320
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 321
    .line 322
    move-object/from16 v1, p2

    .line 323
    .line 324
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 325
    .line 326
    move-object/from16 v2, p3

    .line 327
    .line 328
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 329
    .line 330
    move-object/from16 v3, p4

    .line 331
    .line 332
    check-cast v3, Ljava/lang/Integer;

    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->b()Landroid/os/Bundle;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    if-eqz v0, :cond_6

    .line 349
    .line 350
    const-string v4, "requestId"

    .line 351
    .line 352
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    if-eqz v0, :cond_6

    .line 357
    .line 358
    invoke-static {v0}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    :cond_6
    new-instance v0, Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 363
    .line 364
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    invoke-direct {v0, v4}, Lnet/blip/android/ui/navigation/NavResultWriter;-><init>(I)V

    .line 372
    .line 373
    .line 374
    shr-int/lit8 v3, v3, 0x3

    .line 375
    .line 376
    and-int/lit8 v3, v3, 0xe

    .line 377
    .line 378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    sget-object v4, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 383
    .line 384
    invoke-virtual {v4, v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    return-object v12

    .line 388
    :pswitch_3
    move-object/from16 v0, p1

    .line 389
    .line 390
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 391
    .line 392
    move-object/from16 v1, p2

    .line 393
    .line 394
    check-cast v1, Landroid/content/Context;

    .line 395
    .line 396
    move-object/from16 v2, p3

    .line 397
    .line 398
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 399
    .line 400
    move-object/from16 v3, p4

    .line 401
    .line 402
    check-cast v3, Landroidx/compose/ui/text/intl/LocaleList;

    .line 403
    .line 404
    sget-object v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 405
    .line 406
    new-instance v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 407
    .line 408
    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 409
    .line 410
    .line 411
    return-object v4

    .line 412
    :pswitch_4
    move-object/from16 v0, p1

    .line 413
    .line 414
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 415
    .line 416
    move-object/from16 v1, p2

    .line 417
    .line 418
    check-cast v1, Lkotlin/Pair;

    .line 419
    .line 420
    move-object/from16 v2, p3

    .line 421
    .line 422
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 423
    .line 424
    move-object/from16 v3, p4

    .line 425
    .line 426
    check-cast v3, Ljava/lang/Integer;

    .line 427
    .line 428
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    iget-object v0, v1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 440
    .line 441
    iget-object v1, v1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v1, Ljava/lang/Boolean;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    const/high16 v3, 0x42a00000    # 80.0f

    .line 450
    .line 451
    const/4 v4, 0x2

    .line 452
    invoke-static {v7, v3, v6, v4}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    const/16 v18, 0x5

    .line 457
    .line 458
    const/4 v14, 0x0

    .line 459
    const/high16 v15, 0x42180000    # 38.0f

    .line 460
    .line 461
    const/16 v16, 0x0

    .line 462
    .line 463
    const/high16 v17, 0x41a00000    # 20.0f

    .line 464
    .line 465
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const/16 v5, 0x36

    .line 474
    .line 475
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 476
    .line 477
    invoke-static {v4, v6, v2, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    move-object v5, v2

    .line 482
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 483
    .line 484
    iget-wide v13, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 485
    .line 486
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 487
    .line 488
    .line 489
    move-result v6

    .line 490
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 499
    .line 500
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    move-object v9, v2

    .line 504
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 505
    .line 506
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 507
    .line 508
    .line 509
    iget-boolean v13, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 510
    .line 511
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 512
    .line 513
    if-eqz v13, :cond_7

    .line 514
    .line 515
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 516
    .line 517
    .line 518
    goto :goto_1

    .line 519
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 520
    .line 521
    .line 522
    :goto_1
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 523
    .line 524
    invoke-static {v2, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    .line 526
    .line 527
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 528
    .line 529
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 530
    .line 531
    .line 532
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 537
    .line 538
    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 542
    .line 543
    .line 544
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 545
    .line 546
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 547
    .line 548
    .line 549
    const/high16 v3, 0x43480000    # 200.0f

    .line 550
    .line 551
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 556
    .line 557
    invoke-static {v15, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 558
    .line 559
    .line 560
    move-result-object v15

    .line 561
    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 562
    .line 563
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 564
    .line 565
    .line 566
    move-result v10

    .line 567
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 568
    .line 569
    .line 570
    move-result-object v11

    .line 571
    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 576
    .line 577
    .line 578
    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 579
    .line 580
    if-eqz v8, :cond_8

    .line 581
    .line 582
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 583
    .line 584
    .line 585
    goto :goto_2

    .line 586
    :cond_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 587
    .line 588
    .line 589
    :goto_2
    invoke-static {v2, v15, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 590
    .line 591
    .line 592
    invoke-static {v2, v11, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 593
    .line 594
    .line 595
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 600
    .line 601
    .line 602
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 603
    .line 604
    .line 605
    invoke-static {v2, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 606
    .line 607
    .line 608
    if-eqz v0, :cond_a

    .line 609
    .line 610
    if-nez v1, :cond_9

    .line 611
    .line 612
    goto :goto_4

    .line 613
    :cond_9
    const v1, 0x10c6996d

    .line 614
    .line 615
    .line 616
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 617
    .line 618
    .line 619
    const/high16 v1, 0x3f800000    # 1.0f

    .line 620
    .line 621
    invoke-static {v7, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    const/4 v3, 0x6

    .line 626
    invoke-static {v1, v0, v2, v3}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Landroidx/compose/runtime/Composer;I)V

    .line 627
    .line 628
    .line 629
    const/4 v1, 0x0

    .line 630
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 631
    .line 632
    .line 633
    move-object/from16 v20, v2

    .line 634
    .line 635
    :goto_3
    const/4 v1, 0x1

    .line 636
    goto :goto_5

    .line 637
    :cond_a
    :goto_4
    const v1, 0x10c50e8a

    .line 638
    .line 639
    .line 640
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 641
    .line 642
    .line 643
    const/16 v21, 0x0

    .line 644
    .line 645
    const/16 v22, 0x1f

    .line 646
    .line 647
    const/4 v13, 0x0

    .line 648
    const-wide/16 v14, 0x0

    .line 649
    .line 650
    const/16 v16, 0x0

    .line 651
    .line 652
    const-wide/16 v17, 0x0

    .line 653
    .line 654
    const/16 v19, 0x0

    .line 655
    .line 656
    move-object/from16 v20, v2

    .line 657
    .line 658
    invoke-static/range {v13 .. v22}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 659
    .line 660
    .line 661
    const/4 v1, 0x0

    .line 662
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 663
    .line 664
    .line 665
    goto :goto_3

    .line 666
    :goto_5
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 667
    .line 668
    .line 669
    if-nez v0, :cond_b

    .line 670
    .line 671
    const-string v0, "Creating Transfer"

    .line 672
    .line 673
    :goto_6
    move-object v13, v0

    .line 674
    goto :goto_7

    .line 675
    :cond_b
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 676
    .line 677
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    goto :goto_6

    .line 682
    :goto_7
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 683
    .line 684
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 689
    .line 690
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 691
    .line 692
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 693
    .line 694
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 699
    .line 700
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 701
    .line 702
    const/16 v3, 0x12

    .line 703
    .line 704
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 705
    .line 706
    .line 707
    move-result-wide v28

    .line 708
    sget-object v30, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 709
    .line 710
    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 716
    .line 717
    .line 718
    move-result-wide v33

    .line 719
    const/16 v35, 0x0

    .line 720
    .line 721
    const v37, 0xdd7ff8

    .line 722
    .line 723
    .line 724
    const-wide/16 v31, 0x0

    .line 725
    .line 726
    const v36, 0x20203

    .line 727
    .line 728
    .line 729
    move-object/from16 v25, v0

    .line 730
    .line 731
    move-wide/from16 v26, v1

    .line 732
    .line 733
    invoke-static/range {v25 .. v37}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 734
    .line 735
    .line 736
    move-result-object v15

    .line 737
    const/16 v22, 0x0

    .line 738
    .line 739
    const/16 v23, 0x1fa

    .line 740
    .line 741
    const/4 v14, 0x0

    .line 742
    const/16 v16, 0x0

    .line 743
    .line 744
    const/16 v17, 0x0

    .line 745
    .line 746
    const/16 v18, 0x0

    .line 747
    .line 748
    const/16 v19, 0x0

    .line 749
    .line 750
    move-object/from16 v21, v20

    .line 751
    .line 752
    const/16 v20, 0x0

    .line 753
    .line 754
    invoke-static/range {v13 .. v23}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 755
    .line 756
    .line 757
    const/4 v1, 0x1

    .line 758
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 759
    .line 760
    .line 761
    return-object v12

    .line 762
    :pswitch_5
    move-object/from16 v0, p1

    .line 763
    .line 764
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 765
    .line 766
    move-object/from16 v1, p2

    .line 767
    .line 768
    check-cast v1, Ljava/util/List;

    .line 769
    .line 770
    move-object/from16 v2, p3

    .line 771
    .line 772
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 773
    .line 774
    move-object/from16 v3, p4

    .line 775
    .line 776
    check-cast v3, Ljava/lang/Integer;

    .line 777
    .line 778
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    .line 786
    .line 787
    new-instance v0, Lx5;

    .line 788
    .line 789
    invoke-direct {v0, v1}, Lx5;-><init>(Ljava/util/List;)V

    .line 790
    .line 791
    .line 792
    const v1, -0x6a334596

    .line 793
    .line 794
    .line 795
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    const/4 v3, 0x6

    .line 800
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 801
    .line 802
    .line 803
    return-object v12

    .line 804
    :pswitch_6
    move v3, v11

    .line 805
    move-object/from16 v0, p1

    .line 806
    .line 807
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 808
    .line 809
    move-object/from16 v1, p2

    .line 810
    .line 811
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 812
    .line 813
    move-object/from16 v2, p3

    .line 814
    .line 815
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 816
    .line 817
    move-object/from16 v4, p4

    .line 818
    .line 819
    check-cast v4, Ljava/lang/Integer;

    .line 820
    .line 821
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    sget-object v0, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 831
    .line 832
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 833
    .line 834
    .line 835
    return-object v12

    .line 836
    :pswitch_7
    move v3, v11

    .line 837
    move-object/from16 v0, p1

    .line 838
    .line 839
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 840
    .line 841
    move-object/from16 v1, p2

    .line 842
    .line 843
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 844
    .line 845
    move-object/from16 v2, p3

    .line 846
    .line 847
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 848
    .line 849
    move-object/from16 v4, p4

    .line 850
    .line 851
    check-cast v4, Ljava/lang/Integer;

    .line 852
    .line 853
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 860
    .line 861
    .line 862
    sget-object v0, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 863
    .line 864
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 865
    .line 866
    .line 867
    return-object v12

    .line 868
    :pswitch_8
    move-object/from16 v0, p1

    .line 869
    .line 870
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 871
    .line 872
    move-object/from16 v1, p2

    .line 873
    .line 874
    check-cast v1, Ljava/lang/String;

    .line 875
    .line 876
    move-object/from16 v2, p3

    .line 877
    .line 878
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 879
    .line 880
    move-object/from16 v3, p4

    .line 881
    .line 882
    check-cast v3, Ljava/lang/Integer;

    .line 883
    .line 884
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    new-instance v0, La6;

    .line 894
    .line 895
    const/4 v3, 0x0

    .line 896
    invoke-direct {v0, v1, v3}, La6;-><init>(Ljava/lang/String;I)V

    .line 897
    .line 898
    .line 899
    const v1, -0x155effdd

    .line 900
    .line 901
    .line 902
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    const/4 v3, 0x6

    .line 907
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 908
    .line 909
    .line 910
    return-object v12

    .line 911
    :pswitch_9
    move v3, v11

    .line 912
    move-object/from16 v0, p1

    .line 913
    .line 914
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 915
    .line 916
    move-object/from16 v1, p2

    .line 917
    .line 918
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 919
    .line 920
    move-object/from16 v2, p3

    .line 921
    .line 922
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 923
    .line 924
    move-object/from16 v4, p4

    .line 925
    .line 926
    check-cast v4, Ljava/lang/Integer;

    .line 927
    .line 928
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    sget-object v0, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 938
    .line 939
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 940
    .line 941
    .line 942
    return-object v12

    .line 943
    :pswitch_a
    move v3, v11

    .line 944
    move-object/from16 v0, p1

    .line 945
    .line 946
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 947
    .line 948
    move-object/from16 v1, p2

    .line 949
    .line 950
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 951
    .line 952
    move-object/from16 v2, p3

    .line 953
    .line 954
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 955
    .line 956
    move-object/from16 v4, p4

    .line 957
    .line 958
    check-cast v4, Ljava/lang/Integer;

    .line 959
    .line 960
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 967
    .line 968
    .line 969
    sget-object v0, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 970
    .line 971
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/AuthScopeKt;->a(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 972
    .line 973
    .line 974
    return-object v12

    .line 975
    :pswitch_b
    move v3, v11

    .line 976
    move-object/from16 v0, p1

    .line 977
    .line 978
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 979
    .line 980
    move-object/from16 v1, p2

    .line 981
    .line 982
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 983
    .line 984
    move-object/from16 v2, p3

    .line 985
    .line 986
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 987
    .line 988
    move-object/from16 v4, p4

    .line 989
    .line 990
    check-cast v4, Ljava/lang/Integer;

    .line 991
    .line 992
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    sget-object v0, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1002
    .line 1003
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1004
    .line 1005
    .line 1006
    return-object v12

    .line 1007
    :pswitch_c
    move-object/from16 v0, p1

    .line 1008
    .line 1009
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1010
    .line 1011
    move-object/from16 v1, p2

    .line 1012
    .line 1013
    check-cast v1, Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 1014
    .line 1015
    move-object/from16 v2, p3

    .line 1016
    .line 1017
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1018
    .line 1019
    move-object/from16 v3, p4

    .line 1020
    .line 1021
    check-cast v3, Ljava/lang/Integer;

    .line 1022
    .line 1023
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    .line 1031
    .line 1032
    new-instance v0, Lh3;

    .line 1033
    .line 1034
    invoke-direct {v0, v1}, Lh3;-><init>(Lnet/blip/android/ui/navigation/NavResultWriter;)V

    .line 1035
    .line 1036
    .line 1037
    const v1, -0x294cc194

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    const/4 v3, 0x6

    .line 1045
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1046
    .line 1047
    .line 1048
    return-object v12

    .line 1049
    :pswitch_d
    move-object/from16 v0, p1

    .line 1050
    .line 1051
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1052
    .line 1053
    move-object/from16 v1, p2

    .line 1054
    .line 1055
    check-cast v1, Lnet/blip/libblip/PeerId;

    .line 1056
    .line 1057
    move-object/from16 v2, p3

    .line 1058
    .line 1059
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1060
    .line 1061
    move-object/from16 v3, p4

    .line 1062
    .line 1063
    check-cast v3, Ljava/lang/Integer;

    .line 1064
    .line 1065
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    new-instance v0, Ly5;

    .line 1075
    .line 1076
    invoke-direct {v0, v1}, Ly5;-><init>(Lnet/blip/libblip/PeerId;)V

    .line 1077
    .line 1078
    .line 1079
    const v1, -0x39c21f74

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    const/4 v3, 0x6

    .line 1087
    invoke-static {v0, v2, v3}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1088
    .line 1089
    .line 1090
    return-object v12

    .line 1091
    :pswitch_e
    move-object/from16 v0, p1

    .line 1092
    .line 1093
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 1094
    .line 1095
    move-object/from16 v0, p2

    .line 1096
    .line 1097
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1098
    .line 1099
    move-object/from16 v0, p3

    .line 1100
    .line 1101
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1102
    .line 1103
    move-object/from16 v0, p4

    .line 1104
    .line 1105
    check-cast v0, Ljava/lang/Integer;

    .line 1106
    .line 1107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    return-object v12

    .line 1111
    :pswitch_f
    move-object/from16 v0, p1

    .line 1112
    .line 1113
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 1114
    .line 1115
    move-object/from16 v6, p2

    .line 1116
    .line 1117
    check-cast v6, Ljava/lang/Boolean;

    .line 1118
    .line 1119
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v6

    .line 1123
    move-object/from16 v8, p3

    .line 1124
    .line 1125
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 1126
    .line 1127
    move-object/from16 v9, p4

    .line 1128
    .line 1129
    check-cast v9, Ljava/lang/Integer;

    .line 1130
    .line 1131
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1132
    .line 1133
    .line 1134
    move-result v9

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1136
    .line 1137
    .line 1138
    and-int/lit8 v0, v9, 0x30

    .line 1139
    .line 1140
    if-nez v0, :cond_d

    .line 1141
    .line 1142
    move-object v0, v8

    .line 1143
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1144
    .line 1145
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v0

    .line 1149
    if-eqz v0, :cond_c

    .line 1150
    .line 1151
    move v4, v5

    .line 1152
    :cond_c
    or-int/2addr v9, v4

    .line 1153
    :cond_d
    and-int/lit16 v0, v9, 0x91

    .line 1154
    .line 1155
    if-eq v0, v3, :cond_e

    .line 1156
    .line 1157
    const/4 v10, 0x1

    .line 1158
    :goto_8
    const/16 v24, 0x1

    .line 1159
    .line 1160
    goto :goto_9

    .line 1161
    :cond_e
    const/4 v10, 0x0

    .line 1162
    goto :goto_8

    .line 1163
    :goto_9
    and-int/lit8 v0, v9, 0x1

    .line 1164
    .line 1165
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1166
    .line 1167
    invoke-virtual {v8, v0, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    if-eqz v0, :cond_10

    .line 1172
    .line 1173
    const/high16 v0, 0x41200000    # 10.0f

    .line 1174
    .line 1175
    invoke-static {v7, v2, v1, v2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v13

    .line 1179
    if-eqz v6, :cond_f

    .line 1180
    .line 1181
    const-string v0, "Others on Blip"

    .line 1182
    .line 1183
    :goto_a
    move-object v14, v0

    .line 1184
    goto :goto_b

    .line 1185
    :cond_f
    const-string v0, "Found on Blip"

    .line 1186
    .line 1187
    goto :goto_a

    .line 1188
    :goto_b
    const/16 v18, 0x0

    .line 1189
    .line 1190
    const/16 v19, 0x4

    .line 1191
    .line 1192
    const-wide/16 v15, 0x0

    .line 1193
    .line 1194
    move-object/from16 v17, v8

    .line 1195
    .line 1196
    invoke-static/range {v13 .. v19}, Lnet/blip/android/ui/components/SubheadingKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 1197
    .line 1198
    .line 1199
    goto :goto_c

    .line 1200
    :cond_10
    move-object/from16 v17, v8

    .line 1201
    .line 1202
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1203
    .line 1204
    .line 1205
    :goto_c
    return-object v12

    .line 1206
    :pswitch_10
    move-object/from16 v0, p1

    .line 1207
    .line 1208
    check-cast v0, Landroidx/compose/animation/AnimatedContentScope;

    .line 1209
    .line 1210
    move-object/from16 v8, p2

    .line 1211
    .line 1212
    check-cast v8, Ljava/lang/Boolean;

    .line 1213
    .line 1214
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1215
    .line 1216
    .line 1217
    move-result v8

    .line 1218
    move-object/from16 v9, p3

    .line 1219
    .line 1220
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 1221
    .line 1222
    move-object/from16 v10, p4

    .line 1223
    .line 1224
    check-cast v10, Ljava/lang/Integer;

    .line 1225
    .line 1226
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1227
    .line 1228
    .line 1229
    move-result v10

    .line 1230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    and-int/lit8 v0, v10, 0x30

    .line 1234
    .line 1235
    if-nez v0, :cond_12

    .line 1236
    .line 1237
    move-object v0, v9

    .line 1238
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1239
    .line 1240
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    if-eqz v0, :cond_11

    .line 1245
    .line 1246
    move v4, v5

    .line 1247
    :cond_11
    or-int/2addr v10, v4

    .line 1248
    :cond_12
    and-int/lit16 v0, v10, 0x91

    .line 1249
    .line 1250
    if-eq v0, v3, :cond_13

    .line 1251
    .line 1252
    const/4 v0, 0x1

    .line 1253
    :goto_d
    const/16 v24, 0x1

    .line 1254
    .line 1255
    goto :goto_e

    .line 1256
    :cond_13
    const/4 v0, 0x0

    .line 1257
    goto :goto_d

    .line 1258
    :goto_e
    and-int/lit8 v3, v10, 0x1

    .line 1259
    .line 1260
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1261
    .line 1262
    invoke-virtual {v9, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v0

    .line 1266
    if-eqz v0, :cond_16

    .line 1267
    .line 1268
    const/high16 v0, 0x41c00000    # 24.0f

    .line 1269
    .line 1270
    if-eqz v8, :cond_14

    .line 1271
    .line 1272
    const v1, -0x45083b11

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1276
    .line 1277
    .line 1278
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v13

    .line 1282
    const/16 v21, 0x186

    .line 1283
    .line 1284
    const/16 v22, 0xa

    .line 1285
    .line 1286
    const-wide/16 v14, 0x0

    .line 1287
    .line 1288
    const/high16 v16, 0x40400000    # 3.0f

    .line 1289
    .line 1290
    const-wide/16 v17, 0x0

    .line 1291
    .line 1292
    const/16 v19, 0x1

    .line 1293
    .line 1294
    move-object/from16 v20, v9

    .line 1295
    .line 1296
    invoke-static/range {v13 .. v22}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 1297
    .line 1298
    .line 1299
    const/4 v1, 0x0

    .line 1300
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1301
    .line 1302
    .line 1303
    goto/16 :goto_11

    .line 1304
    .line 1305
    :cond_14
    const v3, -0x45042018

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v13

    .line 1315
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1316
    .line 1317
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1322
    .line 1323
    iget-wide v3, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1324
    .line 1325
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 1329
    .line 1330
    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1331
    .line 1332
    .line 1333
    const/16 v26, 0x1

    .line 1334
    .line 1335
    const v27, 0xeffff

    .line 1336
    .line 1337
    .line 1338
    const/4 v14, 0x0

    .line 1339
    const/4 v15, 0x0

    .line 1340
    const/16 v16, 0x0

    .line 1341
    .line 1342
    const/16 v17, 0x0

    .line 1343
    .line 1344
    const-wide/16 v18, 0x0

    .line 1345
    .line 1346
    const/16 v20, 0x0

    .line 1347
    .line 1348
    const/16 v21, 0x0

    .line 1349
    .line 1350
    const-wide/16 v22, 0x0

    .line 1351
    .line 1352
    const-wide/16 v24, 0x0

    .line 1353
    .line 1354
    invoke-static/range {v13 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFJLandroidx/compose/ui/graphics/Shape;ZJJII)Landroidx/compose/ui/Modifier;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    new-instance v4, Lma;

    .line 1359
    .line 1360
    const/4 v5, 0x4

    .line 1361
    invoke-direct {v4, v5, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/DrawModifierKt;->d(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v15

    .line 1368
    sget-object v0, Landroidx/compose/material/icons/rounded/PhotoCameraKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1369
    .line 1370
    if-eqz v0, :cond_15

    .line 1371
    .line 1372
    :goto_f
    move-object v13, v0

    .line 1373
    goto/16 :goto_10

    .line 1374
    .line 1375
    :cond_15
    new-instance v16, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1376
    .line 1377
    const/16 v24, 0x0

    .line 1378
    .line 1379
    const/16 v26, 0x60

    .line 1380
    .line 1381
    const-string v17, "Rounded.PhotoCamera"

    .line 1382
    .line 1383
    const/high16 v18, 0x41c00000    # 24.0f

    .line 1384
    .line 1385
    const/high16 v19, 0x41c00000    # 24.0f

    .line 1386
    .line 1387
    const/high16 v20, 0x41c00000    # 24.0f

    .line 1388
    .line 1389
    const/high16 v21, 0x41c00000    # 24.0f

    .line 1390
    .line 1391
    const-wide/16 v22, 0x0

    .line 1392
    .line 1393
    const/16 v25, 0x0

    .line 1394
    .line 1395
    invoke-direct/range {v16 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1396
    .line 1397
    .line 1398
    move-object/from16 v0, v16

    .line 1399
    .line 1400
    sget v3, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1401
    .line 1402
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 1403
    .line 1404
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1405
    .line 1406
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1407
    .line 1408
    .line 1409
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1410
    .line 1411
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v7, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1415
    .line 1416
    .line 1417
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 1418
    .line 1419
    const/high16 v10, -0x3fc00000    # -3.0f

    .line 1420
    .line 1421
    invoke-direct {v8, v10, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 1422
    .line 1423
    .line 1424
    iget-object v6, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1425
    .line 1426
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    .line 1428
    .line 1429
    const/high16 v8, 0x40400000    # 3.0f

    .line 1430
    .line 1431
    const/high16 v10, 0x40c00000    # 6.0f

    .line 1432
    .line 1433
    invoke-virtual {v7, v8, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 1434
    .line 1435
    .line 1436
    const/high16 v11, -0x3f400000    # -6.0f

    .line 1437
    .line 1438
    invoke-virtual {v7, v8, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 1439
    .line 1440
    .line 1441
    invoke-static {v0, v6, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1442
    .line 1443
    .line 1444
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 1445
    .line 1446
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1447
    .line 1448
    .line 1449
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1450
    .line 1451
    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1452
    .line 1453
    .line 1454
    const/high16 v5, 0x40800000    # 4.0f

    .line 1455
    .line 1456
    invoke-virtual {v4, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1457
    .line 1458
    .line 1459
    const v1, -0x3fb51eb8    # -3.17f

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1463
    .line 1464
    .line 1465
    const v1, -0x406147ae    # -1.24f

    .line 1466
    .line 1467
    .line 1468
    const v6, -0x40533333    # -1.35f

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v4, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1472
    .line 1473
    .line 1474
    const v21, -0x4043d70a    # -1.47f

    .line 1475
    .line 1476
    .line 1477
    const v22, -0x40d9999a    # -0.65f

    .line 1478
    .line 1479
    .line 1480
    const v17, -0x41428f5c    # -0.37f

    .line 1481
    .line 1482
    .line 1483
    const v18, -0x412e147b    # -0.41f

    .line 1484
    .line 1485
    .line 1486
    const v19, -0x40970a3d    # -0.91f

    .line 1487
    .line 1488
    .line 1489
    const v20, -0x40d9999a    # -0.65f

    .line 1490
    .line 1491
    .line 1492
    move-object/from16 v16, v4

    .line 1493
    .line 1494
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1495
    .line 1496
    .line 1497
    move-object/from16 v1, v16

    .line 1498
    .line 1499
    const v4, 0x411e147b    # 9.88f

    .line 1500
    .line 1501
    .line 1502
    const/high16 v6, 0x40000000    # 2.0f

    .line 1503
    .line 1504
    invoke-virtual {v1, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1505
    .line 1506
    .line 1507
    const v21, -0x40428f5c    # -1.48f

    .line 1508
    .line 1509
    .line 1510
    const v22, 0x3f266666    # 0.65f

    .line 1511
    .line 1512
    .line 1513
    const v17, -0x40f0a3d7    # -0.56f

    .line 1514
    .line 1515
    .line 1516
    const/16 v18, 0x0

    .line 1517
    .line 1518
    const v19, -0x40733333    # -1.1f

    .line 1519
    .line 1520
    .line 1521
    const v20, 0x3e75c28f    # 0.24f

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1525
    .line 1526
    .line 1527
    const v4, 0x40e570a4    # 7.17f

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v1, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v1, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1534
    .line 1535
    .line 1536
    const/high16 v21, -0x40000000    # -2.0f

    .line 1537
    .line 1538
    const/high16 v22, 0x40000000    # 2.0f

    .line 1539
    .line 1540
    const v17, -0x40733333    # -1.1f

    .line 1541
    .line 1542
    .line 1543
    const/high16 v19, -0x40000000    # -2.0f

    .line 1544
    .line 1545
    const v20, 0x3f666666    # 0.9f

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1552
    .line 1553
    .line 1554
    const/high16 v21, 0x40000000    # 2.0f

    .line 1555
    .line 1556
    const/16 v17, 0x0

    .line 1557
    .line 1558
    const v18, 0x3f8ccccd    # 1.1f

    .line 1559
    .line 1560
    .line 1561
    const v19, 0x3f666666    # 0.9f

    .line 1562
    .line 1563
    .line 1564
    const/high16 v20, 0x40000000    # 2.0f

    .line 1565
    .line 1566
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1567
    .line 1568
    .line 1569
    const/high16 v4, 0x41800000    # 16.0f

    .line 1570
    .line 1571
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1572
    .line 1573
    .line 1574
    const/high16 v22, -0x40000000    # -2.0f

    .line 1575
    .line 1576
    const v17, 0x3f8ccccd    # 1.1f

    .line 1577
    .line 1578
    .line 1579
    const/16 v18, 0x0

    .line 1580
    .line 1581
    const/high16 v19, 0x40000000    # 2.0f

    .line 1582
    .line 1583
    const v20, -0x4099999a    # -0.9f

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1587
    .line 1588
    .line 1589
    const/high16 v4, 0x41b00000    # 22.0f

    .line 1590
    .line 1591
    invoke-virtual {v1, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1592
    .line 1593
    .line 1594
    const/high16 v21, -0x40000000    # -2.0f

    .line 1595
    .line 1596
    const/16 v17, 0x0

    .line 1597
    .line 1598
    const v18, -0x40733333    # -1.1f

    .line 1599
    .line 1600
    .line 1601
    const v19, -0x4099999a    # -0.9f

    .line 1602
    .line 1603
    .line 1604
    const/high16 v20, -0x40000000    # -2.0f

    .line 1605
    .line 1606
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1607
    .line 1608
    .line 1609
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1610
    .line 1611
    .line 1612
    const/high16 v4, 0x41880000    # 17.0f

    .line 1613
    .line 1614
    invoke-virtual {v1, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1615
    .line 1616
    .line 1617
    const/high16 v21, -0x3f600000    # -5.0f

    .line 1618
    .line 1619
    const/high16 v22, -0x3f600000    # -5.0f

    .line 1620
    .line 1621
    const v17, -0x3fcf5c29    # -2.76f

    .line 1622
    .line 1623
    .line 1624
    const/16 v18, 0x0

    .line 1625
    .line 1626
    const/high16 v19, -0x3f600000    # -5.0f

    .line 1627
    .line 1628
    const v20, -0x3ff0a3d7    # -2.24f

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1632
    .line 1633
    .line 1634
    const v2, 0x400f5c29    # 2.24f

    .line 1635
    .line 1636
    .line 1637
    const/high16 v4, -0x3f600000    # -5.0f

    .line 1638
    .line 1639
    const/high16 v5, 0x40a00000    # 5.0f

    .line 1640
    .line 1641
    invoke-virtual {v1, v2, v4, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v1, v5, v2, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1645
    .line 1646
    .line 1647
    const v2, -0x3ff0a3d7    # -2.24f

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v1, v2, v5, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1654
    .line 1655
    .line 1656
    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1657
    .line 1658
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    sput-object v0, Landroidx/compose/material/icons/rounded/PhotoCameraKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1666
    .line 1667
    goto/16 :goto_f

    .line 1668
    .line 1669
    :goto_10
    const/16 v18, 0x30

    .line 1670
    .line 1671
    const/16 v19, 0x78

    .line 1672
    .line 1673
    const/4 v14, 0x0

    .line 1674
    const/16 v16, 0x0

    .line 1675
    .line 1676
    move-object/from16 v17, v9

    .line 1677
    .line 1678
    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1679
    .line 1680
    .line 1681
    const/4 v1, 0x0

    .line 1682
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1683
    .line 1684
    .line 1685
    goto :goto_11

    .line 1686
    :cond_16
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1687
    .line 1688
    .line 1689
    :goto_11
    return-object v12

    .line 1690
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
