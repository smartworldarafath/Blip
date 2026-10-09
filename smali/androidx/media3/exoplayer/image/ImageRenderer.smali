.class public Landroidx/media3/exoplayer/image/ImageRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;,
        Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;
    }
.end annotation


# instance fields
.field public final C:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

.field public final D:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final E:Ljava/util/ArrayDeque;

.field public F:Z

.field public G:Z

.field public H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

.field public I:J

.field public J:J

.field public K:I

.field public L:I

.field public M:Landroidx/media3/common/Format;

.field public N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

.field public O:Landroidx/media3/decoder/DecoderInputBuffer;

.field public P:Landroidx/media3/exoplayer/image/ImageOutput;

.field public Q:Landroidx/media3/exoplayer/image/ImageMetadataListener;

.field public R:Landroid/graphics/Bitmap;

.field public S:Z

.field public T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public V:I

.field public W:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    .line 6
    .line 7
    sget-object p1, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->P:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 10
    .line 11
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 18
    .line 19
    sget-object p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->c:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 36
    .line 37
    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:J

    .line 38
    .line 39
    iput v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, p1, v0

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-wide p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 23
    .line 24
    cmp-long p6, p2, v0

    .line 25
    .line 26
    if-eqz p6, :cond_1

    .line 27
    .line 28
    iget-wide v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:J

    .line 29
    .line 30
    cmp-long p6, v2, v0

    .line 31
    .line 32
    if-eqz p6, :cond_0

    .line 33
    .line 34
    cmp-long p2, v2, p2

    .line 35
    .line 36
    if-ltz p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 42
    .line 43
    invoke-direct {p2, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 51
    .line 52
    invoke-direct {p1, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 56
    .line 57
    return-void
.end method

.method public final G(J)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_8

    .line 11
    .line 12
    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 18
    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x1

    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoder;->l()Landroidx/media3/decoder/DecoderOutputBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_2
    const/4 v6, 0x4

    .line 47
    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    iget p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 54
    .line 55
    if-ne p1, v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->J()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->I()V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->g()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_15

    .line 77
    .line 78
    iput-boolean v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Z

    .line 79
    .line 80
    return v1

    .line 81
    :cond_4
    iget-object v6, v0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;->m:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    .line 84
    .line 85
    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v6, v0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;->m:Landroid/graphics/Bitmap;

    .line 89
    .line 90
    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->g()V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 96
    .line 97
    if-eqz v0, :cond_15

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    if-eqz v0, :cond_15

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 104
    .line 105
    if-eqz v0, :cond_15

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 113
    .line 114
    iget v6, v0, Landroidx/media3/common/Format;->R:I

    .line 115
    .line 116
    iget v0, v0, Landroidx/media3/common/Format;->S:I

    .line 117
    .line 118
    if-ne v6, v5, :cond_6

    .line 119
    .line 120
    if-eq v0, v5, :cond_7

    .line 121
    .line 122
    :cond_6
    const/4 v7, -0x1

    .line 123
    if-eq v6, v7, :cond_7

    .line 124
    .line 125
    if-eq v0, v7, :cond_7

    .line 126
    .line 127
    move v0, v5

    .line 128
    goto :goto_0

    .line 129
    :cond_7
    move v0, v1

    .line 130
    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 131
    .line 132
    iget-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    if-eqz v0, :cond_9

    .line 138
    .line 139
    iget v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->a:I

    .line 140
    .line 141
    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 147
    .line 148
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget v9, v9, Landroidx/media3/common/Format;->R:I

    .line 158
    .line 159
    div-int/2addr v8, v9

    .line 160
    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget v10, v10, Landroidx/media3/common/Format;->S:I

    .line 172
    .line 173
    div-int/2addr v9, v10

    .line 174
    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 175
    .line 176
    iget v10, v10, Landroidx/media3/common/Format;->R:I

    .line 177
    .line 178
    rem-int v11, v7, v10

    .line 179
    .line 180
    mul-int/2addr v11, v8

    .line 181
    div-int/2addr v7, v10

    .line 182
    mul-int/2addr v7, v9

    .line 183
    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 184
    .line 185
    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    goto :goto_1

    .line 190
    :cond_9
    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    :goto_1
    iput-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    .line 196
    .line 197
    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 198
    .line 199
    iget-object v6, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 205
    .line 206
    iget-wide v7, v7, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    .line 207
    .line 208
    sub-long p1, v7, p1

    .line 209
    .line 210
    iget v9, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 211
    .line 212
    if-ne v9, v3, :cond_a

    .line 213
    .line 214
    move v3, v5

    .line 215
    goto :goto_3

    .line 216
    :cond_a
    move v3, v1

    .line 217
    :goto_3
    iget v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 218
    .line 219
    if-eqz v9, :cond_d

    .line 220
    .line 221
    if-eq v9, v5, :cond_c

    .line 222
    .line 223
    if-ne v9, v4, :cond_b

    .line 224
    .line 225
    move v3, v1

    .line 226
    goto :goto_4

    .line 227
    :cond_b
    invoke-static {}, Lio/sentry/d;->d()V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_c
    move v3, v5

    .line 232
    :cond_d
    :goto_4
    if-nez v3, :cond_f

    .line 233
    .line 234
    const-wide/16 v9, 0x7530

    .line 235
    .line 236
    cmp-long p1, p1, v9

    .line 237
    .line 238
    if-gez p1, :cond_e

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_e
    move p1, v1

    .line 242
    goto :goto_6

    .line 243
    :cond_f
    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->Q:Landroidx/media3/exoplayer/image/ImageMetadataListener;

    .line 244
    .line 245
    if-eqz p1, :cond_10

    .line 246
    .line 247
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 248
    .line 249
    iget-wide v9, p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    .line 250
    .line 251
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    check-cast p1, Landroidx/media3/exoplayer/p;

    .line 257
    .line 258
    invoke-virtual {p1}, Landroidx/media3/exoplayer/p;->a()V

    .line 259
    .line 260
    .line 261
    :cond_10
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->P:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 262
    .line 263
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 264
    .line 265
    iget-wide v9, p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    .line 266
    .line 267
    sub-long/2addr v7, v9

    .line 268
    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    .line 269
    .line 270
    .line 271
    move p1, v5

    .line 272
    :goto_6
    if-nez p1, :cond_11

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    .line 281
    .line 282
    iput-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:J

    .line 283
    .line 284
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_12

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 295
    .line 296
    iget-wide v6, v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->a:J

    .line 297
    .line 298
    cmp-long v1, p1, v6

    .line 299
    .line 300
    if-ltz v1, :cond_12

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 307
    .line 308
    iput-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_12
    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 312
    .line 313
    const/4 p1, 0x0

    .line 314
    if-eqz v0, :cond_13

    .line 315
    .line 316
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 317
    .line 318
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    iget p2, p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->a:I

    .line 322
    .line 323
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget v0, v0, Landroidx/media3/common/Format;->S:I

    .line 329
    .line 330
    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    iget v1, v1, Landroidx/media3/common/Format;->R:I

    .line 336
    .line 337
    mul-int/2addr v0, v1

    .line 338
    sub-int/2addr v0, v5

    .line 339
    if-ne p2, v0, :cond_14

    .line 340
    .line 341
    :cond_13
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 342
    .line 343
    :cond_14
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 344
    .line 345
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 346
    .line 347
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 348
    .line 349
    return v5

    .line 350
    :cond_15
    :goto_8
    return v1
.end method

.method public final H(J)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 18
    .line 19
    if-eqz v2, :cond_15

    .line 20
    .line 21
    iget v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    if-eq v3, v4, :cond_15

    .line 25
    .line 26
    iget-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/media3/decoder/SimpleDecoder;->e()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 41
    .line 42
    iput-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x4

    .line 55
    if-ne v2, v5, :cond_3

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 61
    .line 62
    iput v7, p1, Landroidx/media3/decoder/Buffer;->j:I

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/SimpleDecoder;->m(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 72
    .line 73
    .line 74
    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 75
    .line 76
    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    invoke-virtual {p0, v0, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, -0x5

    .line 84
    const/4 v4, 0x1

    .line 85
    if-eq v2, v3, :cond_14

    .line 86
    .line 87
    const/4 v0, -0x4

    .line 88
    if-eq v2, v0, :cond_5

    .line 89
    .line 90
    const/4 p0, -0x3

    .line 91
    if-ne v2, p0, :cond_4

    .line 92
    .line 93
    goto/16 :goto_9

    .line 94
    .line 95
    :cond_4
    invoke-static {}, Lio/sentry/d;->d()V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 105
    .line 106
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-gtz v0, :cond_7

    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v7}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    :cond_7
    move v0, v4

    .line 128
    goto :goto_0

    .line 129
    :cond_8
    move v0, v1

    .line 130
    :goto_0
    if-eqz v0, :cond_9

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 138
    .line 139
    iput-object v3, v2, Landroidx/media3/decoder/DecoderInputBuffer;->k:Landroidx/media3/common/Format;

    .line 140
    .line 141
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroidx/media3/decoder/SimpleDecoder;->m(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 152
    .line 153
    .line 154
    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->V:I

    .line 155
    .line 156
    :cond_9
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v7}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_a

    .line 166
    .line 167
    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_a
    new-instance v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 172
    .line 173
    iget v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->V:I

    .line 174
    .line 175
    iget-wide v8, v2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 176
    .line 177
    invoke-direct {v3, v5, v8, v9}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;-><init>(IJ)V

    .line 178
    .line 179
    .line 180
    iput-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 181
    .line 182
    add-int/lit8 v2, v5, 0x1

    .line 183
    .line 184
    iput v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->V:I

    .line 185
    .line 186
    iget-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 187
    .line 188
    if-nez v2, :cond_11

    .line 189
    .line 190
    const-wide/16 v2, 0x7530

    .line 191
    .line 192
    sub-long v10, v8, v2

    .line 193
    .line 194
    cmp-long v10, v10, p1

    .line 195
    .line 196
    if-gtz v10, :cond_b

    .line 197
    .line 198
    add-long/2addr v2, v8

    .line 199
    cmp-long v2, p1, v2

    .line 200
    .line 201
    if-gtz v2, :cond_b

    .line 202
    .line 203
    move v2, v4

    .line 204
    goto :goto_1

    .line 205
    :cond_b
    move v2, v1

    .line 206
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 207
    .line 208
    if-eqz v3, :cond_c

    .line 209
    .line 210
    iget-wide v10, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    .line 211
    .line 212
    cmp-long v3, v10, p1

    .line 213
    .line 214
    if-gtz v3, :cond_c

    .line 215
    .line 216
    cmp-long p1, p1, v8

    .line 217
    .line 218
    if-gez p1, :cond_c

    .line 219
    .line 220
    move p1, v4

    .line 221
    goto :goto_2

    .line 222
    :cond_c
    move p1, v1

    .line 223
    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget p2, p2, Landroidx/media3/common/Format;->R:I

    .line 229
    .line 230
    const/4 v3, -0x1

    .line 231
    if-eq p2, v3, :cond_e

    .line 232
    .line 233
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 234
    .line 235
    iget v8, p2, Landroidx/media3/common/Format;->S:I

    .line 236
    .line 237
    if-eq v8, v3, :cond_e

    .line 238
    .line 239
    iget p2, p2, Landroidx/media3/common/Format;->R:I

    .line 240
    .line 241
    mul-int/2addr v8, p2

    .line 242
    sub-int/2addr v8, v4

    .line 243
    if-ne v5, v8, :cond_d

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_d
    move p2, v1

    .line 247
    goto :goto_4

    .line 248
    :cond_e
    :goto_3
    move p2, v4

    .line 249
    :goto_4
    if-nez v2, :cond_10

    .line 250
    .line 251
    if-nez p1, :cond_10

    .line 252
    .line 253
    if-eqz p2, :cond_f

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_f
    move p2, v1

    .line 257
    goto :goto_6

    .line 258
    :cond_10
    :goto_5
    move p2, v4

    .line 259
    :goto_6
    iput-boolean p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 260
    .line 261
    if-eqz p1, :cond_11

    .line 262
    .line 263
    if-nez v2, :cond_11

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 267
    .line 268
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 269
    .line 270
    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 271
    .line 272
    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v7}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_12

    .line 282
    .line 283
    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Z

    .line 284
    .line 285
    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 286
    .line 287
    return v1

    .line 288
    :cond_12
    iget-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 289
    .line 290
    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    iget-wide v1, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 296
    .line 297
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 298
    .line 299
    .line 300
    move-result-wide p1

    .line 301
    iput-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 302
    .line 303
    if-eqz v0, :cond_13

    .line 304
    .line 305
    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_13
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 314
    .line 315
    .line 316
    :goto_8
    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 317
    .line 318
    xor-int/2addr p0, v4

    .line 319
    return p0

    .line 320
    :cond_14
    iget-object p1, v0, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 326
    .line 327
    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->W:Z

    .line 328
    .line 329
    iput v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 330
    .line 331
    return v4

    .line 332
    :cond_15
    :goto_9
    return v1
.end method

.method public final I()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->W:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->a(Landroidx/media3/common/Format;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    .line 34
    .line 35
    const-string v1, "Provided decoder factory can\'t create decoder for format."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 41
    .line 42
    const/16 v2, 0xfa5

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    throw p0

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoder;->a()V

    .line 54
    .line 55
    .line 56
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->a:Landroid/content/Context;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 64
    .line 65
    iput-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->W:Z

    .line 66
    .line 67
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:I

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:J

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/decoder/SimpleDecoder;->a()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Z

    .line 2
    .line 3
    return p0
.end method

.method public final d(JJ)V
    .locals 3

    .line 1
    iget-boolean p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 7
    .line 8
    if-nez p3, :cond_3

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 13
    .line 14
    .line 15
    iget-object p4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 16
    .line 17
    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, -0x5

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object p3, p3, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iput-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 35
    .line 36
    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->W:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p1, -0x4

    .line 40
    if-ne v0, p1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x4

    .line 43
    invoke-virtual {p4, p1}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 48
    .line 49
    .line 50
    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Z

    .line 51
    .line 52
    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Z

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    :goto_1
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 56
    .line 57
    if-nez p3, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->I()V

    .line 60
    .line 61
    .line 62
    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    .line 63
    .line 64
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->G(J)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->H(J)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-eqz p3, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catch_0
    move-exception p1

    .line 86
    const/16 p2, 0xfa3

    .line 87
    .line 88
    const/4 p3, 0x0

    .line 89
    const/4 p4, 0x0

    .line 90
    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0
.end method

.method public final f(Landroidx/media3/common/Format;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;->a(Landroidx/media3/common/Format;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ImageRenderer"

    .line 2
    .line 3
    return-object p0
.end method

.method public final o(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x17

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p2, Landroidx/media3/exoplayer/image/ImageMetadataListener;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->Q:Landroidx/media3/exoplayer/image/ImageMetadataListener;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-nez p2, :cond_3

    .line 24
    .line 25
    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 26
    .line 27
    :cond_3
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->P:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 28
    .line 29
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:Landroidx/media3/common/Format;

    .line 3
    .line 4
    sget-object v0, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->c:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->J()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->P:Landroidx/media3/exoplayer/image/ImageOutput;

    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final u(ZZ)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 2
    .line 3
    return-void
.end method

.method public final v(JZZ)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 3
    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Z

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->R:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->T:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 19
    .line 20
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->U:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->S:Z

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->O:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/media3/decoder/SimpleDecoder;->flush()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final w()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->J()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iget v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 6
    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:I

    .line 12
    .line 13
    return-void
.end method
