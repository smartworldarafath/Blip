.class public final synthetic Lm9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Landroidx/navigation/NavController;

.field public final synthetic p:Lnet/blip/libblip/Flavor;

.field public final synthetic q:Lnet/blip/libblip/PeerPickerViewModel;

.field public final synthetic r:Lkotlin/jvm/functions/Function1;

.field public final synthetic s:Z

.field public final synthetic t:Landroidx/compose/runtime/MutableState;

.field public final synthetic u:Lnet/blip/android/ui/util/NuancedPermissionState;

.field public final synthetic v:Lnet/blip/android/ui/util/NuancedPermissionState;

.field public final synthetic w:Z

.field public final synthetic x:Landroidx/compose/runtime/MutableState;

.field public final synthetic y:Landroidx/compose/runtime/MutableState;

.field public final synthetic z:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/MutableState;Lnet/blip/android/ui/util/NuancedPermissionState;Lnet/blip/android/ui/util/NuancedPermissionState;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm9;->j:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lm9;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lm9;->l:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lm9;->m:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    iput-object p5, p0, Lm9;->n:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p6, p0, Lm9;->o:Landroidx/navigation/NavController;

    .line 15
    .line 16
    iput-object p7, p0, Lm9;->p:Lnet/blip/libblip/Flavor;

    .line 17
    .line 18
    iput-object p8, p0, Lm9;->q:Lnet/blip/libblip/PeerPickerViewModel;

    .line 19
    .line 20
    iput-object p9, p0, Lm9;->r:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-boolean p10, p0, Lm9;->s:Z

    .line 23
    .line 24
    iput-object p11, p0, Lm9;->t:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    iput-object p12, p0, Lm9;->u:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 27
    .line 28
    iput-object p13, p0, Lm9;->v:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 29
    .line 30
    iput-boolean p14, p0, Lm9;->w:Z

    .line 31
    .line 32
    iput-object p15, p0, Lm9;->x:Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    move-object/from16 p1, p16

    .line 35
    .line 36
    iput-object p1, p0, Lm9;->y:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    move-object/from16 p1, p17

    .line 39
    .line 40
    iput-object p1, p0, Lm9;->z:Landroidx/compose/runtime/State;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

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
    and-int/lit8 v1, v3, 0x11

    .line 23
    .line 24
    const/16 v4, 0x10

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    if-eq v1, v4, :cond_0

    .line 29
    .line 30
    move v1, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v5

    .line 33
    :goto_0
    and-int/2addr v3, v6

    .line 34
    move-object v13, v2

    .line 35
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_9

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    const/16 v2, 0xa

    .line 46
    .line 47
    iget-object v3, v0, Lm9;->k:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lnet/blip/libblip/frontend/Transfer;

    .line 71
    .line 72
    iget-object v3, v3, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object v2, v0, Lm9;->j:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    const/4 v3, 0x6

    .line 81
    invoke-static {v2, v1, v13, v3}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->a(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Landroidx/compose/runtime/Composer;I)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 85
    .line 86
    const/high16 v2, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 93
    .line 94
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-wide v4, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 99
    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 118
    .line 119
    .line 120
    iget-boolean v7, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 121
    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 125
    .line 126
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 131
    .line 132
    .line 133
    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 134
    .line 135
    invoke-static {v13, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 139
    .line 140
    invoke-static {v13, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 148
    .line 149
    invoke-static {v13, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 153
    .line 154
    .line 155
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 156
    .line 157
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    new-instance v14, Ln9;

    .line 161
    .line 162
    iget-object v15, v0, Lm9;->q:Lnet/blip/libblip/PeerPickerViewModel;

    .line 163
    .line 164
    iget-object v11, v0, Lm9;->o:Landroidx/navigation/NavController;

    .line 165
    .line 166
    iget-object v9, v0, Lm9;->m:Lkotlinx/coroutines/CoroutineScope;

    .line 167
    .line 168
    iget-object v1, v0, Lm9;->r:Lkotlin/jvm/functions/Function1;

    .line 169
    .line 170
    iget-object v10, v0, Lm9;->n:Landroid/content/Context;

    .line 171
    .line 172
    iget-boolean v2, v0, Lm9;->s:Z

    .line 173
    .line 174
    iget-object v4, v0, Lm9;->t:Landroidx/compose/runtime/MutableState;

    .line 175
    .line 176
    move-object/from16 v18, v1

    .line 177
    .line 178
    move/from16 v20, v2

    .line 179
    .line 180
    move-object/from16 v21, v4

    .line 181
    .line 182
    move-object/from16 v17, v9

    .line 183
    .line 184
    move-object/from16 v19, v10

    .line 185
    .line 186
    move-object/from16 v16, v11

    .line 187
    .line 188
    invoke-direct/range {v14 .. v21}, Ln9;-><init>(Lnet/blip/libblip/PeerPickerViewModel;Landroidx/navigation/NavController;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroid/content/Context;ZLandroidx/compose/runtime/MutableState;)V

    .line 189
    .line 190
    .line 191
    move-object v1, v15

    .line 192
    move/from16 v19, v20

    .line 193
    .line 194
    move-object/from16 v2, v21

    .line 195
    .line 196
    const v4, -0x21f05c13

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v14, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    new-instance v16, Li9;

    .line 204
    .line 205
    const/16 v21, 0x1

    .line 206
    .line 207
    iget-object v5, v0, Lm9;->u:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 208
    .line 209
    iget-object v7, v0, Lm9;->v:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 210
    .line 211
    iget-boolean v8, v0, Lm9;->w:Z

    .line 212
    .line 213
    move-object/from16 v17, v5

    .line 214
    .line 215
    move-object/from16 v18, v7

    .line 216
    .line 217
    move/from16 v20, v8

    .line 218
    .line 219
    invoke-direct/range {v16 .. v21}, Li9;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V

    .line 220
    .line 221
    .line 222
    move-object/from16 v5, v16

    .line 223
    .line 224
    const v7, -0x354055d2    # -6280471.0f

    .line 225
    .line 226
    .line 227
    invoke-static {v7, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    or-int/2addr v7, v8

    .line 240
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    or-int/2addr v7, v8

    .line 245
    iget-object v12, v0, Lm9;->p:Lnet/blip/libblip/Flavor;

    .line 246
    .line 247
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    or-int/2addr v7, v8

    .line 252
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    iget-object v14, v0, Lm9;->x:Landroidx/compose/runtime/MutableState;

    .line 257
    .line 258
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 259
    .line 260
    if-nez v7, :cond_4

    .line 261
    .line 262
    if-ne v8, v15, :cond_3

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_3
    move-object v7, v8

    .line 266
    move-object v8, v14

    .line 267
    goto :goto_4

    .line 268
    :cond_4
    :goto_3
    new-instance v7, Lnet/blip/android/ui/home/e;

    .line 269
    .line 270
    move-object v8, v14

    .line 271
    invoke-direct/range {v7 .. v12}, Lnet/blip/android/ui/home/e;-><init>(Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :goto_4
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 278
    .line 279
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    if-ne v14, v15, :cond_5

    .line 284
    .line 285
    new-instance v14, Li2;

    .line 286
    .line 287
    const/4 v6, 0x7

    .line 288
    invoke-direct {v14, v8, v6}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_5
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 295
    .line 296
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    or-int/2addr v6, v8

    .line 305
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    or-int/2addr v6, v8

    .line 310
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    if-nez v6, :cond_6

    .line 315
    .line 316
    if-ne v8, v15, :cond_7

    .line 317
    .line 318
    :cond_6
    new-instance v8, Lnet/blip/android/ui/home/a;

    .line 319
    .line 320
    invoke-direct {v8, v9, v10, v12}, Lnet/blip/android/ui/home/a;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lnet/blip/libblip/Flavor;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 327
    .line 328
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    if-ne v6, v15, :cond_8

    .line 333
    .line 334
    new-instance v6, Li2;

    .line 335
    .line 336
    iget-object v9, v0, Lm9;->y:Landroidx/compose/runtime/MutableState;

    .line 337
    .line 338
    invoke-direct {v6, v9, v3}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 345
    .line 346
    const v16, 0xc301b0

    .line 347
    .line 348
    .line 349
    move-object v3, v11

    .line 350
    move-object v11, v7

    .line 351
    const/4 v7, 0x0

    .line 352
    iget-object v10, v0, Lm9;->l:Ljava/util/List;

    .line 353
    .line 354
    move-object v9, v5

    .line 355
    move-object v15, v13

    .line 356
    move-object v12, v14

    .line 357
    move-object v14, v6

    .line 358
    move-object v13, v8

    .line 359
    move-object v8, v4

    .line 360
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/home/TransferGridKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 361
    .line 362
    .line 363
    move-object v13, v15

    .line 364
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Ljava/lang/Boolean;

    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    const/4 v4, 0x0

    .line 375
    const/4 v5, 0x3

    .line 376
    invoke-static {v4, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-static {v4, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    new-instance v4, Lnet/blip/android/ui/home/b;

    .line 385
    .line 386
    iget-object v0, v0, Lm9;->z:Landroidx/compose/runtime/State;

    .line 387
    .line 388
    invoke-direct {v4, v2, v0, v3, v1}, Lnet/blip/android/ui/home/b;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lnet/blip/libblip/PeerPickerViewModel;)V

    .line 389
    .line 390
    .line 391
    const v0, -0x4225d9da

    .line 392
    .line 393
    .line 394
    invoke-static {v0, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    const v14, 0x30d80

    .line 399
    .line 400
    .line 401
    const/4 v8, 0x0

    .line 402
    const/4 v11, 0x0

    .line 403
    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x1

    .line 407
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 412
    .line 413
    .line 414
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 415
    .line 416
    return-object v0
.end method
