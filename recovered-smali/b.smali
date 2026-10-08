.class public final synthetic Lb;
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
    iput p1, p0, Lb;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lb;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lb;->l:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v6, v0, Lb;->l:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Lb;->k:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 18
    .line 19
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/navigation/NavGraphBuilder;

    .line 24
    .line 25
    sget-object v2, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v2, "onboarding"

    .line 31
    .line 32
    sget-object v7, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    const/16 v8, 0xfe

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v7, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lq8;

    .line 40
    .line 41
    invoke-direct {v2, v4, v0}, Lq8;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 45
    .line 46
    const v9, -0x6c21bdfe

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, v9, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "home"

    .line 53
    .line 54
    invoke-static {v1, v2, v3, v7, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcc;

    .line 58
    .line 59
    invoke-direct {v2, v6, v0}, Lcc;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 63
    .line 64
    const v6, 0x51490f61

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v6, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Landroidx/navigation/NamedNavArgument;

    .line 71
    .line 72
    new-instance v6, Landroidx/navigation/NavArgumentBuilder;

    .line 73
    .line 74
    invoke-direct {v6}, Landroidx/navigation/NavArgumentBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 78
    .line 79
    instance-of v7, v6, [I

    .line 80
    .line 81
    if-eqz v7, :cond_0

    .line 82
    .line 83
    sget-object v7, Landroidx/navigation/NavType;->b:Landroidx/navigation/IntArrayNavType;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    instance-of v7, v6, [J

    .line 87
    .line 88
    if-eqz v7, :cond_1

    .line 89
    .line 90
    sget-object v7, Landroidx/navigation/NavType;->d:Landroidx/navigation/LongArrayNavType;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    instance-of v7, v6, [F

    .line 94
    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    sget-object v7, Landroidx/navigation/NavType;->f:Landroidx/navigation/FloatArrayNavType;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object v7, Landroidx/navigation/NavType;->g:Landroidx/navigation/BoolNavType;

    .line 101
    .line 102
    :goto_0
    new-instance v9, Landroidx/navigation/NavArgument;

    .line 103
    .line 104
    invoke-direct {v9, v7, v6, v4}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;Ljava/lang/Boolean;Z)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v9}, Landroidx/navigation/NamedNavArgument;-><init>(Landroidx/navigation/NavArgument;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v6, Lfa;

    .line 115
    .line 116
    const/4 v7, 0x2

    .line 117
    invoke-direct {v6, v0, v7}, Lfa;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 121
    .line 122
    const v7, 0x22d7fdb7

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v7, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 126
    .line 127
    .line 128
    const/16 v6, 0xfc

    .line 129
    .line 130
    const-string v7, "createTransfer/{transferId}?isFromShareIntent={isFromShareIntent}"

    .line 131
    .line 132
    invoke-static {v1, v7, v2, v0, v6}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 133
    .line 134
    .line 135
    const-string v0, "settings"

    .line 136
    .line 137
    sget-object v2, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 138
    .line 139
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 140
    .line 141
    .line 142
    const-string v0, "settings/profile"

    .line 143
    .line 144
    sget-object v2, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 145
    .line 146
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lt5;

    .line 150
    .line 151
    const/16 v2, 0x11

    .line 152
    .line 153
    invoke-direct {v0, v2}, Lt5;-><init>(I)V

    .line 154
    .line 155
    .line 156
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 157
    .line 158
    const v6, 0x14250946    # 8.3322E-27f

    .line 159
    .line 160
    .line 161
    invoke-direct {v2, v6, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "settings/device/{deviceId}"

    .line 165
    .line 166
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 167
    .line 168
    .line 169
    const-string v0, "help/sendToYourDevices"

    .line 170
    .line 171
    sget-object v2, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 174
    .line 175
    .line 176
    const-string v0, "help/sendToOtherPeople"

    .line 177
    .line 178
    sget-object v2, Lnet/blip/android/ui/navigation/ComposableSingletons$NavigationRootKt;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 179
    .line 180
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lt5;

    .line 184
    .line 185
    const/16 v2, 0xf

    .line 186
    .line 187
    invoke-direct {v0, v2}, Lt5;-><init>(I)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 191
    .line 192
    const v6, 0x130a6693

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v6, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "gallery/{urls}"

    .line 199
    .line 200
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Lt5;

    .line 204
    .line 205
    const/16 v2, 0x10

    .line 206
    .line 207
    invoke-direct {v0, v2}, Lt5;-><init>(I)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 211
    .line 212
    const v6, -0x6e86c663    # -1.966039E-28f

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v6, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "peer/{peerId}"

    .line 219
    .line 220
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lt5;

    .line 224
    .line 225
    const/16 v2, 0xe

    .line 226
    .line 227
    invoke-direct {v0, v2}, Lt5;-><init>(I)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 231
    .line 232
    const v6, -0x44b3fd5f

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v6, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 236
    .line 237
    .line 238
    const-string v0, "audioPicker/{requestId}"

    .line 239
    .line 240
    invoke-static {v1, v0, v3, v2, v8}, Landroidx/navigation/compose/NavGraphBuilderKt;->a(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 241
    .line 242
    .line 243
    return-object v5

    .line 244
    :pswitch_0
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 245
    .line 246
    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    .line 247
    .line 248
    move-object/from16 v1, p1

    .line 249
    .line 250
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object v0, v0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 259
    .line 260
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->s:Lh5;

    .line 261
    .line 262
    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 263
    .line 264
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_3

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_3
    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 272
    .line 273
    if-eqz v2, :cond_4

    .line 274
    .line 275
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    if-eqz v2, :cond_4

    .line 280
    .line 281
    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 282
    .line 283
    .line 284
    :cond_4
    iput-object v6, v0, Landroidx/navigation/internal/NavControllerImpl;->o:Landroidx/lifecycle/LifecycleOwner;

    .line 285
    .line 286
    invoke-interface {v6}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 291
    .line 292
    .line 293
    :goto_1
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$19$0$$inlined$onDispose$1;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :pswitch_1
    check-cast v0, Landroidx/compose/runtime/State;

    .line 300
    .line 301
    check-cast v6, Landroidx/navigation/compose/ComposeNavigator;

    .line 302
    .line 303
    move-object/from16 v1, p1

    .line 304
    .line 305
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 306
    .line 307
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;

    .line 308
    .line 309
    invoke-direct {v1, v0, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$28$0$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    .line 310
    .line 311
    .line 312
    return-object v1

    .line 313
    :pswitch_2
    check-cast v0, Landroidx/navigationevent/NavigationEventDispatcher;

    .line 314
    .line 315
    check-cast v6, Landroidx/navigation/compose/NavHostEventHandler;

    .line 316
    .line 317
    move-object/from16 v1, p1

    .line 318
    .line 319
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 320
    .line 321
    invoke-static {v0, v6}, Landroidx/navigationevent/NavigationEventDispatcher;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Landroidx/navigation/compose/NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$3$0$$inlined$onDispose$1;

    .line 325
    .line 326
    invoke-direct {v0, v6}, Landroidx/navigation/compose/NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/navigation/compose/NavHostEventHandler;)V

    .line 327
    .line 328
    .line 329
    return-object v0

    .line 330
    :pswitch_3
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 331
    .line 332
    check-cast v6, Landroidx/navigation/NavController;

    .line 333
    .line 334
    iget-object v1, v6, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 335
    .line 336
    move-object/from16 v6, p1

    .line 337
    .line 338
    check-cast v6, Landroidx/navigation/NavOptionsBuilder;

    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v7, v6, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    .line 344
    .line 345
    iput v2, v7, Landroidx/navigation/NavOptions$Builder;->f:I

    .line 346
    .line 347
    iput v2, v7, Landroidx/navigation/NavOptions$Builder;->g:I

    .line 348
    .line 349
    instance-of v2, v0, Landroidx/navigation/NavGraph;

    .line 350
    .line 351
    if-eqz v2, :cond_8

    .line 352
    .line 353
    sget v2, Landroidx/navigation/NavDestination;->n:I

    .line 354
    .line 355
    invoke-static {v0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_7

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 374
    .line 375
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->f()Landroidx/navigation/NavDestination;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    if-eqz v7, :cond_6

    .line 380
    .line 381
    iget-object v7, v7, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_6
    move-object v7, v3

    .line 385
    :goto_2
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_5

    .line 390
    .line 391
    goto :goto_3

    .line 392
    :cond_7
    sget v0, Landroidx/navigation/NavGraph;->p:I

    .line 393
    .line 394
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->g()Landroidx/navigation/NavGraph;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Landroidx/navigation/NavGraph$Companion;->a(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget-object v0, v0, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 403
    .line 404
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 405
    .line 406
    iput v0, v6, Landroidx/navigation/NavOptionsBuilder;->d:I

    .line 407
    .line 408
    iput-boolean v4, v6, Landroidx/navigation/NavOptionsBuilder;->e:Z

    .line 409
    .line 410
    :cond_8
    :goto_3
    return-object v5

    .line 411
    :pswitch_4
    check-cast v0, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 412
    .line 413
    check-cast v6, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 414
    .line 415
    move-object/from16 v1, p1

    .line 416
    .line 417
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    iput-object v6, v0, Lcom/google/accompanist/permissions/MutablePermissionState;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 423
    .line 424
    new-instance v1, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$lambda$7$lambda$6$$inlined$onDispose$1;

    .line 425
    .line 426
    invoke-direct {v1, v0}, Lcom/google/accompanist/permissions/MutablePermissionStateKt$rememberMutablePermissionState$lambda$7$lambda$6$$inlined$onDispose$1;-><init>(Lcom/google/accompanist/permissions/MutablePermissionState;)V

    .line 427
    .line 428
    .line 429
    return-object v1

    .line 430
    :pswitch_5
    check-cast v0, Lcom/google/accompanist/permissions/MutablePermissionState;

    .line 431
    .line 432
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 433
    .line 434
    move-object/from16 v1, p1

    .line 435
    .line 436
    check-cast v1, Ljava/lang/Boolean;

    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/google/accompanist/permissions/MutablePermissionState;->c()Lcom/google/accompanist/permissions/PermissionStatus;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    iget-object v0, v0, Lcom/google/accompanist/permissions/MutablePermissionState;->d:Landroidx/compose/runtime/MutableState;

    .line 446
    .line 447
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 448
    .line 449
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    return-object v5

    .line 456
    :pswitch_6
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    .line 457
    .line 458
    move-object v7, v6

    .line 459
    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 460
    .line 461
    move-object/from16 v1, p1

    .line 462
    .line 463
    check-cast v1, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->e:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 470
    .line 471
    iget v3, v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    .line 472
    .line 473
    invoke-virtual {v1, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    invoke-virtual {v0, v2, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    .line 478
    .line 479
    .line 480
    move-result-wide v9

    .line 481
    const/4 v11, 0x0

    .line 482
    iget v13, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    .line 483
    .line 484
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->c(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    return-object v0

    .line 489
    :pswitch_7
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    .line 490
    .line 491
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    .line 492
    .line 493
    move-object/from16 v1, p1

    .line 494
    .line 495
    check-cast v1, Ljava/lang/Integer;

    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->a:I

    .line 506
    .line 507
    new-instance v3, Ljava/util/ArrayList;

    .line 508
    .line 509
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;->b:Ljava/util/List;

    .line 510
    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    move v7, v2

    .line 523
    :goto_4
    if-ge v2, v5, :cond_9

    .line 524
    .line 525
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    check-cast v8, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 530
    .line 531
    iget-wide v8, v8, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->a:J

    .line 532
    .line 533
    long-to-int v8, v8

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object v9

    .line 538
    invoke-virtual {v6, v7, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    .line 539
    .line 540
    .line 541
    move-result-wide v10

    .line 542
    new-instance v12, Landroidx/compose/ui/unit/Constraints;

    .line 543
    .line 544
    invoke-direct {v12, v10, v11}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 545
    .line 546
    .line 547
    new-instance v10, Lkotlin/Pair;

    .line 548
    .line 549
    invoke-direct {v10, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    add-int/2addr v1, v4

    .line 556
    add-int/2addr v7, v8

    .line 557
    add-int/lit8 v2, v2, 0x1

    .line 558
    .line 559
    goto :goto_4

    .line 560
    :cond_9
    return-object v3

    .line 561
    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 562
    .line 563
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 564
    .line 565
    move-object/from16 v1, p1

    .line 566
    .line 567
    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    check-cast v2, Ljava/lang/Boolean;

    .line 577
    .line 578
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    check-cast v1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 583
    .line 584
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-eq v2, v3, :cond_a

    .line 589
    .line 590
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljava/lang/Boolean;

    .line 606
    .line 607
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_a

    .line 612
    .line 613
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 614
    .line 615
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    :cond_a
    return-object v5

    .line 619
    :pswitch_9
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 620
    .line 621
    check-cast v6, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 622
    .line 623
    move-object/from16 v1, p1

    .line 624
    .line 625
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 626
    .line 627
    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 628
    .line 629
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    .line 633
    .line 634
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 635
    .line 636
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    new-instance v1, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1;

    .line 642
    .line 643
    invoke-direct {v1, v0, v6}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    .line 644
    .line 645
    .line 646
    return-object v1

    .line 647
    :pswitch_a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 648
    .line 649
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 650
    .line 651
    move-object/from16 v1, p1

    .line 652
    .line 653
    check-cast v1, Ljava/lang/Boolean;

    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    check-cast v3, Ljava/lang/Boolean;

    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_b

    .line 670
    .line 671
    if-nez v2, :cond_b

    .line 672
    .line 673
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    :cond_b
    invoke-interface {v6, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    return-object v5

    .line 680
    :pswitch_b
    check-cast v0, Landroidx/navigation/NavController;

    .line 681
    .line 682
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 683
    .line 684
    move-object/from16 v1, p1

    .line 685
    .line 686
    check-cast v1, Lnet/blip/libblip/PeerId;

    .line 687
    .line 688
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    .line 690
    .line 691
    invoke-static {v1}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    const-string v2, "peer/"

    .line 696
    .line 697
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-static {v0, v1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 705
    .line 706
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    return-object v5

    .line 710
    :pswitch_c
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 711
    .line 712
    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 713
    .line 714
    move-object/from16 v1, p1

    .line 715
    .line 716
    check-cast v1, Lkotlin/text/MatchResult;

    .line 717
    .line 718
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 719
    .line 720
    const/4 v3, -0x1

    .line 721
    if-ne v2, v3, :cond_c

    .line 722
    .line 723
    invoke-interface {v1}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    iget v2, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 728
    .line 729
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 730
    .line 731
    :cond_c
    invoke-interface {v1}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    iget v0, v0, Lkotlin/ranges/IntProgression;->k:I

    .line 736
    .line 737
    add-int/2addr v0, v4

    .line 738
    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 739
    .line 740
    const-string v0, ""

    .line 741
    .line 742
    return-object v0

    .line 743
    :pswitch_d
    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    .line 744
    .line 745
    check-cast v6, Lf3;

    .line 746
    .line 747
    move-object/from16 v1, p1

    .line 748
    .line 749
    check-cast v1, Ljava/lang/Throwable;

    .line 750
    .line 751
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->l:Landroid/os/Handler;

    .line 752
    .line 753
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    .line 755
    .line 756
    return-object v5

    .line 757
    :pswitch_e
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    .line 758
    .line 759
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 760
    .line 761
    move-object/from16 v1, p1

    .line 762
    .line 763
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 764
    .line 765
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    new-instance v1, Landroid/os/Handler;

    .line 769
    .line 770
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 775
    .line 776
    .line 777
    new-instance v2, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;

    .line 778
    .line 779
    invoke-direct {v2, v0, v1, v6}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroid/os/Handler;Landroidx/compose/runtime/MutableState;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->run()V

    .line 783
    .line 784
    .line 785
    new-instance v0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$lambda$6$0$$inlined$onDispose$1;

    .line 786
    .line 787
    invoke-direct {v0, v1, v2}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$lambda$6$0$$inlined$onDispose$1;-><init>(Landroid/os/Handler;Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;)V

    .line 788
    .line 789
    .line 790
    return-object v0

    .line 791
    :pswitch_f
    check-cast v0, Landroid/view/View;

    .line 792
    .line 793
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 794
    .line 795
    move-object/from16 v1, p1

    .line 796
    .line 797
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 798
    .line 799
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    instance-of v2, v1, Landroid/app/Activity;

    .line 807
    .line 808
    if-eqz v2, :cond_d

    .line 809
    .line 810
    move-object v3, v1

    .line 811
    check-cast v3, Landroid/app/Activity;

    .line 812
    .line 813
    :cond_d
    if-eqz v3, :cond_f

    .line 814
    .line 815
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    if-eqz v1, :cond_f

    .line 820
    .line 821
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    .line 822
    .line 823
    invoke-direct {v2, v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 824
    .line 825
    .line 826
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    check-cast v0, Ljava/lang/Boolean;

    .line 831
    .line 832
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-eqz v0, :cond_e

    .line 837
    .line 838
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->a()V

    .line 839
    .line 840
    .line 841
    goto :goto_5

    .line 842
    :cond_e
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsControllerCompat;->d()V

    .line 843
    .line 844
    .line 845
    :goto_5
    new-instance v0, Lnet/blip/android/ui/gallery/GalleryScreenKt$GalleryScreen$lambda$4$0$$inlined$onDispose$1;

    .line 846
    .line 847
    invoke-direct {v0, v2}, Lnet/blip/android/ui/gallery/GalleryScreenKt$GalleryScreen$lambda$4$0$$inlined$onDispose$1;-><init>(Landroidx/core/view/WindowInsetsControllerCompat;)V

    .line 848
    .line 849
    .line 850
    return-object v0

    .line 851
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    .line 852
    .line 853
    const-string v1, "Not in an activity - unable to get Window reference"

    .line 854
    .line 855
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v0

    .line 859
    :pswitch_10
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 860
    .line 861
    check-cast v6, Landroidx/compose/foundation/interaction/Interaction;

    .line 862
    .line 863
    move-object/from16 v1, p1

    .line 864
    .line 865
    check-cast v1, Ljava/lang/Throwable;

    .line 866
    .line 867
    invoke-interface {v0, v6}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 868
    .line 869
    .line 870
    return-object v5

    .line 871
    :pswitch_11
    check-cast v0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 872
    .line 873
    check-cast v6, Landroidx/work/impl/model/Dependency;

    .line 874
    .line 875
    move-object/from16 v1, p1

    .line 876
    .line 877
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 878
    .line 879
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    iget-object v0, v0, Landroidx/work/impl/model/DependencyDao_Impl;->b:Landroidx/work/impl/model/DependencyDao_Impl$1;

    .line 883
    .line 884
    invoke-virtual {v0, v1, v6}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    return-object v5

    .line 888
    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 889
    .line 890
    move-object v8, v6

    .line 891
    check-cast v8, Landroidx/compose/ui/graphics/Brush;

    .line 892
    .line 893
    move-object/from16 v1, p1

    .line 894
    .line 895
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 896
    .line 897
    move-object v7, v1

    .line 898
    check-cast v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 899
    .line 900
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 901
    .line 902
    .line 903
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->s:Landroidx/compose/runtime/MutableState;

    .line 904
    .line 905
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 906
    .line 907
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    check-cast v1, Ljava/lang/Boolean;

    .line 912
    .line 913
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 914
    .line 915
    .line 916
    move-result v1

    .line 917
    if-nez v1, :cond_10

    .line 918
    .line 919
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->t:Landroidx/compose/runtime/MutableState;

    .line 920
    .line 921
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 922
    .line 923
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    check-cast v0, Ljava/lang/Boolean;

    .line 928
    .line 929
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-eqz v0, :cond_11

    .line 934
    .line 935
    :cond_10
    const/4 v14, 0x0

    .line 936
    const/16 v15, 0x7e

    .line 937
    .line 938
    const-wide/16 v9, 0x0

    .line 939
    .line 940
    const-wide/16 v11, 0x0

    .line 941
    .line 942
    const/4 v13, 0x0

    .line 943
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 944
    .line 945
    .line 946
    :cond_11
    return-object v5

    .line 947
    :pswitch_13
    check-cast v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 948
    .line 949
    check-cast v6, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 950
    .line 951
    move-object/from16 v1, p1

    .line 952
    .line 953
    check-cast v1, Ljava/lang/Throwable;

    .line 954
    .line 955
    iget-object v0, v0, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 956
    .line 957
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    return-object v5

    .line 961
    :pswitch_14
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 962
    .line 963
    move-object v9, v6

    .line 964
    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 965
    .line 966
    move-object/from16 v1, p1

    .line 967
    .line 968
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 969
    .line 970
    move-object v7, v1

    .line 971
    check-cast v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 972
    .line 973
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 974
    .line 975
    .line 976
    iget-object v8, v0, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 977
    .line 978
    const/4 v11, 0x0

    .line 979
    const/16 v12, 0x3c

    .line 980
    .line 981
    const/4 v10, 0x0

    .line 982
    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 983
    .line 984
    .line 985
    return-object v5

    .line 986
    :pswitch_15
    move-object v14, v0

    .line 987
    check-cast v14, Landroidx/compose/ui/graphics/AndroidPath;

    .line 988
    .line 989
    move-object v15, v6

    .line 990
    check-cast v15, Landroidx/compose/ui/graphics/Brush;

    .line 991
    .line 992
    move-object/from16 v0, p1

    .line 993
    .line 994
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 995
    .line 996
    move-object v13, v0

    .line 997
    check-cast v13, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 998
    .line 999
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 1000
    .line 1001
    .line 1002
    const/16 v17, 0x0

    .line 1003
    .line 1004
    const/16 v18, 0x3c

    .line 1005
    .line 1006
    const/16 v16, 0x0

    .line 1007
    .line 1008
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 1009
    .line 1010
    .line 1011
    return-object v5

    .line 1012
    :pswitch_16
    move-object v7, v0

    .line 1013
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 1014
    .line 1015
    check-cast v6, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;

    .line 1016
    .line 1017
    move-object/from16 v0, p1

    .line 1018
    .line 1019
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1020
    .line 1021
    iget-object v10, v6, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;->x:Lkotlin/jvm/functions/Function1;

    .line 1022
    .line 1023
    const/4 v11, 0x4

    .line 1024
    const/4 v8, 0x0

    .line 1025
    const/4 v9, 0x0

    .line 1026
    move-object v6, v0

    .line 1027
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 1028
    .line 1029
    .line 1030
    return-object v5

    .line 1031
    :pswitch_17
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1032
    .line 1033
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1034
    .line 1035
    move-object/from16 v1, p1

    .line 1036
    .line 1037
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1038
    .line 1039
    sget v2, Landroidx/compose/foundation/text/BasicTextFieldKt;->a:I

    .line 1040
    .line 1041
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    if-nez v0, :cond_12

    .line 1046
    .line 1047
    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    :cond_12
    return-object v5

    .line 1051
    :pswitch_18
    check-cast v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 1052
    .line 1053
    check-cast v6, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 1054
    .line 1055
    move-object/from16 v1, p1

    .line 1056
    .line 1057
    check-cast v1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    .line 1058
    .line 1059
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->x:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 1060
    .line 1061
    if-eqz v1, :cond_13

    .line 1062
    .line 1063
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->b()V

    .line 1064
    .line 1065
    .line 1066
    :cond_13
    iput-object v3, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->x:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 1067
    .line 1068
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    .line 1069
    .line 1070
    if-eqz v0, :cond_14

    .line 1071
    .line 1072
    invoke-interface {v0, v5}, Lkotlinx/coroutines/CompletableDeferred;->E0(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    :cond_14
    iput-object v3, v6, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    .line 1076
    .line 1077
    return-object v5

    .line 1078
    :pswitch_19
    check-cast v0, Lnet/blip/android/ui/navigation/NavResultWriter;

    .line 1079
    .line 1080
    check-cast v6, Landroidx/navigation/NavHostController;

    .line 1081
    .line 1082
    move-object/from16 v1, p1

    .line 1083
    .line 1084
    check-cast v1, Landroid/net/Uri;

    .line 1085
    .line 1086
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    sget-object v2, Lnet/blip/android/ui/navigation/NavigationResultStore;->a:Ljava/util/LinkedHashMap;

    .line 1097
    .line 1098
    iget v0, v0, Lnet/blip/android/ui/navigation/NavResultWriter;->a:I

    .line 1099
    .line 1100
    sget-object v2, Lnet/blip/android/ui/navigation/NavigationResultStore;->a:Ljava/util/LinkedHashMap;

    .line 1101
    .line 1102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v6}, Landroidx/navigation/NavController;->c()V

    .line 1110
    .line 1111
    .line 1112
    return-object v5

    .line 1113
    :pswitch_1a
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1114
    .line 1115
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 1116
    .line 1117
    move-object/from16 v1, p1

    .line 1118
    .line 1119
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1120
    .line 1121
    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 1122
    .line 1123
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->h0(Landroidx/compose/ui/Modifier;)V

    .line 1128
    .line 1129
    .line 1130
    return-object v5

    .line 1131
    :pswitch_1b
    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .line 1132
    .line 1133
    check-cast v6, Landroidx/compose/ui/window/PopupPositionProvider;

    .line 1134
    .line 1135
    move-object/from16 v1, p1

    .line 1136
    .line 1137
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 1138
    .line 1139
    sget-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1140
    .line 1141
    invoke-virtual {v0, v6}, Landroidx/compose/ui/window/PopupLayout;->setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v0}, Landroidx/compose/ui/window/PopupLayout;->r()V

    .line 1145
    .line 1146
    .line 1147
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$lambda$5$0$$inlined$onDispose$1;

    .line 1148
    .line 1149
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1150
    .line 1151
    .line 1152
    return-object v0

    .line 1153
    :pswitch_1c
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1154
    .line 1155
    check-cast v6, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1156
    .line 1157
    move-object/from16 v1, p1

    .line 1158
    .line 1159
    check-cast v1, Ljava/lang/Throwable;

    .line 1160
    .line 1161
    invoke-interface {v0, v6}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 1162
    .line 1163
    .line 1164
    return-object v5

    .line 1165
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
