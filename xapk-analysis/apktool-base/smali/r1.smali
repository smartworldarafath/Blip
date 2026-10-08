.class public final synthetic Lr1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lr1;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lr1;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lr1;->j:I

    .line 2
    .line 3
    const-string v1, "input_method"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object p0, p0, Lr1;->k:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->a:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->b:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->a()V

    .line 36
    .line 37
    .line 38
    iput-boolean v3, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 39
    .line 40
    :goto_0
    return-object v5

    .line 41
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 42
    .line 43
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->a:Landroid/view/View;

    .line 46
    .line 47
    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 52
    .line 53
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j:Landroidx/compose/ui/node/DrawModifierNode;

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-object v5

    .line 61
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 62
    .line 63
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 72
    .line 73
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m:I

    .line 74
    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_3
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 85
    .line 86
    iput-boolean v3, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->J:Z

    .line 87
    .line 88
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    iput-boolean v3, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->D:Z

    .line 93
    .line 94
    :cond_3
    return-object v5

    .line 95
    :pswitch_4
    check-cast p0, Landroidx/room/InvalidationTracker;

    .line 96
    .line 97
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->j()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->m()Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_5

    .line 110
    .line 111
    :cond_4
    move v2, v3

    .line 112
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 118
    .line 119
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_6
    check-cast p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    .line 136
    .line 137
    iget-object p0, p0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    .line 152
    return-object p0

    .line 153
    :pswitch_7
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 154
    .line 155
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {p0}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :pswitch_8
    check-cast p0, Lcoil3/ImageLoader$Builder;

    .line 169
    .line 170
    new-instance v0, Lcoil3/memory/MemoryCache$Builder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 176
    .line 177
    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    :try_start_0
    const-class v3, Landroid/app/ActivityManager;

    .line 183
    .line 184
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    check-cast v3, Landroid/app/ActivityManager;

    .line 192
    .line 193
    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 194
    .line 195
    .line 196
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    if-eqz v3, :cond_6

    .line 198
    .line 199
    const-wide v1, 0x3fc3333333333333L    # 0.15

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :catch_0
    :cond_6
    const-wide/16 v5, 0x0

    .line 205
    .line 206
    cmpg-double v3, v5, v1

    .line 207
    .line 208
    if-gtz v3, :cond_8

    .line 209
    .line 210
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 211
    .line 212
    cmpg-double v3, v1, v5

    .line 213
    .line 214
    if-gtz v3, :cond_8

    .line 215
    .line 216
    new-instance v3, Lhb;

    .line 217
    .line 218
    invoke-direct {v3, v1, v2, p0}, Lhb;-><init>(DLandroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    iput-object v3, v0, Lcoil3/memory/MemoryCache$Builder;->a:Lhb;

    .line 222
    .line 223
    new-instance p0, Lcoil3/memory/RealWeakMemoryCache;

    .line 224
    .line 225
    invoke-direct {p0}, Lcoil3/memory/RealWeakMemoryCache;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v0, v0, Lcoil3/memory/MemoryCache$Builder;->a:Lhb;

    .line 229
    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    invoke-virtual {v0}, Lhb;->a()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/lang/Number;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 239
    .line 240
    .line 241
    move-result-wide v0

    .line 242
    new-instance v2, Lcoil3/memory/RealStrongMemoryCache;

    .line 243
    .line 244
    invoke-direct {v2, v0, v1, p0}, Lcoil3/memory/RealStrongMemoryCache;-><init>(JLcoil3/memory/RealWeakMemoryCache;)V

    .line 245
    .line 246
    .line 247
    new-instance v4, Lcoil3/memory/RealMemoryCache;

    .line 248
    .line 249
    invoke-direct {v4, v2, p0}, Lcoil3/memory/RealMemoryCache;-><init>(Lcoil3/memory/RealStrongMemoryCache;Lcoil3/memory/RealWeakMemoryCache;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_7
    const-string p0, "maxSizeBytesFactory == null"

    .line 254
    .line 255
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_8
    const-string p0, "percent must be in the range [0.0, 1.0]."

    .line 260
    .line 261
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_1
    return-object v4

    .line 265
    :pswitch_9
    check-cast p0, Ljava/util/List;

    .line 266
    .line 267
    invoke-interface {p0}, Ljava/util/Collection;->size()I

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
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 277
    .line 278
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 279
    .line 280
    .line 281
    return-object v5

    .line 282
    :pswitch_b
    check-cast p0, Lnet/blip/android/FlavorAndroid;

    .line 283
    .line 284
    :try_start_1
    sget-object v0, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 285
    .line 286
    iget-object p0, p0, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 287
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string p0, "/state.dat"

    .line 297
    .line 298
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-static {v0, p0}, Lnet/blip/libblip/ProtoAdapter_UtilKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    check-cast p0, Lnet/blip/libblip/frontend/State;

    .line 310
    .line 311
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 312
    .line 313
    if-eqz p0, :cond_9

    .line 314
    .line 315
    iget-object p0, p0, Lnet/blip/libblip/frontend/Auth;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :catchall_0
    move-exception p0

    .line 319
    goto :goto_2

    .line 320
    :cond_9
    move-object p0, v4

    .line 321
    goto :goto_3

    .line 322
    :goto_2
    new-instance v0, Lkotlin/Result$Failure;

    .line 323
    .line 324
    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    move-object p0, v0

    .line 328
    :goto_3
    nop

    .line 329
    instance-of v0, p0, Lkotlin/Result$Failure;

    .line 330
    .line 331
    if-eqz v0, :cond_a

    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_a
    move-object v4, p0

    .line 335
    :goto_4
    check-cast v4, Ljava/lang/String;

    .line 336
    .line 337
    return-object v4

    .line 338
    :pswitch_c
    check-cast p0, Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 339
    .line 340
    sget v0, Lnet/blip/android/notifications/FirebaseNotificationService;->v:I

    .line 341
    .line 342
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 343
    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string v3, "state.dat"

    .line 353
    .line 354
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sget-object v1, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 358
    .line 359
    new-instance v3, Ljava/io/FileInputStream;

    .line 360
    .line 361
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-static {v3}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    new-instance v3, Lokio/RealBufferedSource;

    .line 372
    .line 373
    invoke-direct {v3, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/squareup/wire/ProtoReader;

    .line 377
    .line 378
    invoke-direct {v0, v3}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0}, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Lnet/blip/libblip/frontend/State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    .line 387
    move-object v4, v0

    .line 388
    goto :goto_5

    .line 389
    :catch_1
    move-exception v0

    .line 390
    iget-object p0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->u:Lnet/blip/libblip/Logger;

    .line 391
    .line 392
    new-array v1, v2, [Lkotlin/Pair;

    .line 393
    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 398
    .line 399
    .line 400
    :goto_5
    return-object v4

    .line 401
    :pswitch_d
    check-cast p0, Landroidx/compose/material/DrawerState;

    .line 402
    .line 403
    invoke-virtual {p0}, Landroidx/compose/material/DrawerState;->a()Landroidx/compose/ui/unit/Density;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    sget-object v0, Landroidx/compose/material/DrawerKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 408
    .line 409
    const/high16 v0, 0x43c80000    # 400.0f

    .line 410
    .line 411
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 412
    .line 413
    .line 414
    move-result p0

    .line 415
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    return-object p0

    .line 420
    :pswitch_e
    check-cast p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 421
    .line 422
    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;

    .line 423
    .line 424
    invoke-direct {v0, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;)V

    .line 425
    .line 426
    .line 427
    return-object v0

    .line 428
    :pswitch_f
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 429
    .line 430
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 431
    .line 432
    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    .line 433
    .line 434
    .line 435
    return-object v5

    .line 436
    :pswitch_10
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 437
    .line 438
    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 439
    .line 440
    const/4 v1, 0x0

    .line 441
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 442
    .line 443
    .line 444
    return-object v0

    .line 445
    :pswitch_11
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 446
    .line 447
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    return-object p0

    .line 452
    :pswitch_12
    check-cast p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 453
    .line 454
    const-string v0, ":memory:"

    .line 455
    .line 456
    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    return-object p0

    .line 461
    :pswitch_13
    check-cast p0, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 462
    .line 463
    const-wide/16 v0, 0x0

    .line 464
    .line 465
    invoke-static {v0, v1, v0, v1}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 470
    .line 471
    if-eqz v2, :cond_13

    .line 472
    .line 473
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    move-object v0, p0

    .line 478
    :goto_6
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 479
    .line 480
    if-eqz v1, :cond_f

    .line 481
    .line 482
    instance-of v1, v0, Landroid/app/Activity;

    .line 483
    .line 484
    if-eqz v1, :cond_b

    .line 485
    .line 486
    :goto_7
    move-object v4, v0

    .line 487
    goto :goto_8

    .line 488
    :cond_b
    instance-of v1, v0, Landroid/inputmethodservice/InputMethodService;

    .line 489
    .line 490
    if-eqz v1, :cond_c

    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_c
    instance-of v1, v0, Landroid/app/Application;

    .line 494
    .line 495
    if-eqz v1, :cond_d

    .line 496
    .line 497
    goto :goto_7

    .line 498
    :cond_d
    check-cast v0, Landroid/content/ContextWrapper;

    .line 499
    .line 500
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    if-nez v1, :cond_e

    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_e
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    goto :goto_6

    .line 512
    :cond_f
    :goto_8
    const-wide v0, 0xffffffffL

    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    const/16 v2, 0x20

    .line 518
    .line 519
    if-eqz v4, :cond_12

    .line 520
    .line 521
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator;->a:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 522
    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 524
    .line 525
    .line 526
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->a:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 527
    .line 528
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->b:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 529
    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 534
    .line 535
    const/16 v5, 0x22

    .line 536
    .line 537
    if-lt v3, v5, :cond_10

    .line 538
    .line 539
    sget-object v3, Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;->a:Landroidx/window/layout/util/WindowMetricsCompatHelperApi34Impl;

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_10
    const/16 v5, 0x1e

    .line 543
    .line 544
    if-lt v3, v5, :cond_11

    .line 545
    .line 546
    sget-object v3, Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;->a:Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;

    .line 547
    .line 548
    goto :goto_9

    .line 549
    :cond_11
    sget-object v3, Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;->a:Landroidx/window/layout/util/WindowMetricsCompatHelperBaseImpl;

    .line 550
    .line 551
    :goto_9
    iget-object p0, p0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->b:Landroidx/window/layout/util/DensityCompatHelper;

    .line 552
    .line 553
    invoke-interface {v3, v4, p0}, Landroidx/window/layout/util/WindowMetricsCompatHelper;->a(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->a()Landroid/graphics/Rect;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->a()Landroid/graphics/Rect;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 570
    .line 571
    .line 572
    move-result p0

    .line 573
    int-to-long v5, v3

    .line 574
    shl-long v2, v5, v2

    .line 575
    .line 576
    int-to-long v5, p0

    .line 577
    and-long/2addr v0, v5

    .line 578
    or-long/2addr v0, v2

    .line 579
    invoke-static {v4}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 580
    .line 581
    .line 582
    move-result-object p0

    .line 583
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 584
    .line 585
    .line 586
    move-result-wide v2

    .line 587
    invoke-interface {p0, v2, v3}, Landroidx/compose/ui/unit/Density;->y(J)J

    .line 588
    .line 589
    .line 590
    move-result-wide v2

    .line 591
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 592
    .line 593
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 594
    .line 595
    .line 596
    goto :goto_a

    .line 597
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-static {p0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 610
    .line 611
    int-to-float v4, v4

    .line 612
    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 613
    .line 614
    int-to-float v3, v3

    .line 615
    invoke-static {v4, v3}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 616
    .line 617
    .line 618
    move-result-wide v3

    .line 619
    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/unit/Density;->D0(J)J

    .line 620
    .line 621
    .line 622
    move-result-wide v5

    .line 623
    shr-long v7, v5, v2

    .line 624
    .line 625
    long-to-int p0, v7

    .line 626
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 627
    .line 628
    .line 629
    move-result p0

    .line 630
    float-to-int p0, p0

    .line 631
    and-long/2addr v5, v0

    .line 632
    long-to-int v5, v5

    .line 633
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    float-to-int v5, v5

    .line 638
    int-to-long v6, p0

    .line 639
    shl-long/2addr v6, v2

    .line 640
    int-to-long v8, v5

    .line 641
    and-long/2addr v0, v8

    .line 642
    or-long/2addr v0, v6

    .line 643
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 644
    .line 645
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 646
    .line 647
    .line 648
    goto :goto_a

    .line 649
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 650
    .line 651
    .line 652
    move-result-object p0

    .line 653
    invoke-static {p0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 658
    .line 659
    .line 660
    move-result-wide v2

    .line 661
    invoke-interface {p0, v2, v3}, Landroidx/compose/ui/unit/Density;->y(J)J

    .line 662
    .line 663
    .line 664
    move-result-wide v2

    .line 665
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 666
    .line 667
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 668
    .line 669
    .line 670
    :goto_a
    return-object p0

    .line 671
    :pswitch_14
    check-cast p0, Lkotlin/Pair;

    .line 672
    .line 673
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object p0

    .line 677
    return-object p0

    .line 678
    :pswitch_15
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    .line 679
    .line 680
    return-object p0

    .line 681
    :pswitch_16
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 682
    .line 683
    return-object p0

    .line 684
    :pswitch_17
    check-cast p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 685
    .line 686
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 687
    .line 688
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    new-instance p0, Ljava/lang/ClassCastException;

    .line 692
    .line 693
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 694
    .line 695
    .line 696
    throw p0

    .line 697
    :pswitch_18
    check-cast p0, [Ljava/lang/Object;

    .line 698
    .line 699
    invoke-static {p0}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 700
    .line 701
    .line 702
    move-result-object p0

    .line 703
    return-object p0

    .line 704
    :pswitch_19
    return-object v5

    .line 705
    :pswitch_1a
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 706
    .line 707
    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->V()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 708
    .line 709
    .line 710
    move-result-object p0

    .line 711
    return-object p0

    .line 712
    :pswitch_1b
    check-cast p0, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 713
    .line 714
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 715
    .line 716
    .line 717
    return-object v5

    .line 718
    :pswitch_1c
    check-cast p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 719
    .line 720
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->l:Lkotlinx/coroutines/CoroutineScope;

    .line 721
    .line 722
    invoke-static {p0, v4}, Lkotlinx/coroutines/CoroutineScopeKt;->b(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 723
    .line 724
    .line 725
    return-object v5

    .line 726
    nop

    .line 727
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
