.class final Landroidx/compose/material/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->a:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->b:F

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->c:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    return-void
.end method

.method public static d(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 11

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_d

    .line 8
    .line 9
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 15
    .line 16
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string v5, "TextField"

    .line 21
    .line 22
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_c

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p2, v3, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v3, v1

    .line 47
    :goto_1
    const/4 v4, 0x0

    .line 48
    if-ge v3, v2, :cond_1

    .line 49
    .line 50
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v6, v5

    .line 55
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 56
    .line 57
    invoke-static {v6}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v7, "Label"

    .line 62
    .line 63
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object v5, v4

    .line 74
    :goto_2
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 75
    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {p2, v5, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    move v2, v1

    .line 94
    :goto_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    move v5, v1

    .line 99
    :goto_4
    if-ge v5, v3, :cond_4

    .line 100
    .line 101
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    move-object v7, v6

    .line 106
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 107
    .line 108
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    const-string v8, "Trailing"

    .line 113
    .line 114
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_3

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    move-object v6, v4

    .line 125
    :goto_5
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 126
    .line 127
    if-eqz v6, :cond_5

    .line 128
    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {p2, v6, v3}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Ljava/lang/Number;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    goto :goto_6

    .line 144
    :cond_5
    move v3, v1

    .line 145
    :goto_6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    move v6, v1

    .line 150
    :goto_7
    if-ge v6, v5, :cond_7

    .line 151
    .line 152
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    move-object v8, v7

    .line 157
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 158
    .line 159
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    const-string v9, "Leading"

    .line 164
    .line 165
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_6

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_7
    move-object v7, v4

    .line 176
    :goto_8
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 177
    .line 178
    if-eqz v7, :cond_8

    .line 179
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-interface {p2, v7, v5}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    goto :goto_9

    .line 195
    :cond_8
    move v5, v1

    .line 196
    :goto_9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    move v7, v1

    .line 201
    :goto_a
    if-ge v7, v6, :cond_a

    .line 202
    .line 203
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    move-object v9, v8

    .line 208
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 209
    .line 210
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    const-string v10, "Hint"

    .line 215
    .line 216
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_9

    .line 221
    .line 222
    move-object v4, v8

    .line 223
    goto :goto_b

    .line 224
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_a
    :goto_b
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 228
    .line 229
    if-eqz v4, :cond_b

    .line 230
    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-interface {p2, v4, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Ljava/lang/Number;

    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    goto :goto_c

    .line 246
    :cond_b
    move p0, v1

    .line 247
    :goto_c
    const/16 p1, 0xf

    .line 248
    .line 249
    invoke-static {v1, v1, v1, v1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 250
    .line 251
    .line 252
    move-result-wide p1

    .line 253
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    add-int/2addr p0, v5

    .line 262
    add-int/2addr p0, v3

    .line 263
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    return p0

    .line 268
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_d
    const-string p0, "Collection contains no element matching the predicate."

    .line 273
    .line 274
    invoke-static {p0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lf7;->h()V

    .line 278
    .line 279
    .line 280
    return v1
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 25

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v1, v10, Landroidx/compose/material/TextFieldMeasurePolicy;->c:Landroidx/compose/foundation/layout/PaddingValues;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {v13, v2}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-interface {v13, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    const/4 v8, 0x0

    .line 32
    const/16 v9, 0xa

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    move-wide/from16 v3, p3

    .line 38
    .line 39
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    move v7, v4

    .line 49
    :goto_0
    if-ge v7, v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    move-object v11, v9

    .line 56
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 57
    .line 58
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    const-string v14, "Leading"

    .line 63
    .line 64
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-eqz v11, :cond_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v9, 0x0

    .line 75
    :goto_1
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 76
    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    invoke-interface {v9, v5, v6}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    :goto_2
    if-eqz v3, :cond_3

    .line 86
    .line 87
    iget v7, v3, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move v7, v4

    .line 91
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    move v11, v4

    .line 96
    :goto_4
    if-ge v11, v9, :cond_5

    .line 97
    .line 98
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    move-object v15, v14

    .line 103
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 104
    .line 105
    invoke-static {v15}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    const/16 v21, 0x0

    .line 110
    .line 111
    const-string v8, "Trailing"

    .line 112
    .line 113
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_4

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    const/16 v21, 0x0

    .line 124
    .line 125
    move-object/from16 v14, v21

    .line 126
    .line 127
    :goto_5
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 128
    .line 129
    if-eqz v14, :cond_6

    .line 130
    .line 131
    neg-int v8, v7

    .line 132
    invoke-static {v8, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    invoke-interface {v14, v8, v9}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    move-object v9, v8

    .line 141
    goto :goto_6

    .line 142
    :cond_6
    move-object/from16 v9, v21

    .line 143
    .line 144
    :goto_6
    if-eqz v9, :cond_7

    .line 145
    .line 146
    iget v8, v9, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_7
    move v8, v4

    .line 150
    :goto_7
    add-int/2addr v7, v8

    .line 151
    neg-int v8, v1

    .line 152
    neg-int v7, v7

    .line 153
    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    move v14, v4

    .line 162
    :goto_8
    if-ge v14, v11, :cond_9

    .line 163
    .line 164
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    move-object/from16 v16, v15

    .line 169
    .line 170
    check-cast v16, Landroidx/compose/ui/layout/Measurable;

    .line 171
    .line 172
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    move/from16 v16, v1

    .line 177
    .line 178
    const-string v1, "Label"

    .line 179
    .line 180
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    move/from16 v1, v16

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    goto :goto_8

    .line 193
    :cond_9
    move/from16 v16, v1

    .line 194
    .line 195
    move-object/from16 v15, v21

    .line 196
    .line 197
    :goto_9
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 198
    .line 199
    if-eqz v15, :cond_a

    .line 200
    .line 201
    invoke-interface {v15, v5, v6}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    goto :goto_a

    .line 206
    :cond_a
    move-object/from16 v1, v21

    .line 207
    .line 208
    :goto_a
    if-eqz v1, :cond_c

    .line 209
    .line 210
    sget-object v4, Landroidx/compose/ui/layout/AlignmentLineKt;->b:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 211
    .line 212
    invoke-interface {v1, v4}, Landroidx/compose/ui/layout/Measured;->K(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    const/high16 v5, -0x80000000

    .line 217
    .line 218
    if-eq v4, v5, :cond_b

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_b
    iget v4, v1, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 222
    .line 223
    goto :goto_b

    .line 224
    :cond_c
    const/4 v4, 0x0

    .line 225
    :goto_b
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eqz v1, :cond_d

    .line 230
    .line 231
    sub-int/2addr v8, v12

    .line 232
    sub-int/2addr v8, v11

    .line 233
    goto :goto_c

    .line 234
    :cond_d
    neg-int v5, v2

    .line 235
    sub-int v8, v5, v16

    .line 236
    .line 237
    :goto_c
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v20, 0xb

    .line 240
    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    move-wide/from16 v14, p3

    .line 248
    .line 249
    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 250
    .line 251
    .line 252
    move-result-wide v5

    .line 253
    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 254
    .line 255
    .line 256
    move-result-wide v14

    .line 257
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    const/4 v6, 0x0

    .line 262
    :goto_d
    if-ge v6, v5, :cond_1a

    .line 263
    .line 264
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 269
    .line 270
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    move/from16 v24, v2

    .line 275
    .line 276
    const-string v2, "TextField"

    .line 277
    .line 278
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_19

    .line 283
    .line 284
    invoke-interface {v7, v14, v15}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    const/16 v19, 0x0

    .line 289
    .line 290
    const/16 v20, 0xe

    .line 291
    .line 292
    const/16 v16, 0x0

    .line 293
    .line 294
    const/16 v17, 0x0

    .line 295
    .line 296
    const/16 v18, 0x0

    .line 297
    .line 298
    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 299
    .line 300
    .line 301
    move-result-wide v7

    .line 302
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    const/4 v5, 0x0

    .line 307
    :goto_e
    if-ge v5, v2, :cond_f

    .line 308
    .line 309
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    move-object v15, v14

    .line 314
    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    .line 315
    .line 316
    invoke-static {v15}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    const-string v0, "Hint"

    .line 321
    .line 322
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_e

    .line 327
    .line 328
    goto :goto_f

    .line 329
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 330
    .line 331
    move-object/from16 v0, p2

    .line 332
    .line 333
    goto :goto_e

    .line 334
    :cond_f
    move-object/from16 v14, v21

    .line 335
    .line 336
    :goto_f
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 337
    .line 338
    if-eqz v14, :cond_10

    .line 339
    .line 340
    invoke-interface {v14, v7, v8}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    move-object v7, v8

    .line 345
    goto :goto_10

    .line 346
    :cond_10
    move-object/from16 v7, v21

    .line 347
    .line 348
    :goto_10
    if-eqz v3, :cond_11

    .line 349
    .line 350
    iget v0, v3, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 351
    .line 352
    goto :goto_11

    .line 353
    :cond_11
    const/4 v0, 0x0

    .line 354
    :goto_11
    if-eqz v9, :cond_12

    .line 355
    .line 356
    iget v2, v9, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 357
    .line 358
    goto :goto_12

    .line 359
    :cond_12
    const/4 v2, 0x0

    .line 360
    :goto_12
    iget v5, v6, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 361
    .line 362
    if-eqz v1, :cond_13

    .line 363
    .line 364
    iget v8, v1, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 365
    .line 366
    goto :goto_13

    .line 367
    :cond_13
    const/4 v8, 0x0

    .line 368
    :goto_13
    if-eqz v7, :cond_14

    .line 369
    .line 370
    iget v14, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 371
    .line 372
    goto :goto_14

    .line 373
    :cond_14
    const/4 v14, 0x0

    .line 374
    :goto_14
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    add-int/2addr v5, v0

    .line 383
    add-int/2addr v5, v2

    .line 384
    move-wide/from16 v14, p3

    .line 385
    .line 386
    invoke-static {v5, v14, v15}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    iget v14, v6, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 391
    .line 392
    if-eqz v1, :cond_15

    .line 393
    .line 394
    const/4 v2, 0x1

    .line 395
    move v15, v2

    .line 396
    goto :goto_15

    .line 397
    :cond_15
    const/4 v15, 0x0

    .line 398
    :goto_15
    if-eqz v3, :cond_16

    .line 399
    .line 400
    iget v2, v3, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 401
    .line 402
    move/from16 v17, v2

    .line 403
    .line 404
    goto :goto_16

    .line 405
    :cond_16
    const/16 v17, 0x0

    .line 406
    .line 407
    :goto_16
    if-eqz v9, :cond_17

    .line 408
    .line 409
    iget v2, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 410
    .line 411
    move/from16 v18, v2

    .line 412
    .line 413
    goto :goto_17

    .line 414
    :cond_17
    const/16 v18, 0x0

    .line 415
    .line 416
    :goto_17
    if-eqz v7, :cond_18

    .line 417
    .line 418
    iget v2, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 419
    .line 420
    move/from16 v19, v2

    .line 421
    .line 422
    goto :goto_18

    .line 423
    :cond_18
    const/16 v19, 0x0

    .line 424
    .line 425
    :goto_18
    invoke-interface {v13}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 426
    .line 427
    .line 428
    move-result v22

    .line 429
    iget-object v2, v10, Landroidx/compose/material/TextFieldMeasurePolicy;->c:Landroidx/compose/foundation/layout/PaddingValues;

    .line 430
    .line 431
    move-wide/from16 v20, p3

    .line 432
    .line 433
    move-object/from16 v23, v2

    .line 434
    .line 435
    move/from16 v16, v11

    .line 436
    .line 437
    invoke-static/range {v14 .. v23}, Landroidx/compose/material/TextFieldKt;->d(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    move-object v8, v3

    .line 442
    move v3, v4

    .line 443
    move v4, v0

    .line 444
    new-instance v0, Landroidx/compose/material/n;

    .line 445
    .line 446
    move/from16 v2, v24

    .line 447
    .line 448
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/n;-><init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-interface {v13, v4, v5, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    return-object v0

    .line 460
    :cond_19
    move-object v8, v3

    .line 461
    move v3, v4

    .line 462
    move/from16 v2, v24

    .line 463
    .line 464
    add-int/lit8 v6, v6, 0x1

    .line 465
    .line 466
    move-object/from16 v10, p0

    .line 467
    .line 468
    move-object/from16 v0, p2

    .line 469
    .line 470
    move-object v3, v8

    .line 471
    goto/16 :goto_d

    .line 472
    .line 473
    :cond_1a
    const-string v0, "Collection contains no element matching the predicate."

    .line 474
    .line 475
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 476
    .line 477
    .line 478
    invoke-static {}, Lf7;->h()V

    .line 479
    .line 480
    .line 481
    return-object v21
.end method

.method public final b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    new-instance p0, Lcf;

    .line 2
    .line 3
    const/16 p1, 0x12

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3, p0}, Landroidx/compose/material/TextFieldMeasurePolicy;->d(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    move v5, v4

    .line 13
    :goto_0
    const/4 v6, 0x0

    .line 14
    if-ge v5, v3, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    move-object v8, v7

    .line 21
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 22
    .line 23
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const-string v9, "Leading"

    .line 28
    .line 29
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v7, v6

    .line 40
    :goto_1
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 41
    .line 42
    const v3, 0x7fffffff

    .line 43
    .line 44
    .line 45
    if-eqz v7, :cond_4

    .line 46
    .line 47
    invoke-interface {v7, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    move v5, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sub-int v5, v1, v5

    .line 56
    .line 57
    if-gez v5, :cond_3

    .line 58
    .line 59
    move v5, v4

    .line 60
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-interface {v2, v7, v8}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    move v10, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move v5, v1

    .line 77
    move v10, v4

    .line 78
    :goto_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    move v8, v4

    .line 83
    :goto_4
    if-ge v8, v7, :cond_6

    .line 84
    .line 85
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    move-object v11, v9

    .line 90
    check-cast v11, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 91
    .line 92
    invoke-static {v11}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    const-string v12, "Trailing"

    .line 97
    .line 98
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_5

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move-object v9, v6

    .line 109
    :goto_5
    check-cast v9, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 110
    .line 111
    if-eqz v9, :cond_9

    .line 112
    .line 113
    invoke-interface {v9, v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ne v5, v3, :cond_7

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    sub-int/2addr v5, v7

    .line 121
    if-gez v5, :cond_8

    .line 122
    .line 123
    move v5, v4

    .line 124
    :cond_8
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v2, v9, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    move v11, v1

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    move v11, v4

    .line 141
    :goto_7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    move v3, v4

    .line 146
    :goto_8
    if-ge v3, v1, :cond_b

    .line 147
    .line 148
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    move-object v8, v7

    .line 153
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 154
    .line 155
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    const-string v9, "Label"

    .line 160
    .line 161
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-eqz v8, :cond_a

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_b
    move-object v7, v6

    .line 172
    :goto_9
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 173
    .line 174
    if-eqz v7, :cond_c

    .line 175
    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {v2, v7, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/lang/Number;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    move v9, v1

    .line 191
    goto :goto_a

    .line 192
    :cond_c
    move v9, v4

    .line 193
    :goto_a
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    move v3, v4

    .line 198
    :goto_b
    if-ge v3, v1, :cond_12

    .line 199
    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    move-object v8, v7

    .line 205
    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 206
    .line 207
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    const-string v12, "TextField"

    .line 212
    .line 213
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-eqz v8, :cond_11

    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-interface {v2, v7, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Ljava/lang/Number;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    move v3, v4

    .line 238
    :goto_c
    if-ge v3, v1, :cond_e

    .line 239
    .line 240
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    move-object v12, v8

    .line 245
    check-cast v12, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 246
    .line 247
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    const-string v13, "Hint"

    .line 252
    .line 253
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_d

    .line 258
    .line 259
    move-object v6, v8

    .line 260
    goto :goto_d

    .line 261
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 262
    .line 263
    goto :goto_c

    .line 264
    :cond_e
    :goto_d
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 265
    .line 266
    if-eqz v6, :cond_f

    .line 267
    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {v2, v6, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Ljava/lang/Number;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    move v12, v0

    .line 283
    goto :goto_e

    .line 284
    :cond_f
    move v12, v4

    .line 285
    :goto_e
    if-lez v9, :cond_10

    .line 286
    .line 287
    const/4 v0, 0x1

    .line 288
    move v8, v0

    .line 289
    goto :goto_f

    .line 290
    :cond_10
    move v8, v4

    .line 291
    :goto_f
    const/16 v0, 0xf

    .line 292
    .line 293
    invoke-static {v4, v4, v4, v4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 294
    .line 295
    .line 296
    move-result-wide v13

    .line 297
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    move-object/from16 v0, p0

    .line 302
    .line 303
    iget-object v0, v0, Landroidx/compose/material/TextFieldMeasurePolicy;->c:Landroidx/compose/foundation/layout/PaddingValues;

    .line 304
    .line 305
    move-object/from16 v16, v0

    .line 306
    .line 307
    invoke-static/range {v7 .. v16}, Landroidx/compose/material/TextFieldKt;->d(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    return v0

    .line 312
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_12
    const-string v0, "Collection contains no element matching the predicate."

    .line 316
    .line 317
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 318
    .line 319
    .line 320
    invoke-static {}, Lf7;->h()V

    .line 321
    .line 322
    .line 323
    return v4
.end method

.method public final e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 3

    .line 1
    new-instance v0, Lcf;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final g(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1

    .line 1
    new-instance p0, Lcf;

    .line 2
    .line 3
    const/16 p1, 0x15

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3, p0}, Landroidx/compose/material/TextFieldMeasurePolicy;->d(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final i(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 3

    .line 1
    new-instance v0, Lcf;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
