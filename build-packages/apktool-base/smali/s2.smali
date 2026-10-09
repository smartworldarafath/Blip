.class public final synthetic Ls2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    iput p5, p0, Ls2;->j:I

    iput-object p1, p0, Ls2;->l:Ljava/lang/Object;

    iput-object p2, p0, Ls2;->m:Ljava/lang/Object;

    iput-object p3, p0, Ls2;->k:Ljava/lang/Object;

    iput-object p4, p0, Ls2;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 0

    .line 17
    const/4 p4, 0x5

    iput p4, p0, Ls2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2;->l:Ljava/lang/Object;

    iput-object p2, p0, Ls2;->m:Ljava/lang/Object;

    iput-object p3, p0, Ls2;->k:Ljava/lang/Object;

    iput-object p5, p0, Ls2;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/io/Serializable;Landroidx/navigation/NavHostController;Landroid/content/Context;I)V
    .locals 0

    .line 18
    iput p5, p0, Ls2;->j:I

    iput-object p1, p0, Ls2;->k:Ljava/lang/Object;

    iput-object p2, p0, Ls2;->l:Ljava/lang/Object;

    iput-object p3, p0, Ls2;->m:Ljava/lang/Object;

    iput-object p4, p0, Ls2;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Ls2;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ls2;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Ls2;->l:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p3, p0, Ls2;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p4, p0, Ls2;->k:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/Instant;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Ls2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2;->l:Ljava/lang/Object;

    iput-object p2, p0, Ls2;->k:Ljava/lang/Object;

    iput-object p3, p0, Ls2;->m:Ljava/lang/Object;

    iput-object p4, p0, Ls2;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ls2;->j:I

    .line 4
    .line 5
    const-string v2, "Unable to start transfer"

    .line 6
    .line 7
    const-string v3, "err"

    .line 8
    .line 9
    const-string v4, "origin"

    .line 10
    .line 11
    const-string v5, "unable to start transfer"

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    iget-object v9, v0, Ls2;->n:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v10, v0, Ls2;->m:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v11, v0, Ls2;->l:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, Ls2;->k:Ljava/lang/Object;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    check-cast v11, Ljava/lang/String;

    .line 31
    .line 32
    check-cast v10, Landroidx/navigation/NavHostController;

    .line 33
    .line 34
    check-cast v9, Landroid/content/Context;

    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-eqz v12, :cond_6

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    check-cast v12, Landroid/net/Uri;

    .line 63
    .line 64
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    if-eqz v14, :cond_5

    .line 69
    .line 70
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const v15, 0x2ff57c

    .line 75
    .line 76
    .line 77
    if-eq v13, v15, :cond_2

    .line 78
    .line 79
    const v15, 0x38b73479

    .line 80
    .line 81
    .line 82
    if-eq v13, v15, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string v13, "content"

    .line 86
    .line 87
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_3

    .line 92
    .line 93
    move-object v13, v12

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const-string v13, "file"

    .line 96
    .line 97
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-nez v13, :cond_4

    .line 102
    .line 103
    :cond_3
    :goto_1
    sget-object v13, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 104
    .line 105
    new-instance v14, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v15, "Unsupported URI scheme: "

    .line 108
    .line 109
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    new-array v14, v7, [Lkotlin/Pair;

    .line 120
    .line 121
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const-string v13, "ShareInApp"

    .line 125
    .line 126
    invoke-static {v13, v12, v14}, Lnet/blip/libblip/Logger;->k(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 127
    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const v13, 0x7f11007e

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-static {v12}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-static {v9, v13, v12}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    const v13, 0x7f11007e

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    new-instance v14, Ljava/io/File;

    .line 155
    .line 156
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v13, v14}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    :goto_2
    if-eqz v13, :cond_0

    .line 168
    .line 169
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_7

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 181
    .line 182
    const/16 v12, 0xa

    .line 183
    .line 184
    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-eqz v12, :cond_8

    .line 200
    .line 201
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    check-cast v12, Landroid/net/Uri;

    .line 206
    .line 207
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_8
    const/4 v12, 0x0

    .line 216
    invoke-static {v0, v12, v1, v11}, Lnet/blip/libblip/DispatcherKt;->a(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/List;Ljava/lang/String;)Ljava/io/Serializable;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-nez v1, :cond_9

    .line 225
    .line 226
    check-cast v0, Ljava/lang/String;

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v2, "createTransfer/"

    .line 231
    .line 232
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, "?isFromShareIntent=false"

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v10, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_9
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 252
    .line 253
    new-instance v6, Lkotlin/Pair;

    .line 254
    .line 255
    invoke-direct {v6, v4, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    new-instance v4, Lkotlin/Pair;

    .line 259
    .line 260
    invoke-direct {v4, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    filled-new-array {v6, v4}, [Lkotlin/Pair;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-static {v5, v1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v9, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    .line 279
    .line 280
    :goto_4
    return-object v8

    .line 281
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 282
    .line 283
    check-cast v11, Lnet/blip/libblip/PeerId;

    .line 284
    .line 285
    check-cast v10, Landroidx/navigation/NavHostController;

    .line 286
    .line 287
    check-cast v9, Landroid/content/Context;

    .line 288
    .line 289
    move-object/from16 v1, p1

    .line 290
    .line 291
    check-cast v1, Ljava/util/List;

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    if-nez v6, :cond_b

    .line 301
    .line 302
    const-string v6, "peer_view"

    .line 303
    .line 304
    invoke-static {v0, v11, v1, v6}, Lnet/blip/libblip/DispatcherKt;->a(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/List;Ljava/lang/String;)Ljava/io/Serializable;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-nez v1, :cond_a

    .line 313
    .line 314
    check-cast v0, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v10}, Landroidx/navigation/NavController;->c()V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_a
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 321
    .line 322
    new-instance v10, Lkotlin/Pair;

    .line 323
    .line 324
    invoke-direct {v10, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    new-instance v4, Lkotlin/Pair;

    .line 328
    .line 329
    invoke-direct {v4, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    filled-new-array {v10, v4}, [Lkotlin/Pair;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-static {v5, v1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v9, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    .line 348
    .line 349
    :cond_b
    :goto_5
    return-object v8

    .line 350
    :pswitch_1
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 351
    .line 352
    check-cast v11, Landroidx/navigation/internal/NavControllerImpl;

    .line 353
    .line 354
    check-cast v10, Landroidx/navigation/NavDestination;

    .line 355
    .line 356
    check-cast v0, Landroid/os/Bundle;

    .line 357
    .line 358
    move-object/from16 v1, p1

    .line 359
    .line 360
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 366
    .line 367
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 368
    .line 369
    invoke-virtual {v11, v10, v0, v1, v2}, Landroidx/navigation/internal/NavControllerImpl;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 370
    .line 371
    .line 372
    return-object v8

    .line 373
    :pswitch_2
    check-cast v11, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 374
    .line 375
    check-cast v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 376
    .line 377
    check-cast v0, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 378
    .line 379
    check-cast v9, Landroidx/compose/foundation/gestures/c;

    .line 380
    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 384
    .line 385
    iget-object v2, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 386
    .line 387
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 388
    .line 389
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    check-cast v2, Ljava/lang/Number;

    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 400
    .line 401
    sub-float/2addr v2, v3

    .line 402
    invoke-static {v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_d

    .line 407
    .line 408
    invoke-virtual {v10, v0, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->e(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    sub-float v0, v2, v0

    .line 413
    .line 414
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_c

    .line 419
    .line 420
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 421
    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_c
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 425
    .line 426
    add-float/2addr v0, v2

    .line 427
    iput v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 428
    .line 429
    :cond_d
    iget v0, v11, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 430
    .line 431
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/gestures/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Ljava/lang/Boolean;

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_e

    .line 446
    .line 447
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 448
    .line 449
    .line 450
    :cond_e
    :goto_6
    return-object v8

    .line 451
    :pswitch_3
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 452
    .line 453
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 454
    .line 455
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 456
    .line 457
    check-cast v9, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 458
    .line 459
    move-object/from16 v1, p1

    .line 460
    .line 461
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 462
    .line 463
    new-instance v1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 464
    .line 465
    invoke-direct {v1, v10, v0, v9}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V

    .line 466
    .line 467
    .line 468
    iput-object v1, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->c:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    .line 469
    .line 470
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;

    .line 471
    .line 472
    invoke-direct {v0, v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$lambda$1$2$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    .line 473
    .line 474
    .line 475
    return-object v0

    .line 476
    :pswitch_4
    check-cast v11, Ljava/util/List;

    .line 477
    .line 478
    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 479
    .line 480
    check-cast v0, Ljava/util/List;

    .line 481
    .line 482
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 483
    .line 484
    move-object/from16 v1, p1

    .line 485
    .line 486
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    .line 487
    .line 488
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->c()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    move v3, v7

    .line 493
    :goto_7
    if-ge v7, v2, :cond_10

    .line 494
    .line 495
    iget-object v4, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 496
    .line 497
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 498
    .line 499
    if-ne v4, v5, :cond_f

    .line 500
    .line 501
    invoke-interface {v1, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->b(I)J

    .line 502
    .line 503
    .line 504
    move-result-wide v4

    .line 505
    const-wide v12, 0xffffffffL

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    and-long/2addr v4, v12

    .line 511
    :goto_8
    long-to-int v4, v4

    .line 512
    goto :goto_9

    .line 513
    :cond_f
    invoke-interface {v1, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->b(I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v4

    .line 517
    const/16 v12, 0x20

    .line 518
    .line 519
    shr-long/2addr v4, v12

    .line 520
    goto :goto_8

    .line 521
    :goto_9
    add-int/2addr v3, v4

    .line 522
    add-int/lit8 v7, v7, 0x1

    .line 523
    .line 524
    goto :goto_7

    .line 525
    :cond_10
    if-eqz v11, :cond_11

    .line 526
    .line 527
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    :cond_11
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 535
    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-ne v1, v0, :cond_12

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :cond_12
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 544
    .line 545
    add-int/2addr v0, v6

    .line 546
    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 547
    .line 548
    :goto_a
    return-object v8

    .line 549
    :pswitch_5
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 550
    .line 551
    check-cast v10, Landroidx/compose/animation/core/InfiniteTransition;

    .line 552
    .line 553
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 554
    .line 555
    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 556
    .line 557
    move-object/from16 v1, p1

    .line 558
    .line 559
    check-cast v1, Ljava/lang/Long;

    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 562
    .line 563
    .line 564
    move-result-wide v1

    .line 565
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    check-cast v3, Landroidx/compose/runtime/State;

    .line 570
    .line 571
    if-eqz v3, :cond_13

    .line 572
    .line 573
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    check-cast v3, Ljava/lang/Number;

    .line 578
    .line 579
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 580
    .line 581
    .line 582
    move-result-wide v3

    .line 583
    goto :goto_b

    .line 584
    :cond_13
    move-wide v3, v1

    .line 585
    :goto_b
    iget-wide v11, v10, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    .line 586
    .line 587
    iget-object v5, v10, Landroidx/compose/animation/core/InfiniteTransition;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 588
    .line 589
    const-wide/high16 v13, -0x8000000000000000L

    .line 590
    .line 591
    cmp-long v11, v11, v13

    .line 592
    .line 593
    if-eqz v11, :cond_14

    .line 594
    .line 595
    iget v11, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 596
    .line 597
    invoke-interface {v9}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 598
    .line 599
    .line 600
    move-result-object v12

    .line 601
    invoke-static {v12}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    cmpg-float v11, v11, v12

    .line 606
    .line 607
    if-nez v11, :cond_14

    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_14
    iput-wide v1, v10, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    .line 611
    .line 612
    iget-object v1, v5, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 613
    .line 614
    iget v2, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 615
    .line 616
    move v11, v7

    .line 617
    :goto_c
    if-ge v11, v2, :cond_15

    .line 618
    .line 619
    aget-object v12, v1, v11

    .line 620
    .line 621
    check-cast v12, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 622
    .line 623
    iput-boolean v6, v12, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->p:Z

    .line 624
    .line 625
    add-int/lit8 v11, v11, 0x1

    .line 626
    .line 627
    goto :goto_c

    .line 628
    :cond_15
    invoke-interface {v9}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 637
    .line 638
    :goto_d
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 639
    .line 640
    const/4 v1, 0x0

    .line 641
    cmpg-float v1, v0, v1

    .line 642
    .line 643
    if-nez v1, :cond_16

    .line 644
    .line 645
    iget-object v0, v5, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 646
    .line 647
    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 648
    .line 649
    :goto_e
    if-ge v7, v1, :cond_1b

    .line 650
    .line 651
    aget-object v2, v0, v7

    .line 652
    .line 653
    check-cast v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 654
    .line 655
    iget-object v3, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->n:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 656
    .line 657
    iget-object v3, v3, Landroidx/compose/animation/core/TargetBasedAnimation;->c:Ljava/lang/Object;

    .line 658
    .line 659
    iget-object v4, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->m:Landroidx/compose/runtime/MutableState;

    .line 660
    .line 661
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 662
    .line 663
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    iput-boolean v6, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->p:Z

    .line 667
    .line 668
    add-int/lit8 v7, v7, 0x1

    .line 669
    .line 670
    goto :goto_e

    .line 671
    :cond_16
    iget-wide v1, v10, Landroidx/compose/animation/core/InfiniteTransition;->c:J

    .line 672
    .line 673
    sub-long/2addr v3, v1

    .line 674
    long-to-float v1, v3

    .line 675
    div-float/2addr v1, v0

    .line 676
    float-to-long v0, v1

    .line 677
    iget-object v2, v5, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 678
    .line 679
    iget v3, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 680
    .line 681
    move v5, v6

    .line 682
    move v4, v7

    .line 683
    :goto_f
    if-ge v4, v3, :cond_1a

    .line 684
    .line 685
    aget-object v9, v2, v4

    .line 686
    .line 687
    check-cast v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 688
    .line 689
    iget-boolean v11, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->o:Z

    .line 690
    .line 691
    if-nez v11, :cond_18

    .line 692
    .line 693
    iget-object v11, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->r:Landroidx/compose/animation/core/InfiniteTransition;

    .line 694
    .line 695
    iget-object v11, v11, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    .line 696
    .line 697
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 698
    .line 699
    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 700
    .line 701
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    iget-boolean v11, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->p:Z

    .line 705
    .line 706
    if-eqz v11, :cond_17

    .line 707
    .line 708
    iput-boolean v7, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->p:Z

    .line 709
    .line 710
    iput-wide v0, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->q:J

    .line 711
    .line 712
    :cond_17
    iget-wide v11, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->q:J

    .line 713
    .line 714
    sub-long v11, v0, v11

    .line 715
    .line 716
    iget-object v13, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->n:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 717
    .line 718
    invoke-virtual {v13, v11, v12}, Landroidx/compose/animation/core/TargetBasedAnimation;->f(J)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v13

    .line 722
    iget-object v14, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->m:Landroidx/compose/runtime/MutableState;

    .line 723
    .line 724
    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 725
    .line 726
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    iget-object v13, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->n:Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 730
    .line 731
    invoke-interface {v13, v11, v12}, Landroidx/compose/animation/core/Animation;->e(J)Z

    .line 732
    .line 733
    .line 734
    move-result v11

    .line 735
    iput-boolean v11, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->o:Z

    .line 736
    .line 737
    :cond_18
    iget-boolean v9, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->o:Z

    .line 738
    .line 739
    if-nez v9, :cond_19

    .line 740
    .line 741
    move v5, v7

    .line 742
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 743
    .line 744
    goto :goto_f

    .line 745
    :cond_1a
    xor-int/lit8 v0, v5, 0x1

    .line 746
    .line 747
    iget-object v1, v10, Landroidx/compose/animation/core/InfiniteTransition;->d:Landroidx/compose/runtime/MutableState;

    .line 748
    .line 749
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 754
    .line 755
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    :cond_1b
    return-object v8

    .line 759
    :pswitch_6
    check-cast v11, Landroidx/media3/exoplayer/ExoPlayer;

    .line 760
    .line 761
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 762
    .line 763
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 764
    .line 765
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 766
    .line 767
    move-object/from16 v1, p1

    .line 768
    .line 769
    check-cast v1, Ljava/lang/Float;

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    check-cast v3, Ljava/lang/Float;

    .line 780
    .line 781
    if-nez v3, :cond_1c

    .line 782
    .line 783
    move-object v3, v11

    .line 784
    check-cast v3, Landroidx/media3/common/BasePlayer;

    .line 785
    .line 786
    invoke-virtual {v3}, Landroidx/media3/common/BasePlayer;->X()Z

    .line 787
    .line 788
    .line 789
    move-result v3

    .line 790
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 795
    .line 796
    .line 797
    move-object v0, v11

    .line 798
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 799
    .line 800
    invoke-interface {v0, v7}, Landroidx/media3/common/Player;->u(Z)V

    .line 801
    .line 802
    .line 803
    :cond_1c
    invoke-interface {v10, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 804
    .line 805
    .line 806
    invoke-interface {v9, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    float-to-long v0, v2

    .line 810
    check-cast v11, Landroidx/media3/common/BasePlayer;

    .line 811
    .line 812
    const/4 v2, 0x5

    .line 813
    invoke-virtual {v11, v2, v0, v1}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 814
    .line 815
    .line 816
    return-object v8

    .line 817
    :pswitch_7
    check-cast v11, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 818
    .line 819
    check-cast v10, Landroidx/compose/ui/text/input/TextInputService;

    .line 820
    .line 821
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 822
    .line 823
    check-cast v9, Landroidx/compose/ui/text/input/ImeOptions;

    .line 824
    .line 825
    move-object/from16 v1, p1

    .line 826
    .line 827
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 828
    .line 829
    invoke-virtual {v11}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_1d

    .line 834
    .line 835
    iget-object v1, v11, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 836
    .line 837
    iget-object v2, v11, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 838
    .line 839
    iget-object v3, v11, Landroidx/compose/foundation/text/LegacyTextFieldState;->w:Lt6;

    .line 840
    .line 841
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 842
    .line 843
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 844
    .line 845
    .line 846
    new-instance v5, Lp2;

    .line 847
    .line 848
    const/16 v6, 0x11

    .line 849
    .line 850
    invoke-direct {v5, v1, v2, v4, v6}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 851
    .line 852
    .line 853
    iget-object v1, v10, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 854
    .line 855
    invoke-interface {v1, v0, v9, v5, v3}, Landroidx/compose/ui/text/input/PlatformTextInputService;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lp2;Lkotlin/jvm/functions/Function1;)V

    .line 856
    .line 857
    .line 858
    new-instance v0, Landroidx/compose/ui/text/input/TextInputSession;

    .line 859
    .line 860
    invoke-direct {v0, v10, v1}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 861
    .line 862
    .line 863
    iget-object v1, v10, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 864
    .line 865
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 869
    .line 870
    iput-object v0, v11, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 871
    .line 872
    :cond_1d
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1;

    .line 873
    .line 874
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 875
    .line 876
    .line 877
    return-object v0

    .line 878
    :pswitch_8
    check-cast v11, Lkotlin/time/Instant;

    .line 879
    .line 880
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 881
    .line 882
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 883
    .line 884
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 885
    .line 886
    move-object/from16 v1, p1

    .line 887
    .line 888
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 889
    .line 890
    sget-object v2, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 891
    .line 892
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    sget-object v1, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    .line 896
    .line 897
    invoke-interface {v1}, Lkotlin/time/Clock;->a()Lkotlin/time/Instant;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    sget-object v2, Lkotlin/time/Duration;->k:Lkotlin/time/Duration$Companion;

    .line 908
    .line 909
    iget-wide v2, v1, Lkotlin/time/Instant;->j:J

    .line 910
    .line 911
    iget-wide v4, v11, Lkotlin/time/Instant;->j:J

    .line 912
    .line 913
    sub-long/2addr v2, v4

    .line 914
    sget-object v4, Lkotlin/time/DurationUnit;->m:Lkotlin/time/DurationUnit;

    .line 915
    .line 916
    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->e(JLkotlin/time/DurationUnit;)J

    .line 917
    .line 918
    .line 919
    move-result-wide v2

    .line 920
    iget v1, v1, Lkotlin/time/Instant;->k:I

    .line 921
    .line 922
    iget v4, v11, Lkotlin/time/Instant;->k:I

    .line 923
    .line 924
    sub-int/2addr v1, v4

    .line 925
    sget-object v4, Lkotlin/time/DurationUnit;->k:Lkotlin/time/DurationUnit;

    .line 926
    .line 927
    invoke-static {v1, v4}, Lkotlin/time/DurationKt;->d(ILkotlin/time/DurationUnit;)J

    .line 928
    .line 929
    .line 930
    move-result-wide v4

    .line 931
    invoke-static {v2, v3, v4, v5}, Lkotlin/time/Duration;->g(JJ)J

    .line 932
    .line 933
    .line 934
    move-result-wide v1

    .line 935
    new-instance v3, Lkotlin/time/Duration;

    .line 936
    .line 937
    invoke-direct {v3, v1, v2}, Lkotlin/time/Duration;-><init>(J)V

    .line 938
    .line 939
    .line 940
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    check-cast v0, Ljava/lang/Boolean;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    invoke-interface {v10, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 950
    .line 951
    .line 952
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 953
    .line 954
    invoke-interface {v9, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 955
    .line 956
    .line 957
    return-object v8

    .line 958
    :pswitch_9
    check-cast v11, Landroidx/compose/animation/core/Animatable;

    .line 959
    .line 960
    check-cast v10, Landroidx/compose/animation/core/AnimationState;

    .line 961
    .line 962
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 963
    .line 964
    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 965
    .line 966
    move-object/from16 v1, p1

    .line 967
    .line 968
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 969
    .line 970
    iget-object v2, v11, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 971
    .line 972
    invoke-static {v1, v2}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    .line 973
    .line 974
    .line 975
    iget-object v3, v1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 976
    .line 977
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 978
    .line 979
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v4

    .line 983
    invoke-virtual {v11, v4}, Landroidx/compose/animation/core/Animatable;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v4

    .line 987
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    if-nez v3, :cond_1f

    .line 996
    .line 997
    iget-object v2, v2, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 998
    .line 999
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 1000
    .line 1001
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 1002
    .line 1003
    .line 1004
    iget-object v2, v10, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 1005
    .line 1006
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 1007
    .line 1008
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 1009
    .line 1010
    .line 1011
    if-eqz v0, :cond_1e

    .line 1012
    .line 1013
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 1017
    .line 1018
    .line 1019
    iput-boolean v6, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 1020
    .line 1021
    goto :goto_10

    .line 1022
    :cond_1f
    if-eqz v0, :cond_20

    .line 1023
    .line 1024
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    :cond_20
    :goto_10
    return-object v8

    .line 1028
    nop

    .line 1029
    :pswitch_data_0
    .packed-switch 0x0
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
