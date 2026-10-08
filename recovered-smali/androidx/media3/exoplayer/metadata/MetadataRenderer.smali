.class public final Landroidx/media3/exoplayer/metadata/MetadataRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final C:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

.field public final D:Landroidx/media3/exoplayer/metadata/MetadataOutput;

.field public final E:Landroid/os/Handler;

.field public final F:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field public G:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

.field public H:Z

.field public I:Z

.field public J:J

.field public K:Landroidx/media3/common/Metadata;

.field public L:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->E:Landroid/os/Handler;

    .line 17
    .line 18
    sget-object p1, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 21
    .line 22
    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->F:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 29
    .line 30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p1, p1, p2

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 5
    .line 6
    check-cast p2, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-wide p2, p1, Landroidx/media3/common/Metadata;->b:J

    .line 19
    .line 20
    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    sub-long/2addr v0, p4

    .line 24
    cmp-long p2, p2, v0

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Landroidx/media3/common/Metadata;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 32
    .line 33
    invoke-direct {p2, v0, v1, p1}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    .line 34
    .line 35
    .line 36
    move-object p1, p2

    .line 37
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 38
    .line 39
    :cond_1
    iput-wide p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 40
    .line 41
    return-void
.end method

.method public final G(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_2

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->a()Landroidx/media3/common/Format;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 16
    .line 17
    check-cast v3, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;->b(Landroidx/media3/common/Format;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    aget-object v1, v1, v0

    .line 30
    .line 31
    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->c()[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->F:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 41
    .line 42
    .line 43
    array-length v4, v1

    .line 44
    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    aget-object v1, v1, v0

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public final H(J)J
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 16
    .line 17
    .line 18
    iget-wide v5, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 19
    .line 20
    cmp-long v0, v5, v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move v3, v4

    .line 25
    :cond_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->I:Z

    .line 2
    .line 3
    return p0
.end method

.method public final d(JJ)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :cond_0
    :goto_0
    if-eqz v1, :cond_a

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_7

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 11
    .line 12
    if-nez v1, :cond_7

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->F:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    invoke-virtual {p0, v3, v1, v4}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, -0x3

    .line 30
    const/4 v6, 0x4

    .line 31
    if-ne v4, v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    const-wide/32 v7, 0xf4240

    .line 42
    .line 43
    .line 44
    const/4 v9, -0x4

    .line 45
    if-ne v4, v9, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget-wide v4, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 54
    .line 55
    sub-long/2addr v4, v7

    .line 56
    cmp-long v4, p1, v4

    .line 57
    .line 58
    if-gez v4, :cond_4

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_2
    if-eq v4, v9, :cond_3

    .line 63
    .line 64
    if-ne v4, v5, :cond_4

    .line 65
    .line 66
    :cond_3
    iget-wide v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 67
    .line 68
    iget-wide v10, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 69
    .line 70
    sub-long v10, p1, v10

    .line 71
    .line 72
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    cmp-long v12, v4, v12

    .line 78
    .line 79
    if-eqz v12, :cond_7

    .line 80
    .line 81
    sub-long/2addr v4, v7

    .line 82
    cmp-long v4, v10, v4

    .line 83
    .line 84
    if-gez v4, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p0, v3, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ne v4, v9, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    iput-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H:Z

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    iget-wide v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 103
    .line 104
    iget-wide v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 105
    .line 106
    cmp-long v3, v3, v5

    .line 107
    .line 108
    if-ltz v3, :cond_7

    .line 109
    .line 110
    iget-wide v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->J:J

    .line 111
    .line 112
    iput-wide v3, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->q:J

    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    .line 118
    .line 119
    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    new-instance v4, Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v5, v3, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 130
    .line 131
    array-length v5, v5

    .line 132
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_7

    .line 143
    .line 144
    new-instance v3, Landroidx/media3/common/Metadata;

    .line 145
    .line 146
    iget-wide v5, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 147
    .line 148
    invoke-virtual {p0, v5, v6}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H(J)J

    .line 149
    .line 150
    .line 151
    move-result-wide v5

    .line 152
    new-array v1, v2, [Landroidx/media3/common/Metadata$Entry;

    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, [Landroidx/media3/common/Metadata$Entry;

    .line 159
    .line 160
    invoke-direct {v3, v5, v6, v1}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    .line 161
    .line 162
    .line 163
    iput-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    const/4 v1, -0x5

    .line 167
    if-ne v4, v1, :cond_7

    .line 168
    .line 169
    iget-object v1, v3, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-wide v3, v1, Landroidx/media3/common/Format;->u:J

    .line 175
    .line 176
    iput-wide v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->J:J

    .line 177
    .line 178
    :cond_7
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 179
    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    iget-wide v3, v1, Landroidx/media3/common/Metadata;->b:J

    .line 183
    .line 184
    invoke-virtual/range {p0 .. p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H(J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    cmp-long v1, v3, v5

    .line 189
    .line 190
    if-gtz v1, :cond_9

    .line 191
    .line 192
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 193
    .line 194
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->E:Landroid/os/Handler;

    .line 195
    .line 196
    if-eqz v2, :cond_8

    .line 197
    .line 198
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 207
    .line 208
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->d(Landroidx/media3/common/Metadata;)V

    .line 209
    .line 210
    .line 211
    :goto_2
    const/4 v1, 0x0

    .line 212
    iput-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 213
    .line 214
    move v1, v0

    .line 215
    goto :goto_3

    .line 216
    :cond_9
    move v1, v2

    .line 217
    :goto_3
    iget-boolean v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H:Z

    .line 218
    .line 219
    if-eqz v2, :cond_0

    .line 220
    .line 221
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 222
    .line 223
    if-nez v2, :cond_0

    .line 224
    .line 225
    iput-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->I:Z

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_a
    return-void
.end method

.method public final f(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;->b(Landroidx/media3/common/Format;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget p0, p1, Landroidx/media3/common/Format;->T:I

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x2

    .line 19
    :goto_0
    invoke-static {p0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    invoke-static {v0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MetadataRenderer"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/Metadata;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->d(Landroidx/media3/common/Metadata;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final t()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G:Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->L:J

    .line 12
    .line 13
    return-void
.end method

.method public final v(JZZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->K:Landroidx/media3/common/Metadata;

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->I:Z

    .line 8
    .line 9
    return-void
.end method
