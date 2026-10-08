.class public abstract Landroidx/compose/ui/window/AndroidDialog_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    move-object/from16 v9, p3

    .line 10
    .line 11
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x3145f7ad

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v8, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v8

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v8

    .line 35
    :goto_1
    and-int/lit8 v3, v8, 0x30

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v3, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v3

    .line 51
    :cond_3
    and-int/lit16 v3, v8, 0x180

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    const/16 v3, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v3, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v3

    .line 67
    :cond_5
    move v12, v0

    .line 68
    and-int/lit16 v0, v12, 0x93

    .line 69
    .line 70
    const/16 v3, 0x92

    .line 71
    .line 72
    const/4 v14, 0x0

    .line 73
    if-eq v0, v3, :cond_6

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    move v0, v14

    .line 78
    :goto_4
    and-int/lit8 v3, v12, 0x1

    .line 79
    .line 80
    invoke-virtual {v9, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_10

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-object v3, v0

    .line 93
    check-cast v3, Landroid/view/View;

    .line 94
    .line 95
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 96
    .line 97
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v5, v0

    .line 102
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 103
    .line 104
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 105
    .line 106
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    move-object v4, v0

    .line 111
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 112
    .line 113
    invoke-static {v9}, Landroidx/compose/runtime/ComposablesKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    invoke-static {v7, v9}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-array v6, v14, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 128
    .line 129
    if-ne v11, v10, :cond_7

    .line 130
    .line 131
    new-instance v11, Ln;

    .line 132
    .line 133
    const/16 v13, 0x8

    .line 134
    .line 135
    invoke-direct {v11, v13}, Ln;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 142
    .line 143
    invoke-static {v6, v11, v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/util/UUID;

    .line 148
    .line 149
    iget v11, v2, Landroidx/compose/ui/window/DialogProperties;->g:I

    .line 150
    .line 151
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v16

    .line 159
    or-int v13, v13, v16

    .line 160
    .line 161
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    or-int/2addr v11, v13

    .line 166
    const/4 v13, 0x0

    .line 167
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    or-int/2addr v11, v13

    .line 172
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    if-nez v11, :cond_8

    .line 177
    .line 178
    if-ne v13, v10, :cond_9

    .line 179
    .line 180
    :cond_8
    move-object v11, v0

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    const/4 v11, 0x1

    .line 183
    goto :goto_6

    .line 184
    :goto_5
    new-instance v0, Landroidx/compose/ui/window/DialogWrapper;

    .line 185
    .line 186
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 187
    .line 188
    .line 189
    new-instance v3, La1;

    .line 190
    .line 191
    invoke-direct {v3, v11, v14}, La1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 192
    .line 193
    .line 194
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 195
    .line 196
    const v6, -0x4fce98d3

    .line 197
    .line 198
    .line 199
    const/4 v11, 0x1

    .line 200
    invoke-direct {v5, v6, v11, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 201
    .line 202
    .line 203
    iget-object v3, v0, Landroidx/compose/ui/window/DialogWrapper;->r:Landroidx/compose/ui/window/DialogLayout;

    .line 204
    .line 205
    invoke-virtual {v3, v15}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 206
    .line 207
    .line 208
    iget-object v6, v3, Landroidx/compose/ui/window/DialogLayout;->u:Landroidx/compose/runtime/MutableState;

    .line 209
    .line 210
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 211
    .line 212
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iput-boolean v11, v3, Landroidx/compose/ui/window/DialogLayout;->y:Z

    .line 216
    .line 217
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AbstractComposeView;->d()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    move-object v13, v0

    .line 224
    :goto_6
    check-cast v13, Landroidx/compose/ui/window/DialogWrapper;

    .line 225
    .line 226
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    if-ne v3, v10, :cond_b

    .line 237
    .line 238
    :cond_a
    new-instance v3, Landroidx/compose/ui/window/a;

    .line 239
    .line 240
    invoke-direct {v3, v13, v14}, Landroidx/compose/ui/window/a;-><init>(Landroidx/compose/ui/window/DialogWrapper;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 247
    .line 248
    invoke-static {v13, v3, v9}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    and-int/lit8 v3, v12, 0xe

    .line 256
    .line 257
    const/4 v5, 0x4

    .line 258
    if-ne v3, v5, :cond_c

    .line 259
    .line 260
    move v3, v11

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    move v3, v14

    .line 263
    :goto_7
    or-int/2addr v0, v3

    .line 264
    and-int/lit8 v3, v12, 0x70

    .line 265
    .line 266
    const/16 v5, 0x20

    .line 267
    .line 268
    if-ne v3, v5, :cond_d

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_d
    move v11, v14

    .line 272
    :goto_8
    or-int/2addr v0, v11

    .line 273
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    or-int/2addr v0, v3

    .line 282
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-nez v0, :cond_e

    .line 287
    .line 288
    if-ne v3, v10, :cond_f

    .line 289
    .line 290
    :cond_e
    new-instance v3, Landroidx/compose/ui/window/b;

    .line 291
    .line 292
    invoke-direct {v3, v13, v1, v2, v4}, Landroidx/compose/ui/window/b;-><init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 299
    .line 300
    invoke-static {v3, v9}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_10
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 305
    .line 306
    .line 307
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    if-eqz v6, :cond_11

    .line 312
    .line 313
    new-instance v0, Lb1;

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    move-object v3, v7

    .line 317
    move v4, v8

    .line 318
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 319
    .line 320
    .line 321
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 322
    .line 323
    :cond_11
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x4100086b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit8 v1, v0, 0x13

    .line 32
    .line 33
    const/16 v2, 0x12

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x3

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 55
    .line 56
    if-ne v1, v4, :cond_3

    .line 57
    .line 58
    sget-object v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;->a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 64
    .line 65
    shr-int/lit8 v4, v0, 0x3

    .line 66
    .line 67
    and-int/lit8 v4, v4, 0xe

    .line 68
    .line 69
    or-int/lit16 v4, v4, 0x180

    .line 70
    .line 71
    shl-int/2addr v0, v2

    .line 72
    and-int/lit8 v0, v0, 0x70

    .line 73
    .line 74
    or-int/2addr v0, v4

    .line 75
    iget-wide v4, p2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {p2, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    shl-int/lit8 v0, v0, 0x6

    .line 95
    .line 96
    and-int/lit16 v0, v0, 0x380

    .line 97
    .line 98
    or-int/lit8 v0, v0, 0x6

    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 101
    .line 102
    .line 103
    iget-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 104
    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 108
    .line 109
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 114
    .line 115
    .line 116
    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 117
    .line 118
    invoke-static {p2, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 122
    .line 123
    invoke-static {p2, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 131
    .line 132
    invoke-static {p2, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 139
    .line 140
    invoke-static {p2, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    shr-int/lit8 v0, v0, 0x6

    .line 144
    .line 145
    and-int/lit8 v0, v0, 0xe

    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_6

    .line 166
    .line 167
    new-instance v0, La0;

    .line 168
    .line 169
    invoke-direct {v0, p0, p1, p3, v2}, La0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;II)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 173
    .line 174
    :cond_6
    return-void
.end method
