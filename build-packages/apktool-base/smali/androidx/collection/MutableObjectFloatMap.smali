.class public final Landroidx/collection/MutableObjectFloatMap;
.super Landroidx/collection/ObjectFloatMap;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/ObjectFloatMap<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 7
    .line 8
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->c:[Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v0, Landroidx/collection/FloatSetKt;->a:[F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 15
    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->d(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectFloatMap;->c(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Capacity must be a positive value."

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0
.end method


# virtual methods
.method public final b(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v2, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v7, v4, 0x40

    .line 21
    .line 22
    shl-long/2addr v2, v7

    .line 23
    int-to-long v7, v4

    .line 24
    neg-long v7, v7

    .line 25
    const/16 v4, 0x3f

    .line 26
    .line 27
    shr-long/2addr v7, v4

    .line 28
    and-long/2addr v2, v7

    .line 29
    or-long/2addr v2, v5

    .line 30
    not-long v4, v2

    .line 31
    const/4 v6, 0x7

    .line 32
    shl-long/2addr v4, v6

    .line 33
    and-long/2addr v2, v4

    .line 34
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v2, v4

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long v4, v2, v4

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    shr-int/lit8 p0, p0, 0x3

    .line 51
    .line 52
    add-int/2addr p1, p0

    .line 53
    and-int p0, p1, v0

    .line 54
    .line 55
    return p0

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    and-int/2addr p1, v0

    .line 60
    goto :goto_0
.end method

.method public final c(I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->c(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iput p1, p0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object v0, Landroidx/collection/ScatterMapKt;->a:[J

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v1, p1, 0xf

    .line 23
    .line 24
    and-int/lit8 v1, v1, -0x8

    .line 25
    .line 26
    shr-int/lit8 v1, v1, 0x3

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 36
    .line 37
    .line 38
    move-object v0, v2

    .line 39
    :goto_1
    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 40
    .line 41
    shr-int/lit8 v1, p1, 0x3

    .line 42
    .line 43
    and-int/lit8 v2, p1, 0x7

    .line 44
    .line 45
    shl-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    aget-wide v3, v0, v1

    .line 48
    .line 49
    const-wide/16 v5, 0xff

    .line 50
    .line 51
    shl-long/2addr v5, v2

    .line 52
    not-long v7, v5

    .line 53
    and-long v2, v3, v7

    .line 54
    .line 55
    or-long/2addr v2, v5

    .line 56
    aput-wide v2, v0, v1

    .line 57
    .line 58
    iget v0, p0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v1, p0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 65
    .line 66
    sub-int/2addr v0, v1

    .line 67
    iput v0, p0, Landroidx/collection/MutableObjectFloatMap;->f:I

    .line 68
    .line 69
    new-array v0, p1, [Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v0, p0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 72
    .line 73
    new-array p1, p1, [F

    .line 74
    .line 75
    iput-object p1, p0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 76
    .line 77
    return-void
.end method

.method public final d(Ljava/lang/String;F)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    const v4, -0x3361d2af    # -8.2930312E7f

    .line 14
    .line 15
    .line 16
    mul-int/2addr v3, v4

    .line 17
    shl-int/lit8 v5, v3, 0x10

    .line 18
    .line 19
    xor-int/2addr v3, v5

    .line 20
    ushr-int/lit8 v5, v3, 0x7

    .line 21
    .line 22
    and-int/lit8 v3, v3, 0x7f

    .line 23
    .line 24
    iget v6, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 25
    .line 26
    and-int v7, v5, v6

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    :goto_1
    iget-object v9, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 30
    .line 31
    shr-int/lit8 v10, v7, 0x3

    .line 32
    .line 33
    and-int/lit8 v11, v7, 0x7

    .line 34
    .line 35
    shl-int/lit8 v11, v11, 0x3

    .line 36
    .line 37
    aget-wide v12, v9, v10

    .line 38
    .line 39
    ushr-long/2addr v12, v11

    .line 40
    const/4 v14, 0x1

    .line 41
    add-int/2addr v10, v14

    .line 42
    aget-wide v9, v9, v10

    .line 43
    .line 44
    rsub-int/lit8 v15, v11, 0x40

    .line 45
    .line 46
    shl-long/2addr v9, v15

    .line 47
    move/from16 v16, v14

    .line 48
    .line 49
    int-to-long v14, v11

    .line 50
    neg-long v14, v14

    .line 51
    const/16 v11, 0x3f

    .line 52
    .line 53
    shr-long/2addr v14, v11

    .line 54
    and-long/2addr v9, v14

    .line 55
    or-long/2addr v9, v12

    .line 56
    int-to-long v11, v3

    .line 57
    const-wide v13, 0x101010101010101L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-long v17, v11, v13

    .line 63
    .line 64
    move/from16 v19, v3

    .line 65
    .line 66
    const/4 v15, 0x0

    .line 67
    xor-long v2, v9, v17

    .line 68
    .line 69
    sub-long v13, v2, v13

    .line 70
    .line 71
    not-long v2, v2

    .line 72
    and-long/2addr v2, v13

    .line 73
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    and-long/2addr v2, v13

    .line 79
    :goto_2
    const-wide/16 v17, 0x0

    .line 80
    .line 81
    cmp-long v20, v2, v17

    .line 82
    .line 83
    if-eqz v20, :cond_2

    .line 84
    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 86
    .line 87
    .line 88
    move-result v17

    .line 89
    shr-int/lit8 v17, v17, 0x3

    .line 90
    .line 91
    add-int v17, v7, v17

    .line 92
    .line 93
    and-int v17, v17, v6

    .line 94
    .line 95
    move/from16 v20, v4

    .line 96
    .line 97
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 98
    .line 99
    aget-object v4, v4, v17

    .line 100
    .line 101
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_1

    .line 106
    .line 107
    move/from16 v1, v17

    .line 108
    .line 109
    goto/16 :goto_f

    .line 110
    .line 111
    :cond_1
    const-wide/16 v17, 0x1

    .line 112
    .line 113
    sub-long v17, v2, v17

    .line 114
    .line 115
    and-long v2, v2, v17

    .line 116
    .line 117
    move/from16 v4, v20

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    move/from16 v20, v4

    .line 121
    .line 122
    not-long v2, v9

    .line 123
    const/4 v4, 0x6

    .line 124
    shl-long/2addr v2, v4

    .line 125
    and-long/2addr v2, v9

    .line 126
    and-long/2addr v2, v13

    .line 127
    cmp-long v2, v2, v17

    .line 128
    .line 129
    const/16 v3, 0x8

    .line 130
    .line 131
    if-eqz v2, :cond_13

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectFloatMap;->b(I)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    iget v4, v0, Landroidx/collection/MutableObjectFloatMap;->f:I

    .line 138
    .line 139
    const-wide/16 v8, 0xff

    .line 140
    .line 141
    if-nez v4, :cond_3

    .line 142
    .line 143
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 144
    .line 145
    shr-int/lit8 v17, v2, 0x3

    .line 146
    .line 147
    aget-wide v17, v4, v17

    .line 148
    .line 149
    and-int/lit8 v4, v2, 0x7

    .line 150
    .line 151
    shl-int/lit8 v4, v4, 0x3

    .line 152
    .line 153
    shr-long v17, v17, v4

    .line 154
    .line 155
    and-long v17, v17, v8

    .line 156
    .line 157
    const-wide/16 v21, 0xfe

    .line 158
    .line 159
    cmp-long v4, v17, v21

    .line 160
    .line 161
    if-nez v4, :cond_4

    .line 162
    .line 163
    :cond_3
    move-wide/from16 v23, v8

    .line 164
    .line 165
    move-wide/from16 v27, v11

    .line 166
    .line 167
    const-wide/16 v18, 0x80

    .line 168
    .line 169
    const/16 v29, 0x7

    .line 170
    .line 171
    goto/16 :goto_e

    .line 172
    .line 173
    :cond_4
    iget v2, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 174
    .line 175
    if-le v2, v3, :cond_d

    .line 176
    .line 177
    iget v4, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 178
    .line 179
    move/from16 v17, v3

    .line 180
    .line 181
    int-to-long v3, v4

    .line 182
    const-wide/16 v18, 0x20

    .line 183
    .line 184
    mul-long v3, v3, v18

    .line 185
    .line 186
    const-wide/16 v18, 0x80

    .line 187
    .line 188
    int-to-long v6, v2

    .line 189
    const-wide/16 v23, 0x19

    .line 190
    .line 191
    mul-long v6, v6, v23

    .line 192
    .line 193
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Long;->compareUnsigned(JJ)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-gtz v2, :cond_c

    .line 198
    .line 199
    iget-object v2, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 200
    .line 201
    iget v3, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 202
    .line 203
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 204
    .line 205
    iget-object v6, v0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 206
    .line 207
    add-int/lit8 v7, v3, 0x7

    .line 208
    .line 209
    shr-int/lit8 v7, v7, 0x3

    .line 210
    .line 211
    move-wide/from16 v23, v8

    .line 212
    .line 213
    move v8, v15

    .line 214
    :goto_3
    if-ge v8, v7, :cond_5

    .line 215
    .line 216
    aget-wide v25, v2, v8

    .line 217
    .line 218
    move-wide/from16 v27, v11

    .line 219
    .line 220
    const/4 v9, 0x7

    .line 221
    and-long v10, v25, v13

    .line 222
    .line 223
    not-long v13, v10

    .line 224
    ushr-long/2addr v10, v9

    .line 225
    add-long/2addr v13, v10

    .line 226
    const-wide v10, -0x101010101010102L

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    and-long/2addr v10, v13

    .line 232
    aput-wide v10, v2, v8

    .line 233
    .line 234
    add-int/lit8 v8, v8, 0x1

    .line 235
    .line 236
    move-wide/from16 v11, v27

    .line 237
    .line 238
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    move-wide/from16 v27, v11

    .line 245
    .line 246
    const/4 v9, 0x7

    .line 247
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->s([J)I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    add-int/lit8 v8, v7, -0x1

    .line 252
    .line 253
    aget-wide v10, v2, v8

    .line 254
    .line 255
    const-wide v12, 0xffffffffffffffL

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    and-long/2addr v10, v12

    .line 261
    const-wide/high16 v25, -0x100000000000000L

    .line 262
    .line 263
    or-long v10, v10, v25

    .line 264
    .line 265
    aput-wide v10, v2, v8

    .line 266
    .line 267
    aget-wide v10, v2, v15

    .line 268
    .line 269
    aput-wide v10, v2, v7

    .line 270
    .line 271
    move v7, v15

    .line 272
    :goto_4
    if-eq v7, v3, :cond_b

    .line 273
    .line 274
    shr-int/lit8 v8, v7, 0x3

    .line 275
    .line 276
    aget-wide v10, v2, v8

    .line 277
    .line 278
    and-int/lit8 v14, v7, 0x7

    .line 279
    .line 280
    shl-int/lit8 v14, v14, 0x3

    .line 281
    .line 282
    shr-long/2addr v10, v14

    .line 283
    and-long v10, v10, v23

    .line 284
    .line 285
    cmp-long v25, v10, v18

    .line 286
    .line 287
    if-nez v25, :cond_6

    .line 288
    .line 289
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_6
    cmp-long v10, v10, v21

    .line 293
    .line 294
    if-eqz v10, :cond_7

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_7
    aget-object v10, v4, v7

    .line 298
    .line 299
    if-eqz v10, :cond_8

    .line 300
    .line 301
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    goto :goto_6

    .line 306
    :cond_8
    move v10, v15

    .line 307
    :goto_6
    mul-int v10, v10, v20

    .line 308
    .line 309
    shl-int/lit8 v11, v10, 0x10

    .line 310
    .line 311
    xor-int/2addr v10, v11

    .line 312
    ushr-int/lit8 v11, v10, 0x7

    .line 313
    .line 314
    invoke-virtual {v0, v11}, Landroidx/collection/MutableObjectFloatMap;->b(I)I

    .line 315
    .line 316
    .line 317
    move-result v25

    .line 318
    and-int/2addr v11, v3

    .line 319
    sub-int v26, v25, v11

    .line 320
    .line 321
    and-int v26, v26, v3

    .line 322
    .line 323
    move/from16 v29, v9

    .line 324
    .line 325
    div-int/lit8 v9, v26, 0x8

    .line 326
    .line 327
    sub-int v11, v7, v11

    .line 328
    .line 329
    and-int/2addr v11, v3

    .line 330
    div-int/lit8 v11, v11, 0x8

    .line 331
    .line 332
    const-wide/high16 v30, -0x8000000000000000L

    .line 333
    .line 334
    if-ne v9, v11, :cond_9

    .line 335
    .line 336
    and-int/lit8 v9, v10, 0x7f

    .line 337
    .line 338
    int-to-long v9, v9

    .line 339
    aget-wide v25, v2, v8

    .line 340
    .line 341
    move-wide/from16 v32, v12

    .line 342
    .line 343
    shl-long v12, v23, v14

    .line 344
    .line 345
    not-long v11, v12

    .line 346
    and-long v11, v25, v11

    .line 347
    .line 348
    shl-long/2addr v9, v14

    .line 349
    or-long/2addr v9, v11

    .line 350
    aput-wide v9, v2, v8

    .line 351
    .line 352
    array-length v8, v2

    .line 353
    add-int/lit8 v8, v8, -0x1

    .line 354
    .line 355
    aget-wide v9, v2, v15

    .line 356
    .line 357
    and-long v9, v9, v32

    .line 358
    .line 359
    or-long v9, v9, v30

    .line 360
    .line 361
    aput-wide v9, v2, v8

    .line 362
    .line 363
    add-int/lit8 v7, v7, 0x1

    .line 364
    .line 365
    move/from16 v9, v29

    .line 366
    .line 367
    move-wide/from16 v12, v32

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_9
    move-wide/from16 v32, v12

    .line 371
    .line 372
    shr-int/lit8 v9, v25, 0x3

    .line 373
    .line 374
    aget-wide v11, v2, v9

    .line 375
    .line 376
    and-int/lit8 v13, v25, 0x7

    .line 377
    .line 378
    shl-int/lit8 v13, v13, 0x3

    .line 379
    .line 380
    shr-long v34, v11, v13

    .line 381
    .line 382
    and-long v34, v34, v23

    .line 383
    .line 384
    cmp-long v26, v34, v18

    .line 385
    .line 386
    if-nez v26, :cond_a

    .line 387
    .line 388
    and-int/lit8 v10, v10, 0x7f

    .line 389
    .line 390
    move/from16 v26, v3

    .line 391
    .line 392
    move-object/from16 v34, v4

    .line 393
    .line 394
    int-to-long v3, v10

    .line 395
    move-wide/from16 v35, v3

    .line 396
    .line 397
    shl-long v3, v23, v13

    .line 398
    .line 399
    not-long v3, v3

    .line 400
    and-long/2addr v3, v11

    .line 401
    shl-long v10, v35, v13

    .line 402
    .line 403
    or-long/2addr v3, v10

    .line 404
    aput-wide v3, v2, v9

    .line 405
    .line 406
    aget-wide v3, v2, v8

    .line 407
    .line 408
    shl-long v9, v23, v14

    .line 409
    .line 410
    not-long v9, v9

    .line 411
    and-long/2addr v3, v9

    .line 412
    shl-long v9, v18, v14

    .line 413
    .line 414
    or-long/2addr v3, v9

    .line 415
    aput-wide v3, v2, v8

    .line 416
    .line 417
    aget-object v3, v34, v7

    .line 418
    .line 419
    aput-object v3, v34, v25

    .line 420
    .line 421
    const/4 v3, 0x0

    .line 422
    aput-object v3, v34, v7

    .line 423
    .line 424
    aget v3, v6, v7

    .line 425
    .line 426
    aput v3, v6, v25

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    aput v3, v6, v7

    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_a
    move/from16 v26, v3

    .line 433
    .line 434
    move-object/from16 v34, v4

    .line 435
    .line 436
    and-int/lit8 v3, v10, 0x7f

    .line 437
    .line 438
    int-to-long v3, v3

    .line 439
    move-wide/from16 v35, v3

    .line 440
    .line 441
    shl-long v3, v23, v13

    .line 442
    .line 443
    not-long v3, v3

    .line 444
    and-long/2addr v3, v11

    .line 445
    shl-long v10, v35, v13

    .line 446
    .line 447
    or-long/2addr v3, v10

    .line 448
    aput-wide v3, v2, v9

    .line 449
    .line 450
    aget-object v3, v34, v25

    .line 451
    .line 452
    aget-object v4, v34, v7

    .line 453
    .line 454
    aput-object v4, v34, v25

    .line 455
    .line 456
    aput-object v3, v34, v7

    .line 457
    .line 458
    aget v3, v6, v25

    .line 459
    .line 460
    aget v4, v6, v7

    .line 461
    .line 462
    aput v4, v6, v25

    .line 463
    .line 464
    aput v3, v6, v7

    .line 465
    .line 466
    add-int/lit8 v7, v7, -0x1

    .line 467
    .line 468
    :goto_7
    array-length v3, v2

    .line 469
    add-int/lit8 v3, v3, -0x1

    .line 470
    .line 471
    aget-wide v8, v2, v15

    .line 472
    .line 473
    and-long v8, v8, v32

    .line 474
    .line 475
    or-long v8, v8, v30

    .line 476
    .line 477
    aput-wide v8, v2, v3

    .line 478
    .line 479
    add-int/lit8 v7, v7, 0x1

    .line 480
    .line 481
    move/from16 v3, v26

    .line 482
    .line 483
    move/from16 v9, v29

    .line 484
    .line 485
    move-wide/from16 v12, v32

    .line 486
    .line 487
    move-object/from16 v4, v34

    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_b
    move/from16 v29, v9

    .line 492
    .line 493
    iget v2, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 494
    .line 495
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->a(I)I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    iget v3, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 500
    .line 501
    sub-int/2addr v2, v3

    .line 502
    iput v2, v0, Landroidx/collection/MutableObjectFloatMap;->f:I

    .line 503
    .line 504
    goto/16 :goto_d

    .line 505
    .line 506
    :cond_c
    :goto_8
    move-wide/from16 v23, v8

    .line 507
    .line 508
    move-wide/from16 v27, v11

    .line 509
    .line 510
    const/16 v29, 0x7

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_d
    const-wide/16 v18, 0x80

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :goto_9
    iget v2, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 517
    .line 518
    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->b(I)I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iget-object v3, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 523
    .line 524
    iget-object v4, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 525
    .line 526
    iget-object v6, v0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 527
    .line 528
    iget v7, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 529
    .line 530
    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectFloatMap;->c(I)V

    .line 531
    .line 532
    .line 533
    iget-object v2, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 534
    .line 535
    iget-object v8, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 536
    .line 537
    iget-object v9, v0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 538
    .line 539
    iget v10, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 540
    .line 541
    move v11, v15

    .line 542
    :goto_a
    if-ge v11, v7, :cond_10

    .line 543
    .line 544
    shr-int/lit8 v12, v11, 0x3

    .line 545
    .line 546
    aget-wide v12, v3, v12

    .line 547
    .line 548
    and-int/lit8 v14, v11, 0x7

    .line 549
    .line 550
    shl-int/lit8 v14, v14, 0x3

    .line 551
    .line 552
    shr-long/2addr v12, v14

    .line 553
    and-long v12, v12, v23

    .line 554
    .line 555
    cmp-long v12, v12, v18

    .line 556
    .line 557
    if-gez v12, :cond_f

    .line 558
    .line 559
    aget-object v12, v4, v11

    .line 560
    .line 561
    if-eqz v12, :cond_e

    .line 562
    .line 563
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 564
    .line 565
    .line 566
    move-result v13

    .line 567
    goto :goto_b

    .line 568
    :cond_e
    move v13, v15

    .line 569
    :goto_b
    mul-int v13, v13, v20

    .line 570
    .line 571
    shl-int/lit8 v14, v13, 0x10

    .line 572
    .line 573
    xor-int/2addr v13, v14

    .line 574
    ushr-int/lit8 v14, v13, 0x7

    .line 575
    .line 576
    invoke-virtual {v0, v14}, Landroidx/collection/MutableObjectFloatMap;->b(I)I

    .line 577
    .line 578
    .line 579
    move-result v14

    .line 580
    and-int/lit8 v13, v13, 0x7f

    .line 581
    .line 582
    move-object/from16 v17, v2

    .line 583
    .line 584
    int-to-long v1, v13

    .line 585
    shr-int/lit8 v13, v14, 0x3

    .line 586
    .line 587
    and-int/lit8 v21, v14, 0x7

    .line 588
    .line 589
    shl-int/lit8 v21, v21, 0x3

    .line 590
    .line 591
    aget-wide v25, v17, v13

    .line 592
    .line 593
    move-wide/from16 v30, v1

    .line 594
    .line 595
    shl-long v1, v23, v21

    .line 596
    .line 597
    not-long v1, v1

    .line 598
    and-long v1, v25, v1

    .line 599
    .line 600
    shl-long v21, v30, v21

    .line 601
    .line 602
    or-long v1, v1, v21

    .line 603
    .line 604
    aput-wide v1, v17, v13

    .line 605
    .line 606
    add-int/lit8 v13, v14, -0x7

    .line 607
    .line 608
    and-int/2addr v13, v10

    .line 609
    and-int/lit8 v21, v10, 0x7

    .line 610
    .line 611
    add-int v13, v13, v21

    .line 612
    .line 613
    shr-int/lit8 v13, v13, 0x3

    .line 614
    .line 615
    aput-wide v1, v17, v13

    .line 616
    .line 617
    aput-object v12, v8, v14

    .line 618
    .line 619
    aget v1, v6, v11

    .line 620
    .line 621
    aput v1, v9, v14

    .line 622
    .line 623
    goto :goto_c

    .line 624
    :cond_f
    move-object/from16 v17, v2

    .line 625
    .line 626
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 627
    .line 628
    move-object/from16 v1, p1

    .line 629
    .line 630
    move-object/from16 v2, v17

    .line 631
    .line 632
    goto :goto_a

    .line 633
    :cond_10
    :goto_d
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectFloatMap;->b(I)I

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    :goto_e
    iget v1, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 638
    .line 639
    add-int/lit8 v1, v1, 0x1

    .line 640
    .line 641
    iput v1, v0, Landroidx/collection/ObjectFloatMap;->e:I

    .line 642
    .line 643
    iget v1, v0, Landroidx/collection/MutableObjectFloatMap;->f:I

    .line 644
    .line 645
    iget-object v3, v0, Landroidx/collection/ObjectFloatMap;->a:[J

    .line 646
    .line 647
    shr-int/lit8 v4, v2, 0x3

    .line 648
    .line 649
    aget-wide v5, v3, v4

    .line 650
    .line 651
    and-int/lit8 v7, v2, 0x7

    .line 652
    .line 653
    shl-int/lit8 v7, v7, 0x3

    .line 654
    .line 655
    shr-long v8, v5, v7

    .line 656
    .line 657
    and-long v8, v8, v23

    .line 658
    .line 659
    cmp-long v8, v8, v18

    .line 660
    .line 661
    if-nez v8, :cond_11

    .line 662
    .line 663
    move/from16 v15, v16

    .line 664
    .line 665
    :cond_11
    sub-int/2addr v1, v15

    .line 666
    iput v1, v0, Landroidx/collection/MutableObjectFloatMap;->f:I

    .line 667
    .line 668
    iget v1, v0, Landroidx/collection/ObjectFloatMap;->d:I

    .line 669
    .line 670
    shl-long v8, v23, v7

    .line 671
    .line 672
    not-long v8, v8

    .line 673
    and-long/2addr v5, v8

    .line 674
    shl-long v7, v27, v7

    .line 675
    .line 676
    or-long/2addr v5, v7

    .line 677
    aput-wide v5, v3, v4

    .line 678
    .line 679
    add-int/lit8 v4, v2, -0x7

    .line 680
    .line 681
    and-int/2addr v4, v1

    .line 682
    and-int/lit8 v1, v1, 0x7

    .line 683
    .line 684
    add-int/2addr v4, v1

    .line 685
    shr-int/lit8 v1, v4, 0x3

    .line 686
    .line 687
    aput-wide v5, v3, v1

    .line 688
    .line 689
    not-int v1, v2

    .line 690
    :goto_f
    if-gez v1, :cond_12

    .line 691
    .line 692
    not-int v1, v1

    .line 693
    :cond_12
    iget-object v2, v0, Landroidx/collection/ObjectFloatMap;->b:[Ljava/lang/Object;

    .line 694
    .line 695
    aput-object p1, v2, v1

    .line 696
    .line 697
    iget-object v0, v0, Landroidx/collection/ObjectFloatMap;->c:[F

    .line 698
    .line 699
    aput p2, v0, v1

    .line 700
    .line 701
    return-void

    .line 702
    :cond_13
    move/from16 v17, v3

    .line 703
    .line 704
    add-int/lit8 v8, v8, 0x8

    .line 705
    .line 706
    add-int/2addr v7, v8

    .line 707
    and-int/2addr v7, v6

    .line 708
    move-object/from16 v1, p1

    .line 709
    .line 710
    move/from16 v3, v19

    .line 711
    .line 712
    move/from16 v4, v20

    .line 713
    .line 714
    goto/16 :goto_1
.end method
