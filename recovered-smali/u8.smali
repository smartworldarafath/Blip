.class public final synthetic Lu8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Landroidx/compose/runtime/State;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu8;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu8;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lu8;->l:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iput-object p3, p0, Lu8;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lu8;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lu8;->p:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p6, p0, Lu8;->q:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p7, p0, Lu8;->k:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function0;Lnet/blip/libblip/TransferChoosePeerViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lu8;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8;->m:Ljava/lang/Object;

    iput-object p2, p0, Lu8;->n:Ljava/lang/Object;

    iput-object p3, p0, Lu8;->o:Ljava/lang/Object;

    iput-object p4, p0, Lu8;->k:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lu8;->l:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lu8;->p:Ljava/lang/Object;

    iput-object p7, p0, Lu8;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu8;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lu8;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Lu8;->p:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Lu8;->o:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lu8;->n:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Lu8;->m:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v10, 0x1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v8, Lnet/blip/libblip/PeerPickerViewModel;

    .line 24
    .line 25
    move-object/from16 v17, v7

    .line 26
    .line 27
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    check-cast v6, Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 30
    .line 31
    check-cast v5, Landroidx/compose/runtime/State;

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/runtime/State;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v7, p2

    .line 40
    .line 41
    check-cast v7, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    and-int/lit8 v11, v7, 0x3

    .line 48
    .line 49
    if-eq v11, v9, :cond_0

    .line 50
    .line 51
    move v11, v10

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v11, v3

    .line 54
    :goto_0
    and-int/2addr v7, v10

    .line 55
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v1, v7, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_7

    .line 62
    .line 63
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    const/high16 v11, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-static {v7, v11}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 72
    .line 73
    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 74
    .line 75
    invoke-static {v11, v12, v1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 80
    .line 81
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-static {v1, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 94
    .line 95
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 99
    .line 100
    .line 101
    iget-boolean v14, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 102
    .line 103
    if-eqz v14, :cond_1

    .line 104
    .line 105
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 106
    .line 107
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 112
    .line 113
    .line 114
    :goto_1
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 115
    .line 116
    invoke-static {v1, v11, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 120
    .line 121
    invoke-static {v1, v13, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 129
    .line 130
    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 134
    .line 135
    .line 136
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 137
    .line 138
    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v0, Lu8;->k:Landroidx/compose/runtime/MutableState;

    .line 142
    .line 143
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    move-object v12, v7

    .line 148
    check-cast v12, Lnet/blip/libblip/frontend/Transfer;

    .line 149
    .line 150
    iget-object v0, v0, Lu8;->l:Landroidx/compose/runtime/State;

    .line 151
    .line 152
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Lnet/blip/libblip/PeerPickerContent;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    instance-of v7, v5, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 172
    .line 173
    if-eqz v7, :cond_2

    .line 174
    .line 175
    check-cast v5, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 176
    .line 177
    iget-object v5, v5, Lnet/blip/libblip/PeerPickerContent$SearchResults;->c:Lnet/blip/libblip/frontend/Search$Status;

    .line 178
    .line 179
    sget-object v7, Lnet/blip/libblip/frontend/Search$Status;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 180
    .line 181
    if-ne v5, v7, :cond_2

    .line 182
    .line 183
    move v14, v10

    .line 184
    goto :goto_2

    .line 185
    :cond_2
    move v14, v3

    .line 186
    :goto_2
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    move-object v15, v4

    .line 191
    check-cast v15, Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 202
    .line 203
    if-nez v4, :cond_3

    .line 204
    .line 205
    if-ne v5, v7, :cond_4

    .line 206
    .line 207
    :cond_3
    new-instance v5, Le9;

    .line 208
    .line 209
    invoke-direct {v5, v8, v9}, Le9;-><init>(Lnet/blip/libblip/PeerPickerViewModel;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    move-object/from16 v16, v5

    .line 216
    .line 217
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    const/16 v19, 0x0

    .line 220
    .line 221
    const/4 v11, 0x0

    .line 222
    move-object/from16 v18, v1

    .line 223
    .line 224
    invoke-static/range {v11 .. v19}, Lnet/blip/android/ui/transfer/TransferHeaderKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    if-nez v4, :cond_5

    .line 246
    .line 247
    if-ne v5, v7, :cond_6

    .line 248
    .line 249
    :cond_5
    new-instance v5, Loh;

    .line 250
    .line 251
    invoke-direct {v5, v6, v10}, Loh;-><init>(Lnet/blip/libblip/TransferChoosePeerViewModel;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 258
    .line 259
    invoke-static {v0, v8, v5, v1, v3}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->a(ZLnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 267
    .line 268
    .line 269
    :goto_3
    return-object v2

    .line 270
    :pswitch_0
    move-object v12, v8

    .line 271
    check-cast v12, Landroidx/navigation/NavHostController;

    .line 272
    .line 273
    move-object v14, v7

    .line 274
    check-cast v14, Ljava/util/List;

    .line 275
    .line 276
    move-object v15, v6

    .line 277
    check-cast v15, Landroidx/compose/foundation/pager/PagerState;

    .line 278
    .line 279
    move-object/from16 v16, v5

    .line 280
    .line 281
    check-cast v16, Landroid/content/Context;

    .line 282
    .line 283
    move-object/from16 v17, v4

    .line 284
    .line 285
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 286
    .line 287
    move-object/from16 v1, p1

    .line 288
    .line 289
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 290
    .line 291
    move-object/from16 v4, p2

    .line 292
    .line 293
    check-cast v4, Ljava/lang/Integer;

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    and-int/lit8 v5, v4, 0x3

    .line 300
    .line 301
    if-eq v5, v9, :cond_8

    .line 302
    .line 303
    move v3, v10

    .line 304
    :cond_8
    and-int/2addr v4, v10

    .line 305
    move-object v9, v1

    .line 306
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 307
    .line 308
    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_9

    .line 313
    .line 314
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 315
    .line 316
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 321
    .line 322
    iget-wide v5, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 323
    .line 324
    new-instance v11, Lv8;

    .line 325
    .line 326
    iget-object v13, v0, Lu8;->l:Landroidx/compose/runtime/State;

    .line 327
    .line 328
    invoke-direct/range {v11 .. v17}, Lv8;-><init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 329
    .line 330
    .line 331
    const v1, 0x3753546d

    .line 332
    .line 333
    .line 334
    invoke-static {v1, v11, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    move-object/from16 v17, v16

    .line 339
    .line 340
    move-object/from16 v16, v13

    .line 341
    .line 342
    new-instance v13, Lr7;

    .line 343
    .line 344
    const/16 v19, 0x1

    .line 345
    .line 346
    iget-object v0, v0, Lu8;->k:Landroidx/compose/runtime/MutableState;

    .line 347
    .line 348
    move-object/from16 v18, v0

    .line 349
    .line 350
    invoke-direct/range {v13 .. v19}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 351
    .line 352
    .line 353
    const v0, 0x70e0a62e

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v13, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    const/16 v10, 0x1b0

    .line 361
    .line 362
    const/4 v11, 0x0

    .line 363
    invoke-static/range {v5 .. v11}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 368
    .line 369
    .line 370
    :goto_4
    return-object v2

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
