.class public final synthetic Lp0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lp0;->j:I

    iput-object p2, p0, Lp0;->k:Ljava/lang/Object;

    iput-object p3, p0, Lp0;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 0

    .line 1
    const/16 p3, 0x16

    .line 2
    .line 3
    iput p3, p0, Lp0;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lp0;->k:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lp0;->l:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lp0;->j:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lnet/blip/shared/SimpleLinkTextButton;

    .line 14
    .line 15
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Lnet/blip/shared/SimpleLinkTextButton;->b:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 30
    .line 31
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lnet/blip/libblip/Peer;

    .line 34
    .line 35
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v1, "settings/device/"

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v0, p0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 59
    .line 60
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroid/content/Context;

    .line 63
    .line 64
    iget-boolean v1, v0, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    const-string v0, "Notifications can be disabled in system settings"

    .line 69
    .line 70
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v0}, Lnet/blip/android/ui/util/NuancedPermissionState;->a(Lnet/blip/android/ui/util/NuancedPermissionState;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 87
    .line 88
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Landroidx/compose/runtime/ControlledComposition;

    .line 91
    .line 92
    sget-object v2, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 93
    .line 94
    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 97
    .line 98
    array-length v3, v0

    .line 99
    add-int/lit8 v3, v3, -0x2

    .line 100
    .line 101
    if-ltz v3, :cond_4

    .line 102
    .line 103
    move v5, v4

    .line 104
    :goto_1
    aget-wide v6, v0, v5

    .line 105
    .line 106
    not-long v8, v6

    .line 107
    const/4 v10, 0x7

    .line 108
    shl-long/2addr v8, v10

    .line 109
    and-long/2addr v8, v6

    .line 110
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    and-long/2addr v8, v10

    .line 116
    cmp-long v8, v8, v10

    .line 117
    .line 118
    if-eqz v8, :cond_3

    .line 119
    .line 120
    sub-int v8, v5, v3

    .line 121
    .line 122
    not-int v8, v8

    .line 123
    ushr-int/lit8 v8, v8, 0x1f

    .line 124
    .line 125
    rsub-int/lit8 v8, v8, 0x8

    .line 126
    .line 127
    move v9, v4

    .line 128
    :goto_2
    if-ge v9, v8, :cond_2

    .line 129
    .line 130
    const-wide/16 v10, 0xff

    .line 131
    .line 132
    and-long/2addr v10, v6

    .line 133
    const-wide/16 v12, 0x80

    .line 134
    .line 135
    cmp-long v10, v10, v12

    .line 136
    .line 137
    if-gez v10, :cond_1

    .line 138
    .line 139
    shl-int/lit8 v10, v5, 0x3

    .line 140
    .line 141
    add-int/2addr v10, v9

    .line 142
    aget-object v10, v2, v10

    .line 143
    .line 144
    move-object v11, p0

    .line 145
    check-cast v11, Landroidx/compose/runtime/CompositionImpl;

    .line 146
    .line 147
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/CompositionImpl;->A(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    shr-long/2addr v6, v1

    .line 151
    add-int/lit8 v9, v9, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    if-ne v8, v1, :cond_4

    .line 155
    .line 156
    :cond_3
    if-eq v5, v3, :cond_4

    .line 157
    .line 158
    add-int/lit8 v5, v5, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_3
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p0, Lnet/blip/android/ui/home/PeerTrayItem;

    .line 171
    .line 172
    check-cast p0, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 173
    .line 174
    iget-object p0, p0, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 175
    .line 176
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 184
    .line 185
    return-object p0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 189
    .line 190
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lee;

    .line 193
    .line 194
    iget-object v0, v0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->a:Landroidx/compose/runtime/internal/AtomicInt;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_5
    invoke-virtual {p0}, Lee;->a()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_5
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v0, Landroidx/navigation/compose/NavHostEventHandler;

    .line 212
    .line 213
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 216
    .line 217
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-le v1, v3, :cond_6

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    move v3, v4

    .line 231
    :goto_4
    invoke-virtual {v0, v3}, Landroidx/navigationevent/NavigationEventHandler;->f(Z)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Landroidx/navigation/compose/NavBackStackEntryInfo;

    .line 235
    .line 236
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Ljava/util/List;

    .line 241
    .line 242
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 247
    .line 248
    invoke-direct {v1, v2}, Landroidx/navigation/compose/NavBackStackEntryInfo;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    check-cast p0, Ljava/util/List;

    .line 256
    .line 257
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/List;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    :goto_5
    if-ge v4, v3, :cond_7

    .line 279
    .line 280
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 285
    .line 286
    new-instance v6, Landroidx/navigation/compose/NavBackStackEntryInfo;

    .line 287
    .line 288
    invoke-direct {v6, v5}, Landroidx/navigation/compose/NavBackStackEntryInfo;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_7
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 298
    .line 299
    iput-object v1, v0, Landroidx/navigationevent/NavigationEventHandler;->a:Landroidx/navigationevent/NavigationEventInfo;

    .line 300
    .line 301
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 302
    .line 303
    iput-object p0, v0, Landroidx/navigationevent/NavigationEventHandler;->c:Ljava/util/List;

    .line 304
    .line 305
    iget-object p0, v0, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 306
    .line 307
    if-eqz p0, :cond_8

    .line 308
    .line 309
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 310
    .line 311
    if-eqz p0, :cond_8

    .line 312
    .line 313
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->d(Landroidx/navigationevent/NavigationEventHandler;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    return-object p0

    .line 319
    :pswitch_6
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 322
    .line 323
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Landroidx/navigation/NavigatorState;->a:Landroidx/navigation/internal/SynchronizedObject;

    .line 331
    .line 332
    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, v0, Landroidx/navigation/NavigatorState;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 334
    .line 335
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Ljava/lang/Iterable;

    .line 340
    .line 341
    new-instance v3, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-eqz v4, :cond_a

    .line 355
    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    move-object v5, v4

    .line 361
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 362
    .line 363
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_9

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto :goto_6

    .line 374
    :catchall_0
    move-exception p0

    .line 375
    goto :goto_8

    .line 376
    :cond_a
    :goto_7
    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .line 378
    .line 379
    monitor-exit v1

    .line 380
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 381
    .line 382
    return-object p0

    .line 383
    :goto_8
    monitor-exit v1

    .line 384
    throw p0

    .line 385
    :pswitch_7
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 388
    .line 389
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 392
    .line 393
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 394
    .line 395
    iget-object v5, v0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 396
    .line 397
    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 398
    .line 399
    and-int/2addr v5, v1

    .line 400
    if-eqz v5, :cond_15

    .line 401
    .line 402
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 403
    .line 404
    :goto_9
    if-eqz v0, :cond_15

    .line 405
    .line 406
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 407
    .line 408
    and-int/2addr v5, v1

    .line 409
    if-eqz v5, :cond_14

    .line 410
    .line 411
    move-object v5, v0

    .line 412
    move-object v6, v2

    .line 413
    :goto_a
    if-eqz v5, :cond_14

    .line 414
    .line 415
    instance-of v7, v5, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 416
    .line 417
    if-eqz v7, :cond_d

    .line 418
    .line 419
    check-cast v5, Landroidx/compose/ui/node/SemanticsModifierNode;

    .line 420
    .line 421
    invoke-interface {v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->M()Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_b

    .line 426
    .line 427
    new-instance v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 428
    .line 429
    invoke-direct {v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 433
    .line 434
    iput-boolean v3, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 435
    .line 436
    :cond_b
    invoke-interface {v5}, Landroidx/compose/ui/node/SemanticsModifierNode;->J0()Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_c

    .line 441
    .line 442
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 445
    .line 446
    iput-boolean v3, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 447
    .line 448
    :cond_c
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 451
    .line 452
    invoke-interface {v5, v7}, Landroidx/compose/ui/node/SemanticsModifierNode;->E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 453
    .line 454
    .line 455
    goto :goto_d

    .line 456
    :cond_d
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 457
    .line 458
    and-int/2addr v7, v1

    .line 459
    if-eqz v7, :cond_13

    .line 460
    .line 461
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 462
    .line 463
    if-eqz v7, :cond_13

    .line 464
    .line 465
    move-object v7, v5

    .line 466
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 467
    .line 468
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 469
    .line 470
    move v8, v4

    .line 471
    :goto_b
    if-eqz v7, :cond_12

    .line 472
    .line 473
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 474
    .line 475
    and-int/2addr v9, v1

    .line 476
    if-eqz v9, :cond_11

    .line 477
    .line 478
    add-int/lit8 v8, v8, 0x1

    .line 479
    .line 480
    if-ne v8, v3, :cond_e

    .line 481
    .line 482
    move-object v5, v7

    .line 483
    goto :goto_c

    .line 484
    :cond_e
    if-nez v6, :cond_f

    .line 485
    .line 486
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 487
    .line 488
    const/16 v9, 0x10

    .line 489
    .line 490
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 491
    .line 492
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_f
    if-eqz v5, :cond_10

    .line 496
    .line 497
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    move-object v5, v2

    .line 501
    :cond_10
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_11
    :goto_c
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_12
    if-ne v8, v3, :cond_13

    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_13
    :goto_d
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    goto :goto_a

    .line 515
    :cond_14
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 516
    .line 517
    goto :goto_9

    .line 518
    :cond_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 519
    .line 520
    return-object p0

    .line 521
    :pswitch_8
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 524
    .line 525
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast p0, Lba;

    .line 528
    .line 529
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 530
    .line 531
    .line 532
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 533
    .line 534
    return-object p0

    .line 535
    :pswitch_9
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 538
    .line 539
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast p0, Lkotlinx/serialization/json/Json;

    .line 542
    .line 543
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 544
    .line 545
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 546
    .line 547
    .line 548
    iget-object v5, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 549
    .line 550
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    move v5, v4

    .line 558
    :goto_e
    if-ge v5, p0, :cond_1c

    .line 559
    .line 560
    invoke-interface {v0, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Ljava/util/List;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    new-instance v7, Ljava/util/ArrayList;

    .line 565
    .line 566
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    :cond_16
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    if-eqz v8, :cond_17

    .line 578
    .line 579
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    instance-of v9, v8, Lkotlinx/serialization/json/JsonNames;

    .line 584
    .line 585
    if-eqz v9, :cond_16

    .line 586
    .line 587
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    goto :goto_f

    .line 591
    :cond_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    if-ne v6, v3, :cond_18

    .line 596
    .line 597
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    goto :goto_10

    .line 602
    :cond_18
    move-object v6, v2

    .line 603
    :goto_10
    check-cast v6, Lkotlinx/serialization/json/JsonNames;

    .line 604
    .line 605
    if-eqz v6, :cond_1b

    .line 606
    .line 607
    invoke-interface {v6}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    if-eqz v6, :cond_1b

    .line 612
    .line 613
    array-length v7, v6

    .line 614
    move v8, v4

    .line 615
    :goto_11
    if-ge v8, v7, :cond_1b

    .line 616
    .line 617
    aget-object v9, v6, v8

    .line 618
    .line 619
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    .line 620
    .line 621
    .line 622
    move-result-object v10

    .line 623
    sget-object v11, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->a:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 624
    .line 625
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    if-eqz v10, :cond_19

    .line 630
    .line 631
    const-string v10, "enum value"

    .line 632
    .line 633
    goto :goto_12

    .line 634
    :cond_19
    const-string v10, "property"

    .line 635
    .line 636
    :goto_12
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v11

    .line 640
    if-nez v11, :cond_1a

    .line 641
    .line 642
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    add-int/lit8 v8, v8, 0x1

    .line 650
    .line 651
    goto :goto_11

    .line 652
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v3, "The suggested name \'"

    .line 655
    .line 656
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v3, "\' for "

    .line 663
    .line 664
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const/16 v3, 0x20

    .line 671
    .line 672
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-interface {v0, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v4, " is already one of the names for "

    .line 683
    .line 684
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-static {v9, v1}, Lkotlin/collections/MapsKt;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    check-cast v1, Ljava/lang/Number;

    .line 698
    .line 699
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v1, " in "

    .line 711
    .line 712
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 723
    .line 724
    const/4 v1, -0x1

    .line 725
    invoke-static {v1, p0, v2, v2, v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p0

    .line 729
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 734
    .line 735
    goto/16 :goto_e

    .line 736
    .line 737
    :cond_1c
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 738
    .line 739
    .line 740
    move-result p0

    .line 741
    if-eqz p0, :cond_1d

    .line 742
    .line 743
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    :cond_1d
    return-object v1

    .line 748
    :pswitch_a
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 749
    .line 750
    check-cast v0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 751
    .line 752
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 755
    .line 756
    invoke-virtual {v0, p0}, Landroidx/compose/ui/input/pointer/HitPathTracker;->d(Landroidx/compose/ui/Modifier$Node;)V

    .line 757
    .line 758
    .line 759
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 760
    .line 761
    return-object p0

    .line 762
    :pswitch_b
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast v0, Landroid/content/Context;

    .line 765
    .line 766
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast p0, Landroid/net/Uri;

    .line 769
    .line 770
    invoke-static {v0, p0}, Lnet/blip/android/intents/OutboundIntent;->b(Landroid/content/Context;Landroid/net/Uri;)V

    .line 771
    .line 772
    .line 773
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 774
    .line 775
    return-object p0

    .line 776
    :pswitch_c
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 779
    .line 780
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 783
    .line 784
    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 785
    .line 786
    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 791
    .line 792
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 793
    .line 794
    return-object p0

    .line 795
    :pswitch_d
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 798
    .line 799
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 802
    .line 803
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 808
    .line 809
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 810
    .line 811
    return-object p0

    .line 812
    :pswitch_e
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 815
    .line 816
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 817
    .line 818
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 822
    .line 823
    return-object p0

    .line 824
    :pswitch_f
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 827
    .line 828
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 831
    .line 832
    invoke-virtual {v0, p0, v4}, Landroidx/navigation/compose/DialogNavigator;->e(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 833
    .line 834
    .line 835
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 836
    .line 837
    return-object p0

    .line 838
    :pswitch_10
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 841
    .line 842
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast p0, Lkotlinx/coroutines/flow/StateFlow;

    .line 845
    .line 846
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object p0

    .line 850
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object p0

    .line 854
    return-object p0

    .line 855
    :pswitch_11
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 858
    .line 859
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 862
    .line 863
    sget-object v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 864
    .line 865
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->d:Lkotlin/jvm/functions/Function1;

    .line 866
    .line 867
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 871
    .line 872
    return-object p0

    .line 873
    :pswitch_12
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 876
    .line 877
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 880
    .line 881
    sget-object v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 882
    .line 883
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object p0

    .line 887
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 888
    .line 889
    invoke-interface {v0, p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->F0(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 890
    .line 891
    .line 892
    move-result-wide v0

    .line 893
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 894
    .line 895
    .line 896
    move-result-wide v0

    .line 897
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 898
    .line 899
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 900
    .line 901
    .line 902
    return-object p0

    .line 903
    :pswitch_13
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 906
    .line 907
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 908
    .line 909
    iget-object v0, v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->j:Landroidx/compose/runtime/GapComposer;

    .line 910
    .line 911
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 912
    .line 913
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    move v5, v4

    .line 918
    :goto_13
    :try_start_1
    iget v6, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->k:I

    .line 919
    .line 920
    if-ge v5, v6, :cond_27

    .line 921
    .line 922
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->l(I)Z

    .line 923
    .line 924
    .line 925
    move-result v6

    .line 926
    if-eqz v6, :cond_21

    .line 927
    .line 928
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->n(I)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v6

    .line 932
    if-eq v6, p0, :cond_20

    .line 933
    .line 934
    instance-of v7, v6, Landroidx/compose/runtime/RememberObserverHolder;

    .line 935
    .line 936
    if-eqz v7, :cond_1e

    .line 937
    .line 938
    check-cast v6, Landroidx/compose/runtime/RememberObserverHolder;

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_1e
    move-object v6, v2

    .line 942
    :goto_14
    if-eqz v6, :cond_1f

    .line 943
    .line 944
    check-cast v6, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 945
    .line 946
    iget-object v6, v6, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 947
    .line 948
    goto :goto_15

    .line 949
    :cond_1f
    move-object v6, v2

    .line 950
    :goto_15
    if-ne v6, p0, :cond_21

    .line 951
    .line 952
    :cond_20
    new-instance p0, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 953
    .line 954
    invoke-direct {p0, v5, v2}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 955
    .line 956
    .line 957
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 958
    .line 959
    .line 960
    move-object v2, p0

    .line 961
    goto :goto_1b

    .line 962
    :catchall_1
    move-exception p0

    .line 963
    goto/16 :goto_1d

    .line 964
    .line 965
    :cond_21
    :try_start_2
    iget-object v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    .line 966
    .line 967
    invoke-static {v6, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->b([II)I

    .line 968
    .line 969
    .line 970
    move-result v7

    .line 971
    add-int/lit8 v8, v5, 0x1

    .line 972
    .line 973
    iget v9, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c:I

    .line 974
    .line 975
    if-ge v8, v9, :cond_22

    .line 976
    .line 977
    mul-int/lit8 v9, v8, 0x5

    .line 978
    .line 979
    add-int/lit8 v9, v9, 0x4

    .line 980
    .line 981
    aget v6, v6, v9

    .line 982
    .line 983
    goto :goto_16

    .line 984
    :cond_22
    iget v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->e:I

    .line 985
    .line 986
    :goto_16
    sub-int/2addr v6, v7

    .line 987
    move v7, v4

    .line 988
    :goto_17
    if-ge v7, v6, :cond_28

    .line 989
    .line 990
    invoke-virtual {v3, v5, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v9

    .line 994
    if-eq v9, p0, :cond_26

    .line 995
    .line 996
    instance-of v10, v9, Landroidx/compose/runtime/RememberObserverHolder;

    .line 997
    .line 998
    if-eqz v10, :cond_23

    .line 999
    .line 1000
    check-cast v9, Landroidx/compose/runtime/RememberObserverHolder;

    .line 1001
    .line 1002
    goto :goto_18

    .line 1003
    :cond_23
    move-object v9, v2

    .line 1004
    :goto_18
    if-eqz v9, :cond_24

    .line 1005
    .line 1006
    check-cast v9, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1007
    .line 1008
    iget-object v9, v9, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 1009
    .line 1010
    goto :goto_19

    .line 1011
    :cond_24
    move-object v9, v2

    .line 1012
    :goto_19
    if-ne v9, p0, :cond_25

    .line 1013
    .line 1014
    goto :goto_1a

    .line 1015
    :cond_25
    add-int/lit8 v7, v7, 0x1

    .line 1016
    .line 1017
    goto :goto_17

    .line 1018
    :cond_26
    :goto_1a
    new-instance v2, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 1019
    .line 1020
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1021
    .line 1022
    .line 1023
    move-result-object p0

    .line 1024
    invoke-direct {v2, v5, p0}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1025
    .line 1026
    .line 1027
    :cond_27
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 1028
    .line 1029
    .line 1030
    goto :goto_1b

    .line 1031
    :cond_28
    move v5, v8

    .line 1032
    goto :goto_13

    .line 1033
    :goto_1b
    if-eqz v2, :cond_29

    .line 1034
    .line 1035
    iget p0, v2, Landroidx/compose/runtime/tooling/ObjectLocation;->a:I

    .line 1036
    .line 1037
    iget-object v2, v2, Landroidx/compose/runtime/tooling/ObjectLocation;->b:Ljava/lang/Integer;

    .line 1038
    .line 1039
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->d()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    :try_start_3
    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->c(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 1044
    .line 1045
    .line 1046
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1047
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()Ljava/util/List;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1055
    .line 1056
    .line 1057
    move-result-object p0

    .line 1058
    goto :goto_1c

    .line 1059
    :catchall_2
    move-exception p0

    .line 1060
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 1061
    .line 1062
    .line 1063
    throw p0

    .line 1064
    :cond_29
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 1065
    .line 1066
    :goto_1c
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 1067
    .line 1068
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 1069
    .line 1070
    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 1071
    .line 1072
    .line 1073
    return-object v1

    .line 1074
    :goto_1d
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->c()V

    .line 1075
    .line 1076
    .line 1077
    throw p0

    .line 1078
    :pswitch_14
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1079
    .line 1080
    check-cast v0, Lcoil3/fetch/Fetcher$Factory;

    .line 1081
    .line 1082
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast p0, Lkotlin/jvm/internal/ClassReference;

    .line 1085
    .line 1086
    new-instance v1, Lkotlin/Pair;

    .line 1087
    .line 1088
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p0

    .line 1095
    return-object p0

    .line 1096
    :pswitch_15
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1097
    .line 1098
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 1099
    .line 1100
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1101
    .line 1102
    check-cast p0, Ljava/util/UUID;

    .line 1103
    .line 1104
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->b()V

    .line 1110
    .line 1111
    .line 1112
    :try_start_4
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object p0

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v0, p0}, Landroidx/work/impl/utils/CancelWorkRunnable;->a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->l()V

    .line 1126
    .line 1127
    .line 1128
    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 1129
    .line 1130
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 1131
    .line 1132
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 1133
    .line 1134
    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 1135
    .line 1136
    .line 1137
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1138
    .line 1139
    return-object p0

    .line 1140
    :catchall_3
    move-exception p0

    .line 1141
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->l()V

    .line 1142
    .line 1143
    .line 1144
    throw p0

    .line 1145
    :pswitch_16
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1148
    .line 1149
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1150
    .line 1151
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 1152
    .line 1153
    if-eqz v0, :cond_2b

    .line 1154
    .line 1155
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 1160
    .line 1161
    if-nez v0, :cond_2a

    .line 1162
    .line 1163
    goto :goto_1e

    .line 1164
    :cond_2a
    move-object v2, v0

    .line 1165
    goto :goto_20

    .line 1166
    :cond_2b
    :goto_1e
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 1171
    .line 1172
    if-eqz v0, :cond_2c

    .line 1173
    .line 1174
    goto :goto_1f

    .line 1175
    :cond_2c
    move-object p0, v2

    .line 1176
    :goto_1f
    if-eqz p0, :cond_2d

    .line 1177
    .line 1178
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 1179
    .line 1180
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 1181
    .line 1182
    .line 1183
    move-result-wide v0

    .line 1184
    const-wide/16 v2, 0x0

    .line 1185
    .line 1186
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    :cond_2d
    :goto_20
    return-object v2

    .line 1191
    :pswitch_17
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1194
    .line 1195
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 1198
    .line 1199
    sget v1, Landroidx/compose/foundation/text/BasicTextFieldKt;->a:I

    .line 1200
    .line 1201
    iget-wide v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 1202
    .line 1203
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v3

    .line 1207
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1208
    .line 1209
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 1210
    .line 1211
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v1

    .line 1215
    if-eqz v1, :cond_2e

    .line 1216
    .line 1217
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 1218
    .line 1219
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v2

    .line 1223
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1224
    .line 1225
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 1226
    .line 1227
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    if-nez v1, :cond_2f

    .line 1232
    .line 1233
    :cond_2e
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1234
    .line 1235
    .line 1236
    :cond_2f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1237
    .line 1238
    return-object p0

    .line 1239
    :pswitch_18
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1240
    .line 1241
    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 1242
    .line 1243
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1244
    .line 1245
    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 1246
    .line 1247
    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->a:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 1248
    .line 1249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1250
    .line 1251
    .line 1252
    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->c:Ljava/lang/Object;

    .line 1253
    .line 1254
    monitor-enter v1

    .line 1255
    :try_start_5
    iget-object v2, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->d:Ljava/util/LinkedHashSet;

    .line 1256
    .line 1257
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result p0

    .line 1261
    if-eqz p0, :cond_30

    .line 1262
    .line 1263
    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->d:Ljava/util/LinkedHashSet;

    .line 1264
    .line 1265
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 1266
    .line 1267
    .line 1268
    move-result p0

    .line 1269
    if-eqz p0, :cond_30

    .line 1270
    .line 1271
    check-cast v0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    .line 1272
    .line 1273
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 1274
    .line 1275
    .line 1276
    move-result-object p0

    .line 1277
    sget-object v2, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTrackerKt;->a:Ljava/lang/String;

    .line 1278
    .line 1279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v3

    .line 1287
    const-string v4, ": unregistering receiver"

    .line 1288
    .line 1289
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v3

    .line 1293
    invoke-virtual {p0, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->b:Landroid/content/Context;

    .line 1297
    .line 1298
    iget-object v0, v0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->f:Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$broadcastReceiver$1;

    .line 1299
    .line 1300
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1301
    .line 1302
    .line 1303
    goto :goto_21

    .line 1304
    :catchall_4
    move-exception p0

    .line 1305
    goto :goto_22

    .line 1306
    :cond_30
    :goto_21
    monitor-exit v1

    .line 1307
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1308
    .line 1309
    return-object p0

    .line 1310
    :goto_22
    monitor-exit v1

    .line 1311
    throw p0

    .line 1312
    :pswitch_19
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1313
    .line 1314
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 1315
    .line 1316
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1317
    .line 1318
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->a:Landroidx/compose/animation/core/SpringSpec;

    .line 1319
    .line 1320
    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    .line 1322
    .line 1323
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1324
    .line 1325
    return-object p0

    .line 1326
    :pswitch_1a
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1327
    .line 1328
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1329
    .line 1330
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 1333
    .line 1334
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object p0

    .line 1338
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 1339
    .line 1340
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1341
    .line 1342
    return-object p0

    .line 1343
    :pswitch_1b
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1344
    .line 1345
    check-cast v0, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 1346
    .line 1347
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1348
    .line 1349
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 1350
    .line 1351
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 1352
    .line 1353
    iget-object v1, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->n:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1354
    .line 1355
    iget-object v2, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->o:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 1356
    .line 1357
    iget-object v3, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->l:Ljava/lang/Float;

    .line 1358
    .line 1359
    iget-object v4, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->m:Ljava/lang/Float;

    .line 1360
    .line 1361
    const/4 v5, 0x0

    .line 1362
    if-eqz v1, :cond_31

    .line 1363
    .line 1364
    if-eqz v3, :cond_31

    .line 1365
    .line 1366
    iget-object v6, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->a:Lkotlin/jvm/functions/Function0;

    .line 1367
    .line 1368
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v6

    .line 1372
    check-cast v6, Ljava/lang/Number;

    .line 1373
    .line 1374
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 1375
    .line 1376
    .line 1377
    move-result v6

    .line 1378
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1379
    .line 1380
    .line 1381
    move-result v3

    .line 1382
    sub-float/2addr v6, v3

    .line 1383
    goto :goto_23

    .line 1384
    :cond_31
    move v6, v5

    .line 1385
    :goto_23
    if-eqz v2, :cond_32

    .line 1386
    .line 1387
    if-eqz v4, :cond_32

    .line 1388
    .line 1389
    iget-object v3, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->a:Lkotlin/jvm/functions/Function0;

    .line 1390
    .line 1391
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v3

    .line 1395
    check-cast v3, Ljava/lang/Number;

    .line 1396
    .line 1397
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 1398
    .line 1399
    .line 1400
    move-result v3

    .line 1401
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 1402
    .line 1403
    .line 1404
    move-result v4

    .line 1405
    sub-float/2addr v3, v4

    .line 1406
    goto :goto_24

    .line 1407
    :cond_32
    move v3, v5

    .line 1408
    :goto_24
    cmpg-float v4, v6, v5

    .line 1409
    .line 1410
    if-nez v4, :cond_33

    .line 1411
    .line 1412
    cmpg-float v3, v3, v5

    .line 1413
    .line 1414
    if-nez v3, :cond_33

    .line 1415
    .line 1416
    goto :goto_25

    .line 1417
    :cond_33
    iget v3, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->j:I

    .line 1418
    .line 1419
    invoke-virtual {p0, v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A(I)I

    .line 1420
    .line 1421
    .line 1422
    move-result v3

    .line 1423
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v4

    .line 1427
    iget v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->t:I

    .line 1428
    .line 1429
    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v4

    .line 1433
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1434
    .line 1435
    if-eqz v4, :cond_34

    .line 1436
    .line 1437
    :try_start_6
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1438
    .line 1439
    if-eqz v5, :cond_34

    .line 1440
    .line 1441
    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v4

    .line 1445
    iget-object v5, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1446
    .line 1447
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1448
    .line 1449
    .line 1450
    :catch_0
    :cond_34
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    iget v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->u:I

    .line 1455
    .line 1456
    invoke-virtual {v4, v5}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v4

    .line 1460
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1461
    .line 1462
    if-eqz v4, :cond_35

    .line 1463
    .line 1464
    :try_start_7
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1465
    .line 1466
    if-eqz v5, :cond_35

    .line 1467
    .line 1468
    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->k(Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v4

    .line 1472
    iget-object v5, v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1473
    .line 1474
    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1475
    .line 1476
    .line 1477
    :catch_1
    :cond_35
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1478
    .line 1479
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->s()Landroidx/collection/IntObjectMap;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v4

    .line 1486
    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v4

    .line 1490
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 1491
    .line 1492
    if-eqz v4, :cond_38

    .line 1493
    .line 1494
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 1495
    .line 1496
    if-eqz v4, :cond_38

    .line 1497
    .line 1498
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->c:Landroidx/compose/ui/node/LayoutNode;

    .line 1499
    .line 1500
    if-eqz v4, :cond_38

    .line 1501
    .line 1502
    if-eqz v1, :cond_36

    .line 1503
    .line 1504
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->y:Landroidx/collection/MutableIntObjectMap;

    .line 1505
    .line 1506
    invoke-virtual {v5, v3, v1}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 1507
    .line 1508
    .line 1509
    :cond_36
    if-eqz v2, :cond_37

    .line 1510
    .line 1511
    iget-object v5, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->z:Landroidx/collection/MutableIntObjectMap;

    .line 1512
    .line 1513
    invoke-virtual {v5, v3, v2}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 1514
    .line 1515
    .line 1516
    :cond_37
    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1517
    .line 1518
    .line 1519
    :cond_38
    :goto_25
    if-eqz v1, :cond_39

    .line 1520
    .line 1521
    iget-object p0, v1, Landroidx/compose/ui/semantics/ScrollAxisRange;->a:Lkotlin/jvm/functions/Function0;

    .line 1522
    .line 1523
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object p0

    .line 1527
    check-cast p0, Ljava/lang/Float;

    .line 1528
    .line 1529
    iput-object p0, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->l:Ljava/lang/Float;

    .line 1530
    .line 1531
    :cond_39
    if-eqz v2, :cond_3a

    .line 1532
    .line 1533
    iget-object p0, v2, Landroidx/compose/ui/semantics/ScrollAxisRange;->a:Lkotlin/jvm/functions/Function0;

    .line 1534
    .line 1535
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    move-result-object p0

    .line 1539
    check-cast p0, Ljava/lang/Float;

    .line 1540
    .line 1541
    iput-object p0, v0, Landroidx/compose/ui/platform/ScrollObservationScope;->m:Ljava/lang/Float;

    .line 1542
    .line 1543
    :cond_3a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1544
    .line 1545
    return-object p0

    .line 1546
    :pswitch_1c
    iget-object v0, p0, Lp0;->k:Ljava/lang/Object;

    .line 1547
    .line 1548
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1549
    .line 1550
    iget-object p0, p0, Lp0;->l:Ljava/lang/Object;

    .line 1551
    .line 1552
    check-cast p0, Landroid/view/KeyEvent;

    .line 1553
    .line 1554
    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->b(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result p0

    .line 1558
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1559
    .line 1560
    .line 1561
    move-result-object p0

    .line 1562
    return-object p0

    .line 1563
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
