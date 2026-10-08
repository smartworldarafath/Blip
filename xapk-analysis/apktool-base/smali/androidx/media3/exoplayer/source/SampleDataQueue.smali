.class Landroidx/media3/exoplayer/source/SampleDataQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/upstream/Allocator;

.field public final b:I

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public g:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/media3/exoplayer/upstream/Allocator;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->b:I

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(IJ)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 33
    .line 34
    return-void
.end method

.method public static c(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 13
    .line 14
    sub-long/2addr v0, p1

    .line 15
    long-to-int v0, v0

    .line 16
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    .line 23
    .line 24
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 25
    .line 26
    sub-long v3, p1, v3

    .line 27
    .line 28
    long-to-int v3, v3

    .line 29
    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    .line 30
    .line 31
    add-int/2addr v3, v1

    .line 32
    invoke-virtual {p3, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    sub-int/2addr p4, v0

    .line 36
    int-to-long v0, v0

    .line 37
    add-long/2addr p1, v0

    .line 38
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p0
.end method

.method public static d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .locals 6

    .line 1
    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, p4

    .line 11
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 12
    .line 13
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 14
    .line 15
    sub-long/2addr v1, p1

    .line 16
    long-to-int v1, v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    .line 24
    .line 25
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 26
    .line 27
    sub-long v4, p1, v4

    .line 28
    .line 29
    long-to-int v4, v4

    .line 30
    iget v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    .line 31
    .line 32
    add-int/2addr v4, v2

    .line 33
    sub-int v2, p4, v0

    .line 34
    .line 35
    invoke-static {v3, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    int-to-long v1, v1

    .line 40
    add-long/2addr p1, v1

    .line 41
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 42
    .line 43
    cmp-long v1, p1, v1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-object p0
.end method

.method public static e(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_9

    .line 14
    .line 15
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 19
    .line 20
    .line 21
    iget-object v6, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 22
    .line 23
    move-object/from16 v7, p0

    .line 24
    .line 25
    invoke-static {v7, v3, v4, v6, v5}, Landroidx/media3/exoplayer/source/SampleDataQueue;->d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-wide/16 v7, 0x1

    .line 30
    .line 31
    add-long/2addr v3, v7

    .line 32
    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    aget-byte v7, v7, v8

    .line 36
    .line 37
    and-int/lit16 v9, v7, 0x80

    .line 38
    .line 39
    if-eqz v9, :cond_0

    .line 40
    .line 41
    move v9, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v9, v8

    .line 44
    :goto_0
    and-int/lit8 v7, v7, 0x7f

    .line 45
    .line 46
    iget-object v10, v0, Landroidx/media3/decoder/DecoderInputBuffer;->l:Landroidx/media3/decoder/CryptoInfo;

    .line 47
    .line 48
    iget-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->a:[B

    .line 49
    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    const/16 v11, 0x10

    .line 53
    .line 54
    new-array v11, v11, [B

    .line 55
    .line 56
    iput-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->a:[B

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->a:[B

    .line 63
    .line 64
    invoke-static {v6, v3, v4, v11, v7}, Landroidx/media3/exoplayer/source/SampleDataQueue;->d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    int-to-long v11, v7

    .line 69
    add-long/2addr v3, v11

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 74
    .line 75
    .line 76
    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 77
    .line 78
    invoke-static {v6, v3, v4, v7, v5}, Landroidx/media3/exoplayer/source/SampleDataQueue;->d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const-wide/16 v11, 0x2

    .line 83
    .line 84
    add-long/2addr v3, v11

    .line 85
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    :cond_2
    move v11, v5

    .line 90
    iget-object v5, v10, Landroidx/media3/decoder/CryptoInfo;->d:[I

    .line 91
    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    array-length v7, v5

    .line 95
    if-ge v7, v11, :cond_3

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    :goto_2
    move-object v12, v5

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    :goto_3
    new-array v5, v11, [I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_4
    iget-object v5, v10, Landroidx/media3/decoder/CryptoInfo;->e:[I

    .line 104
    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    array-length v7, v5

    .line 108
    if-ge v7, v11, :cond_5

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_5
    :goto_5
    move-object v13, v5

    .line 112
    goto :goto_7

    .line 113
    :cond_6
    :goto_6
    new-array v5, v11, [I

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :goto_7
    if-eqz v9, :cond_7

    .line 117
    .line 118
    mul-int/lit8 v5, v11, 0x6

    .line 119
    .line 120
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 121
    .line 122
    .line 123
    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 124
    .line 125
    invoke-static {v6, v3, v4, v7, v5}, Landroidx/media3/exoplayer/source/SampleDataQueue;->d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    int-to-long v14, v5

    .line 130
    add-long/2addr v3, v14

    .line 131
    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 132
    .line 133
    .line 134
    :goto_8
    if-ge v8, v11, :cond_8

    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    aput v5, v12, v8

    .line 141
    .line 142
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    aput v5, v13, v8

    .line 147
    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_7
    aput v8, v12, v8

    .line 152
    .line 153
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 154
    .line 155
    iget-wide v14, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 156
    .line 157
    sub-long v14, v3, v14

    .line 158
    .line 159
    long-to-int v7, v14

    .line 160
    sub-int/2addr v5, v7

    .line 161
    aput v5, v13, v8

    .line 162
    .line 163
    :cond_8
    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->c:Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 164
    .line 165
    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v14, v5, Landroidx/media3/extractor/TrackOutput$CryptoData;->b:[B

    .line 168
    .line 169
    iget-object v15, v10, Landroidx/media3/decoder/CryptoInfo;->a:[B

    .line 170
    .line 171
    iget v7, v5, Landroidx/media3/extractor/TrackOutput$CryptoData;->a:I

    .line 172
    .line 173
    iget v8, v5, Landroidx/media3/extractor/TrackOutput$CryptoData;->c:I

    .line 174
    .line 175
    iget v5, v5, Landroidx/media3/extractor/TrackOutput$CryptoData;->d:I

    .line 176
    .line 177
    move/from16 v18, v5

    .line 178
    .line 179
    move/from16 v16, v7

    .line 180
    .line 181
    move/from16 v17, v8

    .line 182
    .line 183
    invoke-virtual/range {v10 .. v18}, Landroidx/media3/decoder/CryptoInfo;->a(I[I[I[B[BIII)V

    .line 184
    .line 185
    .line 186
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 187
    .line 188
    sub-long/2addr v3, v7

    .line 189
    long-to-int v3, v3

    .line 190
    int-to-long v4, v3

    .line 191
    add-long/2addr v7, v4

    .line 192
    iput-wide v7, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 193
    .line 194
    iget v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 195
    .line 196
    sub-int/2addr v4, v3

    .line 197
    iput v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_9
    move-object/from16 v7, p0

    .line 201
    .line 202
    move-object v6, v7

    .line 203
    :goto_9
    const/high16 v3, 0x10000000

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_c

    .line 210
    .line 211
    const/4 v3, 0x4

    .line 212
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 213
    .line 214
    .line 215
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 216
    .line 217
    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 218
    .line 219
    invoke-static {v6, v4, v5, v7, v3}, Landroidx/media3/exoplayer/source/SampleDataQueue;->d(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iget-wide v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 228
    .line 229
    const-wide/16 v7, 0x4

    .line 230
    .line 231
    add-long/2addr v5, v7

    .line 232
    iput-wide v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 233
    .line 234
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 235
    .line 236
    sub-int/2addr v5, v3

    .line 237
    iput v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 240
    .line 241
    .line 242
    iget-wide v5, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 243
    .line 244
    iget-object v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 245
    .line 246
    invoke-static {v4, v5, v6, v3, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->c(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 251
    .line 252
    int-to-long v6, v2

    .line 253
    add-long/2addr v4, v6

    .line 254
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 255
    .line 256
    iget v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 257
    .line 258
    sub-int/2addr v4, v2

    .line 259
    iput v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 260
    .line 261
    iget-object v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 262
    .line 263
    if-eqz v2, :cond_b

    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-ge v2, v4, :cond_a

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_a
    iget-object v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 275
    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_b
    :goto_a
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    iput-object v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 283
    .line 284
    :goto_b
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 285
    .line 286
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    iget v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 289
    .line 290
    invoke-static {v3, v4, v5, v0, v1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->c(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    return-object v0

    .line 295
    :cond_c
    iget v2, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 298
    .line 299
    .line 300
    iget-wide v2, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 301
    .line 302
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 303
    .line 304
    iget v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 305
    .line 306
    invoke-static {v6, v2, v3, v0, v1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->c(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 9
    .line 10
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 11
    .line 12
    cmp-long v1, p1, v1

    .line 13
    .line 14
    if-ltz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/upstream/Allocator;->c(Landroidx/media3/exoplayer/upstream/Allocation;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 29
    .line 30
    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 31
    .line 32
    iput-object v2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 36
    .line 37
    iget-wide p1, p1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 38
    .line 39
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    .line 40
    .line 41
    cmp-long p1, p1, v1

    .line 42
    .line 43
    if-gez p1, :cond_2

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public final b(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 8
    .line 9
    invoke-interface {v1}, Landroidx/media3/exoplayer/upstream/Allocator;->b()Landroidx/media3/exoplayer/upstream/Allocation;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 16
    .line 17
    iget-wide v3, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 18
    .line 19
    iget v5, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->b:I

    .line 20
    .line 21
    invoke-direct {v2, v5, v3, v4}, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(IJ)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    .line 25
    .line 26
    iput-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 29
    .line 30
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    .line 33
    .line 34
    sub-long/2addr v0, v2

    .line 35
    long-to-int p0, v0

    .line 36
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method
