.class final Landroidx/media3/extractor/ogg/VorbisReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field public n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

.field public o:I

.field public p:Z

.field public q:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

.field public r:Landroidx/media3/container/VorbisUtil$CommentHeader;


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long p1, p1, v0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, p2

    .line 13
    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p2, p1, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->e:I

    .line 20
    .line 21
    :cond_1
    iput p2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    .line 22
    .line 23
    return-void
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 12

    .line 1
    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    and-int/2addr v0, v2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    const-wide/16 p0, -0x1

    .line 11
    .line 12
    return-wide p0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v3, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 19
    .line 20
    aget-byte v3, v3, v1

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->a:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->d:[Landroidx/media3/container/VorbisUtil$Mode;

    .line 25
    .line 26
    array-length v5, v0

    .line 27
    sub-int/2addr v5, v2

    .line 28
    invoke-static {v5}, Landroidx/media3/container/VorbisUtil;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    shr-int/2addr v3, v2

    .line 33
    const/16 v6, 0xff

    .line 34
    .line 35
    const/16 v7, 0x8

    .line 36
    .line 37
    rsub-int/lit8 v5, v5, 0x8

    .line 38
    .line 39
    ushr-int v5, v6, v5

    .line 40
    .line 41
    and-int/2addr v3, v5

    .line 42
    aget-object v0, v0, v3

    .line 43
    .line 44
    iget-boolean v0, v0, Landroidx/media3/container/VorbisUtil$Mode;->a:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget v0, v4, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->f:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget v0, v4, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->e:I

    .line 52
    .line 53
    :goto_0
    iget v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    .line 54
    .line 55
    iget-boolean v4, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    add-int/2addr v3, v0

    .line 60
    div-int/lit8 v1, v3, 0x4

    .line 61
    .line 62
    :cond_2
    int-to-long v3, v1

    .line 63
    iget-object v1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 64
    .line 65
    array-length v5, v1

    .line 66
    iget v6, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x4

    .line 69
    .line 70
    if-ge v5, v6, :cond_3

    .line 71
    .line 72
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    array-length v5, v1

    .line 77
    invoke-virtual {p1, v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p1, v6}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 85
    .line 86
    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 87
    .line 88
    add-int/lit8 v5, p1, -0x4

    .line 89
    .line 90
    const-wide/16 v8, 0xff

    .line 91
    .line 92
    and-long v10, v3, v8

    .line 93
    .line 94
    long-to-int v6, v10

    .line 95
    int-to-byte v6, v6

    .line 96
    aput-byte v6, v1, v5

    .line 97
    .line 98
    add-int/lit8 v5, p1, -0x3

    .line 99
    .line 100
    ushr-long v6, v3, v7

    .line 101
    .line 102
    and-long/2addr v6, v8

    .line 103
    long-to-int v6, v6

    .line 104
    int-to-byte v6, v6

    .line 105
    aput-byte v6, v1, v5

    .line 106
    .line 107
    add-int/lit8 v5, p1, -0x2

    .line 108
    .line 109
    const/16 v6, 0x10

    .line 110
    .line 111
    ushr-long v6, v3, v6

    .line 112
    .line 113
    and-long/2addr v6, v8

    .line 114
    long-to-int v6, v6

    .line 115
    int-to-byte v6, v6

    .line 116
    aput-byte v6, v1, v5

    .line 117
    .line 118
    sub-int/2addr p1, v2

    .line 119
    const/16 v5, 0x18

    .line 120
    .line 121
    ushr-long v5, v3, v5

    .line 122
    .line 123
    and-long/2addr v5, v8

    .line 124
    long-to-int v5, v5

    .line 125
    int-to-byte v5, v5

    .line 126
    aput-byte v5, v1, p1

    .line 127
    .line 128
    iput-boolean v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    .line 129
    .line 130
    iput v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    .line 131
    .line 132
    return-wide v3
.end method

.method public final c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget-object v3, v0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x4

    .line 22
    if-nez v3, :cond_3

    .line 23
    .line 24
    invoke-static {v5, v1, v4}, Landroidx/media3/container/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-gtz v3, :cond_1

    .line 43
    .line 44
    const/4 v12, -0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v12, v3

    .line 47
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-gtz v3, :cond_2

    .line 52
    .line 53
    const/4 v13, -0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v13, v3

    .line 56
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    and-int/lit8 v4, v3, 0xf

    .line 64
    .line 65
    int-to-double v14, v4

    .line 66
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v14

    .line 72
    double-to-int v14, v14

    .line 73
    and-int/lit16 v3, v3, 0xf0

    .line 74
    .line 75
    shr-int/2addr v3, v6

    .line 76
    int-to-double v3, v3

    .line 77
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    double-to-int v15, v3

    .line 82
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 86
    .line 87
    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 88
    .line 89
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    new-instance v9, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 94
    .line 95
    invoke-direct/range {v9 .. v16}, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;-><init>(IIIIII[B)V

    .line 96
    .line 97
    .line 98
    iput-object v9, v0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 99
    .line 100
    :goto_2
    const/4 v8, 0x0

    .line 101
    goto/16 :goto_1c

    .line 102
    .line 103
    :cond_3
    iget-object v8, v0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 104
    .line 105
    if-nez v8, :cond_4

    .line 106
    .line 107
    invoke-static {v1, v5, v5}, Landroidx/media3/container/VorbisUtil;->b(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, v0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 115
    .line 116
    new-array v10, v9, [B

    .line 117
    .line 118
    iget-object v11, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 119
    .line 120
    invoke-static {v11, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    iget v9, v3, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->a:I

    .line 124
    .line 125
    const/4 v11, 0x5

    .line 126
    invoke-static {v11, v1, v4}, Landroidx/media3/container/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    add-int/2addr v12, v5

    .line 134
    new-instance v13, Landroidx/media3/container/VorbisBitArray;

    .line 135
    .line 136
    iget-object v14, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 137
    .line 138
    invoke-direct {v13, v14}, Landroidx/media3/container/VorbisBitArray;-><init>([B)V

    .line 139
    .line 140
    .line 141
    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 142
    .line 143
    const/16 v14, 0x8

    .line 144
    .line 145
    mul-int/2addr v1, v14

    .line 146
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 147
    .line 148
    .line 149
    move v1, v4

    .line 150
    :goto_3
    const/16 v15, 0x18

    .line 151
    .line 152
    const/4 v4, 0x2

    .line 153
    const/16 v7, 0x10

    .line 154
    .line 155
    if-ge v1, v12, :cond_f

    .line 156
    .line 157
    move/from16 p1, v14

    .line 158
    .line 159
    invoke-virtual {v13, v15}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    const v5, 0x564342

    .line 164
    .line 165
    .line 166
    if-ne v14, v5, :cond_e

    .line 167
    .line 168
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-virtual {v13, v15}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-nez v14, :cond_7

    .line 181
    .line 182
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    const/4 v15, 0x0

    .line 187
    :goto_4
    if-ge v15, v7, :cond_8

    .line 188
    .line 189
    if-eqz v14, :cond_5

    .line 190
    .line 191
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 192
    .line 193
    .line 194
    move-result v18

    .line 195
    if-eqz v18, :cond_6

    .line 196
    .line 197
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 202
    .line 203
    .line 204
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 208
    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    :goto_6
    if-ge v14, v7, :cond_8

    .line 212
    .line 213
    sub-int v15, v7, v14

    .line 214
    .line 215
    invoke-static {v15}, Landroidx/media3/container/VorbisUtil;->a(I)I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    invoke-virtual {v13, v15}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    add-int/2addr v14, v15

    .line 224
    goto :goto_6

    .line 225
    :cond_8
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    if-gt v14, v4, :cond_d

    .line 230
    .line 231
    const/4 v15, 0x1

    .line 232
    if-eq v14, v15, :cond_9

    .line 233
    .line 234
    if-ne v14, v4, :cond_c

    .line 235
    .line 236
    :cond_9
    const/16 v4, 0x20

    .line 237
    .line 238
    invoke-virtual {v13, v4}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v4}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    add-int/2addr v4, v15

    .line 249
    invoke-virtual {v13, v15}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 250
    .line 251
    .line 252
    if-ne v14, v15, :cond_b

    .line 253
    .line 254
    if-eqz v5, :cond_a

    .line 255
    .line 256
    int-to-long v14, v7

    .line 257
    int-to-long v6, v5

    .line 258
    long-to-double v14, v14

    .line 259
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 260
    .line 261
    long-to-double v5, v6

    .line 262
    div-double v5, v19, v5

    .line 263
    .line 264
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 265
    .line 266
    .line 267
    move-result-wide v5

    .line 268
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    double-to-long v5, v5

    .line 273
    goto :goto_7

    .line 274
    :cond_a
    const-wide/16 v5, 0x0

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_b
    int-to-long v6, v7

    .line 278
    int-to-long v14, v5

    .line 279
    mul-long v5, v6, v14

    .line 280
    .line 281
    :goto_7
    int-to-long v14, v4

    .line 282
    mul-long/2addr v5, v14

    .line 283
    long-to-int v4, v5

    .line 284
    invoke-virtual {v13, v4}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 285
    .line 286
    .line 287
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    move/from16 v14, p1

    .line 290
    .line 291
    const/4 v4, 0x0

    .line 292
    const/4 v5, 0x1

    .line 293
    const/4 v6, 0x4

    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v1, "lookup type greater than 2 not decodable: "

    .line 299
    .line 300
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const/4 v1, 0x0

    .line 311
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    throw v0

    .line 316
    :cond_e
    const/4 v1, 0x0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 320
    .line 321
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget v2, v13, Landroidx/media3/container/VorbisBitArray;->c:I

    .line 325
    .line 326
    mul-int/lit8 v2, v2, 0x8

    .line 327
    .line 328
    iget v3, v13, Landroidx/media3/container/VorbisBitArray;->d:I

    .line 329
    .line 330
    add-int/2addr v2, v3

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    throw v0

    .line 343
    :cond_f
    move/from16 p1, v14

    .line 344
    .line 345
    const/4 v1, 0x6

    .line 346
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    const/16 v17, 0x1

    .line 351
    .line 352
    add-int/lit8 v5, v5, 0x1

    .line 353
    .line 354
    const/4 v6, 0x0

    .line 355
    :goto_8
    if-ge v6, v5, :cond_11

    .line 356
    .line 357
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    if-nez v12, :cond_10

    .line 362
    .line 363
    add-int/lit8 v6, v6, 0x1

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_10
    const-string v0, "placeholder of time domain transforms not zeroed out"

    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    throw v0

    .line 374
    :cond_11
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    const/4 v6, 0x1

    .line 379
    add-int/2addr v5, v6

    .line 380
    const/4 v12, 0x0

    .line 381
    :goto_9
    const/4 v14, 0x3

    .line 382
    if-ge v12, v5, :cond_1b

    .line 383
    .line 384
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 385
    .line 386
    .line 387
    move-result v15

    .line 388
    if-eqz v15, :cond_19

    .line 389
    .line 390
    if-ne v15, v6, :cond_18

    .line 391
    .line 392
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    new-array v15, v6, [I

    .line 397
    .line 398
    const/4 v1, -0x1

    .line 399
    const/4 v11, 0x0

    .line 400
    :goto_a
    if-ge v11, v6, :cond_13

    .line 401
    .line 402
    const/4 v7, 0x4

    .line 403
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    aput v4, v15, v11

    .line 408
    .line 409
    if-le v4, v1, :cond_12

    .line 410
    .line 411
    move v1, v4

    .line 412
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 413
    .line 414
    const/4 v4, 0x2

    .line 415
    const/16 v7, 0x10

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 419
    .line 420
    new-array v4, v1, [I

    .line 421
    .line 422
    const/4 v7, 0x0

    .line 423
    :goto_b
    if-ge v7, v1, :cond_16

    .line 424
    .line 425
    invoke-virtual {v13, v14}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 426
    .line 427
    .line 428
    move-result v11

    .line 429
    const/16 v17, 0x1

    .line 430
    .line 431
    add-int/lit8 v11, v11, 0x1

    .line 432
    .line 433
    aput v11, v4, v7

    .line 434
    .line 435
    const/4 v11, 0x2

    .line 436
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 437
    .line 438
    .line 439
    move-result v21

    .line 440
    move/from16 v11, p1

    .line 441
    .line 442
    if-lez v21, :cond_14

    .line 443
    .line 444
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 445
    .line 446
    .line 447
    :cond_14
    move/from16 v22, v1

    .line 448
    .line 449
    const/4 v14, 0x0

    .line 450
    :goto_c
    shl-int v1, v17, v21

    .line 451
    .line 452
    if-ge v14, v1, :cond_15

    .line 453
    .line 454
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 455
    .line 456
    .line 457
    add-int/lit8 v14, v14, 0x1

    .line 458
    .line 459
    const/16 v11, 0x8

    .line 460
    .line 461
    const/16 v17, 0x1

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_15
    add-int/lit8 v7, v7, 0x1

    .line 465
    .line 466
    move/from16 v1, v22

    .line 467
    .line 468
    const/16 p1, 0x8

    .line 469
    .line 470
    const/4 v14, 0x3

    .line 471
    goto :goto_b

    .line 472
    :cond_16
    const/4 v11, 0x2

    .line 473
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 474
    .line 475
    .line 476
    const/4 v7, 0x4

    .line 477
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    const/4 v7, 0x0

    .line 482
    const/4 v11, 0x0

    .line 483
    const/4 v14, 0x0

    .line 484
    :goto_d
    if-ge v7, v6, :cond_1a

    .line 485
    .line 486
    aget v21, v15, v7

    .line 487
    .line 488
    aget v21, v4, v21

    .line 489
    .line 490
    add-int v11, v11, v21

    .line 491
    .line 492
    :goto_e
    if-ge v14, v11, :cond_17

    .line 493
    .line 494
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 495
    .line 496
    .line 497
    add-int/lit8 v14, v14, 0x1

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v1, "floor type greater than 1 not decodable: "

    .line 506
    .line 507
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    const/4 v1, 0x0

    .line 518
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    throw v0

    .line 523
    :cond_19
    move/from16 v11, p1

    .line 524
    .line 525
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 526
    .line 527
    .line 528
    const/16 v1, 0x10

    .line 529
    .line 530
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 534
    .line 535
    .line 536
    const/4 v1, 0x6

    .line 537
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 541
    .line 542
    .line 543
    const/4 v7, 0x4

    .line 544
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    const/16 v17, 0x1

    .line 549
    .line 550
    add-int/lit8 v1, v1, 0x1

    .line 551
    .line 552
    const/4 v4, 0x0

    .line 553
    :goto_f
    if-ge v4, v1, :cond_1a

    .line 554
    .line 555
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 556
    .line 557
    .line 558
    add-int/lit8 v4, v4, 0x1

    .line 559
    .line 560
    const/16 v11, 0x8

    .line 561
    .line 562
    goto :goto_f

    .line 563
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 564
    .line 565
    const/16 p1, 0x8

    .line 566
    .line 567
    const/4 v1, 0x6

    .line 568
    const/4 v4, 0x2

    .line 569
    const/4 v6, 0x1

    .line 570
    const/16 v7, 0x10

    .line 571
    .line 572
    const/4 v11, 0x5

    .line 573
    const/16 v15, 0x18

    .line 574
    .line 575
    goto/16 :goto_9

    .line 576
    .line 577
    :cond_1b
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    const/16 v17, 0x1

    .line 582
    .line 583
    add-int/lit8 v4, v4, 0x1

    .line 584
    .line 585
    const/4 v5, 0x0

    .line 586
    :goto_10
    if-ge v5, v4, :cond_22

    .line 587
    .line 588
    const/16 v6, 0x10

    .line 589
    .line 590
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    const/4 v11, 0x2

    .line 595
    if-gt v7, v11, :cond_21

    .line 596
    .line 597
    const/16 v6, 0x18

    .line 598
    .line 599
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 609
    .line 610
    .line 611
    move-result v7

    .line 612
    add-int/lit8 v7, v7, 0x1

    .line 613
    .line 614
    const/16 v11, 0x8

    .line 615
    .line 616
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 617
    .line 618
    .line 619
    new-array v1, v7, [I

    .line 620
    .line 621
    const/4 v12, 0x0

    .line 622
    :goto_11
    if-ge v12, v7, :cond_1d

    .line 623
    .line 624
    const/4 v14, 0x3

    .line 625
    invoke-virtual {v13, v14}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 626
    .line 627
    .line 628
    move-result v15

    .line 629
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 630
    .line 631
    .line 632
    move-result v16

    .line 633
    const/4 v6, 0x5

    .line 634
    if-eqz v16, :cond_1c

    .line 635
    .line 636
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 637
    .line 638
    .line 639
    move-result v16

    .line 640
    goto :goto_12

    .line 641
    :cond_1c
    const/16 v16, 0x0

    .line 642
    .line 643
    :goto_12
    mul-int/lit8 v16, v16, 0x8

    .line 644
    .line 645
    add-int v16, v16, v15

    .line 646
    .line 647
    aput v16, v1, v12

    .line 648
    .line 649
    add-int/lit8 v12, v12, 0x1

    .line 650
    .line 651
    const/16 v6, 0x18

    .line 652
    .line 653
    goto :goto_11

    .line 654
    :cond_1d
    const/4 v6, 0x5

    .line 655
    const/4 v14, 0x3

    .line 656
    const/4 v12, 0x0

    .line 657
    :goto_13
    if-ge v12, v7, :cond_20

    .line 658
    .line 659
    const/4 v15, 0x0

    .line 660
    :goto_14
    if-ge v15, v11, :cond_1f

    .line 661
    .line 662
    aget v16, v1, v12

    .line 663
    .line 664
    const/16 v17, 0x1

    .line 665
    .line 666
    shl-int v20, v17, v15

    .line 667
    .line 668
    and-int v16, v16, v20

    .line 669
    .line 670
    if-eqz v16, :cond_1e

    .line 671
    .line 672
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 673
    .line 674
    .line 675
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    .line 676
    .line 677
    const/16 v11, 0x8

    .line 678
    .line 679
    goto :goto_14

    .line 680
    :cond_1f
    add-int/lit8 v12, v12, 0x1

    .line 681
    .line 682
    const/16 v11, 0x8

    .line 683
    .line 684
    goto :goto_13

    .line 685
    :cond_20
    add-int/lit8 v5, v5, 0x1

    .line 686
    .line 687
    const/4 v1, 0x6

    .line 688
    const/16 v17, 0x1

    .line 689
    .line 690
    goto :goto_10

    .line 691
    :cond_21
    const-string v0, "residueType greater than 2 is not decodable"

    .line 692
    .line 693
    const/4 v1, 0x0

    .line 694
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    throw v0

    .line 699
    :cond_22
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    const/16 v17, 0x1

    .line 704
    .line 705
    add-int/lit8 v4, v4, 0x1

    .line 706
    .line 707
    const/4 v1, 0x0

    .line 708
    :goto_15
    if-ge v1, v4, :cond_29

    .line 709
    .line 710
    const/16 v6, 0x10

    .line 711
    .line 712
    invoke-virtual {v13, v6}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    if-eqz v5, :cond_23

    .line 717
    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v7, "mapping type other than 0 not supported: "

    .line 721
    .line 722
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v5

    .line 732
    const-string v6, "VorbisUtil"

    .line 733
    .line 734
    invoke-static {v6, v5}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    const/4 v7, 0x4

    .line 738
    const/4 v11, 0x2

    .line 739
    goto :goto_1a

    .line 740
    :cond_23
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 741
    .line 742
    .line 743
    move-result v5

    .line 744
    if-eqz v5, :cond_24

    .line 745
    .line 746
    const/4 v7, 0x4

    .line 747
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    const/16 v17, 0x1

    .line 752
    .line 753
    add-int/lit8 v5, v5, 0x1

    .line 754
    .line 755
    goto :goto_16

    .line 756
    :cond_24
    const/16 v17, 0x1

    .line 757
    .line 758
    move/from16 v5, v17

    .line 759
    .line 760
    :goto_16
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 761
    .line 762
    .line 763
    move-result v6

    .line 764
    if-eqz v6, :cond_25

    .line 765
    .line 766
    const/16 v11, 0x8

    .line 767
    .line 768
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    add-int/lit8 v6, v6, 0x1

    .line 773
    .line 774
    const/4 v7, 0x0

    .line 775
    :goto_17
    if-ge v7, v6, :cond_25

    .line 776
    .line 777
    add-int/lit8 v11, v9, -0x1

    .line 778
    .line 779
    invoke-static {v11}, Landroidx/media3/container/VorbisUtil;->a(I)I

    .line 780
    .line 781
    .line 782
    move-result v12

    .line 783
    invoke-virtual {v13, v12}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 784
    .line 785
    .line 786
    invoke-static {v11}, Landroidx/media3/container/VorbisUtil;->a(I)I

    .line 787
    .line 788
    .line 789
    move-result v11

    .line 790
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 791
    .line 792
    .line 793
    add-int/lit8 v7, v7, 0x1

    .line 794
    .line 795
    goto :goto_17

    .line 796
    :cond_25
    const/4 v11, 0x2

    .line 797
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 798
    .line 799
    .line 800
    move-result v6

    .line 801
    if-nez v6, :cond_28

    .line 802
    .line 803
    const/4 v15, 0x1

    .line 804
    if-le v5, v15, :cond_26

    .line 805
    .line 806
    const/4 v6, 0x0

    .line 807
    :goto_18
    if-ge v6, v9, :cond_26

    .line 808
    .line 809
    const/4 v7, 0x4

    .line 810
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 811
    .line 812
    .line 813
    add-int/lit8 v6, v6, 0x1

    .line 814
    .line 815
    goto :goto_18

    .line 816
    :cond_26
    const/4 v7, 0x4

    .line 817
    const/4 v6, 0x0

    .line 818
    :goto_19
    if-ge v6, v5, :cond_27

    .line 819
    .line 820
    const/16 v12, 0x8

    .line 821
    .line 822
    invoke-virtual {v13, v12}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v13, v12}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v13, v12}, Landroidx/media3/container/VorbisBitArray;->c(I)V

    .line 829
    .line 830
    .line 831
    add-int/lit8 v6, v6, 0x1

    .line 832
    .line 833
    goto :goto_19

    .line 834
    :cond_27
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    .line 835
    .line 836
    goto/16 :goto_15

    .line 837
    .line 838
    :cond_28
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    .line 839
    .line 840
    const/4 v1, 0x0

    .line 841
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    throw v0

    .line 846
    :cond_29
    const/4 v1, 0x6

    .line 847
    invoke-virtual {v13, v1}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    const/16 v17, 0x1

    .line 852
    .line 853
    add-int/lit8 v1, v1, 0x1

    .line 854
    .line 855
    new-array v4, v1, [Landroidx/media3/container/VorbisUtil$Mode;

    .line 856
    .line 857
    const/4 v5, 0x0

    .line 858
    :goto_1b
    if-ge v5, v1, :cond_2a

    .line 859
    .line 860
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 861
    .line 862
    .line 863
    move-result v6

    .line 864
    const/16 v7, 0x10

    .line 865
    .line 866
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 867
    .line 868
    .line 869
    invoke-virtual {v13, v7}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 870
    .line 871
    .line 872
    const/16 v11, 0x8

    .line 873
    .line 874
    invoke-virtual {v13, v11}, Landroidx/media3/container/VorbisBitArray;->b(I)I

    .line 875
    .line 876
    .line 877
    new-instance v9, Landroidx/media3/container/VorbisUtil$Mode;

    .line 878
    .line 879
    invoke-direct {v9, v6}, Landroidx/media3/container/VorbisUtil$Mode;-><init>(Z)V

    .line 880
    .line 881
    .line 882
    aput-object v9, v4, v5

    .line 883
    .line 884
    add-int/lit8 v5, v5, 0x1

    .line 885
    .line 886
    goto :goto_1b

    .line 887
    :cond_2a
    invoke-virtual {v13}, Landroidx/media3/container/VorbisBitArray;->a()Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-eqz v1, :cond_2c

    .line 892
    .line 893
    new-instance v1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 894
    .line 895
    invoke-direct {v1, v3, v8, v10, v4}, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media3/container/VorbisUtil$VorbisIdHeader;Landroidx/media3/container/VorbisUtil$CommentHeader;[B[Landroidx/media3/container/VorbisUtil$Mode;)V

    .line 896
    .line 897
    .line 898
    move-object v8, v1

    .line 899
    :goto_1c
    iput-object v8, v0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 900
    .line 901
    if-nez v8, :cond_2b

    .line 902
    .line 903
    const/16 v17, 0x1

    .line 904
    .line 905
    return v17

    .line 906
    :cond_2b
    iget-object v0, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->a:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 907
    .line 908
    new-instance v1, Ljava/util/ArrayList;

    .line 909
    .line 910
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .line 912
    .line 913
    iget-object v3, v0, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->g:[B

    .line 914
    .line 915
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    iget-object v3, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->c:[B

    .line 919
    .line 920
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    iget-object v3, v8, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->b:Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 924
    .line 925
    iget-object v3, v3, Landroidx/media3/container/VorbisUtil$CommentHeader;->a:[Ljava/lang/String;

    .line 926
    .line 927
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->o([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    invoke-static {v3}, Landroidx/media3/extractor/VorbisUtil;->a(Ljava/util/List;)Landroidx/media3/common/Metadata;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    new-instance v4, Landroidx/media3/common/Format$Builder;

    .line 936
    .line 937
    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 938
    .line 939
    .line 940
    const-string v5, "audio/ogg"

    .line 941
    .line 942
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v5

    .line 946
    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 947
    .line 948
    const-string v5, "audio/vorbis"

    .line 949
    .line 950
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 955
    .line 956
    iget v5, v0, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->d:I

    .line 957
    .line 958
    iput v5, v4, Landroidx/media3/common/Format$Builder;->i:I

    .line 959
    .line 960
    iget v5, v0, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->c:I

    .line 961
    .line 962
    iput v5, v4, Landroidx/media3/common/Format$Builder;->j:I

    .line 963
    .line 964
    iget v5, v0, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->a:I

    .line 965
    .line 966
    iput v5, v4, Landroidx/media3/common/Format$Builder;->I:I

    .line 967
    .line 968
    iget v0, v0, Landroidx/media3/container/VorbisUtil$VorbisIdHeader;->b:I

    .line 969
    .line 970
    iput v0, v4, Landroidx/media3/common/Format$Builder;->K:I

    .line 971
    .line 972
    iput-object v1, v4, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 973
    .line 974
    iput-object v3, v4, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 975
    .line 976
    new-instance v0, Landroidx/media3/common/Format;

    .line 977
    .line 978
    invoke-direct {v0, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 979
    .line 980
    .line 981
    iput-object v0, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    .line 982
    .line 983
    const/16 v17, 0x1

    .line 984
    .line 985
    return v17

    .line 986
    :cond_2c
    const-string v0, "framing bit after modes not set as expected"

    .line 987
    .line 988
    const/4 v1, 0x0

    .line 989
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    throw v0
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->n:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->q:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->r:Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->o:I

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->p:Z

    .line 17
    .line 18
    return-void
.end method
