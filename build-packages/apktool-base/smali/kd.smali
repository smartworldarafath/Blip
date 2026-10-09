.class public final synthetic Lkd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Z

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkd;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lkd;->k:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lkd;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lkd;->m:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-boolean p5, p0, Lkd;->n:Z

    .line 13
    .line 14
    iput-object p6, p0, Lkd;->o:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p7, p0, Lkd;->p:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iput-object p8, p0, Lkd;->q:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lnet/blip/android/ui/home/PeerTrayItem;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    and-int/lit8 v4, v3, 0x8

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    move-object v4, v2

    .line 32
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v4, v2

    .line 40
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :goto_0
    if-eqz v4, :cond_1

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v4, 0x2

    .line 51
    :goto_1
    or-int/2addr v3, v4

    .line 52
    :cond_2
    and-int/lit8 v4, v3, 0x13

    .line 53
    .line 54
    const/16 v6, 0x12

    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    if-eq v4, v6, :cond_3

    .line 59
    .line 60
    move v4, v7

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v8

    .line 63
    :goto_2
    and-int/lit8 v6, v3, 0x1

    .line 64
    .line 65
    move-object v14, v2

    .line 66
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 67
    .line 68
    invoke-virtual {v14, v6, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_17

    .line 73
    .line 74
    instance-of v2, v1, Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToYourDevices;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    const v1, 0x7cb0f4fa

    .line 79
    .line 80
    .line 81
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Lnet/blip/shared/AvatarTheme;

    .line 91
    .line 92
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 93
    .line 94
    invoke-virtual {v1, v14}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v10, v1, Lnet/blip/shared/AvatarTheme$Appearance;->f:Lnet/blip/shared/Paintable;

    .line 99
    .line 100
    const v1, 0x7f08013e

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v14}, Landroidx/compose/ui/res/VectorResources_androidKt;->b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const-string v12, "Send to your devices"

    .line 108
    .line 109
    const/16 v15, 0xc00

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    iget-object v13, v0, Lkd;->j:Lkotlin/jvm/functions/Function0;

    .line 113
    .line 114
    invoke-static/range {v9 .. v15}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/Paintable;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_b

    .line 121
    .line 122
    :cond_4
    instance-of v2, v1, Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToOtherPeople;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    const v1, 0x7cb7bdd3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lnet/blip/shared/AvatarTheme;

    .line 139
    .line 140
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 141
    .line 142
    invoke-virtual {v1, v14}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v10, v1, Lnet/blip/shared/AvatarTheme$Appearance;->i:Lnet/blip/shared/Paintable;

    .line 147
    .line 148
    const v1, 0x7f080140

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v14}, Landroidx/compose/ui/res/VectorResources_androidKt;->b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    const-string v12, "Send to other people"

    .line 156
    .line 157
    const/16 v15, 0xc00

    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    iget-object v13, v0, Lkd;->k:Lkotlin/jvm/functions/Function0;

    .line 161
    .line 162
    invoke-static/range {v9 .. v15}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/Paintable;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_5
    instance-of v2, v1, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 171
    .line 172
    if-eqz v2, :cond_16

    .line 173
    .line 174
    const v2, 0x7cbe8f26

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 178
    .line 179
    .line 180
    move-object v2, v1

    .line 181
    check-cast v2, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 182
    .line 183
    iget-object v10, v2, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 184
    .line 185
    iget-object v2, v0, Lkd;->l:Lkotlin/jvm/functions/Function1;

    .line 186
    .line 187
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    and-int/lit8 v6, v3, 0xe

    .line 192
    .line 193
    if-eq v6, v5, :cond_7

    .line 194
    .line 195
    and-int/lit8 v9, v3, 0x8

    .line 196
    .line 197
    if-eqz v9, :cond_6

    .line 198
    .line 199
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-eqz v9, :cond_6

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move v9, v8

    .line 207
    goto :goto_4

    .line 208
    :cond_7
    :goto_3
    move v9, v7

    .line 209
    :goto_4
    or-int/2addr v4, v9

    .line 210
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 215
    .line 216
    if-nez v4, :cond_8

    .line 217
    .line 218
    if-ne v9, v11, :cond_9

    .line 219
    .line 220
    :cond_8
    new-instance v9, Lp0;

    .line 221
    .line 222
    const/16 v4, 0x19

    .line 223
    .line 224
    invoke-direct {v9, v4, v2, v1}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 231
    .line 232
    iget-object v2, v0, Lkd;->m:Lkotlin/jvm/functions/Function2;

    .line 233
    .line 234
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eq v6, v5, :cond_b

    .line 239
    .line 240
    and-int/lit8 v12, v3, 0x8

    .line 241
    .line 242
    if-eqz v12, :cond_a

    .line 243
    .line 244
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-eqz v12, :cond_a

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_a
    move v12, v8

    .line 252
    goto :goto_6

    .line 253
    :cond_b
    :goto_5
    move v12, v7

    .line 254
    :goto_6
    or-int/2addr v4, v12

    .line 255
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    if-nez v4, :cond_c

    .line 260
    .line 261
    if-ne v12, v11, :cond_d

    .line 262
    .line 263
    :cond_c
    new-instance v12, Lec;

    .line 264
    .line 265
    const/4 v4, 0x5

    .line 266
    invoke-direct {v12, v4, v2, v1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_d
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 273
    .line 274
    iget-object v2, v0, Lkd;->o:Landroid/content/Context;

    .line 275
    .line 276
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eq v6, v5, :cond_f

    .line 281
    .line 282
    and-int/lit8 v13, v3, 0x8

    .line 283
    .line 284
    if-eqz v13, :cond_e

    .line 285
    .line 286
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    if-eqz v13, :cond_e

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_e
    move v13, v8

    .line 294
    goto :goto_8

    .line 295
    :cond_f
    :goto_7
    move v13, v7

    .line 296
    :goto_8
    or-int/2addr v4, v13

    .line 297
    iget-object v13, v0, Lkd;->p:Lkotlin/jvm/functions/Function1;

    .line 298
    .line 299
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v15

    .line 303
    or-int/2addr v4, v15

    .line 304
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v15

    .line 308
    if-nez v4, :cond_10

    .line 309
    .line 310
    if-ne v15, v11, :cond_11

    .line 311
    .line 312
    :cond_10
    new-instance v15, Lnd;

    .line 313
    .line 314
    invoke-direct {v15, v2, v1, v13, v8}, Lnd;-><init>(Landroid/content/Context;Lnet/blip/android/ui/home/PeerTrayItem;Lkotlin/jvm/functions/Function1;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_11
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 321
    .line 322
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eq v6, v5, :cond_13

    .line 327
    .line 328
    and-int/lit8 v3, v3, 0x8

    .line 329
    .line 330
    if-eqz v3, :cond_12

    .line 331
    .line 332
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_12

    .line 337
    .line 338
    goto :goto_9

    .line 339
    :cond_12
    move v3, v8

    .line 340
    goto :goto_a

    .line 341
    :cond_13
    :goto_9
    move v3, v7

    .line 342
    :goto_a
    or-int/2addr v3, v4

    .line 343
    iget-object v4, v0, Lkd;->q:Lkotlin/jvm/functions/Function1;

    .line 344
    .line 345
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    or-int/2addr v3, v5

    .line 350
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    if-nez v3, :cond_14

    .line 355
    .line 356
    if-ne v5, v11, :cond_15

    .line 357
    .line 358
    :cond_14
    new-instance v5, Lnd;

    .line 359
    .line 360
    invoke-direct {v5, v2, v1, v4, v7}, Lnd;-><init>(Landroid/content/Context;Lnet/blip/android/ui/home/PeerTrayItem;Lkotlin/jvm/functions/Function1;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 367
    .line 368
    const/16 v17, 0x0

    .line 369
    .line 370
    move-object v11, v9

    .line 371
    const/4 v9, 0x0

    .line 372
    iget-boolean v13, v0, Lkd;->n:Z

    .line 373
    .line 374
    move-object/from16 v16, v14

    .line 375
    .line 376
    move-object v14, v15

    .line 377
    move-object v15, v5

    .line 378
    invoke-static/range {v9 .. v17}, Lnet/blip/android/ui/home/PeerTrayKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 379
    .line 380
    .line 381
    move-object/from16 v14, v16

    .line 382
    .line 383
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_16
    const v0, 0x6f608887

    .line 388
    .line 389
    .line 390
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 394
    .line 395
    .line 396
    invoke-static {}, Lk8;->e()V

    .line 397
    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    return-object v0

    .line 401
    :cond_17
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 402
    .line 403
    .line 404
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 405
    .line 406
    return-object v0
.end method
