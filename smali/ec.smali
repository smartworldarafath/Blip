.class public final synthetic Lec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lec;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lec;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lec;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lec;->j:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    .line 14
    .line 15
    iget-object v1, p0, Lec;->k:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroidx/work/Data;

    .line 18
    .line 19
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    sget-object v0, Landroidx/work/Data;->b:Landroidx/work/Data;

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p1, v7, v0}, Landroidx/sqlite/SQLiteStatement;->k(I[B)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v6, p0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->V0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :pswitch_0
    const-string v0, "UPDATE workspec SET state=? WHERE id=?"

    .line 59
    .line 60
    iget-object v1, p0, Lec;->k:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroidx/work/WorkInfo$State;

    .line 63
    .line 64
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Ljava/lang/String;

    .line 67
    .line 68
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :try_start_1
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->f(Landroidx/work/WorkInfo$State;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    int-to-long v1, v1

    .line 82
    invoke-interface {v0, v7, v1, v2}, Landroidx/sqlite/SQLiteStatement;->j(IJ)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v6, p0}, Landroidx/sqlite/SQLiteStatement;->T(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    .line 92
    .line 93
    .line 94
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 111
    .line 112
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Landroidx/work/impl/model/WorkName;

    .line 115
    .line 116
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, Landroidx/work/impl/model/WorkNameDao_Impl;->b:Landroidx/work/impl/model/WorkNameDao_Impl$1;

    .line 122
    .line 123
    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 132
    .line 133
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Landroid/view/View;

    .line 136
    .line 137
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 138
    .line 139
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1;

    .line 143
    .line 144
    invoke-direct {p1, v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_3
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 151
    .line 152
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    check-cast p1, Ljava/lang/Long;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 162
    .line 163
    iput v5, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_4
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Landroid/content/ClipboardManager;

    .line 178
    .line 179
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 182
    .line 183
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance p1, Lyh;

    .line 189
    .line 190
    invoke-direct {p1, v0, p0}, Lyh;-><init>(Landroid/content/ClipboardManager;Landroidx/compose/runtime/MutableState;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 194
    .line 195
    .line 196
    new-instance p0, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberHasClipboardContent$lambda$4$0$$inlined$onDispose$1;

    .line 197
    .line 198
    invoke-direct {p0, v0, p1}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt$rememberHasClipboardContent$lambda$4$0$$inlined$onDispose$1;-><init>(Landroid/content/ClipboardManager;Lyh;)V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :pswitch_5
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;

    .line 205
    .line 206
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 209
    .line 210
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult;

    .line 211
    .line 212
    iget-object v1, v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->a:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 213
    .line 214
    monitor-enter v1

    .line 215
    :try_start_2
    invoke-interface {p1}, Landroidx/compose/ui/text/font/TypefaceResult;->d()Z

    .line 216
    .line 217
    .line 218
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    iget-object v0, v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->b:Landroidx/collection/LruCache;

    .line 220
    .line 221
    if-eqz v2, :cond_0

    .line 222
    .line 223
    :try_start_3
    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    check-cast p0, Landroidx/compose/ui/text/font/TypefaceResult;

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :catchall_2
    move-exception p0

    .line 231
    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    check-cast p0, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 237
    .line 238
    :goto_0
    monitor-exit v1

    .line 239
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    return-object p0

    .line 242
    :goto_1
    monitor-exit v1

    .line 243
    throw p0

    .line 244
    :pswitch_6
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 247
    .line 248
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 251
    .line 252
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 253
    .line 254
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->j:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 255
    .line 256
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 260
    .line 261
    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    .line 262
    .line 263
    .line 264
    return-object p1

    .line 265
    :pswitch_7
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 268
    .line 269
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 272
    .line 273
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 274
    .line 275
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 276
    .line 277
    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    .line 278
    .line 279
    .line 280
    return-object p1

    .line 281
    :pswitch_8
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 284
    .line 285
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p0, Landroidx/compose/animation/core/TransitionInstance;

    .line 288
    .line 289
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 290
    .line 291
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 292
    .line 293
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;

    .line 297
    .line 298
    invoke-direct {p1, v0, p0}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TransitionInstance;)V

    .line 299
    .line 300
    .line 301
    return-object p1

    .line 302
    :pswitch_9
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v0, Landroidx/compose/animation/core/TransitionState;

    .line 305
    .line 306
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 309
    .line 310
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 311
    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 317
    .line 318
    new-instance v2, Landroidx/compose/animation/core/b;

    .line 319
    .line 320
    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/core/b;-><init>(Ljava/lang/Thread;Lkotlinx/coroutines/CoroutineScope;)V

    .line 321
    .line 322
    .line 323
    invoke-direct {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 324
    .line 325
    .line 326
    move-object p0, v0

    .line 327
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 328
    .line 329
    invoke-virtual {p0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->r(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 330
    .line 331
    .line 332
    new-instance p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;

    .line 333
    .line 334
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/TransitionState;)V

    .line 335
    .line 336
    .line 337
    return-object p0

    .line 338
    :pswitch_a
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v0, Ljava/util/List;

    .line 341
    .line 342
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast p0, Ljava/util/List;

    .line 345
    .line 346
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 347
    .line 348
    if-eqz v0, :cond_1

    .line 349
    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    move v5, v4

    .line 355
    :goto_2
    if-ge v5, v3, :cond_1

    .line 356
    .line 357
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    check-cast v6, Lkotlin/Pair;

    .line 362
    .line 363
    iget-object v7, v6, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 366
    .line 367
    iget-object v6, v6, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast v6, Landroidx/compose/ui/unit/IntOffset;

    .line 370
    .line 371
    iget-wide v8, v6, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 372
    .line 373
    invoke-static {p1, v7, v8, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 374
    .line 375
    .line 376
    add-int/lit8 v5, v5, 0x1

    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_1
    if-eqz p0, :cond_3

    .line 380
    .line 381
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    :goto_3
    if-ge v4, v0, :cond_3

    .line 386
    .line 387
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Lkotlin/Pair;

    .line 392
    .line 393
    iget-object v5, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 396
    .line 397
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 400
    .line 401
    if-eqz v3, :cond_2

    .line 402
    .line 403
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    .line 408
    .line 409
    iget-wide v6, v3, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_2
    move-wide v6, v1

    .line 413
    :goto_4
    invoke-static {p1, v5, v6, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->h(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 414
    .line 415
    .line 416
    add-int/lit8 v4, v4, 0x1

    .line 417
    .line 418
    goto :goto_3

    .line 419
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 420
    .line 421
    return-object p0

    .line 422
    :pswitch_b
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 425
    .line 426
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 429
    .line 430
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 431
    .line 432
    iget-object p1, v0, Landroidx/compose/foundation/text/TextLinkScope;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 433
    .line 434
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    new-instance p1, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$lambda$0$0$$inlined$onDispose$1;

    .line 438
    .line 439
    invoke-direct {p1, v0, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;)V

    .line 440
    .line 441
    .line 442
    return-object p1

    .line 443
    :pswitch_c
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 446
    .line 447
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 450
    .line 451
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 452
    .line 453
    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->b:Landroidx/compose/ui/text/AnnotatedString;

    .line 454
    .line 455
    iget-object v0, v0, Landroidx/compose/foundation/text/TextLinkScope;->a:Landroidx/compose/runtime/MutableState;

    .line 456
    .line 457
    move-object v2, v0

    .line 458
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 459
    .line 460
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    .line 465
    .line 466
    if-eqz v2, :cond_4

    .line 467
    .line 468
    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 469
    .line 470
    if-eqz v2, :cond_4

    .line 471
    .line 472
    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 473
    .line 474
    goto :goto_5

    .line 475
    :cond_4
    move-object v2, v3

    .line 476
    :goto_5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-nez v1, :cond_6

    .line 481
    .line 482
    :cond_5
    :goto_6
    move-object v4, v3

    .line 483
    goto :goto_7

    .line 484
    :cond_6
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 485
    .line 486
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 491
    .line 492
    if-eqz v0, :cond_5

    .line 493
    .line 494
    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 495
    .line 496
    invoke-static {p0, v0}, Landroidx/compose/foundation/text/TextLinkScope;->c(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    if-nez p0, :cond_7

    .line 501
    .line 502
    goto :goto_6

    .line 503
    :cond_7
    iget v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 504
    .line 505
    iget p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 506
    .line 507
    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->h(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    sub-int/2addr v2, v7

    .line 516
    invoke-virtual {v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v1, p0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 521
    .line 522
    .line 523
    move-result p0

    .line 524
    invoke-virtual {v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-ne p0, v1, :cond_8

    .line 529
    .line 530
    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 531
    .line 532
    iget v0, v6, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 533
    .line 534
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    :cond_8
    iget p0, v6, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 539
    .line 540
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    int-to-long v0, v0

    .line 545
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 546
    .line 547
    .line 548
    move-result p0

    .line 549
    int-to-long v5, p0

    .line 550
    const/16 p0, 0x20

    .line 551
    .line 552
    shl-long/2addr v0, p0

    .line 553
    const-wide v8, 0xffffffffL

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    and-long/2addr v5, v8

    .line 559
    or-long/2addr v0, v5

    .line 560
    const-wide v5, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    xor-long/2addr v0, v5

    .line 566
    invoke-virtual {v4, v0, v1}, Landroidx/compose/ui/graphics/AndroidPath;->j(J)V

    .line 567
    .line 568
    .line 569
    :goto_7
    if-eqz v4, :cond_9

    .line 570
    .line 571
    new-instance v3, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;

    .line 572
    .line 573
    invoke-direct {v3, v4}, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;-><init>(Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 574
    .line 575
    .line 576
    :cond_9
    if-eqz v3, :cond_a

    .line 577
    .line 578
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 579
    .line 580
    invoke-virtual {p1, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l(Landroidx/compose/ui/graphics/Shape;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p1, v7}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d(Z)V

    .line 584
    .line 585
    .line 586
    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 587
    .line 588
    return-object p0

    .line 589
    :pswitch_d
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 592
    .line 593
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 596
    .line 597
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 598
    .line 599
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    if-eqz p0, :cond_b

    .line 603
    .line 604
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object p0

    .line 608
    check-cast p0, Ljava/lang/Boolean;

    .line 609
    .line 610
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    :cond_b
    if-eqz v7, :cond_c

    .line 615
    .line 616
    invoke-interface {p1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    .line 617
    .line 618
    .line 619
    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 620
    .line 621
    return-object p0

    .line 622
    :pswitch_e
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 625
    .line 626
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 629
    .line 630
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 631
    .line 632
    new-instance p1, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;

    .line 633
    .line 634
    invoke-direct {p1, v0, p0}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 635
    .line 636
    .line 637
    return-object p1

    .line 638
    :pswitch_f
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 641
    .line 642
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast p0, Landroidx/work/impl/model/SystemIdInfo;

    .line 645
    .line 646
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 647
    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    iget-object v0, v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->b:Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    .line 652
    .line 653
    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 657
    .line 658
    return-object p0

    .line 659
    :pswitch_10
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Landroidx/compose/foundation/gestures/DragScope;

    .line 662
    .line 663
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 666
    .line 667
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    .line 668
    .line 669
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    check-cast v1, Ljava/lang/Number;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    iget v2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 680
    .line 681
    sub-float/2addr v1, v2

    .line 682
    invoke-interface {v0, v1}, Landroidx/compose/foundation/gestures/DragScope;->a(F)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object p1

    .line 689
    check-cast p1, Ljava/lang/Number;

    .line 690
    .line 691
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 692
    .line 693
    .line 694
    move-result p1

    .line 695
    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 696
    .line 697
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 698
    .line 699
    return-object p0

    .line 700
    :pswitch_11
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 701
    .line 702
    check-cast v0, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 703
    .line 704
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 705
    .line 706
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 707
    .line 708
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 709
    .line 710
    iget-boolean v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->b:Z

    .line 711
    .line 712
    if-eqz v1, :cond_d

    .line 713
    .line 714
    const/high16 v1, -0x40800000    # -1.0f

    .line 715
    .line 716
    goto :goto_8

    .line 717
    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    .line 718
    .line 719
    :goto_8
    iget-wide v2, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->a:J

    .line 720
    .line 721
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 722
    .line 723
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 724
    .line 725
    if-ne p0, p1, :cond_e

    .line 726
    .line 727
    invoke-static {v2, v3, v5, v7}, Landroidx/compose/ui/geometry/Offset;->a(JFI)J

    .line 728
    .line 729
    .line 730
    move-result-wide p0

    .line 731
    goto :goto_9

    .line 732
    :cond_e
    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;->a(JFI)J

    .line 733
    .line 734
    .line 735
    move-result-wide p0

    .line 736
    :goto_9
    invoke-static {p0, p1, v1}, Landroidx/compose/ui/geometry/Offset;->g(JF)J

    .line 737
    .line 738
    .line 739
    move-result-wide p0

    .line 740
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 741
    .line 742
    invoke-virtual {v0, v7, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a(IJ)J

    .line 743
    .line 744
    .line 745
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 746
    .line 747
    return-object p0

    .line 748
    :pswitch_12
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast v0, Landroidx/compose/material/MutableWindowInsets;

    .line 751
    .line 752
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    .line 755
    .line 756
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 757
    .line 758
    sget-object v1, Landroidx/compose/material/ScaffoldKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 759
    .line 760
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->d(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    iget-object p1, v0, Landroidx/compose/material/MutableWindowInsets;->a:Landroidx/compose/runtime/MutableState;

    .line 765
    .line 766
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 767
    .line 768
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 772
    .line 773
    return-object p0

    .line 774
    :pswitch_13
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 777
    .line 778
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast p0, Ljava/lang/Throwable;

    .line 781
    .line 782
    check-cast p1, Ljava/lang/Throwable;

    .line 783
    .line 784
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 785
    .line 786
    monitor-enter v1

    .line 787
    if-eqz p0, :cond_11

    .line 788
    .line 789
    if-eqz p1, :cond_10

    .line 790
    .line 791
    :try_start_4
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    .line 792
    .line 793
    if-nez v2, :cond_f

    .line 794
    .line 795
    move-object v3, p1

    .line 796
    :cond_f
    if-eqz v3, :cond_10

    .line 797
    .line 798
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 799
    .line 800
    .line 801
    goto :goto_a

    .line 802
    :catchall_3
    move-exception p0

    .line 803
    goto :goto_b

    .line 804
    :cond_10
    :goto_a
    move-object v3, p0

    .line 805
    :cond_11
    iput-object v3, v0, Landroidx/compose/runtime/Recomposer;->e:Ljava/lang/Throwable;

    .line 806
    .line 807
    iget-object p0, v0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 808
    .line 809
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->j:Landroidx/compose/runtime/Recomposer$State;

    .line 810
    .line 811
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 812
    .line 813
    .line 814
    monitor-exit v1

    .line 815
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 816
    .line 817
    return-object p0

    .line 818
    :goto_b
    monitor-exit v1

    .line 819
    throw p0

    .line 820
    :pswitch_14
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v0, Landroidx/compose/runtime/ControlledComposition;

    .line 823
    .line 824
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 827
    .line 828
    sget-object v1, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 829
    .line 830
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 831
    .line 832
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/CompositionImpl;->A(Ljava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    if-eqz p0, :cond_12

    .line 836
    .line 837
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    :cond_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 841
    .line 842
    return-object p0

    .line 843
    :pswitch_15
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 844
    .line 845
    check-cast v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 846
    .line 847
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 848
    .line 849
    check-cast p0, Landroidx/work/impl/model/Preference;

    .line 850
    .line 851
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 852
    .line 853
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    iget-object v0, v0, Landroidx/work/impl/model/PreferenceDao_Impl;->b:Landroidx/work/impl/model/PreferenceDao_Impl$1;

    .line 857
    .line 858
    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 859
    .line 860
    .line 861
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 862
    .line 863
    return-object p0

    .line 864
    :pswitch_16
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast v0, Landroidx/lifecycle/Lifecycle;

    .line 867
    .line 868
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 869
    .line 870
    check-cast p0, Landroidx/lifecycle/LifecycleEventObserver;

    .line 871
    .line 872
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 873
    .line 874
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 878
    .line 879
    .line 880
    new-instance p1, Lcom/google/accompanist/permissions/PermissionsUtilKt$PermissionLifecycleCheckerEffect$lambda$4$lambda$3$$inlined$onDispose$1;

    .line 881
    .line 882
    invoke-direct {p1, v0, p0}, Lcom/google/accompanist/permissions/PermissionsUtilKt$PermissionLifecycleCheckerEffect$lambda$4$lambda$3$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 883
    .line 884
    .line 885
    return-object p1

    .line 886
    :pswitch_17
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 889
    .line 890
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast p0, Lnet/blip/android/ui/home/PeerTrayItem;

    .line 893
    .line 894
    check-cast p1, Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 895
    .line 896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    .line 898
    .line 899
    check-cast p0, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 900
    .line 901
    iget-object p0, p0, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 902
    .line 903
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 904
    .line 905
    .line 906
    move-result-object p0

    .line 907
    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 911
    .line 912
    return-object p0

    .line 913
    :pswitch_18
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 916
    .line 917
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast p0, Ljava/util/ArrayList;

    .line 920
    .line 921
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 922
    .line 923
    new-instance v1, Lc1;

    .line 924
    .line 925
    invoke-direct {v1, v6, p0}, Lc1;-><init>(ILjava/util/ArrayList;)V

    .line 926
    .line 927
    .line 928
    iput-boolean v7, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j:Z

    .line 929
    .line 930
    invoke-virtual {v1, p1}, Lc1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    iput-boolean v4, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j:Z

    .line 934
    .line 935
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 939
    .line 940
    return-object p0

    .line 941
    :pswitch_19
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v0, Landroid/content/Context;

    .line 944
    .line 945
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 946
    .line 947
    check-cast p0, Ljava/lang/String;

    .line 948
    .line 949
    check-cast p1, Landroidx/compose/foundation/text/KeyboardActionScope;

    .line 950
    .line 951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 952
    .line 953
    .line 954
    const-string p1, "Enter all 6 digits of the code sent to "

    .line 955
    .line 956
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object p0

    .line 960
    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 961
    .line 962
    .line 963
    move-result-object p0

    .line 964
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 965
    .line 966
    .line 967
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 968
    .line 969
    return-object p0

    .line 970
    :pswitch_1a
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 973
    .line 974
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 975
    .line 976
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 977
    .line 978
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 979
    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    .line 982
    .line 983
    new-instance p1, Lh5;

    .line 984
    .line 985
    invoke-direct {p1, v6, p0}, Lh5;-><init>(ILjava/lang/Object;)V

    .line 986
    .line 987
    .line 988
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 989
    .line 990
    .line 991
    move-result-object p0

    .line 992
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 993
    .line 994
    .line 995
    new-instance p0, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;

    .line 996
    .line 997
    invoke-direct {p0, v0, p1}, Lnet/blip/android/ui/util/NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lh5;)V

    .line 998
    .line 999
    .line 1000
    return-object p0

    .line 1001
    :pswitch_1b
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1004
    .line 1005
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast p0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1008
    .line 1009
    check-cast p1, Lkotlin/Pair;

    .line 1010
    .line 1011
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 1014
    .line 1015
    iget-object p1, p1, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 1016
    .line 1017
    sget-object v3, Lnet/blip/libblip/frontend/Transfer$Status;->o:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 1018
    .line 1019
    if-ne p1, v3, :cond_13

    .line 1020
    .line 1021
    goto :goto_c

    .line 1022
    :cond_13
    iget-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1023
    .line 1024
    cmp-long p1, v3, v1

    .line 1025
    .line 1026
    if-gtz p1, :cond_14

    .line 1027
    .line 1028
    goto :goto_c

    .line 1029
    :cond_14
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p1

    .line 1033
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 1034
    .line 1035
    .line 1036
    move-result-wide v1

    .line 1037
    iget-wide p0, p0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1038
    .line 1039
    sub-long/2addr v1, p0

    .line 1040
    iget-wide p0, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1041
    .line 1042
    rem-long/2addr v1, p0

    .line 1043
    sub-long v1, p0, v1

    .line 1044
    .line 1045
    :goto_c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p0

    .line 1049
    return-object p0

    .line 1050
    :pswitch_1c
    iget-object v0, p0, Lec;->k:Ljava/lang/Object;

    .line 1051
    .line 1052
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 1053
    .line 1054
    iget-object p0, p0, Lec;->l:Ljava/lang/Object;

    .line 1055
    .line 1056
    check-cast p0, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1057
    .line 1058
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 1059
    .line 1060
    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 1061
    .line 1062
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 1063
    .line 1064
    .line 1065
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 1066
    .line 1067
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1071
    .line 1072
    return-object p0

    .line 1073
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
