.class public abstract Lnet/blip/android/ui/components/TextButtonKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v15, p5

    .line 7
    .line 8
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x59258010

    .line 11
    .line 12
    .line 13
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v0, v6, 0x6

    .line 17
    .line 18
    and-int/lit8 v1, v6, 0x30

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v1, 0x10

    .line 34
    .line 35
    :goto_0
    or-int/2addr v0, v1

    .line 36
    :cond_1
    and-int/lit16 v1, v6, 0x180

    .line 37
    .line 38
    move-wide/from16 v3, p2

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v15, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x100

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v1, 0x80

    .line 52
    .line 53
    :goto_1
    or-int/2addr v0, v1

    .line 54
    :cond_3
    and-int/lit16 v1, v6, 0xc00

    .line 55
    .line 56
    move-object/from16 v11, p4

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    const/16 v1, 0x800

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/16 v1, 0x400

    .line 70
    .line 71
    :goto_2
    or-int/2addr v0, v1

    .line 72
    :cond_5
    and-int/lit16 v1, v0, 0x493

    .line 73
    .line 74
    const/16 v5, 0x492

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x1

    .line 78
    if-eq v1, v5, :cond_6

    .line 79
    .line 80
    move v1, v14

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    move v1, v13

    .line 83
    :goto_3
    and-int/lit8 v5, v0, 0x1

    .line 84
    .line 85
    invoke-virtual {v15, v5, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    const/16 v1, 0x21

    .line 92
    .line 93
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 98
    .line 99
    invoke-static {v5, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    new-instance v10, Landroidx/compose/ui/semantics/Role;

    .line 104
    .line 105
    invoke-direct {v10, v13}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 106
    .line 107
    .line 108
    const/16 v12, 0xb

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/high16 v7, 0x41400000    # 12.0f

    .line 117
    .line 118
    const/high16 v8, 0x40800000    # 4.0f

    .line 119
    .line 120
    invoke-static {v1, v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 125
    .line 126
    invoke-static {v7, v13}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    iget-wide v8, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 131
    .line 132
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 150
    .line 151
    .line 152
    iget-boolean v10, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 153
    .line 154
    if-eqz v10, :cond_7

    .line 155
    .line 156
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 157
    .line 158
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 163
    .line 164
    .line 165
    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 166
    .line 167
    invoke-static {v15, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 171
    .line 172
    invoke-static {v15, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 180
    .line 181
    invoke-static {v15, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 185
    .line 186
    .line 187
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 188
    .line 189
    invoke-static {v15, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 193
    .line 194
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 199
    .line 200
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 201
    .line 202
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 209
    .line 210
    iget-wide v7, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 211
    .line 212
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 213
    .line 214
    const/16 v27, 0x0

    .line 215
    .line 216
    const v28, 0xfffff8

    .line 217
    .line 218
    .line 219
    const-wide/16 v22, 0x0

    .line 220
    .line 221
    const-wide/16 v24, 0x0

    .line 222
    .line 223
    const/16 v26, 0x0

    .line 224
    .line 225
    move-object/from16 v16, v1

    .line 226
    .line 227
    move-wide/from16 v19, v3

    .line 228
    .line 229
    move-wide/from16 v17, v7

    .line 230
    .line 231
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    shr-int/lit8 v0, v0, 0x3

    .line 236
    .line 237
    and-int/lit8 v16, v0, 0xe

    .line 238
    .line 239
    const/16 v17, 0x1fa

    .line 240
    .line 241
    const/4 v8, 0x0

    .line 242
    const/4 v10, 0x0

    .line 243
    const/4 v11, 0x0

    .line 244
    const/4 v12, 0x0

    .line 245
    const/4 v13, 0x0

    .line 246
    move v0, v14

    .line 247
    const/4 v14, 0x0

    .line 248
    move-object v7, v2

    .line 249
    invoke-static/range {v7 .. v17}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 253
    .line 254
    .line 255
    move-object v1, v5

    .line 256
    goto :goto_5

    .line 257
    :cond_8
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 258
    .line 259
    .line 260
    move-object/from16 v1, p0

    .line 261
    .line 262
    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    if-eqz v7, :cond_9

    .line 267
    .line 268
    new-instance v0, Lsg;

    .line 269
    .line 270
    move-object/from16 v2, p1

    .line 271
    .line 272
    move-wide/from16 v3, p2

    .line 273
    .line 274
    move-object/from16 v5, p4

    .line 275
    .line 276
    invoke-direct/range {v0 .. v6}, Lsg;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLkotlin/jvm/functions/Function0;I)V

    .line 277
    .line 278
    .line 279
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 280
    .line 281
    :cond_9
    return-void
.end method
