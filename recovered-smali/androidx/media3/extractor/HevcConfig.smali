.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Landroidx/media3/container/NalUnitUtil$H265VpsData;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->d:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->e:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->f:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->g:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->h:I

    .line 19
    .line 20
    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->i:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->j:I

    .line 23
    .line 24
    iput p11, p0, Landroidx/media3/extractor/HevcConfig;->k:I

    .line 25
    .line 26
    iput p12, p0, Landroidx/media3/extractor/HevcConfig;->l:F

    .line 27
    .line 28
    iput p13, p0, Landroidx/media3/extractor/HevcConfig;->m:I

    .line 29
    .line 30
    iput-object p14, p0, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p15, p0, Landroidx/media3/extractor/HevcConfig;->o:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 33
    .line 34
    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    const/16 v2, 0x15

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    move v6, v5

    .line 32
    move v7, v6

    .line 33
    :goto_1
    const/4 v8, 0x1

    .line 34
    if-ge v6, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    move v9, v5

    .line 44
    :goto_2
    if-ge v9, v8, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    add-int/lit8 v11, v10, 0x4

    .line 51
    .line 52
    add-int/2addr v7, v11

    .line 53
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 63
    .line 64
    .line 65
    new-array v4, v7, [B

    .line 66
    .line 67
    const/4 v6, -0x1

    .line 68
    const/high16 v9, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    move-object/from16 v26, p2

    .line 72
    .line 73
    move v14, v6

    .line 74
    move v15, v14

    .line 75
    move/from16 v16, v15

    .line 76
    .line 77
    move/from16 v17, v16

    .line 78
    .line 79
    move/from16 v18, v17

    .line 80
    .line 81
    move/from16 v19, v18

    .line 82
    .line 83
    move/from16 v20, v19

    .line 84
    .line 85
    move/from16 v21, v20

    .line 86
    .line 87
    move/from16 v22, v21

    .line 88
    .line 89
    move/from16 v24, v22

    .line 90
    .line 91
    move/from16 v23, v9

    .line 92
    .line 93
    move-object/from16 v25, v10

    .line 94
    .line 95
    move v6, v5

    .line 96
    move v9, v6

    .line 97
    :goto_3
    if-ge v6, v3, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    and-int/lit8 v10, v10, 0x3f

    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    move v13, v5

    .line 110
    move-object/from16 v12, v26

    .line 111
    .line 112
    :goto_4
    if-ge v13, v11, :cond_8

    .line 113
    .line 114
    move/from16 v27, v8

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    move/from16 v28, v2

    .line 121
    .line 122
    sget-object v2, Landroidx/media3/container/NalUnitUtil;->a:[B

    .line 123
    .line 124
    invoke-static {v2, v5, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v9, v9, 0x4

    .line 128
    .line 129
    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 130
    .line 131
    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 132
    .line 133
    invoke-static {v2, v1, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x20

    .line 137
    .line 138
    if-ne v10, v1, :cond_3

    .line 139
    .line 140
    if-nez v13, :cond_3

    .line 141
    .line 142
    add-int v1, v9, v8

    .line 143
    .line 144
    invoke-static {v4, v9, v1}, Landroidx/media3/container/NalUnitUtil;->j([BII)Landroidx/media3/container/NalUnitUtil$H265VpsData;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_3
    const/16 v1, 0x21

    .line 151
    .line 152
    if-ne v10, v1, :cond_6

    .line 153
    .line 154
    if-nez v13, :cond_6

    .line 155
    .line 156
    add-int v1, v9, v8

    .line 157
    .line 158
    invoke-static {v4, v9, v1, v12}, Landroidx/media3/container/NalUnitUtil;->i([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->a:I

    .line 163
    .line 164
    add-int/lit8 v14, v2, 0x1

    .line 165
    .line 166
    iget v15, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->g:I

    .line 167
    .line 168
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->h:I

    .line 169
    .line 170
    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->c:I

    .line 171
    .line 172
    add-int/lit8 v17, v5, 0x8

    .line 173
    .line 174
    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->d:I

    .line 175
    .line 176
    add-int/lit8 v18, v5, 0x8

    .line 177
    .line 178
    iget v5, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->k:I

    .line 179
    .line 180
    move/from16 v16, v2

    .line 181
    .line 182
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->l:I

    .line 183
    .line 184
    move/from16 v19, v2

    .line 185
    .line 186
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->m:I

    .line 187
    .line 188
    move/from16 v20, v2

    .line 189
    .line 190
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->i:F

    .line 191
    .line 192
    move/from16 v21, v2

    .line 193
    .line 194
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->j:I

    .line 195
    .line 196
    iget-object v1, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->b:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    .line 197
    .line 198
    if-eqz v1, :cond_4

    .line 199
    .line 200
    move/from16 v23, v2

    .line 201
    .line 202
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->a:I

    .line 203
    .line 204
    move/from16 v29, v2

    .line 205
    .line 206
    iget-boolean v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->b:Z

    .line 207
    .line 208
    move/from16 v30, v2

    .line 209
    .line 210
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->c:I

    .line 211
    .line 212
    move/from16 v31, v2

    .line 213
    .line 214
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->d:I

    .line 215
    .line 216
    move/from16 v32, v2

    .line 217
    .line 218
    iget-object v2, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->e:[I

    .line 219
    .line 220
    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->f:I

    .line 221
    .line 222
    move/from16 v34, v1

    .line 223
    .line 224
    move-object/from16 v33, v2

    .line 225
    .line 226
    invoke-static/range {v29 .. v34}, Landroidx/media3/common/util/CodecSpecificDataUtil;->a(IZII[II)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v25

    .line 230
    goto :goto_5

    .line 231
    :cond_4
    move/from16 v23, v2

    .line 232
    .line 233
    :goto_5
    move/from16 v24, v23

    .line 234
    .line 235
    move/from16 v23, v21

    .line 236
    .line 237
    move/from16 v21, v20

    .line 238
    .line 239
    move/from16 v20, v19

    .line 240
    .line 241
    move/from16 v19, v5

    .line 242
    .line 243
    :cond_5
    const/4 v5, 0x0

    .line 244
    goto :goto_6

    .line 245
    :cond_6
    const/16 v1, 0x27

    .line 246
    .line 247
    if-ne v10, v1, :cond_5

    .line 248
    .line 249
    if-nez v13, :cond_5

    .line 250
    .line 251
    add-int v1, v9, v8

    .line 252
    .line 253
    invoke-static {v4, v9, v1}, Landroidx/media3/container/NalUnitUtil;->h([BII)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_5

    .line 258
    .line 259
    if-eqz v12, :cond_5

    .line 260
    .line 261
    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;->a:I

    .line 262
    .line 263
    iget-object v2, v12, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    .line 271
    .line 272
    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->b:I

    .line 273
    .line 274
    if-ne v1, v2, :cond_7

    .line 275
    .line 276
    const/16 v22, 0x4

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_7
    const/4 v1, 0x5

    .line 280
    move/from16 v22, v1

    .line 281
    .line 282
    :goto_6
    add-int/2addr v9, v8

    .line 283
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v13, v13, 0x1

    .line 287
    .line 288
    move/from16 v8, v27

    .line 289
    .line 290
    move/from16 v2, v28

    .line 291
    .line 292
    const/4 v1, 0x4

    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    :cond_8
    move/from16 v28, v2

    .line 296
    .line 297
    move/from16 v27, v8

    .line 298
    .line 299
    add-int/lit8 v6, v6, 0x1

    .line 300
    .line 301
    move-object/from16 v26, v12

    .line 302
    .line 303
    const/4 v1, 0x4

    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :cond_9
    move/from16 v28, v2

    .line 307
    .line 308
    move/from16 v27, v8

    .line 309
    .line 310
    if-nez v7, :cond_a

    .line 311
    .line 312
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 313
    .line 314
    :goto_7
    move-object v12, v0

    .line 315
    goto :goto_8

    .line 316
    :cond_a
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto :goto_7

    .line 321
    :goto_8
    new-instance v11, Landroidx/media3/extractor/HevcConfig;

    .line 322
    .line 323
    add-int/lit8 v13, v28, 0x1

    .line 324
    .line 325
    invoke-direct/range {v11 .. v26}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Landroidx/media3/container/NalUnitUtil$H265VpsData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .line 327
    .line 328
    return-object v11

    .line 329
    :goto_9
    if-eqz p1, :cond_b

    .line 330
    .line 331
    const-string v1, "L-HEVC config"

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_b
    const-string v1, "HEVC config"

    .line 335
    .line 336
    :goto_a
    const-string v2, "Error parsing"

    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    throw v0
.end method
