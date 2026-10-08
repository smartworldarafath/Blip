.class public final synthetic Lvc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lvc;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lvc;->j:I

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    sget-object p0, Landroidx/compose/material/TextKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 23
    .line 24
    sget-object p0, Landroidx/compose/material/TypographyKt;->a:Landroidx/compose/ui/text/TextStyle;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_2
    sget-object p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 28
    .line 29
    return-object v3

    .line 30
    :pswitch_3
    sget-object p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 31
    .line 32
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Missing compositionLocal of type SystemBarsMetrics"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :pswitch_4
    sget p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->y:I

    .line 41
    .line 42
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 43
    .line 44
    sget-object v0, Lnet/blip/libblip/frontend/Search;->q:Lnet/blip/libblip/frontend/Search$Companion$ADAPTER$1;

    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_5
    sget p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->y:I

    .line 52
    .line 53
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 54
    .line 55
    sget-object v0, Lnet/blip/libblip/frontend/TransferNotificationResponse;->p:Lnet/blip/libblip/frontend/TransferNotificationResponse$Companion$ADAPTER$1;

    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_6
    sget p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->y:I

    .line 63
    .line 64
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 65
    .line 66
    sget-object v0, Lnet/blip/libblip/frontend/Transfer;->D:Lnet/blip/libblip/frontend/Transfer$Companion$ADAPTER$1;

    .line 67
    .line 68
    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoAdapter$Companion;->a(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/MapProtoAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_7
    throw v3

    .line 74
    :pswitch_8
    sget-object p0, Landroidx/compose/material/ShapesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 75
    .line 76
    new-instance p0, Landroidx/compose/material/Shapes;

    .line 77
    .line 78
    const/high16 v0, 0x40800000    # 4.0f

    .line 79
    .line 80
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {p0, v1, v0, v2}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_a
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    .line 105
    .line 106
    const-class p0, Lcoil3/util/DecoderServiceLoaderTarget;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_b
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    .line 134
    .line 135
    const-class p0, Lcoil3/util/FetcherServiceLoaderTarget;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->a(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->h(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lcoil3/util/Collections_jvmCommonKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :pswitch_c
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 163
    .line 164
    return-object v3

    .line 165
    :pswitch_d
    new-instance p0, Landroidx/compose/foundation/ScrollState;

    .line 166
    .line 167
    invoke-direct {p0, v2}, Landroidx/compose/foundation/ScrollState;-><init>(I)V

    .line 168
    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_e
    sget-object p0, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 172
    .line 173
    return-object v3

    .line 174
    :pswitch_f
    sget-object p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 175
    .line 176
    return-object v3

    .line 177
    :pswitch_10
    sget-object p0, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 178
    .line 179
    new-instance p0, Landroidx/compose/material/RippleConfiguration;

    .line 180
    .line 181
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->h:J

    .line 182
    .line 183
    invoke-direct {p0, v0, v1, v3}, Landroidx/compose/material/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;)V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_11
    new-instance p0, Lokio/Buffer;

    .line 188
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    return-object p0

    .line 193
    :pswitch_12
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->b:Lkotlin/Lazy;

    .line 194
    .line 195
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Ljava/util/List;

    .line 200
    .line 201
    new-instance v0, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$1$$inlined$sortedByDescending$1;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    :goto_0
    if-ge v2, v1, :cond_0

    .line 220
    .line 221
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Lcoil3/util/DecoderServiceLoaderTarget;

    .line 226
    .line 227
    check-cast v3, Lcoil3/video/internal/VideoFrameDecoderServiceLoaderTarget;

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    new-instance v3, Lcoil3/video/VideoFrameDecoder$Factory;

    .line 233
    .line 234
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    add-int/lit8 v2, v2, 0x1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_0
    return-object v0

    .line 244
    :pswitch_13
    sget-object p0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    .line 245
    .line 246
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    check-cast p0, Ljava/util/List;

    .line 251
    .line 252
    new-instance v0, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$0$$inlined$sortedByDescending$1;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    :goto_1
    if-ge v2, v1, :cond_1

    .line 271
    .line 272
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lcoil3/util/FetcherServiceLoaderTarget;

    .line 277
    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-interface {v3}, Lcoil3/util/FetcherServiceLoaderTarget;->a()Lcoil3/fetch/Fetcher$Factory;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-interface {v3}, Lcoil3/util/FetcherServiceLoaderTarget;->type()Lkotlin/jvm/internal/ClassReference;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    new-instance v5, Lkotlin/Pair;

    .line 290
    .line 291
    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    add-int/lit8 v2, v2, 0x1

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_1
    return-object v0

    .line 301
    :pswitch_14
    sget-object p0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 302
    .line 303
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 304
    .line 305
    new-array v0, v2, [Lkotlin/Pair;

    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    const-string p0, "CompositionLocal LocalCore not present"

    .line 311
    .line 312
    invoke-static {p0, v0}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 313
    .line 314
    .line 315
    throw v3

    .line 316
    :pswitch_15
    sget-object p0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 317
    .line 318
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 319
    .line 320
    new-array v0, v2, [Lkotlin/Pair;

    .line 321
    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    const-string p0, "CompositionLocal LocalHardwareInfo not present"

    .line 326
    .line 327
    invoke-static {p0, v0}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 328
    .line 329
    .line 330
    throw v3

    .line 331
    :pswitch_16
    sget-object p0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 332
    .line 333
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 334
    .line 335
    new-array v0, v2, [Lkotlin/Pair;

    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    const-string p0, "CompositionLocal LocalSystemPaths not present"

    .line 341
    .line 342
    invoke-static {p0, v0}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 343
    .line 344
    .line 345
    throw v3

    .line 346
    :pswitch_17
    sget-object p0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 347
    .line 348
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 349
    .line 350
    new-array v0, v2, [Lkotlin/Pair;

    .line 351
    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    const-string p0, "CompositionLocal LocalFlavor not present"

    .line 356
    .line 357
    invoke-static {p0, v0}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 358
    .line 359
    .line 360
    throw v3

    .line 361
    :pswitch_18
    sget-object p0, Landroidx/compose/ui/platform/PlatformTextInputModifierNodeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 362
    .line 363
    return-object v3

    .line 364
    :pswitch_19
    sget-object p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 365
    .line 366
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 367
    .line 368
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 369
    .line 370
    return-object p0

    .line 371
    :pswitch_1a
    sget-object p0, Landroidx/compose/ui/layout/PinnableContainerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 372
    .line 373
    return-object v3

    .line 374
    :pswitch_1b
    new-instance p0, Landroidx/compose/ui/graphics/AndroidPathMeasure;

    .line 375
    .line 376
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 377
    .line 378
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/AndroidPathMeasure;-><init>(Landroid/graphics/PathMeasure;)V

    .line 382
    .line 383
    .line 384
    return-object p0

    .line 385
    :pswitch_1c
    sget-object p0, Landroidx/compose/foundation/OverscrollConfiguration_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 386
    .line 387
    new-instance p0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 388
    .line 389
    invoke-direct {p0}, Landroidx/compose/foundation/OverscrollConfiguration;-><init>()V

    .line 390
    .line 391
    .line 392
    return-object p0

    .line 393
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
