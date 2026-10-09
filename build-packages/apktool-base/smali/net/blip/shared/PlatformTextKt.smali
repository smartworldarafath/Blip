.class public abstract Lnet/blip/shared/PlatformTextKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;IZIILandroidx/compose/runtime/Composer;I)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v13, p8

    .line 9
    .line 10
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x3c620b1f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x4

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p9, v0

    .line 29
    .line 30
    or-int/lit8 v0, v0, 0x30

    .line 31
    .line 32
    move-object/from16 v7, p2

    .line 33
    .line 34
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/16 v5, 0x100

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    move v3, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v3, 0x80

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v3

    .line 47
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v6, 0x800

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    move v3, v6

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v3, 0x400

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v3

    .line 60
    const v3, 0x36000

    .line 61
    .line 62
    .line 63
    or-int/2addr v0, v3

    .line 64
    move/from16 v10, p6

    .line 65
    .line 66
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const/high16 v3, 0x100000

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/high16 v3, 0x80000

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v3

    .line 78
    move/from16 v8, p7

    .line 79
    .line 80
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    const/high16 v3, 0x800000

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    const/high16 v3, 0x400000

    .line 90
    .line 91
    :goto_4
    or-int/2addr v0, v3

    .line 92
    const v3, 0x492493

    .line 93
    .line 94
    .line 95
    and-int/2addr v3, v0

    .line 96
    const v9, 0x492492

    .line 97
    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v12, 0x1

    .line 101
    if-eq v3, v9, :cond_5

    .line 102
    .line 103
    move v3, v12

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v3, v11

    .line 106
    :goto_5
    and-int/lit8 v9, v0, 0x1

    .line 107
    .line 108
    invoke-virtual {v13, v9, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_b

    .line 113
    .line 114
    and-int/lit8 v3, v0, 0xe

    .line 115
    .line 116
    if-ne v3, v2, :cond_6

    .line 117
    .line 118
    move v2, v12

    .line 119
    goto :goto_6

    .line 120
    :cond_6
    move v2, v11

    .line 121
    :goto_6
    and-int/lit16 v3, v0, 0x380

    .line 122
    .line 123
    if-ne v3, v5, :cond_7

    .line 124
    .line 125
    move v3, v12

    .line 126
    goto :goto_7

    .line 127
    :cond_7
    move v3, v11

    .line 128
    :goto_7
    or-int/2addr v2, v3

    .line 129
    and-int/lit16 v3, v0, 0x1c00

    .line 130
    .line 131
    if-ne v3, v6, :cond_8

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_8
    move v12, v11

    .line 135
    :goto_8
    or-int/2addr v2, v12

    .line 136
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    if-nez v2, :cond_9

    .line 141
    .line 142
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 143
    .line 144
    if-ne v3, v2, :cond_a

    .line 145
    .line 146
    :cond_9
    new-instance v14, Landroidx/compose/ui/text/SpanStyle;

    .line 147
    .line 148
    const/16 v32, 0x0

    .line 149
    .line 150
    const v33, 0xffff

    .line 151
    .line 152
    .line 153
    const-wide/16 v15, 0x0

    .line 154
    .line 155
    const-wide/16 v17, 0x0

    .line 156
    .line 157
    const/16 v19, 0x0

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    const/16 v22, 0x0

    .line 164
    .line 165
    const/16 v23, 0x0

    .line 166
    .line 167
    const-wide/16 v24, 0x0

    .line 168
    .line 169
    const/16 v26, 0x0

    .line 170
    .line 171
    const/16 v27, 0x0

    .line 172
    .line 173
    const/16 v28, 0x0

    .line 174
    .line 175
    const-wide/16 v29, 0x0

    .line 176
    .line 177
    const/16 v31, 0x0

    .line 178
    .line 179
    invoke-direct/range {v14 .. v33}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 180
    .line 181
    .line 182
    sget-object v2, Landroidx/compose/ui/text/AnnotatedStringKt;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 183
    .line 184
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 185
    .line 186
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    invoke-direct {v3, v11, v5, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sget-object v5, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 200
    .line 201
    invoke-direct {v2, v1, v3, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v4, v2}, Landroidx/compose/ui/text/input/VisualTransformation;->f(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-object v3, v2, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 209
    .line 210
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    move-object v5, v3

    .line 214
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 215
    .line 216
    const v2, 0x1ffe3f0    # 9.399928E-38f

    .line 217
    .line 218
    .line 219
    and-int v14, v0, v2

    .line 220
    .line 221
    const/16 v15, 0x308

    .line 222
    .line 223
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 224
    .line 225
    const/4 v8, 0x1

    .line 226
    const/4 v9, 0x1

    .line 227
    const/4 v12, 0x0

    .line 228
    move/from16 v11, p7

    .line 229
    .line 230
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 231
    .line 232
    .line 233
    move-object v2, v6

    .line 234
    move v5, v8

    .line 235
    move v6, v9

    .line 236
    goto :goto_9

    .line 237
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 238
    .line 239
    .line 240
    move-object/from16 v2, p1

    .line 241
    .line 242
    move/from16 v5, p4

    .line 243
    .line 244
    move/from16 v6, p5

    .line 245
    .line 246
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    if-eqz v10, :cond_c

    .line 251
    .line 252
    new-instance v0, Lqd;

    .line 253
    .line 254
    move-object/from16 v3, p2

    .line 255
    .line 256
    move/from16 v7, p6

    .line 257
    .line 258
    move/from16 v8, p7

    .line 259
    .line 260
    move/from16 v9, p9

    .line 261
    .line 262
    invoke-direct/range {v0 .. v9}, Lqd;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;IZIII)V

    .line 263
    .line 264
    .line 265
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 266
    .line 267
    :cond_c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p8

    .line 11
    .line 12
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v2, -0x168e0bfc

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v2, v9, 0x6

    .line 21
    .line 22
    move-object/from16 v11, p0

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x2

    .line 35
    :goto_0
    or-int/2addr v2, v9

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v9

    .line 38
    :goto_1
    and-int/lit8 v3, v10, 0x2

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    or-int/lit8 v2, v2, 0x30

    .line 43
    .line 44
    :cond_2
    move-object/from16 v4, p1

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    and-int/lit8 v4, v9, 0x30

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    move-object/from16 v4, p1

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/16 v5, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v2, v5

    .line 65
    :goto_3
    and-int/lit16 v5, v9, 0x180

    .line 66
    .line 67
    if-nez v5, :cond_6

    .line 68
    .line 69
    move-object/from16 v5, p2

    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    const/16 v6, 0x100

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    const/16 v6, 0x80

    .line 81
    .line 82
    :goto_4
    or-int/2addr v2, v6

    .line 83
    goto :goto_5

    .line 84
    :cond_6
    move-object/from16 v5, p2

    .line 85
    .line 86
    :goto_5
    or-int/lit16 v6, v2, 0xc00

    .line 87
    .line 88
    and-int/lit8 v7, v10, 0x10

    .line 89
    .line 90
    if-eqz v7, :cond_8

    .line 91
    .line 92
    or-int/lit16 v6, v2, 0x6c00

    .line 93
    .line 94
    :cond_7
    move/from16 v2, p3

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_8
    and-int/lit16 v2, v9, 0x6000

    .line 98
    .line 99
    if-nez v2, :cond_7

    .line 100
    .line 101
    move/from16 v2, p3

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_9

    .line 108
    .line 109
    const/16 v8, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v8, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v6, v8

    .line 115
    :goto_7
    and-int/lit8 v8, v10, 0x20

    .line 116
    .line 117
    const/high16 v12, 0x30000

    .line 118
    .line 119
    if-eqz v8, :cond_b

    .line 120
    .line 121
    or-int/2addr v6, v12

    .line 122
    :cond_a
    move/from16 v12, p4

    .line 123
    .line 124
    goto :goto_9

    .line 125
    :cond_b
    and-int/2addr v12, v9

    .line 126
    if-nez v12, :cond_a

    .line 127
    .line 128
    move/from16 v12, p4

    .line 129
    .line 130
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-eqz v13, :cond_c

    .line 135
    .line 136
    const/high16 v13, 0x20000

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_c
    const/high16 v13, 0x10000

    .line 140
    .line 141
    :goto_8
    or-int/2addr v6, v13

    .line 142
    :goto_9
    and-int/lit8 v13, v10, 0x40

    .line 143
    .line 144
    const/high16 v14, 0x180000

    .line 145
    .line 146
    if-eqz v13, :cond_e

    .line 147
    .line 148
    or-int/2addr v6, v14

    .line 149
    :cond_d
    move/from16 v14, p5

    .line 150
    .line 151
    goto :goto_b

    .line 152
    :cond_e
    and-int/2addr v14, v9

    .line 153
    if-nez v14, :cond_d

    .line 154
    .line 155
    move/from16 v14, p5

    .line 156
    .line 157
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-eqz v15, :cond_f

    .line 162
    .line 163
    const/high16 v15, 0x100000

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_f
    const/high16 v15, 0x80000

    .line 167
    .line 168
    :goto_a
    or-int/2addr v6, v15

    .line 169
    :goto_b
    and-int/lit16 v15, v10, 0x80

    .line 170
    .line 171
    const/high16 v16, 0xc00000

    .line 172
    .line 173
    if-eqz v15, :cond_10

    .line 174
    .line 175
    or-int v6, v6, v16

    .line 176
    .line 177
    move/from16 v2, p6

    .line 178
    .line 179
    goto :goto_d

    .line 180
    :cond_10
    and-int v16, v9, v16

    .line 181
    .line 182
    move/from16 v2, p6

    .line 183
    .line 184
    if-nez v16, :cond_12

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 187
    .line 188
    .line 189
    move-result v16

    .line 190
    if-eqz v16, :cond_11

    .line 191
    .line 192
    const/high16 v16, 0x800000

    .line 193
    .line 194
    goto :goto_c

    .line 195
    :cond_11
    const/high16 v16, 0x400000

    .line 196
    .line 197
    :goto_c
    or-int v6, v6, v16

    .line 198
    .line 199
    :cond_12
    :goto_d
    and-int/lit16 v2, v10, 0x100

    .line 200
    .line 201
    const/high16 v16, 0x6000000

    .line 202
    .line 203
    if-eqz v2, :cond_13

    .line 204
    .line 205
    :goto_e
    or-int v6, v6, v16

    .line 206
    .line 207
    goto :goto_10

    .line 208
    :cond_13
    and-int v16, v9, v16

    .line 209
    .line 210
    if-nez v16, :cond_16

    .line 211
    .line 212
    const/high16 v16, 0x8000000

    .line 213
    .line 214
    and-int v16, v9, v16

    .line 215
    .line 216
    if-nez v16, :cond_14

    .line 217
    .line 218
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v16

    .line 222
    goto :goto_f

    .line 223
    :cond_14
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v16

    .line 227
    :goto_f
    if-eqz v16, :cond_15

    .line 228
    .line 229
    const/high16 v16, 0x4000000

    .line 230
    .line 231
    goto :goto_e

    .line 232
    :cond_15
    const/high16 v16, 0x2000000

    .line 233
    .line 234
    goto :goto_e

    .line 235
    :cond_16
    :goto_10
    const/high16 v16, 0x30000000

    .line 236
    .line 237
    or-int v6, v6, v16

    .line 238
    .line 239
    const v16, 0x12492493

    .line 240
    .line 241
    .line 242
    and-int v0, v6, v16

    .line 243
    .line 244
    move/from16 v16, v2

    .line 245
    .line 246
    const v2, 0x12492492

    .line 247
    .line 248
    .line 249
    const/16 v17, 0x1

    .line 250
    .line 251
    if-eq v0, v2, :cond_17

    .line 252
    .line 253
    move/from16 v0, v17

    .line 254
    .line 255
    goto :goto_11

    .line 256
    :cond_17
    const/4 v0, 0x0

    .line 257
    :goto_11
    and-int/lit8 v2, v6, 0x1

    .line 258
    .line 259
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_1e

    .line 264
    .line 265
    if-eqz v3, :cond_18

    .line 266
    .line 267
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 268
    .line 269
    move-object v12, v0

    .line 270
    goto :goto_12

    .line 271
    :cond_18
    move-object v12, v4

    .line 272
    :goto_12
    if-eqz v7, :cond_19

    .line 273
    .line 274
    move/from16 v14, v17

    .line 275
    .line 276
    goto :goto_13

    .line 277
    :cond_19
    move/from16 v14, p3

    .line 278
    .line 279
    :goto_13
    move v0, v15

    .line 280
    if-eqz v8, :cond_1a

    .line 281
    .line 282
    move/from16 v15, v17

    .line 283
    .line 284
    goto :goto_14

    .line 285
    :cond_1a
    move/from16 v15, p4

    .line 286
    .line 287
    :goto_14
    if-eqz v13, :cond_1b

    .line 288
    .line 289
    const v2, 0x7fffffff

    .line 290
    .line 291
    .line 292
    move/from16 v21, v16

    .line 293
    .line 294
    move/from16 v16, v2

    .line 295
    .line 296
    move/from16 v2, v21

    .line 297
    .line 298
    goto :goto_15

    .line 299
    :cond_1b
    move/from16 v2, v16

    .line 300
    .line 301
    move/from16 v16, p5

    .line 302
    .line 303
    :goto_15
    if-eqz v0, :cond_1c

    .line 304
    .line 305
    goto :goto_16

    .line 306
    :cond_1c
    move/from16 v17, p6

    .line 307
    .line 308
    :goto_16
    if-eqz v2, :cond_1d

    .line 309
    .line 310
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    move-object/from16 v18, v0

    .line 315
    .line 316
    goto :goto_17

    .line 317
    :cond_1d
    move-object/from16 v18, p7

    .line 318
    .line 319
    :goto_17
    invoke-static {v5}, Lnet/blip/shared/DynamicFontTrackingKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    const v0, 0x7ffffc7e

    .line 324
    .line 325
    .line 326
    and-int v20, v6, v0

    .line 327
    .line 328
    move-object/from16 v19, v1

    .line 329
    .line 330
    invoke-static/range {v11 .. v20}, Landroidx/compose/foundation/text/BasicTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;I)V

    .line 331
    .line 332
    .line 333
    move-object v2, v12

    .line 334
    move v4, v14

    .line 335
    move v5, v15

    .line 336
    move/from16 v6, v16

    .line 337
    .line 338
    move/from16 v7, v17

    .line 339
    .line 340
    move-object/from16 v8, v18

    .line 341
    .line 342
    goto :goto_18

    .line 343
    :cond_1e
    move-object/from16 v19, v1

    .line 344
    .line 345
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 346
    .line 347
    .line 348
    move/from16 v5, p4

    .line 349
    .line 350
    move/from16 v6, p5

    .line 351
    .line 352
    move/from16 v7, p6

    .line 353
    .line 354
    move-object/from16 v8, p7

    .line 355
    .line 356
    move-object v2, v4

    .line 357
    move/from16 v4, p3

    .line 358
    .line 359
    :goto_18
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    if-eqz v12, :cond_1f

    .line 364
    .line 365
    new-instance v0, Lg4;

    .line 366
    .line 367
    const/4 v11, 0x2

    .line 368
    move-object/from16 v1, p0

    .line 369
    .line 370
    move-object/from16 v3, p2

    .line 371
    .line 372
    invoke-direct/range {v0 .. v11}, Lg4;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/lang/Object;III)V

    .line 373
    .line 374
    .line 375
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 376
    .line 377
    :cond_1f
    return-void
.end method

.method public static final c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p8

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v2, -0x71851b50

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v2, v9, 0x6

    .line 24
    .line 25
    move-object/from16 v11, p0

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v9

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v2, v9

    .line 41
    :goto_1
    and-int/lit8 v3, v10, 0x2

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    or-int/lit8 v2, v2, 0x30

    .line 46
    .line 47
    :cond_2
    move-object/from16 v4, p1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    and-int/lit8 v4, v9, 0x30

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    move-object/from16 v4, p1

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    const/16 v5, 0x20

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const/16 v5, 0x10

    .line 66
    .line 67
    :goto_2
    or-int/2addr v2, v5

    .line 68
    :goto_3
    and-int/lit16 v5, v9, 0x180

    .line 69
    .line 70
    if-nez v5, :cond_6

    .line 71
    .line 72
    move-object/from16 v5, p2

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    const/16 v6, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/16 v6, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v2, v6

    .line 86
    goto :goto_5

    .line 87
    :cond_6
    move-object/from16 v5, p2

    .line 88
    .line 89
    :goto_5
    or-int/lit16 v6, v2, 0xc00

    .line 90
    .line 91
    and-int/lit8 v7, v10, 0x10

    .line 92
    .line 93
    if-eqz v7, :cond_8

    .line 94
    .line 95
    or-int/lit16 v6, v2, 0x6c00

    .line 96
    .line 97
    :cond_7
    move/from16 v2, p3

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_8
    and-int/lit16 v2, v9, 0x6000

    .line 101
    .line 102
    if-nez v2, :cond_7

    .line 103
    .line 104
    move/from16 v2, p3

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_9

    .line 111
    .line 112
    const/16 v8, 0x4000

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    const/16 v8, 0x2000

    .line 116
    .line 117
    :goto_6
    or-int/2addr v6, v8

    .line 118
    :goto_7
    const/high16 v8, 0x30000

    .line 119
    .line 120
    or-int/2addr v8, v6

    .line 121
    and-int/lit8 v12, v10, 0x40

    .line 122
    .line 123
    if-eqz v12, :cond_b

    .line 124
    .line 125
    const/high16 v8, 0x1b0000

    .line 126
    .line 127
    or-int/2addr v8, v6

    .line 128
    :cond_a
    move/from16 v6, p5

    .line 129
    .line 130
    goto :goto_9

    .line 131
    :cond_b
    const/high16 v6, 0x180000

    .line 132
    .line 133
    and-int/2addr v6, v9

    .line 134
    if-nez v6, :cond_a

    .line 135
    .line 136
    move/from16 v6, p5

    .line 137
    .line 138
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-eqz v13, :cond_c

    .line 143
    .line 144
    const/high16 v13, 0x100000

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_c
    const/high16 v13, 0x80000

    .line 148
    .line 149
    :goto_8
    or-int/2addr v8, v13

    .line 150
    :goto_9
    and-int/lit16 v13, v10, 0x80

    .line 151
    .line 152
    const/high16 v14, 0xc00000

    .line 153
    .line 154
    if-eqz v13, :cond_e

    .line 155
    .line 156
    or-int/2addr v8, v14

    .line 157
    :cond_d
    move/from16 v14, p6

    .line 158
    .line 159
    goto :goto_b

    .line 160
    :cond_e
    and-int/2addr v14, v9

    .line 161
    if-nez v14, :cond_d

    .line 162
    .line 163
    move/from16 v14, p6

    .line 164
    .line 165
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_f

    .line 170
    .line 171
    const/high16 v15, 0x800000

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_f
    const/high16 v15, 0x400000

    .line 175
    .line 176
    :goto_a
    or-int/2addr v8, v15

    .line 177
    :goto_b
    and-int/lit16 v15, v10, 0x100

    .line 178
    .line 179
    const/high16 v16, 0x6000000

    .line 180
    .line 181
    if-eqz v15, :cond_10

    .line 182
    .line 183
    :goto_c
    or-int v8, v8, v16

    .line 184
    .line 185
    goto :goto_e

    .line 186
    :cond_10
    and-int v16, v9, v16

    .line 187
    .line 188
    if-nez v16, :cond_13

    .line 189
    .line 190
    const/high16 v16, 0x8000000

    .line 191
    .line 192
    and-int v16, v9, v16

    .line 193
    .line 194
    if-nez v16, :cond_11

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    goto :goto_d

    .line 201
    :cond_11
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v16

    .line 205
    :goto_d
    if-eqz v16, :cond_12

    .line 206
    .line 207
    const/high16 v16, 0x4000000

    .line 208
    .line 209
    goto :goto_c

    .line 210
    :cond_12
    const/high16 v16, 0x2000000

    .line 211
    .line 212
    goto :goto_c

    .line 213
    :cond_13
    :goto_e
    const v16, 0x2492493

    .line 214
    .line 215
    .line 216
    and-int v0, v8, v16

    .line 217
    .line 218
    const v2, 0x2492492

    .line 219
    .line 220
    .line 221
    const/16 v16, 0x1

    .line 222
    .line 223
    if-eq v0, v2, :cond_14

    .line 224
    .line 225
    move/from16 v0, v16

    .line 226
    .line 227
    goto :goto_f

    .line 228
    :cond_14
    const/4 v0, 0x0

    .line 229
    :goto_f
    and-int/lit8 v2, v8, 0x1

    .line 230
    .line 231
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_1a

    .line 236
    .line 237
    if-eqz v3, :cond_15

    .line 238
    .line 239
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 240
    .line 241
    move/from16 v22, v12

    .line 242
    .line 243
    move-object v12, v0

    .line 244
    move/from16 v0, v22

    .line 245
    .line 246
    goto :goto_10

    .line 247
    :cond_15
    move v0, v12

    .line 248
    move-object v12, v4

    .line 249
    :goto_10
    if-eqz v7, :cond_16

    .line 250
    .line 251
    move/from16 v14, v16

    .line 252
    .line 253
    goto :goto_11

    .line 254
    :cond_16
    move/from16 v14, p3

    .line 255
    .line 256
    :goto_11
    if-eqz v0, :cond_17

    .line 257
    .line 258
    const v0, 0x7fffffff

    .line 259
    .line 260
    .line 261
    move/from16 v22, v16

    .line 262
    .line 263
    move/from16 v16, v0

    .line 264
    .line 265
    move/from16 v0, v22

    .line 266
    .line 267
    goto :goto_12

    .line 268
    :cond_17
    move/from16 v0, v16

    .line 269
    .line 270
    move/from16 v16, v6

    .line 271
    .line 272
    :goto_12
    if-eqz v13, :cond_18

    .line 273
    .line 274
    move/from16 v17, v0

    .line 275
    .line 276
    goto :goto_13

    .line 277
    :cond_18
    move/from16 v17, p6

    .line 278
    .line 279
    :goto_13
    if-eqz v15, :cond_19

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    move-object/from16 v18, v0

    .line 283
    .line 284
    goto :goto_14

    .line 285
    :cond_19
    move-object/from16 v18, p7

    .line 286
    .line 287
    :goto_14
    invoke-static {v5}, Lnet/blip/shared/DynamicFontTrackingKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    const v0, 0xffffc7e

    .line 292
    .line 293
    .line 294
    and-int v20, v8, v0

    .line 295
    .line 296
    const/16 v21, 0x200

    .line 297
    .line 298
    const/4 v15, 0x1

    .line 299
    move-object/from16 v19, v1

    .line 300
    .line 301
    invoke-static/range {v11 .. v21}, Landroidx/compose/foundation/text/BasicTextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 302
    .line 303
    .line 304
    move-object v2, v12

    .line 305
    move v4, v14

    .line 306
    move v5, v15

    .line 307
    move/from16 v6, v16

    .line 308
    .line 309
    move/from16 v7, v17

    .line 310
    .line 311
    move-object/from16 v8, v18

    .line 312
    .line 313
    goto :goto_15

    .line 314
    :cond_1a
    move-object/from16 v19, v1

    .line 315
    .line 316
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 317
    .line 318
    .line 319
    move/from16 v5, p4

    .line 320
    .line 321
    move/from16 v7, p6

    .line 322
    .line 323
    move-object/from16 v8, p7

    .line 324
    .line 325
    move-object v2, v4

    .line 326
    move/from16 v4, p3

    .line 327
    .line 328
    :goto_15
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    if-eqz v12, :cond_1b

    .line 333
    .line 334
    new-instance v0, Lg4;

    .line 335
    .line 336
    const/4 v11, 0x1

    .line 337
    move-object/from16 v1, p0

    .line 338
    .line 339
    move-object/from16 v3, p2

    .line 340
    .line 341
    invoke-direct/range {v0 .. v11}, Lg4;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/lang/Object;III)V

    .line 342
    .line 343
    .line 344
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 345
    .line 346
    :cond_1b
    return-void
.end method
