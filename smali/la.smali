.class public final synthetic Lla;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lla;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lla;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Lla;->j:I

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v3

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v3

    .line 35
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-object v3

    .line 47
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-object v3

    .line 59
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->J()V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-object v3

    .line 71
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    invoke-static {p1, v1, v0}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-object v3

    .line 83
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    invoke-static {p1, v1, v0}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-object v3

    .line 95
    :pswitch_6
    check-cast p1, Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object p0, p1, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/node/ObserverNodeOwnerScope;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->z()Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_7

    .line 110
    .line 111
    iget-object p0, p1, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->j:Landroidx/compose/ui/node/ObserverModifierNode;

    .line 112
    .line 113
    invoke-interface {p0}, Landroidx/compose/ui/node/ObserverModifierNode;->s0()V

    .line 114
    .line 115
    .line 116
    :cond_7
    return-object v3

    .line 117
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    .line 118
    .line 119
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 120
    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 126
    .line 127
    .line 128
    :cond_8
    return-object v3

    .line 129
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    .line 130
    .line 131
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 132
    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->z()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    goto :goto_1

    .line 146
    :cond_9
    :goto_0
    return-object v3

    .line 147
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->c0(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    throw v2

    .line 151
    :pswitch_a
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 152
    .line 153
    iget-object p0, p1, Landroidx/navigation/NavBackStackEntry;->o:Ljava/lang/String;

    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_b
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 157
    .line 158
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 163
    .line 164
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->k:Landroidx/navigation/NavDestination;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    check-cast p0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 170
    .line 171
    sget p1, Landroidx/navigation/NavDestination;->n:I

    .line 172
    .line 173
    invoke-static {p0}, Landroidx/navigation/NavDestination$Companion;->b(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    return-object v2

    .line 195
    :pswitch_c
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    instance-of p0, p1, Landroidx/navigation/NavGraph;

    .line 201
    .line 202
    if-eqz p0, :cond_b

    .line 203
    .line 204
    check-cast p1, Landroidx/navigation/NavGraph;

    .line 205
    .line 206
    iget-object p0, p1, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 207
    .line 208
    iget p1, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavGraphImpl;->a(I)Landroidx/navigation/NavDestination;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    :cond_b
    return-object v2

    .line 215
    :pswitch_d
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    iget-object p0, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 221
    .line 222
    return-object p0

    .line 223
    :pswitch_e
    check-cast p1, Landroid/content/Context;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    instance-of p0, p1, Landroid/app/Activity;

    .line 229
    .line 230
    if-eqz p0, :cond_c

    .line 231
    .line 232
    move-object v2, p1

    .line 233
    check-cast v2, Landroid/app/Activity;

    .line 234
    .line 235
    :cond_c
    return-object v2

    .line 236
    :pswitch_f
    check-cast p1, Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 242
    .line 243
    if-eqz p0, :cond_d

    .line 244
    .line 245
    check-cast p1, Landroid/content/ContextWrapper;

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_d
    move-object p1, v2

    .line 249
    :goto_3
    if-eqz p1, :cond_e

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    :cond_e
    return-object v2

    .line 256
    :pswitch_10
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    iget-object p0, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 262
    .line 263
    if-eqz p0, :cond_f

    .line 264
    .line 265
    iget-object v0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 266
    .line 267
    iget v0, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 268
    .line 269
    iget-object p1, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 270
    .line 271
    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 272
    .line 273
    if-ne v0, p1, :cond_f

    .line 274
    .line 275
    move-object v2, p0

    .line 276
    :cond_f
    return-object v2

    .line 277
    :pswitch_11
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object p0, p1, Landroidx/navigation/NavDestination;->l:Landroidx/navigation/NavGraph;

    .line 283
    .line 284
    if-eqz p0, :cond_10

    .line 285
    .line 286
    iget-object v0, p0, Landroidx/navigation/NavGraph;->o:Landroidx/navigation/internal/NavGraphImpl;

    .line 287
    .line 288
    iget v0, v0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    .line 289
    .line 290
    iget-object p1, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 291
    .line 292
    iget p1, p1, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 293
    .line 294
    if-ne v0, p1, :cond_10

    .line 295
    .line 296
    move-object v2, p0

    .line 297
    :cond_10
    return-object v2

    .line 298
    :pswitch_12
    check-cast p1, Landroidx/navigation/NavDestination;

    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    iget-object p0, p1, Landroidx/navigation/NavDestination;->k:Landroidx/navigation/internal/NavDestinationImpl;

    .line 304
    .line 305
    iget p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->d:I

    .line 306
    .line 307
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    return-object p0

    .line 312
    :pswitch_13
    check-cast p1, Landroid/content/Context;

    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    instance-of p0, p1, Landroid/content/ContextWrapper;

    .line 318
    .line 319
    if-eqz p0, :cond_11

    .line 320
    .line 321
    check-cast p1, Landroid/content/ContextWrapper;

    .line 322
    .line 323
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    :cond_11
    return-object v2

    .line 328
    :pswitch_14
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 329
    .line 330
    new-instance p0, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    .line 331
    .line 332
    invoke-static {p1}, Landroidx/lifecycle/SavedStateHandleSupport;->a(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-direct {p0, p1}, Landroidx/navigation/compose/BackStackEntryIdViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    .line 337
    .line 338
    .line 339
    return-object p0

    .line 340
    :pswitch_15
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 341
    .line 342
    iget p0, p1, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    .line 343
    .line 344
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->c:I

    .line 345
    .line 346
    const-string v0, ", "

    .line 347
    .line 348
    const-string v1, ")"

    .line 349
    .line 350
    const-string v2, "["

    .line 351
    .line 352
    invoke-static {v2, p0, v0, p1, v1}, Ljb;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    return-object p0

    .line 357
    :pswitch_16
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    return-object v3

    .line 363
    :pswitch_17
    check-cast p1, Ljava/lang/Long;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    return-object v3

    .line 369
    :pswitch_18
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    .line 370
    .line 371
    sget-object p0, Landroidx/activity/compose/LocalActivityKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 372
    .line 373
    sget-object p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 374
    .line 375
    check-cast p1, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-static {p1, p0}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    check-cast p0, Landroid/content/Context;

    .line 385
    .line 386
    :goto_4
    instance-of p1, p0, Landroid/content/ContextWrapper;

    .line 387
    .line 388
    if-eqz p1, :cond_13

    .line 389
    .line 390
    instance-of p1, p0, Landroid/app/Activity;

    .line 391
    .line 392
    if-eqz p1, :cond_12

    .line 393
    .line 394
    move-object v2, p0

    .line 395
    goto :goto_5

    .line 396
    :cond_12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 397
    .line 398
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    goto :goto_4

    .line 403
    :cond_13
    :goto_5
    check-cast v2, Landroid/app/Activity;

    .line 404
    .line 405
    return-object v2

    .line 406
    :pswitch_19
    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    .line 407
    .line 408
    return-object v3

    .line 409
    :pswitch_1a
    check-cast p1, Ljava/util/List;

    .line 410
    .line 411
    return-object v3

    .line 412
    :pswitch_1b
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 413
    .line 414
    return-object v3

    .line 415
    :pswitch_1c
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    .line 416
    .line 417
    return-object v3

    .line 418
    nop

    .line 419
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
