.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/ArrayList;Landroidx/collection/IntList;IIILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    if-eqz p0, :cond_11

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_11

    .line 16
    .line 17
    iget v4, v2, Landroidx/collection/IntList;->b:I

    .line 18
    .line 19
    if-eqz v4, :cond_11

    .line 20
    .line 21
    sub-int v5, p2, v0

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-ltz v5, :cond_3

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {v7, v4}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget v5, v4, Lkotlin/ranges/IntProgression;->j:I

    .line 35
    .line 36
    iget v4, v4, Lkotlin/ranges/IntProgression;->k:I

    .line 37
    .line 38
    move v8, v6

    .line 39
    if-gt v5, v4, :cond_1

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v2, v5}, Landroidx/collection/IntList;->a(I)I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-gt v9, v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Landroidx/collection/IntList;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eq v5, v4, :cond_1

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-ne v8, v6, :cond_2

    .line 57
    .line 58
    sget-object v0, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    sget-object v0, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 62
    .line 63
    new-instance v0, Landroidx/collection/MutableIntList;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v0, v4}, Landroidx/collection/MutableIntList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Landroidx/collection/MutableIntList;->b(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    sget-object v0, Landroidx/collection/IntListKt;->a:Landroidx/collection/MutableIntList;

    .line 74
    .line 75
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    move v9, v7

    .line 94
    :goto_3
    if-ge v9, v8, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    move-object v11, v10

    .line 101
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 102
    .line 103
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    iget-object v12, v2, Landroidx/collection/IntList;->a:[I

    .line 108
    .line 109
    iget v13, v2, Landroidx/collection/IntList;->b:I

    .line 110
    .line 111
    move v14, v7

    .line 112
    :goto_4
    if-ge v14, v13, :cond_5

    .line 113
    .line 114
    aget v15, v12, v14

    .line 115
    .line 116
    if-ne v15, v11, :cond_4

    .line 117
    .line 118
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget-object v2, v0, Landroidx/collection/IntList;->a:[I

    .line 129
    .line 130
    iget v0, v0, Landroidx/collection/IntList;->b:I

    .line 131
    .line 132
    move v8, v7

    .line 133
    :goto_6
    if-ge v8, v0, :cond_10

    .line 134
    .line 135
    aget v9, v2, v8

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    move v11, v7

    .line 142
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_8

    .line 147
    .line 148
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 153
    .line 154
    invoke-interface {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-ne v12, v9, :cond_7

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    move v11, v6

    .line 165
    :goto_8
    if-ne v11, v6, :cond_9

    .line 166
    .line 167
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    move-object/from16 v12, p8

    .line 172
    .line 173
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    move-object/from16 v12, p8

    .line 181
    .line 182
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 187
    .line 188
    :goto_9
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->c()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->e()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    add-int/2addr v14, v13

    .line 197
    const-wide v15, 0xffffffffL

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    if-ne v11, v6, :cond_a

    .line 203
    .line 204
    move/from16 p0, v14

    .line 205
    .line 206
    const/high16 v11, -0x80000000

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_a
    invoke-interface {v10, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->f(I)J

    .line 210
    .line 211
    .line 212
    move-result-wide v17

    .line 213
    move/from16 p0, v14

    .line 214
    .line 215
    and-long v13, v17, v15

    .line 216
    .line 217
    long-to-int v11, v13

    .line 218
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    move v14, v7

    .line 223
    :goto_b
    if-ge v14, v13, :cond_c

    .line 224
    .line 225
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v17

    .line 229
    move-object/from16 v18, v17

    .line 230
    .line 231
    check-cast v18, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 232
    .line 233
    invoke-interface/range {v18 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eq v6, v9, :cond_b

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 241
    .line 242
    const/4 v6, -0x1

    .line 243
    goto :goto_b

    .line 244
    :cond_c
    const/16 v17, 0x0

    .line 245
    .line 246
    :goto_c
    move-object/from16 v6, v17

    .line 247
    .line 248
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 249
    .line 250
    if-eqz v6, :cond_d

    .line 251
    .line 252
    invoke-interface {v6, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->f(I)J

    .line 253
    .line 254
    .line 255
    move-result-wide v13

    .line 256
    and-long/2addr v13, v15

    .line 257
    long-to-int v6, v13

    .line 258
    :goto_d
    const/high16 v9, -0x80000000

    .line 259
    .line 260
    goto :goto_e

    .line 261
    :cond_d
    const/high16 v6, -0x80000000

    .line 262
    .line 263
    goto :goto_d

    .line 264
    :goto_e
    if-ne v11, v9, :cond_e

    .line 265
    .line 266
    neg-int v11, v3

    .line 267
    goto :goto_f

    .line 268
    :cond_e
    neg-int v13, v3

    .line 269
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    :goto_f
    if-eq v6, v9, :cond_f

    .line 274
    .line 275
    sub-int v6, v6, p0

    .line 276
    .line 277
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    :cond_f
    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->h()V

    .line 282
    .line 283
    .line 284
    move/from16 v6, p6

    .line 285
    .line 286
    move/from16 v9, p7

    .line 287
    .line 288
    invoke-interface {v10, v11, v7, v6, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->i(IIII)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    add-int/lit8 v8, v8, 0x1

    .line 295
    .line 296
    const/4 v6, -0x1

    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :cond_10
    return-object v4

    .line 300
    :cond_11
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 301
    .line 302
    return-object v0
.end method
