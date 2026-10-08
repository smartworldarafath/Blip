.class public abstract Lnet/blip/android/ui/components/DropdownMenuKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v8, p1

    .line 9
    .line 10
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v1, -0x13d4dcc2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    or-int/lit8 v1, v11, 0x6

    .line 19
    .line 20
    and-int/lit8 v2, v11, 0x30

    .line 21
    .line 22
    const/16 v3, 0x10

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v3

    .line 36
    :goto_0
    or-int/2addr v1, v2

    .line 37
    :cond_1
    and-int/lit8 v2, v1, 0x13

    .line 38
    .line 39
    const/16 v4, 0x12

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v12, 0x1

    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    move v2, v12

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v2, v5

    .line 48
    :goto_1
    and-int/lit8 v4, v1, 0x1

    .line 49
    .line 50
    invoke-virtual {v8, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 63
    .line 64
    iget-wide v6, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 65
    .line 66
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 71
    .line 72
    iget-wide v9, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 73
    .line 74
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sget-object v4, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 79
    .line 80
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    mul-float/2addr v4, v2

    .line 91
    invoke-static {v6, v7, v4}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 92
    .line 93
    .line 94
    move-result-wide v14

    .line 95
    const/high16 v19, 0x41400000    # 12.0f

    .line 96
    .line 97
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/16 v4, 0x36

    .line 102
    .line 103
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 104
    .line 105
    invoke-static {v2, v6, v8, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 110
    .line 111
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 120
    .line 121
    invoke-static {v8, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 126
    .line 127
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 131
    .line 132
    .line 133
    iget-boolean v10, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 134
    .line 135
    if-eqz v10, :cond_3

    .line 136
    .line 137
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 138
    .line 139
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 144
    .line 145
    .line 146
    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 147
    .line 148
    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 152
    .line 153
    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 161
    .line 162
    invoke-static {v8, v2, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 166
    .line 167
    .line 168
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 169
    .line 170
    invoke-static {v8, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    const v2, 0x66f26494

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 180
    .line 181
    .line 182
    const/16 v20, 0x0

    .line 183
    .line 184
    const/16 v21, 0xb

    .line 185
    .line 186
    const/16 v17, 0x0

    .line 187
    .line 188
    const/16 v18, 0x0

    .line 189
    .line 190
    move-object/from16 v16, v7

    .line 191
    .line 192
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 197
    .line 198
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 203
    .line 204
    iget-object v13, v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 205
    .line 206
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v16

    .line 210
    const/16 v24, 0x0

    .line 211
    .line 212
    const v25, 0xfffffc

    .line 213
    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const-wide/16 v19, 0x0

    .line 218
    .line 219
    const-wide/16 v21, 0x0

    .line 220
    .line 221
    const/16 v23, 0x0

    .line 222
    .line 223
    invoke-static/range {v13 .. v25}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    shr-int/lit8 v1, v1, 0x3

    .line 228
    .line 229
    and-int/lit8 v1, v1, 0xe

    .line 230
    .line 231
    or-int/lit8 v9, v1, 0x30

    .line 232
    .line 233
    const/16 v10, 0x1f8

    .line 234
    .line 235
    move-object v1, v2

    .line 236
    move-object v2, v3

    .line 237
    const/4 v3, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v6, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 250
    .line 251
    .line 252
    :goto_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-eqz v1, :cond_5

    .line 257
    .line 258
    new-instance v2, Lg6;

    .line 259
    .line 260
    invoke-direct {v2, v0, v11, v12}, Lg6;-><init>(Ljava/lang/String;II)V

    .line 261
    .line 262
    .line 263
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 264
    .line 265
    :cond_5
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v9, p3

    .line 10
    .line 11
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x607e77dd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    or-int/lit8 v0, p4, 0x6

    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_0
    or-int/2addr v0, v1

    .line 35
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v12, 0x100

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move v1, v12

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    and-int/lit16 v1, v0, 0x93

    .line 49
    .line 50
    const/16 v4, 0x92

    .line 51
    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x1

    .line 54
    if-eq v1, v4, :cond_2

    .line 55
    .line 56
    move v1, v14

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v1, v13

    .line 59
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 60
    .line 61
    invoke-virtual {v9, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_7

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/lang/String;

    .line 98
    .line 99
    and-int/lit16 v7, v0, 0x380

    .line 100
    .line 101
    if-ne v7, v12, :cond_3

    .line 102
    .line 103
    move v7, v14

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    move v7, v13

    .line 106
    :goto_4
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    or-int/2addr v7, v8

    .line 111
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    if-nez v7, :cond_4

    .line 116
    .line 117
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 118
    .line 119
    if-ne v8, v7, :cond_5

    .line 120
    .line 121
    :cond_4
    new-instance v8, Lp0;

    .line 122
    .line 123
    const/16 v7, 0xe

    .line 124
    .line 125
    invoke-direct {v8, v7, v3, v6}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 132
    .line 133
    new-instance v6, La6;

    .line 134
    .line 135
    invoke-direct {v6, v4, v14}, La6;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    const v4, -0x28ce3185

    .line 139
    .line 140
    .line 141
    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const v10, 0x30030

    .line 146
    .line 147
    .line 148
    const/16 v11, 0x1c

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v7, 0x0

    .line 152
    move-object v15, v8

    .line 153
    move-object v8, v4

    .line 154
    move-object v4, v15

    .line 155
    invoke-static/range {v4 .. v11}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    move-object v1, v5

    .line 160
    goto :goto_5

    .line 161
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 162
    .line 163
    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eqz v6, :cond_8

    .line 171
    .line 172
    new-instance v0, Lu;

    .line 173
    .line 174
    const/16 v5, 0x8

    .line 175
    .line 176
    move/from16 v4, p4

    .line 177
    .line 178
    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 179
    .line 180
    .line 181
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 182
    .line 183
    :cond_8
    return-void
.end method
