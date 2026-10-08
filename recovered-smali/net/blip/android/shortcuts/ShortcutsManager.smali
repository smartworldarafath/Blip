.class public final Lnet/blip/android/shortcuts/ShortcutsManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/activity/ComponentActivity;

.field public final b:Lkotlinx/coroutines/flow/StateFlow;

.field public c:Lnet/blip/android/shortcuts/ShortcutFingerprint;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager;->a:Landroidx/activity/ComponentActivity;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/android/shortcuts/ShortcutsManager;->b:Lkotlinx/coroutines/flow/StateFlow;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lnet/blip/android/shortcuts/ShortcutsManager;Lnet/blip/libblip/frontend/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lnet/blip/android/shortcuts/ShortcutsManager;->a:Landroidx/activity/ComponentActivity;

    .line 6
    .line 7
    instance-of v3, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->v:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 36
    .line 37
    const-string v6, "ShortcutsManager"

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    const-class v9, Landroid/content/pm/ShortcutManager;

    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    const/4 v13, 0x0

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    if-eq v5, v12, :cond_2

    .line 49
    .line 50
    if-ne v5, v7, :cond_1

    .line 51
    .line 52
    iget v5, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->u:I

    .line 53
    .line 54
    iget-object v14, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->t:Ljava/util/Iterator;

    .line 55
    .line 56
    iget-object v15, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->s:Ljava/util/Map;

    .line 57
    .line 58
    const/16 p2, 0x0

    .line 59
    .line 60
    iget-object v10, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->r:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v10, Lnet/blip/android/shortcuts/ShortcutFingerprint;

    .line 63
    .line 64
    iget-object v7, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->q:Ljava/util/Set;

    .line 65
    .line 66
    check-cast v7, Ljava/util/Set;

    .line 67
    .line 68
    iget-object v11, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->p:Ljava/util/List;

    .line 69
    .line 70
    iget-object v12, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->o:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 v13, 0x2

    .line 76
    goto/16 :goto_1d

    .line 77
    .line 78
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 79
    .line 80
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v13

    .line 84
    :cond_2
    const/16 p2, 0x0

    .line 85
    .line 86
    iget v5, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->u:I

    .line 87
    .line 88
    iget-object v7, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->n:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v10, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->m:Lnet/blip/libblip/frontend/State;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/16 p2, 0x0

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 112
    .line 113
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 114
    .line 115
    new-instance v7, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;

    .line 116
    .line 117
    invoke-direct {v7, v1, v13}, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 118
    .line 119
    .line 120
    move-object/from16 v10, p1

    .line 121
    .line 122
    iput-object v10, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->m:Lnet/blip/libblip/frontend/State;

    .line 123
    .line 124
    const-string v11, "net.blip.android.SHARE_TARGET"

    .line 125
    .line 126
    iput-object v11, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->n:Ljava/lang/String;

    .line 127
    .line 128
    iput v5, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->u:I

    .line 129
    .line 130
    const/4 v12, 0x1

    .line 131
    iput v12, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 132
    .line 133
    invoke-static {v0, v7, v3}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-ne v0, v4, :cond_4

    .line 138
    .line 139
    goto/16 :goto_2a

    .line 140
    .line 141
    :cond_4
    move-object v7, v11

    .line 142
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    check-cast v0, Ljava/lang/Iterable;

    .line 146
    .line 147
    new-instance v11, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_6

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    move-object v14, v12

    .line 167
    check-cast v14, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 168
    .line 169
    iget-object v14, v14, Landroidx/core/content/pm/ShortcutInfoCompat;->j:Ljava/util/Set;

    .line 170
    .line 171
    if-eqz v14, :cond_5

    .line 172
    .line 173
    invoke-interface {v14, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    const/4 v15, 0x1

    .line 178
    if-ne v14, v15, :cond_5

    .line 179
    .line 180
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-eqz v12, :cond_8

    .line 198
    .line 199
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    move-object v14, v12

    .line 204
    check-cast v14, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 205
    .line 206
    iget-boolean v14, v14, Landroidx/core/content/pm/ShortcutInfoCompat;->o:Z

    .line 207
    .line 208
    if-eqz v14, :cond_7

    .line 209
    .line 210
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    if-eqz v12, :cond_a

    .line 228
    .line 229
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    move-object v14, v12

    .line 234
    check-cast v14, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 235
    .line 236
    iget-boolean v14, v14, Landroidx/core/content/pm/ShortcutInfoCompat;->o:Z

    .line 237
    .line 238
    if-nez v14, :cond_9

    .line 239
    .line 240
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    new-instance v11, Ljava/util/ArrayList;

    .line 245
    .line 246
    const/16 v12, 0xa

    .line 247
    .line 248
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    if-eqz v12, :cond_b

    .line 264
    .line 265
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    check-cast v12, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 270
    .line 271
    iget-object v12, v12, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_b
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-static {v2}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    check-cast v11, Ljava/lang/Iterable;

    .line 286
    .line 287
    invoke-static {v7, v11}, Lkotlin/collections/SetsKt;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-static {v10}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    if-nez v11, :cond_c

    .line 296
    .line 297
    sget-object v11, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 298
    .line 299
    move-object/from16 p1, v0

    .line 300
    .line 301
    move-object/from16 v18, v3

    .line 302
    .line 303
    goto/16 :goto_a

    .line 304
    .line 305
    :cond_c
    invoke-static {v10}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    iget-object v14, v12, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 310
    .line 311
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    new-instance v15, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v18

    .line 328
    if-eqz v18, :cond_e

    .line 329
    .line 330
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v18

    .line 334
    move-object/from16 v13, v18

    .line 335
    .line 336
    check-cast v13, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 337
    .line 338
    iget-object v13, v13, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 339
    .line 340
    if-eqz v13, :cond_d

    .line 341
    .line 342
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    :cond_d
    const/4 v13, 0x0

    .line 346
    goto :goto_6

    .line 347
    :cond_e
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 348
    .line 349
    .line 350
    move-result-object v13

    .line 351
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    new-instance v14, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 361
    .line 362
    .line 363
    move-result-object v13

    .line 364
    :cond_f
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    if-eqz v15, :cond_10

    .line 369
    .line 370
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    check-cast v15, Lnet/blip/libblip/PeerId;

    .line 375
    .line 376
    invoke-static {v12, v15}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 377
    .line 378
    .line 379
    move-result-object v15

    .line 380
    if-eqz v15, :cond_f

    .line 381
    .line 382
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_10
    iget-object v12, v11, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 387
    .line 388
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    check-cast v12, Ljava/lang/Iterable;

    .line 393
    .line 394
    new-instance v13, Lle;

    .line 395
    .line 396
    const/16 v15, 0x15

    .line 397
    .line 398
    invoke-direct {v13, v15}, Lle;-><init>(I)V

    .line 399
    .line 400
    .line 401
    new-instance v15, Lle;

    .line 402
    .line 403
    move-object/from16 p1, v0

    .line 404
    .line 405
    const/16 v0, 0x16

    .line 406
    .line 407
    invoke-direct {v15, v0}, Lle;-><init>(I)V

    .line 408
    .line 409
    .line 410
    move-object/from16 v18, v3

    .line 411
    .line 412
    const/4 v3, 0x2

    .line 413
    new-array v0, v3, [Lkotlin/jvm/functions/Function1;

    .line 414
    .line 415
    aput-object v13, v0, p2

    .line 416
    .line 417
    const/16 v17, 0x1

    .line 418
    .line 419
    aput-object v15, v0, v17

    .line 420
    .line 421
    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->a([Lkotlin/jvm/functions/Function1;)Lc5;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v0}, Lnet/blip/libblip/Device_DerivedKt;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    .line 438
    .line 439
    const/16 v12, 0xa

    .line 440
    .line 441
    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_11

    .line 457
    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    check-cast v12, Lnet/blip/libblip/Device;

    .line 463
    .line 464
    new-instance v13, Lnet/blip/libblip/Peer$Device;

    .line 465
    .line 466
    iget-object v15, v11, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 467
    .line 468
    invoke-direct {v13, v12, v15}, Lnet/blip/libblip/Peer$Device;-><init>(Lnet/blip/libblip/Device;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_11
    invoke-static {v14, v3}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    new-instance v11, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    .line 491
    .line 492
    new-instance v0, Lkotlin/collections/IndexingIterable;

    .line 493
    .line 494
    new-instance v3, Ly4;

    .line 495
    .line 496
    move/from16 v12, p2

    .line 497
    .line 498
    invoke-direct {v3, v12, v11}, Ly4;-><init>(ILjava/util/ArrayList;)V

    .line 499
    .line 500
    .line 501
    invoke-direct {v0, v3}, Lkotlin/collections/IndexingIterable;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    :cond_12
    move-object v3, v0

    .line 509
    check-cast v3, Lkotlin/collections/IndexingIterator;

    .line 510
    .line 511
    iget-object v12, v3, Lkotlin/collections/IndexingIterator;->j:Ljava/util/Iterator;

    .line 512
    .line 513
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v12

    .line 517
    if-eqz v12, :cond_13

    .line 518
    .line 519
    invoke-virtual {v3}, Lkotlin/collections/IndexingIterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    move-object v12, v3

    .line 524
    check-cast v12, Lkotlin/collections/IndexedValue;

    .line 525
    .line 526
    iget-object v12, v12, Lkotlin/collections/IndexedValue;->b:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v12, Lnet/blip/libblip/Peer;

    .line 529
    .line 530
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    instance-of v12, v12, Lnet/blip/libblip/Peer$Device;

    .line 534
    .line 535
    if-eqz v12, :cond_12

    .line 536
    .line 537
    goto :goto_9

    .line 538
    :cond_13
    const/4 v3, 0x0

    .line 539
    :goto_9
    check-cast v3, Lkotlin/collections/IndexedValue;

    .line 540
    .line 541
    if-eqz v3, :cond_14

    .line 542
    .line 543
    iget-object v0, v3, Lkotlin/collections/IndexedValue;->b:Ljava/lang/Object;

    .line 544
    .line 545
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    const/4 v12, 0x0

    .line 549
    invoke-virtual {v11, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    :cond_14
    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    .line 553
    .line 554
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    :cond_15
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v11

    .line 565
    if-eqz v11, :cond_16

    .line 566
    .line 567
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v11

    .line 571
    move-object v12, v11

    .line 572
    check-cast v12, Lnet/blip/libblip/Peer;

    .line 573
    .line 574
    invoke-virtual {v12}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 575
    .line 576
    .line 577
    move-result-object v12

    .line 578
    invoke-static {v12}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v12

    .line 582
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v12

    .line 586
    if-nez v12, :cond_15

    .line 587
    .line 588
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    goto :goto_b

    .line 592
    :cond_16
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->S(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    :cond_17
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v12

    .line 609
    if-eqz v12, :cond_18

    .line 610
    .line 611
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    move-object v13, v12

    .line 616
    check-cast v13, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 617
    .line 618
    iget-object v13, v13, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 619
    .line 620
    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v13

    .line 624
    if-nez v13, :cond_17

    .line 625
    .line 626
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    goto :goto_c

    .line 630
    :cond_18
    new-instance v7, Ljava/util/ArrayList;

    .line 631
    .line 632
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 636
    .line 637
    .line 638
    move-result-object v11

    .line 639
    :cond_19
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_1b

    .line 644
    .line 645
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 650
    .line 651
    :try_start_0
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->a(Ljava/lang/String;)Lnet/blip/libblip/PeerId;

    .line 657
    .line 658
    .line 659
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    goto :goto_e

    .line 661
    :catchall_0
    move-exception v0

    .line 662
    new-instance v12, Lkotlin/Result$Failure;

    .line 663
    .line 664
    invoke-direct {v12, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 665
    .line 666
    .line 667
    move-object v0, v12

    .line 668
    :goto_e
    nop

    .line 669
    instance-of v12, v0, Lkotlin/Result$Failure;

    .line 670
    .line 671
    if-eqz v12, :cond_1a

    .line 672
    .line 673
    const/4 v0, 0x0

    .line 674
    :cond_1a
    check-cast v0, Lnet/blip/libblip/PeerId;

    .line 675
    .line 676
    if-eqz v0, :cond_19

    .line 677
    .line 678
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    goto :goto_d

    .line 682
    :cond_1b
    invoke-static {v10}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    new-instance v11, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    :cond_1c
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v13

    .line 699
    if-eqz v13, :cond_1d

    .line 700
    .line 701
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v13

    .line 705
    check-cast v13, Lnet/blip/libblip/PeerId;

    .line 706
    .line 707
    invoke-static {v0, v13}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 708
    .line 709
    .line 710
    move-result-object v13

    .line 711
    if-eqz v13, :cond_1c

    .line 712
    .line 713
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    goto :goto_f

    .line 717
    :cond_1d
    iget-object v0, v10, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 718
    .line 719
    if-eqz v0, :cond_25

    .line 720
    .line 721
    iget-boolean v0, v0, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 722
    .line 723
    const/4 v15, 0x1

    .line 724
    if-ne v0, v15, :cond_25

    .line 725
    .line 726
    new-instance v0, Ljava/util/ArrayList;

    .line 727
    .line 728
    const/16 v12, 0xa

    .line 729
    .line 730
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 731
    .line 732
    .line 733
    move-result v10

    .line 734
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v10

    .line 741
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v12

    .line 745
    if-eqz v12, :cond_1e

    .line 746
    .line 747
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v12

    .line 751
    check-cast v12, Lnet/blip/libblip/PeerId;

    .line 752
    .line 753
    invoke-static {v12}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    goto :goto_10

    .line 761
    :cond_1e
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    new-instance v10, Ljava/util/ArrayList;

    .line 766
    .line 767
    const/16 v12, 0xa

    .line 768
    .line 769
    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 770
    .line 771
    .line 772
    move-result v13

    .line 773
    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v12

    .line 780
    :goto_11
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    .line 782
    .line 783
    move-result v13

    .line 784
    if-eqz v13, :cond_1f

    .line 785
    .line 786
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v13

    .line 790
    check-cast v13, Lnet/blip/libblip/Peer;

    .line 791
    .line 792
    invoke-virtual {v13}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 793
    .line 794
    .line 795
    move-result-object v13

    .line 796
    invoke-static {v13}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v13

    .line 800
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    goto :goto_11

    .line 804
    :cond_1f
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 805
    .line 806
    .line 807
    move-result-object v10

    .line 808
    check-cast v10, Ljava/lang/Iterable;

    .line 809
    .line 810
    instance-of v12, v10, Ljava/util/Collection;

    .line 811
    .line 812
    if-eqz v12, :cond_20

    .line 813
    .line 814
    check-cast v10, Ljava/util/Collection;

    .line 815
    .line 816
    goto :goto_12

    .line 817
    :cond_20
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 818
    .line 819
    .line 820
    move-result-object v10

    .line 821
    :goto_12
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 822
    .line 823
    .line 824
    move-result v12

    .line 825
    if-eqz v12, :cond_21

    .line 826
    .line 827
    check-cast v0, Ljava/lang/Iterable;

    .line 828
    .line 829
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    goto :goto_15

    .line 834
    :cond_21
    instance-of v12, v10, Ljava/util/Set;

    .line 835
    .line 836
    if-eqz v12, :cond_24

    .line 837
    .line 838
    check-cast v0, Ljava/lang/Iterable;

    .line 839
    .line 840
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 841
    .line 842
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 843
    .line 844
    .line 845
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    :cond_22
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 850
    .line 851
    .line 852
    move-result v13

    .line 853
    if-eqz v13, :cond_23

    .line 854
    .line 855
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v13

    .line 859
    move-object v14, v10

    .line 860
    check-cast v14, Ljava/util/Set;

    .line 861
    .line 862
    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    move-result v14

    .line 866
    if-nez v14, :cond_22

    .line 867
    .line 868
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    goto :goto_13

    .line 872
    :cond_23
    :goto_14
    move-object v0, v12

    .line 873
    goto :goto_15

    .line 874
    :cond_24
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 875
    .line 876
    check-cast v0, Ljava/util/Collection;

    .line 877
    .line 878
    invoke-direct {v12, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v12, v10}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 882
    .line 883
    .line 884
    goto :goto_14

    .line 885
    :cond_25
    sget-object v0, Lkotlin/collections/EmptySet;->j:Lkotlin/collections/EmptySet;

    .line 886
    .line 887
    :goto_15
    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 888
    .line 889
    .line 890
    move-result-object v10

    .line 891
    new-instance v11, Ljava/util/HashSet;

    .line 892
    .line 893
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 894
    .line 895
    .line 896
    new-instance v12, Ljava/util/ArrayList;

    .line 897
    .line 898
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 902
    .line 903
    .line 904
    move-result-object v10

    .line 905
    :cond_26
    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 906
    .line 907
    .line 908
    move-result v13

    .line 909
    if-eqz v13, :cond_27

    .line 910
    .line 911
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v13

    .line 915
    move-object v14, v13

    .line 916
    check-cast v14, Lnet/blip/libblip/Peer;

    .line 917
    .line 918
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 919
    .line 920
    .line 921
    move-result-object v14

    .line 922
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 923
    .line 924
    .line 925
    move-result v14

    .line 926
    if-eqz v14, :cond_26

    .line 927
    .line 928
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    goto :goto_16

    .line 932
    :cond_27
    new-instance v10, Ljava/util/ArrayList;

    .line 933
    .line 934
    const/16 v11, 0xa

    .line 935
    .line 936
    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 937
    .line 938
    .line 939
    move-result v13

    .line 940
    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 941
    .line 942
    .line 943
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 944
    .line 945
    .line 946
    move-result-object v11

    .line 947
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 948
    .line 949
    .line 950
    move-result v13

    .line 951
    if-eqz v13, :cond_28

    .line 952
    .line 953
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v13

    .line 957
    check-cast v13, Lnet/blip/libblip/Peer;

    .line 958
    .line 959
    invoke-virtual {v13}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 960
    .line 961
    .line 962
    move-result-object v13

    .line 963
    invoke-static {v13}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v13

    .line 967
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    goto :goto_17

    .line 971
    :cond_28
    new-instance v11, Ljava/util/ArrayList;

    .line 972
    .line 973
    const/16 v13, 0xa

    .line 974
    .line 975
    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 976
    .line 977
    .line 978
    move-result v14

    .line 979
    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 983
    .line 984
    .line 985
    move-result-object v13

    .line 986
    :goto_18
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 987
    .line 988
    .line 989
    move-result v14

    .line 990
    if-eqz v14, :cond_2b

    .line 991
    .line 992
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v14

    .line 996
    check-cast v14, Lnet/blip/libblip/Peer;

    .line 997
    .line 998
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 999
    .line 1000
    .line 1001
    move-result-object v15

    .line 1002
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v20

    .line 1006
    move-object/from16 p1, v3

    .line 1007
    .line 1008
    instance-of v3, v14, Lnet/blip/libblip/Peer$User;

    .line 1009
    .line 1010
    if-eqz v3, :cond_29

    .line 1011
    .line 1012
    move-object v3, v14

    .line 1013
    check-cast v3, Lnet/blip/libblip/Peer$User;

    .line 1014
    .line 1015
    goto :goto_19

    .line 1016
    :cond_29
    const/4 v3, 0x0

    .line 1017
    :goto_19
    if-eqz v3, :cond_2a

    .line 1018
    .line 1019
    iget-object v3, v3, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 1020
    .line 1021
    if-eqz v3, :cond_2a

    .line 1022
    .line 1023
    iget-object v3, v3, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 1024
    .line 1025
    goto :goto_1a

    .line 1026
    :cond_2a
    const/4 v3, 0x0

    .line 1027
    :goto_1a
    const/4 v14, 0x3

    .line 1028
    new-array v14, v14, [Ljava/io/Serializable;

    .line 1029
    .line 1030
    const/16 v21, 0x0

    .line 1031
    .line 1032
    aput-object v15, v14, v21

    .line 1033
    .line 1034
    const/16 v17, 0x1

    .line 1035
    .line 1036
    aput-object v20, v14, v17

    .line 1037
    .line 1038
    const/16 v16, 0x2

    .line 1039
    .line 1040
    aput-object v3, v14, v16

    .line 1041
    .line 1042
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-object/from16 v3, p1

    .line 1050
    .line 1051
    goto :goto_18

    .line 1052
    :cond_2b
    move-object/from16 p1, v3

    .line 1053
    .line 1054
    new-instance v3, Lnet/blip/android/shortcuts/ShortcutFingerprint;

    .line 1055
    .line 1056
    invoke-direct {v3, v10, v11, v0}, Lnet/blip/android/shortcuts/ShortcutFingerprint;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)V

    .line 1057
    .line 1058
    .line 1059
    iget-object v10, v1, Lnet/blip/android/shortcuts/ShortcutsManager;->c:Lnet/blip/android/shortcuts/ShortcutFingerprint;

    .line 1060
    .line 1061
    invoke-virtual {v3, v10}, Lnet/blip/android/shortcuts/ShortcutFingerprint;->equals(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v10

    .line 1065
    if-eqz v10, :cond_2c

    .line 1066
    .line 1067
    :goto_1b
    move-object v4, v8

    .line 1068
    goto/16 :goto_2a

    .line 1069
    .line 1070
    :cond_2c
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 1071
    .line 1072
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v11

    .line 1079
    move-object/from16 v12, p1

    .line 1080
    .line 1081
    move-object v15, v10

    .line 1082
    move-object v14, v11

    .line 1083
    move-object v10, v3

    .line 1084
    move-object v11, v7

    .line 1085
    move-object/from16 v3, v18

    .line 1086
    .line 1087
    move-object v7, v0

    .line 1088
    :goto_1c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    if-eqz v0, :cond_2f

    .line 1093
    .line 1094
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    check-cast v0, Lnet/blip/libblip/Peer;

    .line 1099
    .line 1100
    const/4 v13, 0x0

    .line 1101
    iput-object v13, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->m:Lnet/blip/libblip/frontend/State;

    .line 1102
    .line 1103
    iput-object v13, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->n:Ljava/lang/String;

    .line 1104
    .line 1105
    iput-object v12, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->o:Ljava/util/List;

    .line 1106
    .line 1107
    iput-object v11, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->p:Ljava/util/List;

    .line 1108
    .line 1109
    move-object v13, v7

    .line 1110
    check-cast v13, Ljava/util/Set;

    .line 1111
    .line 1112
    iput-object v13, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->q:Ljava/util/Set;

    .line 1113
    .line 1114
    iput-object v10, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->r:Ljava/lang/Object;

    .line 1115
    .line 1116
    iput-object v15, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->s:Ljava/util/Map;

    .line 1117
    .line 1118
    iput-object v14, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->t:Ljava/util/Iterator;

    .line 1119
    .line 1120
    iput v5, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->u:I

    .line 1121
    .line 1122
    const/4 v13, 0x2

    .line 1123
    iput v13, v3, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$1;->x:I

    .line 1124
    .line 1125
    invoke-static {v2, v0, v3}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->a(Landroidx/activity/ComponentActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    if-ne v0, v4, :cond_2d

    .line 1130
    .line 1131
    goto/16 :goto_2a

    .line 1132
    .line 1133
    :cond_2d
    :goto_1d
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1134
    .line 1135
    if-nez v0, :cond_2e

    .line 1136
    .line 1137
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 1138
    .line 1139
    const/4 v1, 0x0

    .line 1140
    new-array v1, v1, [Lkotlin/Pair;

    .line 1141
    .line 1142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1143
    .line 1144
    .line 1145
    const-string v0, "activity ended while capturing avatars; aborting update"

    .line 1146
    .line 1147
    invoke-static {v6, v0, v1}, Lnet/blip/libblip/Logger;->g(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1148
    .line 1149
    .line 1150
    goto :goto_1b

    .line 1151
    :cond_2e
    const/16 v21, 0x0

    .line 1152
    .line 1153
    iget-object v13, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->b:Ljava/lang/String;

    .line 1154
    .line 1155
    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    goto :goto_1c

    .line 1159
    :cond_2f
    const/16 v21, 0x0

    .line 1160
    .line 1161
    move-object v0, v7

    .line 1162
    check-cast v0, Ljava/util/Collection;

    .line 1163
    .line 1164
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    if-nez v0, :cond_30

    .line 1169
    .line 1170
    check-cast v7, Ljava/lang/Iterable;

    .line 1171
    .line 1172
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-static {v2, v0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    .line 1180
    .line 1181
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v3

    .line 1188
    :cond_31
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1189
    .line 1190
    .line 1191
    move-result v4

    .line 1192
    if-eqz v4, :cond_32

    .line 1193
    .line 1194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    check-cast v4, Lnet/blip/libblip/Peer;

    .line 1199
    .line 1200
    invoke-virtual {v4}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v4

    .line 1204
    invoke-static {v4}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v4

    .line 1208
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v4

    .line 1212
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1213
    .line 1214
    if-eqz v4, :cond_31

    .line 1215
    .line 1216
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    goto :goto_1e

    .line 1220
    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    .line 1221
    .line 1222
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    :cond_33
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v5

    .line 1233
    if-eqz v5, :cond_34

    .line 1234
    .line 1235
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    check-cast v5, Lnet/blip/libblip/PeerId;

    .line 1240
    .line 1241
    invoke-static {v5}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v5

    .line 1245
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v5

    .line 1249
    check-cast v5, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1250
    .line 1251
    if-eqz v5, :cond_33

    .line 1252
    .line 1253
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    goto :goto_1f

    .line 1257
    :cond_34
    sget-object v4, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 1258
    .line 1259
    new-instance v5, Ljava/util/ArrayList;

    .line 1260
    .line 1261
    const/16 v12, 0xa

    .line 1262
    .line 1263
    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 1264
    .line 1265
    .line 1266
    move-result v7

    .line 1267
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v7

    .line 1274
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v11

    .line 1278
    if-eqz v11, :cond_35

    .line 1279
    .line 1280
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v11

    .line 1284
    check-cast v11, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1285
    .line 1286
    iget-object v11, v11, Landroidx/core/content/pm/ShortcutInfoCompat;->e:Ljava/lang/CharSequence;

    .line 1287
    .line 1288
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    goto :goto_20

    .line 1292
    :cond_35
    new-instance v7, Lkotlin/Pair;

    .line 1293
    .line 1294
    const-string v11, "shortcuts"

    .line 1295
    .line 1296
    invoke-direct {v7, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    filled-new-array {v7}, [Lkotlin/Pair;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v5

    .line 1303
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    .line 1305
    .line 1306
    const-string v4, "setting dynamic shortcuts"

    .line 1307
    .line 1308
    invoke-static {v4, v5}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->c(Ljava/util/List;)Ljava/util/List;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    new-instance v4, Ljava/util/ArrayList;

    .line 1316
    .line 1317
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1318
    .line 1319
    .line 1320
    move-result v5

    .line 1321
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1322
    .line 1323
    .line 1324
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v0

    .line 1328
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    if-eqz v5, :cond_36

    .line 1333
    .line 1334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v5

    .line 1338
    check-cast v5, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1339
    .line 1340
    invoke-virtual {v5}, Landroidx/core/content/pm/ShortcutInfoCompat;->b()Landroid/content/pm/ShortcutInfo;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v5

    .line 1344
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    .line 1346
    .line 1347
    goto :goto_21

    .line 1348
    :cond_36
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 1353
    .line 1354
    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v0

    .line 1358
    if-nez v0, :cond_37

    .line 1359
    .line 1360
    move/from16 v12, v21

    .line 1361
    .line 1362
    goto :goto_22

    .line 1363
    :cond_37
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    .line 1369
    .line 1370
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1375
    .line 1376
    .line 1377
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    check-cast v0, Ljava/util/ArrayList;

    .line 1382
    .line 1383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1388
    .line 1389
    .line 1390
    move-result v4

    .line 1391
    if-nez v4, :cond_43

    .line 1392
    .line 1393
    const/4 v12, 0x1

    .line 1394
    :goto_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    if-nez v0, :cond_41

    .line 1399
    .line 1400
    invoke-static {v3}, Landroidx/core/content/pm/ShortcutManagerCompat;->c(Ljava/util/List;)Ljava/util/List;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1405
    .line 1406
    const/16 v4, 0x1d

    .line 1407
    .line 1408
    if-gt v3, v4, :cond_3d

    .line 1409
    .line 1410
    new-instance v3, Ljava/util/ArrayList;

    .line 1411
    .line 1412
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v3

    .line 1419
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v4

    .line 1423
    if-eqz v4, :cond_3d

    .line 1424
    .line 1425
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v4

    .line 1429
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1430
    .line 1431
    iget-object v5, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 1432
    .line 1433
    if-nez v5, :cond_38

    .line 1434
    .line 1435
    goto :goto_25

    .line 1436
    :cond_38
    iget v7, v5, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 1437
    .line 1438
    const/4 v11, 0x6

    .line 1439
    if-eq v7, v11, :cond_39

    .line 1440
    .line 1441
    const/4 v13, 0x4

    .line 1442
    if-eq v7, v13, :cond_39

    .line 1443
    .line 1444
    :goto_24
    const/4 v15, 0x1

    .line 1445
    goto :goto_23

    .line 1446
    :cond_39
    invoke-virtual {v5, v2}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/content/Context;)Ljava/io/InputStream;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v5

    .line 1450
    if-nez v5, :cond_3a

    .line 1451
    .line 1452
    goto :goto_25

    .line 1453
    :cond_3a
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v5

    .line 1457
    if-nez v5, :cond_3b

    .line 1458
    .line 1459
    :goto_25
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1460
    .line 1461
    .line 1462
    goto :goto_24

    .line 1463
    :cond_3b
    if-ne v7, v11, :cond_3c

    .line 1464
    .line 1465
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    .line 1466
    .line 1467
    const/4 v11, 0x5

    .line 1468
    invoke-direct {v7, v11}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1469
    .line 1470
    .line 1471
    iput-object v5, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 1472
    .line 1473
    const/4 v15, 0x1

    .line 1474
    goto :goto_26

    .line 1475
    :cond_3c
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    .line 1476
    .line 1477
    const/4 v15, 0x1

    .line 1478
    invoke-direct {v7, v15}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1479
    .line 1480
    .line 1481
    iput-object v5, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 1482
    .line 1483
    :goto_26
    iput-object v7, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 1484
    .line 1485
    goto :goto_23

    .line 1486
    :cond_3d
    const/4 v15, 0x1

    .line 1487
    new-instance v3, Ljava/util/ArrayList;

    .line 1488
    .line 1489
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .line 1491
    .line 1492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1497
    .line 1498
    .line 1499
    move-result v4

    .line 1500
    if-eqz v4, :cond_3e

    .line 1501
    .line 1502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v4

    .line 1506
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 1507
    .line 1508
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->b()Landroid/content/pm/ShortcutInfo;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v4

    .line 1512
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    .line 1514
    .line 1515
    goto :goto_27

    .line 1516
    :cond_3e
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 1521
    .line 1522
    invoke-virtual {v0, v3}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    if-nez v0, :cond_3f

    .line 1527
    .line 1528
    move/from16 v15, v21

    .line 1529
    .line 1530
    goto :goto_29

    .line 1531
    :cond_3f
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->b(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1536
    .line 1537
    .line 1538
    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->a(Landroid/content/Context;)Ljava/util/List;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    check-cast v0, Ljava/util/ArrayList;

    .line 1543
    .line 1544
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1549
    .line 1550
    .line 1551
    move-result v2

    .line 1552
    if-nez v2, :cond_40

    .line 1553
    .line 1554
    goto :goto_29

    .line 1555
    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1560
    .line 1561
    .line 1562
    invoke-static {}, Lio/sentry/d;->i()V

    .line 1563
    .line 1564
    .line 1565
    :goto_28
    const/16 v19, 0x0

    .line 1566
    .line 1567
    return-object v19

    .line 1568
    :cond_41
    const/4 v15, 0x1

    .line 1569
    :goto_29
    if-eqz v12, :cond_42

    .line 1570
    .line 1571
    if-eqz v15, :cond_42

    .line 1572
    .line 1573
    iput-object v10, v1, Lnet/blip/android/shortcuts/ShortcutsManager;->c:Lnet/blip/android/shortcuts/ShortcutFingerprint;

    .line 1574
    .line 1575
    goto/16 :goto_1b

    .line 1576
    .line 1577
    :cond_42
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 1578
    .line 1579
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v1

    .line 1583
    new-instance v2, Lkotlin/Pair;

    .line 1584
    .line 1585
    const-string v3, "dynamicPublished"

    .line 1586
    .line 1587
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    new-instance v3, Lkotlin/Pair;

    .line 1595
    .line 1596
    const-string v4, "pinnedUpdated"

    .line 1597
    .line 1598
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1599
    .line 1600
    .line 1601
    filled-new-array {v2, v3}, [Lkotlin/Pair;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v1

    .line 1605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1606
    .line 1607
    .line 1608
    const-string v0, "shortcut update was rejected; it will be retried after the next state change"

    .line 1609
    .line 1610
    invoke-static {v6, v0, v1}, Lnet/blip/libblip/Logger;->g(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1611
    .line 1612
    .line 1613
    goto/16 :goto_1b

    .line 1614
    .line 1615
    :goto_2a
    return-object v4

    .line 1616
    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1621
    .line 1622
    .line 1623
    invoke-static {}, Lio/sentry/d;->i()V

    .line 1624
    .line 1625
    .line 1626
    goto :goto_28
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2;

    .line 51
    .line 52
    invoke-direct {p1, p0, v3}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    iput v4, v0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$1;->o:I

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-ne p0, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method
