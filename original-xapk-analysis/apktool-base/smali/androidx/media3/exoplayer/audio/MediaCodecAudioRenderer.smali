.class public Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;
    }
.end annotation


# instance fields
.field public final Q0:Landroid/content/Context;

.field public final R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

.field public final T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

.field public U0:I

.field public V0:Z

.field public W0:Landroidx/media3/common/Format;

.field public X0:Landroidx/media3/common/Format;

.field public Y0:J

.field public Z0:Z

.field public a1:Z

.field public b1:Z

.field public c1:Z

.field public d1:I

.field public e1:Z

.field public f1:J

.field public g1:J

.field public h1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p0, v1, v2, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Q0:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 31
    .line 32
    const/16 p1, -0x3e8

    .line 33
    .line 34
    iput p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->d1:I

    .line 35
    .line 36
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 37
    .line 38
    invoke-direct {p1, p3, p4}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 42
    .line 43
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 49
    .line 50
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->h1:Z

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final D0(Landroidx/media3/common/Format;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, v0, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->I0(Landroidx/media3/common/Format;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    and-int/lit16 v2, v0, 0x200

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget v2, v2, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0x400

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget v0, p1, Landroidx/media3/common/Format;->N:I

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget v0, p1, Landroidx/media3/common/Format;->O:I

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public final E0(Lk8;Landroidx/media3/common/Format;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v5, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->h(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    invoke-static {v3, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    iget v5, v1, Landroidx/media3/common/Format;->T:I

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move v7, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v7, v3

    .line 33
    :goto_0
    const/4 v8, 0x2

    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    if-ne v5, v8, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v5, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    move v5, v2

    .line 42
    :goto_2
    const/16 v9, 0x20

    .line 43
    .line 44
    const-string v11, "audio/raw"

    .line 45
    .line 46
    const/16 v12, 0x8

    .line 47
    .line 48
    const/4 v13, 0x4

    .line 49
    iget-object v14, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 50
    .line 51
    if-eqz v5, :cond_6

    .line 52
    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    invoke-static {v11, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    if-eqz v15, :cond_4

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 72
    .line 73
    :goto_3
    if-eqz v7, :cond_6

    .line 74
    .line 75
    :cond_5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->I0(Landroidx/media3/common/Format;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    if-eqz v15, :cond_7

    .line 84
    .line 85
    invoke-static {v13, v12, v9, v7}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    return v0

    .line 90
    :cond_6
    move v7, v3

    .line 91
    :cond_7
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-eqz v15, :cond_8

    .line 96
    .line 97
    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    if-eqz v15, :cond_14

    .line 102
    .line 103
    :cond_8
    iget v15, v1, Landroidx/media3/common/Format;->J:I

    .line 104
    .line 105
    iget v2, v1, Landroidx/media3/common/Format;->L:I

    .line 106
    .line 107
    move/from16 v17, v9

    .line 108
    .line 109
    new-instance v9, Landroidx/media3/common/Format$Builder;

    .line 110
    .line 111
    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    iput-object v10, v9, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 119
    .line 120
    iput v15, v9, Landroidx/media3/common/Format$Builder;->I:I

    .line 121
    .line 122
    iput v2, v9, Landroidx/media3/common/Format$Builder;->K:I

    .line 123
    .line 124
    iput v8, v9, Landroidx/media3/common/Format$Builder;->L:I

    .line 125
    .line 126
    new-instance v2, Landroidx/media3/common/Format;

    .line 127
    .line 128
    invoke-direct {v2, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_14

    .line 136
    .line 137
    if-nez v6, :cond_9

    .line 138
    .line 139
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_5

    .line 144
    :cond_9
    invoke-virtual {v14, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_b

    .line 149
    .line 150
    invoke-static {v11, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_a

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    goto :goto_4

    .line 162
    :cond_a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v10, v2

    .line 167
    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 168
    .line 169
    :goto_4
    if-eqz v10, :cond_b

    .line 170
    .line 171
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    goto :goto_5

    .line 176
    :cond_b
    move-object/from16 v2, p1

    .line 177
    .line 178
    invoke-static {v2, v1, v3, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :goto_5
    move-object v6, v2

    .line 183
    check-cast v6, Ljava/util/AbstractCollection;

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_c

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_c
    if-nez v5, :cond_d

    .line 193
    .line 194
    invoke-static {v8, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    return v0

    .line 199
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 204
    .line 205
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Q0:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v4, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-nez v5, :cond_f

    .line 212
    .line 213
    const/4 v6, 0x1

    .line 214
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-ge v6, v8, :cond_f

    .line 219
    .line 220
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 225
    .line 226
    invoke-virtual {v8, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_e

    .line 231
    .line 232
    move/from16 v16, v3

    .line 233
    .line 234
    move-object v4, v8

    .line 235
    const/4 v2, 0x1

    .line 236
    goto :goto_7

    .line 237
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_f
    move v2, v5

    .line 241
    const/16 v16, 0x1

    .line 242
    .line 243
    :goto_7
    if-eqz v2, :cond_10

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_10
    const/4 v13, 0x3

    .line 247
    :goto_8
    if-eqz v2, :cond_11

    .line 248
    .line 249
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_11

    .line 254
    .line 255
    const/16 v12, 0x10

    .line 256
    .line 257
    :cond_11
    iget-boolean v0, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g:Z

    .line 258
    .line 259
    if-eqz v0, :cond_12

    .line 260
    .line 261
    const/16 v0, 0x40

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_12
    move v0, v3

    .line 265
    :goto_9
    if-eqz v16, :cond_13

    .line 266
    .line 267
    const/16 v3, 0x80

    .line 268
    .line 269
    :cond_13
    or-int v1, v13, v12

    .line 270
    .line 271
    or-int/lit8 v1, v1, 0x20

    .line 272
    .line 273
    or-int/2addr v0, v1

    .line 274
    or-int/2addr v0, v3

    .line 275
    or-int/2addr v0, v7

    .line 276
    return v0

    .line 277
    :cond_14
    :goto_a
    return v4
.end method

.method public final I(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 7

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    iget v0, p4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->D0(Landroidx/media3/common/Format;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const v1, 0x8000

    .line 18
    .line 19
    .line 20
    or-int/2addr v0, v1

    .line 21
    :cond_0
    const-string v1, "OMX.google.raw.decoder"

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget v1, p3, Landroidx/media3/common/Format;->q:I

    .line 29
    .line 30
    iget p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->U0:I

    .line 31
    .line 32
    if-le v1, p0, :cond_1

    .line 33
    .line 34
    or-int/lit8 v0, v0, 0x40

    .line 35
    .line 36
    :cond_1
    move v6, v0

    .line 37
    new-instance v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 38
    .line 39
    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v6, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    :goto_0
    move v5, p0

    .line 45
    move-object v3, p2

    .line 46
    move-object v4, p3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget p0, p4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method

.method public final I0(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->a:Z

    .line 28
    .line 29
    iput-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->b:Z

    .line 32
    .line 33
    iput-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->b:Z

    .line 34
    .line 35
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->c:Z

    .line 36
    .line 37
    iput-boolean p0, p1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->c:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->a:Z

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->b:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const/16 p1, 0x600

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 p1, 0x200

    .line 57
    .line 58
    :goto_1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->c:Z

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    or-int/lit16 p0, p1, 0x800

    .line 63
    .line 64
    return p0

    .line 65
    :cond_3
    return p1
.end method

.method public final J0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide/high16 v3, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j()J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 35
    .line 36
    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 37
    .line 38
    invoke-static {v2, v7, v8}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 59
    .line 60
    iget-wide v7, v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->c:J

    .line 61
    .line 62
    cmp-long v7, v5, v7

    .line 63
    .line 64
    if-ltz v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 71
    .line 72
    iput-object v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 76
    .line 77
    iget-wide v8, v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->c:J

    .line 78
    .line 79
    sub-long/2addr v5, v8

    .line 80
    iget-object v7, v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->a:Landroidx/media3/common/PlaybackParameters;

    .line 81
    .line 82
    iget v7, v7, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 83
    .line 84
    invoke-static {v5, v6, v7}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->c:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/media3/common/audio/SonicAudioProcessor;->h()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_2

    .line 101
    .line 102
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/audio/SonicAudioProcessor;->a(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 107
    .line 108
    iget-wide v9, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->b:J

    .line 109
    .line 110
    add-long/2addr v9, v5

    .line 111
    sub-long/2addr v5, v7

    .line 112
    iput-wide v5, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->d:J

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 116
    .line 117
    iget-wide v5, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->b:J

    .line 118
    .line 119
    add-long/2addr v5, v7

    .line 120
    iget-wide v7, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->d:J

    .line 121
    .line 122
    add-long v9, v5, v7

    .line 123
    .line 124
    :goto_1
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 125
    .line 126
    iget-wide v1, v1, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->q:J

    .line 127
    .line 128
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 129
    .line 130
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 131
    .line 132
    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 133
    .line 134
    invoke-static {v5, v1, v2}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    add-long/2addr v5, v9

    .line 139
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    .line 140
    .line 141
    cmp-long v9, v1, v7

    .line 142
    .line 143
    if-lez v9, :cond_6

    .line 144
    .line 145
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 146
    .line 147
    sub-long v7, v1, v7

    .line 148
    .line 149
    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 150
    .line 151
    iget v9, v9, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 152
    .line 153
    invoke-static {v9, v7, v8}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v7

    .line 157
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    .line 158
    .line 159
    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:J

    .line 160
    .line 161
    add-long/2addr v1, v7

    .line 162
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:J

    .line 163
    .line 164
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Landroid/os/Handler;

    .line 165
    .line 166
    if-nez v1, :cond_4

    .line 167
    .line 168
    new-instance v1, Landroid/os/Handler;

    .line 169
    .line 170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    .line 176
    .line 177
    iput-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Landroid/os/Handler;

    .line 178
    .line 179
    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Landroid/os/Handler;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v2, Landroidx/media3/exoplayer/audio/e;

    .line 188
    .line 189
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/audio/e;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 190
    .line 191
    .line 192
    const-wide/16 v7, 0x64

    .line 193
    .line 194
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    :goto_2
    move-wide v5, v3

    .line 199
    :cond_6
    :goto_3
    cmp-long v0, v5, v3

    .line 200
    .line 201
    if-eqz v0, :cond_8

    .line 202
    .line 203
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Z0:Z

    .line 204
    .line 205
    if-eqz v0, :cond_7

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Y0:J

    .line 209
    .line 210
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 211
    .line 212
    .line 213
    move-result-wide v5

    .line 214
    :goto_4
    iput-wide v5, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Y0:J

    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Z0:Z

    .line 218
    .line 219
    :cond_8
    return-void
.end method

.method public final R(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    aget-object v3, p3, v1

    .line 8
    .line 9
    iget v3, v3, Landroidx/media3/common/Format;->L:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const-string p2, "sample-rate"

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :cond_2
    if-ne v2, v0, :cond_3

    .line 39
    .line 40
    const/high16 p0, -0x40800000    # -1.0f

    .line 41
    .line 42
    return p0

    .line 43
    :cond_3
    int-to-float p0, v2

    .line 44
    mul-float/2addr p0, p1

    .line 45
    return p0
.end method

.method public final S(Lk8;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string v0, "audio/raw"

    .line 20
    .line 21
    invoke-static {v0, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p1, p2, p3, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    sget-object p3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 51
    .line 52
    new-instance p3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/e;

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Q0:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    .line 62
    .line 63
    .line 64
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/g;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    return-object p3
.end method

.method public final T(JJZ)J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 19
    .line 20
    cmp-long v2, v7, v5

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    iget-boolean v7, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1:Z

    .line 28
    .line 29
    const-wide/16 v8, 0x2710

    .line 30
    .line 31
    if-nez v7, :cond_2

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 36
    .line 37
    if-eqz v0, :cond_8

    .line 38
    .line 39
    :cond_1
    const-wide/32 v0, 0xf4240

    .line 40
    .line 41
    .line 42
    return-wide v0

    .line 43
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_3

    .line 48
    .line 49
    move-wide v3, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 52
    .line 53
    invoke-static {v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 60
    .line 61
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 62
    .line 63
    iget-object v4, v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    int-to-long v10, v4

    .line 70
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 71
    .line 72
    iget v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 73
    .line 74
    invoke-static {v3, v10, v11}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 80
    .line 81
    iget-object v7, v7, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    int-to-long v10, v7

    .line 88
    iget-object v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 89
    .line 90
    iget-object v7, v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 91
    .line 92
    iget v7, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 93
    .line 94
    invoke-static {v7}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const v12, -0x7fffffff

    .line 99
    .line 100
    .line 101
    if-eq v7, v12, :cond_5

    .line 102
    .line 103
    move v3, v4

    .line 104
    :cond_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 105
    .line 106
    .line 107
    int-to-long v14, v7

    .line 108
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 109
    .line 110
    const-wide/32 v12, 0xf4240

    .line 111
    .line 112
    .line 113
    invoke-static/range {v10 .. v16}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    :goto_1
    iget-boolean v7, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 118
    .line 119
    if-eqz v7, :cond_8

    .line 120
    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    cmp-long v2, v3, v5

    .line 124
    .line 125
    if-nez v2, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget-wide v5, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 129
    .line 130
    sub-long v5, v5, p1

    .line 131
    .line 132
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    long-to-float v0, v2

    .line 137
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    .line 146
    :goto_2
    div-float/2addr v0, v1

    .line 147
    const/high16 v1, 0x40000000    # 2.0f

    .line 148
    .line 149
    div-float/2addr v0, v1

    .line 150
    float-to-long v0, v0

    .line 151
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    return-wide v0

    .line 156
    :cond_8
    :goto_3
    return-wide v8
.end method

.method public final W(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v2, p4

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 10
    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v6, "OMX.google.raw.decoder"

    .line 17
    .line 18
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget v7, v3, Landroidx/media3/common/Format;->q:I

    .line 22
    .line 23
    iget-object v8, v3, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 24
    .line 25
    iget v9, v3, Landroidx/media3/common/Format;->J:I

    .line 26
    .line 27
    array-length v10, v4

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x1

    .line 30
    if-ne v10, v12, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    array-length v10, v4

    .line 34
    move v13, v11

    .line 35
    :goto_0
    if-ge v13, v10, :cond_2

    .line 36
    .line 37
    aget-object v14, v4, v13

    .line 38
    .line 39
    invoke-virtual {v1, v3, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    iget v15, v15, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    .line 44
    .line 45
    if-eqz v15, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget v14, v14, Landroidx/media3/common/Format;->q:I

    .line 51
    .line 52
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    iput v7, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->U0:I

    .line 60
    .line 61
    sget-object v4, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 62
    .line 63
    const-string v4, "OMX.google.opus.decoder"

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_4

    .line 70
    .line 71
    const-string v4, "c2.android.opus.decoder"

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    const-string v4, "OMX.google.vorbis.decoder"

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    const-string v4, "c2.android.vorbis.decoder"

    .line 88
    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move v4, v11

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    :goto_2
    move v4, v12

    .line 99
    :goto_3
    iput-boolean v4, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->V0:Z

    .line 100
    .line 101
    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c:Ljava/lang/String;

    .line 102
    .line 103
    iget v5, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->U0:I

    .line 104
    .line 105
    new-instance v6, Landroid/media/MediaFormat;

    .line 106
    .line 107
    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v7, "mime"

    .line 111
    .line 112
    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v4, "channel-count"

    .line 116
    .line 117
    invoke-virtual {v6, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    iget v4, v3, Landroidx/media3/common/Format;->L:I

    .line 121
    .line 122
    const-string v7, "sample-rate"

    .line 123
    .line 124
    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    iget-object v7, v3, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {v6, v7}, Landroidx/media3/common/util/MediaFormatUtil;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    const-string v7, "max-input-size"

    .line 133
    .line 134
    invoke-static {v6, v7, v5}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    const-string v5, "priority"

    .line 138
    .line 139
    invoke-virtual {v6, v5, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    const/high16 v5, -0x40800000    # -1.0f

    .line 143
    .line 144
    cmpl-float v5, v2, v5

    .line 145
    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    const-string v5, "operating-rate"

    .line 149
    .line 150
    invoke-virtual {v6, v5, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 151
    .line 152
    .line 153
    :cond_5
    const-string v2, "audio/ac4"

    .line 154
    .line 155
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    invoke-static {v3}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-eqz v2, :cond_6

    .line 166
    .line 167
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v5, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    const-string v7, "profile"

    .line 176
    .line 177
    invoke-static {v6, v7, v5}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    const-string v5, "level"

    .line 189
    .line 190
    invoke-static {v6, v5, v2}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .line 195
    const/16 v5, 0x1c

    .line 196
    .line 197
    if-gt v2, v5, :cond_7

    .line 198
    .line 199
    const-string v2, "ac4-is-sync"

    .line 200
    .line 201
    invoke-virtual {v6, v2, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    :cond_7
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 205
    .line 206
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v5, "audio/raw"

    .line 210
    .line 211
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iput-object v7, v2, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 216
    .line 217
    iput v9, v2, Landroidx/media3/common/Format$Builder;->I:I

    .line 218
    .line 219
    iput v4, v2, Landroidx/media3/common/Format$Builder;->K:I

    .line 220
    .line 221
    const/4 v4, 0x4

    .line 222
    iput v4, v2, Landroidx/media3/common/Format$Builder;->L:I

    .line 223
    .line 224
    new-instance v7, Landroidx/media3/common/Format;

    .line 225
    .line 226
    invoke-direct {v7, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 227
    .line 228
    .line 229
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 230
    .line 231
    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h(Landroidx/media3/common/Format;)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    const/4 v9, 0x2

    .line 236
    if-ne v7, v9, :cond_8

    .line 237
    .line 238
    const-string v7, "pcm-encoding"

    .line 239
    .line 240
    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    const/16 v7, 0x20

    .line 246
    .line 247
    const-string v10, "max-output-channel-count"

    .line 248
    .line 249
    if-lt v4, v7, :cond_9

    .line 250
    .line 251
    const/16 v7, 0x63

    .line 252
    .line 253
    invoke-virtual {v6, v10, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 254
    .line 255
    .line 256
    :cond_9
    const/16 v7, 0x23

    .line 257
    .line 258
    if-lt v4, v7, :cond_a

    .line 259
    .line 260
    iget v4, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->d1:I

    .line 261
    .line 262
    neg-int v4, v4

    .line 263
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    const-string v7, "importance"

    .line 268
    .line 269
    invoke-virtual {v6, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    :cond_a
    const-string v4, "audio/iamf"

    .line 273
    .line 274
    invoke-static {v8, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    const/4 v7, 0x0

    .line 279
    if-eqz v4, :cond_13

    .line 280
    .line 281
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 282
    .line 283
    instance-of v4, v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 284
    .line 285
    if-eqz v4, :cond_b

    .line 286
    .line 287
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 288
    .line 289
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_b
    move-object v2, v7

    .line 293
    :goto_4
    const/16 v4, 0xc

    .line 294
    .line 295
    const-string v12, "channel-mask"

    .line 296
    .line 297
    if-nez v2, :cond_c

    .line 298
    .line 299
    const-string v2, "MediaCodecAudioRenderer"

    .line 300
    .line 301
    const-string v11, "AudioCapabilities from the AudioSink are null, using default stereo output layout."

    .line 302
    .line 303
    invoke-static {v2, v11}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v12, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_c
    sget-object v9, Landroidx/media3/exoplayer/audio/IamfUtil;->a:Lcom/google/common/collect/ImmutableSet;

    .line 314
    .line 315
    iget-object v9, v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 316
    .line 317
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    if-eqz v13, :cond_e

    .line 326
    .line 327
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    check-cast v13, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v14

    .line 337
    sget-object v15, Landroidx/media3/exoplayer/audio/IamfUtil;->a:Lcom/google/common/collect/ImmutableSet;

    .line 338
    .line 339
    invoke-virtual {v15, v13}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-eqz v13, :cond_d

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_e
    move v14, v11

    .line 347
    :goto_5
    if-eqz v14, :cond_f

    .line 348
    .line 349
    move v4, v14

    .line 350
    goto :goto_6

    .line 351
    :cond_f
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 352
    .line 353
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-eqz v9, :cond_11

    .line 362
    .line 363
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    check-cast v9, Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    sget-object v14, Landroidx/media3/exoplayer/audio/IamfUtil;->a:Lcom/google/common/collect/ImmutableSet;

    .line 374
    .line 375
    invoke-virtual {v14, v9}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v9

    .line 379
    if-eqz v9, :cond_10

    .line 380
    .line 381
    move v11, v13

    .line 382
    :cond_11
    if-eqz v11, :cond_12

    .line 383
    .line 384
    move v4, v11

    .line 385
    :cond_12
    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v6, v12, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 393
    .line 394
    .line 395
    :cond_13
    :goto_7
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G(Landroid/media/MediaFormat;)V

    .line 396
    .line 397
    .line 398
    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_14

    .line 405
    .line 406
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-nez v2, :cond_14

    .line 411
    .line 412
    move-object v7, v3

    .line 413
    :cond_14
    iput-object v7, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->X0:Landroidx/media3/common/Format;

    .line 414
    .line 415
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    .line 416
    .line 417
    const/4 v4, 0x0

    .line 418
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 419
    .line 420
    move-object v5, v6

    .line 421
    move-object v6, v0

    .line 422
    move-object v0, v2

    .line 423
    move-object v2, v5

    .line 424
    move-object/from16 v5, p3

    .line 425
    .line 426
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    .line 427
    .line 428
    .line 429
    return-object v0
.end method

.method public final Z(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->k:Landroidx/media3/common/Format;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "audio/opus"

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->k:Landroidx/media3/common/Format;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget p1, p1, Landroidx/media3/common/Format;->N:I

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v4, 0x8

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const-wide/32 v4, 0xbb80

    .line 56
    .line 57
    .line 58
    mul-long/2addr v2, v4

    .line 59
    const-wide/32 v4, 0x3b9aca00

    .line 60
    .line 61
    .line 62
    div-long/2addr v2, v4

    .line 63
    long-to-int v2, v2

    .line 64
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 81
    .line 82
    iget-boolean v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 87
    .line 88
    if-ge v0, v1, :cond_0

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 95
    .line 96
    invoke-static {p0, p1, v2}, Ll0;->q(Landroid/media/AudioTrack;II)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 16
    .line 17
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->h1:Z

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->h1:Z

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->a()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 64
    .line 65
    cmp-long v0, v6, v1

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 70
    .line 71
    return v3

    .line 72
    :cond_2
    sub-long/2addr v4, v6

    .line 73
    const-wide/16 v0, 0x64

    .line 74
    .line 75
    cmp-long p0, v4, v0

    .line 76
    .line 77
    if-gez p0, :cond_3

    .line 78
    .line 79
    return v3

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    return p0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final c(Landroidx/media3/common/PlaybackParameters;)V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 18
    .line 19
    const v1, 0x3dcccccd    # 0.1f

    .line 20
    .line 21
    .line 22
    const/high16 v3, 0x41000000    # 8.0f

    .line 23
    .line 24
    invoke-static {v0, v1, v3}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->b:F

    .line 29
    .line 30
    invoke-static {p1, v1, v3}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v2, v0, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 38
    .line 39
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 40
    .line 41
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 64
    .line 65
    return-void
.end method

.method public final e()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 4
    .line 5
    return-object p0
.end method

.method public final f0(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lm3;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, p1, v2}, Lm3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/Exception;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final g0(JJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr3;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-wide v3, p1

    .line 11
    move-wide v5, p3

    .line 12
    move-object v2, p5

    .line 13
    invoke-direct/range {v0 .. v7}, Lr3;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    return-object p0
.end method

.method public final h0(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lf3;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lf3;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->W0:Landroidx/media3/common/Format;

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v2, Ls3;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v0, p1, v3}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p1
.end method

.method public final k()J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->J0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Y0:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final k0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->X0:Landroidx/media3/common/Format;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "audio/raw"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget v0, p1, Landroidx/media3/common/Format;->M:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "pcm-encoding"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 58
    .line 59
    invoke-static {v0, v4}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x2

    .line 65
    :goto_0
    const-string v4, "channel-count"

    .line 66
    .line 67
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, p1, Landroidx/media3/common/Format;->K:I

    .line 72
    .line 73
    if-eq v5, v1, :cond_5

    .line 74
    .line 75
    iget v6, p1, Landroidx/media3/common/Format;->J:I

    .line 76
    .line 77
    if-ne v6, v4, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move v5, v1

    .line 81
    :goto_1
    const-string v6, "channel-mask"

    .line 82
    .line 83
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_6

    .line 88
    .line 89
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_6

    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ne v7, v4, :cond_6

    .line 100
    .line 101
    move v5, v6

    .line 102
    :cond_6
    new-instance v6, Landroidx/media3/common/Format$Builder;

    .line 103
    .line 104
    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v6, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 112
    .line 113
    iput v0, v6, Landroidx/media3/common/Format$Builder;->L:I

    .line 114
    .line 115
    iget v0, p1, Landroidx/media3/common/Format;->N:I

    .line 116
    .line 117
    iput v0, v6, Landroidx/media3/common/Format$Builder;->M:I

    .line 118
    .line 119
    iget v0, p1, Landroidx/media3/common/Format;->O:I

    .line 120
    .line 121
    iput v0, v6, Landroidx/media3/common/Format$Builder;->N:I

    .line 122
    .line 123
    iget-object v0, p1, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 124
    .line 125
    iput-object v0, v6, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 126
    .line 127
    iget-object v0, p1, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v0, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v0, p1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v0, v6, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v0, p1, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, v6, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    .line 142
    .line 143
    iget-object v0, p1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v0, v6, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    .line 146
    .line 147
    iget v0, p1, Landroidx/media3/common/Format;->e:I

    .line 148
    .line 149
    iput v0, v6, Landroidx/media3/common/Format$Builder;->e:I

    .line 150
    .line 151
    iget p1, p1, Landroidx/media3/common/Format;->f:I

    .line 152
    .line 153
    iput p1, v6, Landroidx/media3/common/Format$Builder;->f:I

    .line 154
    .line 155
    iput v4, v6, Landroidx/media3/common/Format$Builder;->I:I

    .line 156
    .line 157
    iput v5, v6, Landroidx/media3/common/Format$Builder;->J:I

    .line 158
    .line 159
    const-string p1, "sample-rate"

    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iput p1, v6, Landroidx/media3/common/Format$Builder;->K:I

    .line 166
    .line 167
    new-instance p1, Landroidx/media3/common/Format;

    .line 168
    .line 169
    invoke-direct {p1, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 170
    .line 171
    .line 172
    iget-boolean p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->V0:Z

    .line 173
    .line 174
    if-eqz p2, :cond_c

    .line 175
    .line 176
    const/4 p2, 0x3

    .line 177
    iget v0, p1, Landroidx/media3/common/Format;->J:I

    .line 178
    .line 179
    if-eq v0, p2, :cond_b

    .line 180
    .line 181
    const/4 p2, 0x5

    .line 182
    if-eq v0, p2, :cond_a

    .line 183
    .line 184
    const/4 p2, 0x6

    .line 185
    if-eq v0, p2, :cond_9

    .line 186
    .line 187
    const/4 p2, 0x7

    .line 188
    if-eq v0, p2, :cond_8

    .line 189
    .line 190
    const/16 p2, 0x8

    .line 191
    .line 192
    if-eq v0, p2, :cond_7

    .line 193
    .line 194
    sget-object p2, Landroidx/media3/extractor/VorbisUtil;->a:Lcom/google/common/primitives/ImmutableIntArray;

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    sget-object v2, Landroidx/media3/extractor/VorbisUtil;->e:Lcom/google/common/primitives/ImmutableIntArray;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    sget-object v2, Landroidx/media3/extractor/VorbisUtil;->d:Lcom/google/common/primitives/ImmutableIntArray;

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_9
    sget-object v2, Landroidx/media3/extractor/VorbisUtil;->c:Lcom/google/common/primitives/ImmutableIntArray;

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_a
    sget-object v2, Landroidx/media3/extractor/VorbisUtil;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_b
    sget-object v2, Landroidx/media3/extractor/VorbisUtil;->a:Lcom/google/common/primitives/ImmutableIntArray;

    .line 210
    .line 211
    :cond_c
    :goto_2
    const/4 p2, 0x0

    .line 212
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    const/4 v3, 0x1

    .line 215
    const/16 v4, 0x1d

    .line 216
    .line 217
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 218
    .line 219
    if-lt v0, v4, :cond_10

    .line 220
    .line 221
    :try_start_1
    iget-boolean v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 222
    .line 223
    if-eqz v6, :cond_e

    .line 224
    .line 225
    iget-object v6, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget v6, v6, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 231
    .line 232
    if-eqz v6, :cond_e

    .line 233
    .line 234
    iget-object v6, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget v6, v6, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    if-lt v0, v4, :cond_d

    .line 245
    .line 246
    move v0, v3

    .line 247
    goto :goto_3

    .line 248
    :cond_d
    move v0, p2

    .line 249
    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 250
    .line 251
    .line 252
    iput v6, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :catch_0
    move-exception p1

    .line 256
    goto :goto_7

    .line 257
    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    if-lt v0, v4, :cond_f

    .line 261
    .line 262
    move v0, v3

    .line 263
    goto :goto_4

    .line 264
    :cond_f
    move v0, p2

    .line 265
    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 266
    .line 267
    .line 268
    iput p2, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    .line 269
    .line 270
    :cond_10
    :goto_5
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;

    .line 271
    .line 272
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;-><init>(Landroidx/media3/common/Format;)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 276
    .line 277
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 278
    .line 279
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->c:Landroidx/media3/common/Timeline;

    .line 280
    .line 281
    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 282
    .line 283
    iput-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 284
    .line 285
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-nez p1, :cond_12

    .line 290
    .line 291
    iget-object p1, v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 292
    .line 293
    if-eqz p1, :cond_12

    .line 294
    .line 295
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;->c:Landroidx/media3/common/Timeline;

    .line 296
    .line 297
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 298
    .line 299
    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eq p1, v1, :cond_11

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_11
    move v3, p2

    .line 307
    :goto_6
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 308
    .line 309
    .line 310
    :cond_12
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;

    .line 311
    .line 312
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig$Builder;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c(Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 319
    .line 320
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :goto_7
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->j:Landroidx/media3/common/Format;

    .line 325
    .line 326
    const/16 v1, 0x1389

    .line 327
    .line 328
    invoke-virtual {p0, p1, v0, p2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    throw p0
.end method

.method public final l0(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:J

    .line 4
    .line 5
    return-void
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b1:Z

    .line 5
    .line 6
    return v0
.end method

.method public final n0()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 5
    .line 6
    return-void
.end method

.method public final o(ILjava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 3
    .line 4
    if-eq p1, v0, :cond_17

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_14

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p1, v0, :cond_11

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    if-eq p1, v0, :cond_10

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0x23

    .line 20
    .line 21
    if-eq p1, v0, :cond_e

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    if-eq p1, v0, :cond_b

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    if-eq p1, v0, :cond_7

    .line 30
    .line 31
    const/16 v0, 0x13

    .line 32
    .line 33
    if-eq p1, v0, :cond_4

    .line 34
    .line 35
    const/16 v0, 0x14

    .line 36
    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p2, Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 47
    .line 48
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 59
    .line 60
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d()V

    .line 63
    .line 64
    .line 65
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 66
    .line 67
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Lh7;

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    check-cast p2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 72
    .line 73
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    new-instance p1, Landroidx/media3/common/util/ListenerSet;

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 90
    .line 91
    :cond_2
    iget-object p1, p2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast p2, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    sget-object p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    .line 111
    const/4 p1, -0x1

    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    if-eq p0, p1, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    move p0, p1

    .line 118
    :goto_0
    iget p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:I

    .line 119
    .line 120
    if-ne p1, p0, :cond_6

    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_6
    iput p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:I

    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p2, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iget-boolean p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Z

    .line 140
    .line 141
    if-eqz p2, :cond_8

    .line 142
    .line 143
    iget p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 144
    .line 145
    if-ne p2, p1, :cond_a

    .line 146
    .line 147
    iput-boolean v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Z

    .line 148
    .line 149
    :cond_8
    iget p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 150
    .line 151
    if-eq p2, p1, :cond_a

    .line 152
    .line 153
    iput p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 154
    .line 155
    if-eqz p1, :cond_9

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    :cond_9
    iput-boolean v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:Z

    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 161
    .line 162
    .line 163
    :cond_a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    if-lt p2, v3, :cond_18

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 168
    .line 169
    if-eqz p0, :cond_18

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;->b(I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    check-cast p2, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    iput-boolean p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w()Z

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    if-eqz p0, :cond_c

    .line 191
    .line 192
    sget-object p0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 193
    .line 194
    :goto_1
    move-object v3, p0

    .line 195
    goto :goto_2

    .line 196
    :cond_c
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :goto_2
    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 200
    .line 201
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-eqz p0, :cond_d

    .line 219
    .line 220
    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 221
    .line 222
    return-void

    .line 223
    :cond_d
    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 224
    .line 225
    return-void

    .line 226
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    check-cast p2, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    iput p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->d1:I

    .line 236
    .line 237
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 238
    .line 239
    if-nez p1, :cond_f

    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 244
    .line 245
    if-lt p2, v3, :cond_18

    .line 246
    .line 247
    new-instance p2, Landroid/os/Bundle;

    .line 248
    .line 249
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 250
    .line 251
    .line 252
    iget p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->d1:I

    .line 253
    .line 254
    neg-int p0, p0

    .line 255
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    const-string v0, "importance"

    .line 260
    .line 261
    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_10
    check-cast p2, Landroid/media/AudioDeviceInfo;

    .line 269
    .line 270
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Landroid/media/AudioDeviceInfo;

    .line 271
    .line 272
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 273
    .line 274
    if-eqz p0, :cond_18

    .line 275
    .line 276
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 277
    .line 278
    invoke-virtual {p0, p2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :cond_11
    check-cast p2, Landroidx/media3/common/AuxEffectInfo;

    .line 283
    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroidx/media3/common/AuxEffectInfo;

    .line 288
    .line 289
    invoke-virtual {p0, p2}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-eqz p0, :cond_12

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_12
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 297
    .line 298
    if-eqz p0, :cond_13

    .line 299
    .line 300
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroidx/media3/common/AuxEffectInfo;

    .line 301
    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    :cond_13
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroidx/media3/common/AuxEffectInfo;

    .line 306
    .line 307
    return-void

    .line 308
    :cond_14
    check-cast p2, Landroidx/media3/common/AudioAttributes;

    .line 309
    .line 310
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    .line 314
    .line 315
    invoke-virtual {p0, p2}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-eqz p0, :cond_15

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_15
    iput-object p2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    .line 323
    .line 324
    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 325
    .line 326
    if-eqz p0, :cond_16

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_16
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    check-cast p2, Ljava/lang/Float;

    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    iget p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:F

    .line 343
    .line 344
    cmpl-float p1, p1, p0

    .line 345
    .line 346
    if-eqz p1, :cond_18

    .line 347
    .line 348
    iput p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:F

    .line 349
    .line 350
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    if-eqz p0, :cond_18

    .line 355
    .line 356
    iget-object p0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 357
    .line 358
    iget p1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:F

    .line 359
    .line 360
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 361
    .line 362
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 363
    .line 364
    .line 365
    :cond_18
    :goto_3
    return-void
.end method

.method public final q()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final q0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->X0:Landroidx/media3/common/Format;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    and-int/lit8 p1, p8, 0x2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 24
    .line 25
    .line 26
    return p2

    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 28
    .line 29
    if-eqz p12, :cond_2

    .line 30
    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 37
    .line 38
    iget p3, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 39
    .line 40
    add-int/2addr p3, p9

    .line 41
    iput p3, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 42
    .line 43
    iput-boolean p2, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 44
    .line 45
    return p2

    .line 46
    :cond_2
    :try_start_0
    invoke-virtual {p1, p9, p10, p11, p6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k(IJLjava/nio/ByteBuffer;)Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    invoke-interface {p5, p7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 58
    .line 59
    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    .line 60
    .line 61
    add-int/2addr p1, p9

    .line 62
    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    .line 63
    .line 64
    return p2

    .line 65
    :cond_4
    iput-wide p10, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    iget-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget p2, p2, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 80
    .line 81
    if-eqz p2, :cond_5

    .line 82
    .line 83
    const/16 p2, 0x138b

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/16 p2, 0x138a

    .line 87
    .line 88
    :goto_0
    iget-boolean p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->k:Z

    .line 89
    .line 90
    invoke-virtual {p0, p1, p14, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0

    .line 95
    :catch_1
    move-exception p1

    .line 96
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->W0:Landroidx/media3/common/Format;

    .line 97
    .line 98
    iget-boolean p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 99
    .line 100
    if-eqz p3, :cond_6

    .line 101
    .line 102
    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget p3, p3, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 108
    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    const/16 p3, 0x138c

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    const/16 p3, 0x1389

    .line 115
    .line 116
    :goto_1
    iget-boolean p4, p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->j:Z

    .line 117
    .line 118
    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    throw p0
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->a1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->W0:Landroidx/media3/common/Format;

    .line 8
    .line 9
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    :try_start_2
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :catchall_2
    move-exception v1

    .line 51
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public final t0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void

    .line 48
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const/16 v1, 0x138b

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/16 v1, 0x138a

    .line 56
    .line 57
    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->l:Landroidx/media3/common/Format;

    .line 58
    .line 59
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->k:Z

    .line 60
    .line 61
    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    throw p0
.end method

.method public final u(ZZ)V
    .locals 3

    .line 1
    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 9
    .line 10
    iget-object v0, p2, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Ln3;

    .line 16
    .line 17
    invoke-direct {v2, p2, p1, v1}, Ln3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->b:Z

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Q:Z

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iput-boolean v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iput-object p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v0, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 72
    .line 73
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 74
    .line 75
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    .line 76
    .line 77
    new-instance p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 83
    .line 84
    return-void
.end method

.method public final v(JZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v(JZZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Y0:J

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 17
    .line 18
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->h1:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b1:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Z0:Z

    .line 29
    .line 30
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 4
    .line 5
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d()V

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x23

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;->c:Landroid/media/LoudnessCodecController;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-static {p0}, Lb3;->h(Landroid/media/LoudnessCodecController;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b1:Z

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 7
    .line 8
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1:J

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->a1:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->a1:Z

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v3

    .line 47
    :try_start_2
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-interface {v4, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 55
    .line 56
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :goto_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->a1:Z

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->a1:Z

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s()V

    .line 64
    .line 65
    .line 66
    :cond_3
    throw v2
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1:Z

    .line 8
    .line 9
    return-void
.end method

.method public final z()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->J0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->S0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 8
    .line 9
    iput-boolean v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()V

    .line 27
    .line 28
    .line 29
    iget-wide v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 30
    .line 31
    cmp-long v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    iget-object v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 36
    .line 37
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    iput-wide v5, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    .line 45
    .line 46
    iget-boolean v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 62
    .line 63
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1:J

    .line 64
    .line 65
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->h1:Z

    .line 66
    .line 67
    return-void
.end method
