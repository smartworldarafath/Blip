.class final Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/SampleStream;

.field public final b:Landroidx/media3/exoplayer/source/SampleStream;

.field public final c:Landroidx/media3/exoplayer/FormatHolder;

.field public final d:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final e:Landroid/util/LongSparseArray;

.field public final f:I

.field public g:[B

.field public h:J

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/common/Format;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->b:Landroidx/media3/exoplayer/source/SampleStream;

    .line 7
    .line 8
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->c:Landroidx/media3/exoplayer/FormatHolder;

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->d:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 22
    .line 23
    new-instance p1, Landroid/util/LongSparseArray;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->e:Landroid/util/LongSparseArray;

    .line 29
    .line 30
    iget p1, p3, Landroidx/media3/common/Format;->r:I

    .line 31
    .line 32
    const/4 p2, -0x1

    .line 33
    if-eq p1, p2, :cond_0

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 p1, 0x12

    .line 39
    .line 40
    :goto_0
    iput p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->f:I

    .line 41
    .line 42
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->h:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->b()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->b:Landroidx/media3/exoplayer/source/SampleStream;

    .line 13
    .line 14
    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final d(J)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->d(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final e(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 8
    .line 9
    check-cast v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v3, v4, v1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->e(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x4

    .line 18
    if-ne v3, v4, :cond_11

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    invoke-virtual {v1, v4}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_11

    .line 26
    .line 27
    and-int/lit8 v5, v2, 0x4

    .line 28
    .line 29
    if-nez v5, :cond_11

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    and-int/2addr v2, v5

    .line 33
    if-nez v2, :cond_11

    .line 34
    .line 35
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 36
    .line 37
    if-nez v2, :cond_11

    .line 38
    .line 39
    iget-wide v6, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 40
    .line 41
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->j:Z

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    iget-object v9, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->e:Landroid/util/LongSparseArray;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :goto_0
    goto :goto_2

    .line 49
    :cond_0
    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->d:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 52
    .line 53
    .line 54
    iget-object v10, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->b:Landroidx/media3/exoplayer/source/SampleStream;

    .line 55
    .line 56
    check-cast v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 57
    .line 58
    iget-object v11, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->c:Landroidx/media3/exoplayer/FormatHolder;

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    invoke-virtual {v10, v11, v2, v12}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->e(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    const/4 v13, -0x3

    .line 66
    if-ne v10, v13, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v13, -0x5

    .line 70
    if-ne v10, v13, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v2, v4}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_3

    .line 78
    .line 79
    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->j:Z

    .line 80
    .line 81
    :goto_2
    move/from16 v17, v5

    .line 82
    .line 83
    goto/16 :goto_8

    .line 84
    .line 85
    :cond_3
    iget-wide v13, v2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 86
    .line 87
    move-wide v15, v13

    .line 88
    iget-wide v12, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->h:J

    .line 89
    .line 90
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    cmp-long v10, v12, v17

    .line 96
    .line 97
    if-eqz v10, :cond_4

    .line 98
    .line 99
    cmp-long v10, v15, v12

    .line 100
    .line 101
    if-gez v10, :cond_4

    .line 102
    .line 103
    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->clear()V

    .line 106
    .line 107
    .line 108
    iput-object v8, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->g:[B

    .line 109
    .line 110
    :cond_4
    move-wide v12, v15

    .line 111
    iput-wide v12, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->h:J

    .line 112
    .line 113
    iget-object v10, v2, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    iget-boolean v14, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 116
    .line 117
    if-nez v14, :cond_9

    .line 118
    .line 119
    if-eqz v10, :cond_9

    .line 120
    .line 121
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 122
    .line 123
    .line 124
    iget-object v2, v11, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 125
    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    iget-object v11, v2, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 129
    .line 130
    const/4 v14, 0x0

    .line 131
    const/4 v15, 0x0

    .line 132
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-ge v14, v4, :cond_6

    .line 137
    .line 138
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, [B

    .line 143
    .line 144
    array-length v4, v4

    .line 145
    add-int/2addr v15, v4

    .line 146
    add-int/lit8 v14, v14, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    const/4 v15, 0x0

    .line 150
    :cond_6
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    add-int/2addr v4, v15

    .line 155
    new-array v4, v4, [B

    .line 156
    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    iget-object v2, v2, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 160
    .line 161
    const/4 v11, 0x0

    .line 162
    const/4 v14, 0x0

    .line 163
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    if-ge v11, v15, :cond_7

    .line 168
    .line 169
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    check-cast v15, [B

    .line 174
    .line 175
    move/from16 v17, v5

    .line 176
    .line 177
    array-length v5, v15

    .line 178
    const/4 v8, 0x0

    .line 179
    invoke-static {v15, v8, v4, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .line 181
    .line 182
    array-length v5, v15

    .line 183
    add-int/2addr v14, v5

    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 185
    .line 186
    move/from16 v5, v17

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    goto :goto_4

    .line 190
    :cond_7
    :goto_5
    move/from16 v17, v5

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    const/4 v14, 0x0

    .line 194
    goto :goto_5

    .line 195
    :goto_6
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-virtual {v10, v4, v14, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v12, v13, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :goto_7
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    iget v4, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->f:I

    .line 210
    .line 211
    if-le v2, v4, :cond_a

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    invoke-virtual {v9, v8}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_9
    move/from16 v17, v5

    .line 219
    .line 220
    :cond_a
    cmp-long v2, v12, v6

    .line 221
    .line 222
    if-lez v2, :cond_10

    .line 223
    .line 224
    :goto_8
    iget-wide v4, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 225
    .line 226
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    add-int/lit8 v2, v2, -0x1

    .line 231
    .line 232
    :goto_9
    if-ltz v2, :cond_c

    .line 233
    .line 234
    invoke-virtual {v9, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v6

    .line 238
    cmp-long v6, v6, v4

    .line 239
    .line 240
    if-gtz v6, :cond_b

    .line 241
    .line 242
    invoke-virtual {v9, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object v8, v2

    .line 247
    check-cast v8, [B

    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_c
    const/4 v8, 0x0

    .line 254
    :goto_a
    if-eqz v8, :cond_d

    .line 255
    .line 256
    iput-object v8, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->g:[B

    .line 257
    .line 258
    :cond_d
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->g:[B

    .line 259
    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    array-length v2, v0

    .line 263
    iget-object v4, v1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    if-eqz v4, :cond_f

    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-ge v4, v2, :cond_e

    .line 272
    .line 273
    goto :goto_b

    .line 274
    :cond_e
    iget-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_f
    :goto_b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iput-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 285
    .line 286
    :goto_c
    iget-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    .line 290
    .line 291
    const/high16 v0, 0x10000000

    .line 292
    .line 293
    iget v2, v1, Landroidx/media3/decoder/Buffer;->j:I

    .line 294
    .line 295
    or-int/2addr v0, v2

    .line 296
    iput v0, v1, Landroidx/media3/decoder/Buffer;->j:I

    .line 297
    .line 298
    return v3

    .line 299
    :cond_10
    move/from16 v5, v17

    .line 300
    .line 301
    const/4 v4, 0x4

    .line 302
    const/4 v8, 0x0

    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_11
    return v3
.end method
