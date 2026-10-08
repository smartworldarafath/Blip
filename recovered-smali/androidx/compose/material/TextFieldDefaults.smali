.class public final Landroidx/compose/material/TextFieldDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/material/TextFieldDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/TextFieldDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/TextFieldDefaults;->a:Landroidx/compose/material/TextFieldDefaults;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/material/Shapes;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->a:Landroidx/compose/foundation/shape/CornerSize;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/shape/CornerBasedShape;->b:Landroidx/compose/foundation/shape/CornerSize;

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/foundation/shape/CornerSizeKt;->a:Landroidx/compose/foundation/shape/CornerSizeKt$ZeroCornerSize$1;

    .line 14
    .line 15
    invoke-direct {v1, v0, p0, v2, v2}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public static c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/l;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p1}, Landroidx/compose/material/l;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static d(JJJJJJJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material/TextFieldColors;
    .locals 47

    .line 1
    move-object/from16 v0, p14

    .line 2
    .line 3
    move/from16 v1, p15

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 19
    .line 20
    iget-wide v4, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v4, v5, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    move-wide v5, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-wide/from16 v5, p0

    .line 41
    .line 42
    :goto_0
    const v2, 0x3ec28f5c    # 0.38f

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v2, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v5, v6, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    and-int/lit8 v3, v1, 0x4

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->d()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    const v9, 0x3df5c28f    # 0.12f

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v4, v9}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    move-wide/from16 v33, v3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-wide/from16 v33, p2

    .line 76
    .line 77
    :goto_1
    and-int/lit8 v3, v1, 0x8

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->e()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    move-wide v9, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-wide/from16 v9, p4

    .line 92
    .line 93
    :goto_2
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->c()J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    and-int/lit8 v3, v1, 0x20

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->e()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {v0}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;)F

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    invoke-static {v3, v4, v13}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    move-wide v13, v3

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move-wide/from16 v13, p6

    .line 124
    .line 125
    :goto_3
    and-int/lit8 v3, v1, 0x40

    .line 126
    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->d()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    const v15, 0x3ed70a3d    # 0.42f

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    goto :goto_4

    .line 145
    :cond_4
    move-wide/from16 v3, p8

    .line 146
    .line 147
    :goto_4
    invoke-static {v2, v2, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 152
    .line 153
    .line 154
    move-result-wide v19

    .line 155
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-virtual {v15}, Landroidx/compose/material/Colors;->c()J

    .line 160
    .line 161
    .line 162
    move-result-wide v17

    .line 163
    and-int/lit16 v15, v1, 0x200

    .line 164
    .line 165
    const v2, 0x3f0a3d71    # 0.54f

    .line 166
    .line 167
    .line 168
    if-eqz v15, :cond_5

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    move-wide/from16 v21, v3

    .line 175
    .line 176
    invoke-virtual {v15}, Landroidx/compose/material/Colors;->d()J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 181
    .line 182
    .line 183
    move-result-wide v3

    .line 184
    :goto_5
    const v15, 0x3ec28f5c    # 0.38f

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_5
    move-wide/from16 v21, v3

    .line 189
    .line 190
    move-wide/from16 v3, p10

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :goto_6
    invoke-static {v15, v15, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-static {v3, v4, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 198
    .line 199
    .line 200
    move-result-wide v23

    .line 201
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->d()J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    move-wide/from16 v25, v3

    .line 210
    .line 211
    const v3, 0x3f0a3d71    # 0.54f

    .line 212
    .line 213
    .line 214
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-static {v15, v15, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 223
    .line 224
    .line 225
    move-result-wide v29

    .line 226
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->c()J

    .line 231
    .line 232
    .line 233
    move-result-wide v31

    .line 234
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->e()J

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    invoke-static {v0}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;)F

    .line 243
    .line 244
    .line 245
    move-result v15

    .line 246
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 247
    .line 248
    .line 249
    move-result-wide v35

    .line 250
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->d()J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    invoke-static {v0}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;)F

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    invoke-static {v3, v4, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 263
    .line 264
    .line 265
    move-result-wide v3

    .line 266
    move-wide/from16 v27, v1

    .line 267
    .line 268
    const v15, 0x3ec28f5c    # 0.38f

    .line 269
    .line 270
    .line 271
    invoke-static {v15, v15, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v3, v4, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 276
    .line 277
    .line 278
    move-result-wide v39

    .line 279
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->c()J

    .line 284
    .line 285
    .line 286
    move-result-wide v41

    .line 287
    const/high16 v1, 0x80000

    .line 288
    .line 289
    and-int v1, p15, v1

    .line 290
    .line 291
    if-eqz v1, :cond_6

    .line 292
    .line 293
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->d()J

    .line 298
    .line 299
    .line 300
    move-result-wide v1

    .line 301
    invoke-static {v0}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;)F

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    invoke-static {v1, v2, v15}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    :goto_7
    const v15, 0x3ec28f5c    # 0.38f

    .line 310
    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_6
    move-wide/from16 v1, p12

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :goto_8
    invoke-static {v15, v15, v0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 321
    .line 322
    .line 323
    move-result-wide v45

    .line 324
    move-wide/from16 v37, v3

    .line 325
    .line 326
    new-instance v4, Landroidx/compose/material/DefaultTextFieldColors;

    .line 327
    .line 328
    move-wide/from16 v15, v21

    .line 329
    .line 330
    move-wide/from16 v21, v25

    .line 331
    .line 332
    move-wide/from16 v43, v1

    .line 333
    .line 334
    invoke-direct/range {v4 .. v46}, Landroidx/compose/material/DefaultTextFieldColors;-><init>(JJJJJJJJJJJJJJJJJJJJJ)V

    .line 335
    .line 336
    .line 337
    return-object v4
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    .line 1
    move/from16 v14, p14

    .line 2
    .line 3
    move-object/from16 v0, p13

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x7c7ffbf3

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v14, 0x6

    .line 14
    .line 15
    move-object/from16 v15, p1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, v14

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v14

    .line 31
    :goto_1
    and-int/lit8 v4, v14, 0x30

    .line 32
    .line 33
    if-nez v4, :cond_3

    .line 34
    .line 35
    move-object/from16 v4, p2

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    const/16 v7, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v7, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v7

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v4, p2

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v7, v14, 0x180

    .line 53
    .line 54
    if-nez v7, :cond_5

    .line 55
    .line 56
    move/from16 v7, p3

    .line 57
    .line 58
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_4

    .line 63
    .line 64
    const/16 v10, 0x100

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    const/16 v10, 0x80

    .line 68
    .line 69
    :goto_4
    or-int/2addr v1, v10

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    move/from16 v7, p3

    .line 72
    .line 73
    :goto_5
    and-int/lit16 v10, v14, 0xc00

    .line 74
    .line 75
    const/16 v11, 0x400

    .line 76
    .line 77
    if-nez v10, :cond_7

    .line 78
    .line 79
    move/from16 v10, p4

    .line 80
    .line 81
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-eqz v12, :cond_6

    .line 86
    .line 87
    const/16 v12, 0x800

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    move v12, v11

    .line 91
    :goto_6
    or-int/2addr v1, v12

    .line 92
    goto :goto_7

    .line 93
    :cond_7
    move/from16 v10, p4

    .line 94
    .line 95
    :goto_7
    and-int/lit16 v12, v14, 0x6000

    .line 96
    .line 97
    if-nez v12, :cond_9

    .line 98
    .line 99
    move-object/from16 v12, p5

    .line 100
    .line 101
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_8

    .line 106
    .line 107
    const/16 v13, 0x4000

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_8
    const/16 v13, 0x2000

    .line 111
    .line 112
    :goto_8
    or-int/2addr v1, v13

    .line 113
    goto :goto_9

    .line 114
    :cond_9
    move-object/from16 v12, p5

    .line 115
    .line 116
    :goto_9
    const/high16 v13, 0x30000

    .line 117
    .line 118
    and-int v16, v14, v13

    .line 119
    .line 120
    move-object/from16 v2, p6

    .line 121
    .line 122
    if-nez v16, :cond_b

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    if-eqz v16, :cond_a

    .line 129
    .line 130
    const/high16 v16, 0x20000

    .line 131
    .line 132
    goto :goto_a

    .line 133
    :cond_a
    const/high16 v16, 0x10000

    .line 134
    .line 135
    :goto_a
    or-int v1, v1, v16

    .line 136
    .line 137
    :cond_b
    const/high16 v16, 0x180000

    .line 138
    .line 139
    and-int v16, v14, v16

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    if-nez v16, :cond_d

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_c

    .line 149
    .line 150
    const/high16 v16, 0x100000

    .line 151
    .line 152
    goto :goto_b

    .line 153
    :cond_c
    const/high16 v16, 0x80000

    .line 154
    .line 155
    :goto_b
    or-int v1, v1, v16

    .line 156
    .line 157
    :cond_d
    const/high16 v16, 0xc00000

    .line 158
    .line 159
    and-int v16, v14, v16

    .line 160
    .line 161
    if-nez v16, :cond_f

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_e

    .line 169
    .line 170
    const/high16 v3, 0x800000

    .line 171
    .line 172
    goto :goto_c

    .line 173
    :cond_e
    const/high16 v3, 0x400000

    .line 174
    .line 175
    :goto_c
    or-int/2addr v1, v3

    .line 176
    :cond_f
    const/high16 v3, 0x6000000

    .line 177
    .line 178
    and-int/2addr v3, v14

    .line 179
    if-nez v3, :cond_11

    .line 180
    .line 181
    move-object/from16 v3, p7

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v18

    .line 187
    if-eqz v18, :cond_10

    .line 188
    .line 189
    const/high16 v18, 0x4000000

    .line 190
    .line 191
    goto :goto_d

    .line 192
    :cond_10
    const/high16 v18, 0x2000000

    .line 193
    .line 194
    :goto_d
    or-int v1, v1, v18

    .line 195
    .line 196
    goto :goto_e

    .line 197
    :cond_11
    move-object/from16 v3, p7

    .line 198
    .line 199
    :goto_e
    const/high16 v18, 0x30000000

    .line 200
    .line 201
    and-int v18, v14, v18

    .line 202
    .line 203
    move-object/from16 v5, p8

    .line 204
    .line 205
    if-nez v18, :cond_13

    .line 206
    .line 207
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v19

    .line 211
    if-eqz v19, :cond_12

    .line 212
    .line 213
    const/high16 v19, 0x20000000

    .line 214
    .line 215
    goto :goto_f

    .line 216
    :cond_12
    const/high16 v19, 0x10000000

    .line 217
    .line 218
    :goto_f
    or-int v1, v1, v19

    .line 219
    .line 220
    :cond_13
    move-object/from16 v6, p9

    .line 221
    .line 222
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v20

    .line 226
    if-eqz v20, :cond_14

    .line 227
    .line 228
    const/16 v17, 0x4

    .line 229
    .line 230
    goto :goto_10

    .line 231
    :cond_14
    const/16 v17, 0x2

    .line 232
    .line 233
    :goto_10
    const/16 v20, 0x6000

    .line 234
    .line 235
    or-int v17, v20, v17

    .line 236
    .line 237
    move-object/from16 v8, p10

    .line 238
    .line 239
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v20

    .line 243
    if-eqz v20, :cond_15

    .line 244
    .line 245
    const/16 v18, 0x20

    .line 246
    .line 247
    goto :goto_11

    .line 248
    :cond_15
    const/16 v18, 0x10

    .line 249
    .line 250
    :goto_11
    or-int v17, v17, v18

    .line 251
    .line 252
    move-object/from16 v9, p11

    .line 253
    .line 254
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v19

    .line 258
    if-eqz v19, :cond_16

    .line 259
    .line 260
    const/16 v18, 0x100

    .line 261
    .line 262
    :goto_12
    move/from16 p13, v13

    .line 263
    .line 264
    goto :goto_13

    .line 265
    :cond_16
    const/16 v18, 0x80

    .line 266
    .line 267
    goto :goto_12

    .line 268
    :goto_13
    or-int v13, v17, v18

    .line 269
    .line 270
    or-int/2addr v11, v13

    .line 271
    const v13, 0x12492493

    .line 272
    .line 273
    .line 274
    and-int/2addr v13, v1

    .line 275
    move/from16 v17, v1

    .line 276
    .line 277
    const v1, 0x12492492

    .line 278
    .line 279
    .line 280
    if-ne v13, v1, :cond_18

    .line 281
    .line 282
    and-int/lit16 v1, v11, 0x2493

    .line 283
    .line 284
    const/16 v13, 0x2492

    .line 285
    .line 286
    if-eq v1, v13, :cond_17

    .line 287
    .line 288
    goto :goto_14

    .line 289
    :cond_17
    const/4 v1, 0x0

    .line 290
    goto :goto_15

    .line 291
    :cond_18
    :goto_14
    const/4 v1, 0x1

    .line 292
    :goto_15
    and-int/lit8 v13, v17, 0x1

    .line 293
    .line 294
    invoke-virtual {v0, v13, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_1b

    .line 299
    .line 300
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 301
    .line 302
    .line 303
    and-int/lit8 v1, v14, 0x1

    .line 304
    .line 305
    if-eqz v1, :cond_1a

    .line 306
    .line 307
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_19

    .line 312
    .line 313
    goto :goto_16

    .line 314
    :cond_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 315
    .line 316
    .line 317
    and-int/lit16 v1, v11, -0x1c01

    .line 318
    .line 319
    move-object/from16 v24, p12

    .line 320
    .line 321
    goto :goto_17

    .line 322
    :cond_1a
    :goto_16
    new-instance v1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 323
    .line 324
    const/high16 v13, 0x41800000    # 16.0f

    .line 325
    .line 326
    invoke-direct {v1, v13, v13, v13, v13}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 327
    .line 328
    .line 329
    and-int/lit16 v11, v11, -0x1c01

    .line 330
    .line 331
    move-object/from16 v24, v1

    .line 332
    .line 333
    move v1, v11

    .line 334
    :goto_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 335
    .line 336
    .line 337
    sget-object v11, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 338
    .line 339
    shl-int/lit8 v11, v17, 0x3

    .line 340
    .line 341
    and-int/lit8 v13, v11, 0x70

    .line 342
    .line 343
    or-int/lit8 v13, v13, 0x6

    .line 344
    .line 345
    and-int/lit16 v11, v11, 0x380

    .line 346
    .line 347
    or-int/2addr v11, v13

    .line 348
    shr-int/lit8 v13, v17, 0x3

    .line 349
    .line 350
    and-int/lit16 v13, v13, 0x1c00

    .line 351
    .line 352
    or-int/2addr v11, v13

    .line 353
    shr-int/lit8 v13, v17, 0x9

    .line 354
    .line 355
    const v16, 0xe000

    .line 356
    .line 357
    .line 358
    and-int v18, v13, v16

    .line 359
    .line 360
    or-int v11, v11, v18

    .line 361
    .line 362
    const/high16 v18, 0x70000

    .line 363
    .line 364
    and-int v18, v13, v18

    .line 365
    .line 366
    or-int v11, v11, v18

    .line 367
    .line 368
    const/high16 v18, 0x380000

    .line 369
    .line 370
    and-int v13, v13, v18

    .line 371
    .line 372
    or-int/2addr v11, v13

    .line 373
    shl-int/lit8 v13, v1, 0x15

    .line 374
    .line 375
    const/high16 v18, 0x1c00000

    .line 376
    .line 377
    and-int v13, v13, v18

    .line 378
    .line 379
    or-int/2addr v11, v13

    .line 380
    shl-int/lit8 v13, v17, 0xf

    .line 381
    .line 382
    const/high16 v18, 0xe000000

    .line 383
    .line 384
    and-int v13, v13, v18

    .line 385
    .line 386
    or-int/2addr v11, v13

    .line 387
    const/high16 v13, 0x70000000

    .line 388
    .line 389
    shl-int/lit8 v18, v17, 0x15

    .line 390
    .line 391
    and-int v13, v18, v13

    .line 392
    .line 393
    or-int v28, v11, v13

    .line 394
    .line 395
    shr-int/lit8 v11, v17, 0x12

    .line 396
    .line 397
    and-int/lit8 v11, v11, 0xe

    .line 398
    .line 399
    or-int v11, v11, p13

    .line 400
    .line 401
    shr-int/lit8 v13, v17, 0xc

    .line 402
    .line 403
    and-int/lit8 v13, v13, 0x70

    .line 404
    .line 405
    or-int/2addr v11, v13

    .line 406
    shl-int/lit8 v1, v1, 0x6

    .line 407
    .line 408
    and-int/lit16 v13, v1, 0x1c00

    .line 409
    .line 410
    or-int/2addr v11, v13

    .line 411
    and-int v1, v1, v16

    .line 412
    .line 413
    or-int v29, v11, v1

    .line 414
    .line 415
    move-object/from16 v27, v0

    .line 416
    .line 417
    move-object/from16 v23, v2

    .line 418
    .line 419
    move-object/from16 v18, v3

    .line 420
    .line 421
    move-object/from16 v16, v4

    .line 422
    .line 423
    move-object/from16 v19, v5

    .line 424
    .line 425
    move-object/from16 v20, v6

    .line 426
    .line 427
    move/from16 v22, v7

    .line 428
    .line 429
    move-object/from16 v25, v8

    .line 430
    .line 431
    move-object/from16 v26, v9

    .line 432
    .line 433
    move/from16 v21, v10

    .line 434
    .line 435
    move-object/from16 v17, v12

    .line 436
    .line 437
    invoke-static/range {v15 .. v29}, Landroidx/compose/material/TextFieldImplKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;II)V

    .line 438
    .line 439
    .line 440
    move-object/from16 v13, v24

    .line 441
    .line 442
    goto :goto_18

    .line 443
    :cond_1b
    move-object/from16 v27, v0

    .line 444
    .line 445
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 446
    .line 447
    .line 448
    move-object/from16 v13, p12

    .line 449
    .line 450
    :goto_18
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 451
    .line 452
    .line 453
    move-result-object v15

    .line 454
    if-eqz v15, :cond_1c

    .line 455
    .line 456
    new-instance v0, Lug;

    .line 457
    .line 458
    move-object/from16 v1, p0

    .line 459
    .line 460
    move-object/from16 v2, p1

    .line 461
    .line 462
    move-object/from16 v3, p2

    .line 463
    .line 464
    move/from16 v4, p3

    .line 465
    .line 466
    move/from16 v5, p4

    .line 467
    .line 468
    move-object/from16 v6, p5

    .line 469
    .line 470
    move-object/from16 v7, p6

    .line 471
    .line 472
    move-object/from16 v8, p7

    .line 473
    .line 474
    move-object/from16 v9, p8

    .line 475
    .line 476
    move-object/from16 v10, p9

    .line 477
    .line 478
    move-object/from16 v11, p10

    .line 479
    .line 480
    move-object/from16 v12, p11

    .line 481
    .line 482
    invoke-direct/range {v0 .. v14}, Lug;-><init>(Landroidx/compose/material/TextFieldDefaults;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;I)V

    .line 483
    .line 484
    .line 485
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 486
    .line 487
    :cond_1c
    return-void
.end method
