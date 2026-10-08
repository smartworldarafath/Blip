.class public abstract Lnet/blip/shared/ParagraphsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, -0x7a43e572

    .line 9
    .line 10
    .line 11
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    and-int/lit8 v0, p8, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p7, 0x6

    .line 19
    .line 20
    move v2, v1

    .line 21
    move-object/from16 v1, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v1, p7, 0x6

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    move-object/from16 v1, p0

    .line 29
    .line 30
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    :goto_0
    or-int v2, p7, v2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object/from16 v1, p0

    .line 43
    .line 44
    move/from16 v2, p7

    .line 45
    .line 46
    :goto_1
    const/16 v3, 0x30

    .line 47
    .line 48
    or-int/2addr v2, v3

    .line 49
    move-object/from16 v12, p2

    .line 50
    .line 51
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    const/16 v4, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/16 v4, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v2, v4

    .line 63
    move-object/from16 v13, p3

    .line 64
    .line 65
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    const/16 v4, 0x800

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v4, 0x400

    .line 75
    .line 76
    :goto_3
    or-int v11, v2, v4

    .line 77
    .line 78
    and-int/lit16 v2, v11, 0x2493

    .line 79
    .line 80
    const/16 v4, 0x2492

    .line 81
    .line 82
    const/4 v14, 0x0

    .line 83
    const/4 v15, 0x1

    .line 84
    if-eq v2, v4, :cond_5

    .line 85
    .line 86
    move v2, v15

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    move v2, v14

    .line 89
    :goto_4
    and-int/lit8 v4, v11, 0x1

    .line 90
    .line 91
    invoke-virtual {v8, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_9

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    move-object v0, v1

    .line 103
    :goto_5
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 104
    .line 105
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 110
    .line 111
    move-wide/from16 v4, p4

    .line 112
    .line 113
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/unit/FontScaling;->E(J)F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 122
    .line 123
    invoke-static {v1, v2, v8, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 128
    .line 129
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v8, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 147
    .line 148
    .line 149
    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 150
    .line 151
    if-eqz v9, :cond_7

    .line 152
    .line 153
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 160
    .line 161
    .line 162
    :goto_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 163
    .line 164
    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 168
    .line 169
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 177
    .line 178
    invoke-static {v8, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 182
    .line 183
    .line 184
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 185
    .line 186
    invoke-static {v8, v7, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    const v1, -0x7aec7c78

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {v12}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v16

    .line 203
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Ljava/lang/String;

    .line 214
    .line 215
    shr-int/lit8 v3, v11, 0x3

    .line 216
    .line 217
    and-int/lit16 v9, v3, 0x380

    .line 218
    .line 219
    const/16 v10, 0x1fa

    .line 220
    .line 221
    move-object v3, v0

    .line 222
    move-object v0, v1

    .line 223
    const/4 v1, 0x0

    .line 224
    move-object v6, v3

    .line 225
    const/4 v3, 0x0

    .line 226
    const/4 v4, 0x0

    .line 227
    const/4 v5, 0x0

    .line 228
    move-object v7, v6

    .line 229
    const/4 v6, 0x0

    .line 230
    move-object/from16 v17, v7

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    move-object/from16 v18, v13

    .line 234
    .line 235
    move-object v13, v2

    .line 236
    move-object/from16 v2, v18

    .line 237
    .line 238
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 239
    .line 240
    .line 241
    move-wide/from16 v4, p4

    .line 242
    .line 243
    move-object v2, v13

    .line 244
    move-object/from16 v0, v17

    .line 245
    .line 246
    move-object/from16 v13, p3

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_8
    move-object/from16 v17, v0

    .line 250
    .line 251
    move-object v13, v2

    .line 252
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 256
    .line 257
    .line 258
    move-object v11, v13

    .line 259
    move-object/from16 v10, v17

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 263
    .line 264
    .line 265
    move-object/from16 v11, p1

    .line 266
    .line 267
    move-object v10, v1

    .line 268
    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_a

    .line 273
    .line 274
    new-instance v9, Lad;

    .line 275
    .line 276
    move-object/from16 v13, p3

    .line 277
    .line 278
    move-wide/from16 v14, p4

    .line 279
    .line 280
    move/from16 v16, p7

    .line 281
    .line 282
    move/from16 v17, p8

    .line 283
    .line 284
    invoke-direct/range {v9 .. v17}, Lad;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JII)V

    .line 285
    .line 286
    .line 287
    iput-object v9, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 288
    .line 289
    :cond_a
    return-void
.end method
