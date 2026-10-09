.class final Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/PsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PsScrSeeker"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, v4

    .line 12
    const-wide/16 v6, 0x4e20

    .line 13
    .line 14
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-int v1, v1

    .line 19
    iget-object v2, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    move-object/from16 v7, p1

    .line 28
    .line 29
    invoke-interface {v7, v3, v6, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 30
    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    move v3, v1

    .line 39
    move-wide v10, v6

    .line 40
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const/4 v9, 0x4

    .line 45
    if-lt v8, v9, :cond_d

    .line 46
    .line 47
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 48
    .line 49
    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 50
    .line 51
    invoke-static {v12, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const/4 v12, 0x1

    .line 56
    const/16 v13, 0x1ba

    .line 57
    .line 58
    if-eq v8, v13, :cond_0

    .line 59
    .line 60
    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v14

    .line 71
    cmp-long v1, v14, v6

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 76
    .line 77
    invoke-virtual {v1, v14, v15}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v14

    .line 81
    cmp-long v1, v14, p2

    .line 82
    .line 83
    if-lez v1, :cond_2

    .line 84
    .line 85
    cmp-long v0, v10, v6

    .line 86
    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    new-instance v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 90
    .line 91
    const/4 v1, -0x1

    .line 92
    move-wide v2, v14

    .line 93
    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_1
    int-to-long v0, v3

    .line 98
    add-long v10, v4, v0

    .line 99
    .line 100
    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 109
    .line 110
    .line 111
    return-object v6

    .line 112
    :cond_2
    move-wide v10, v14

    .line 113
    const-wide/32 v14, 0x186a0

    .line 114
    .line 115
    .line 116
    add-long/2addr v14, v10

    .line 117
    cmp-long v1, v14, p2

    .line 118
    .line 119
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 120
    .line 121
    if-lez v1, :cond_3

    .line 122
    .line 123
    int-to-long v0, v3

    .line 124
    add-long v10, v4, v0

    .line 125
    .line 126
    new-instance v6, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 135
    .line 136
    .line 137
    return-object v6

    .line 138
    :cond_3
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 139
    .line 140
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    const/16 v14, 0xa

    .line 145
    .line 146
    if-ge v8, v14, :cond_4

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_4
    const/16 v8, 0x9

    .line 154
    .line 155
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    and-int/lit8 v8, v8, 0x7

    .line 163
    .line 164
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    if-ge v14, v8, :cond_5

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-ge v8, v9, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_6
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 188
    .line 189
    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 190
    .line 191
    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    const/16 v14, 0x1bb

    .line 196
    .line 197
    if-ne v8, v14, :cond_8

    .line 198
    .line 199
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-ge v14, v8, :cond_7

    .line 211
    .line 212
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-lt v8, v9, :cond_c

    .line 224
    .line 225
    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 226
    .line 227
    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 228
    .line 229
    invoke-static {v14, v8}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->d(I[B)I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eq v8, v13, :cond_c

    .line 234
    .line 235
    const/16 v14, 0x1b9

    .line 236
    .line 237
    if-ne v8, v14, :cond_9

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    ushr-int/lit8 v8, v8, 0x8

    .line 241
    .line 242
    if-eq v8, v12, :cond_a

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    const/4 v14, 0x2

    .line 253
    if-ge v8, v14, :cond_b

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 264
    .line 265
    iget v15, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 266
    .line 267
    add-int/2addr v15, v8

    .line 268
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_c
    :goto_2
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_d
    cmp-long v0, v10, v6

    .line 281
    .line 282
    if-eqz v0, :cond_e

    .line 283
    .line 284
    int-to-long v0, v1

    .line 285
    add-long v12, v4, v0

    .line 286
    .line 287
    new-instance v8, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 288
    .line 289
    const/4 v9, -0x2

    .line 290
    invoke-direct/range {v8 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;-><init>(IJJ)V

    .line 291
    .line 292
    .line 293
    return-object v8

    .line 294
    :cond_e
    sget-object v0, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;->d:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSearchResult;

    .line 295
    .line 296
    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
