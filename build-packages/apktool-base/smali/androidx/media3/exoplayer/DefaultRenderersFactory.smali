.class public Landroidx/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->b:Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    .line 14
    .line 15
    iput-object v5, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 16
    .line 17
    const-wide/16 v3, 0x1388

    .line 18
    .line 19
    iput-wide v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:J

    .line 20
    .line 21
    iput-object p1, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 24
    .line 25
    const/16 p2, 0x32

    .line 26
    .line 27
    iput p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:I

    .line 28
    .line 29
    iget-boolean p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->b:Z

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    xor-int/2addr p2, v3

    .line 33
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    iget-object v4, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eqz p2, :cond_2

    .line 46
    .line 47
    iget-object p2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    :cond_1
    move p2, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move p2, v9

    .line 54
    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 55
    .line 56
    .line 57
    iput-boolean v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->b:Z

    .line 58
    .line 59
    new-instance p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 60
    .line 61
    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    .line 68
    .line 69
    invoke-direct {p2, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->d:Z

    .line 73
    .line 74
    xor-int/2addr v1, v3

    .line 75
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 76
    .line 77
    .line 78
    iput-boolean v3, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->d:Z

    .line 79
    .line 80
    iget-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 85
    .line 86
    new-array v4, v9, [Landroidx/media3/common/audio/AudioProcessor;

    .line 87
    .line 88
    invoke-direct {v1, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 92
    .line 93
    :cond_3
    iget-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 94
    .line 95
    iget-object v4, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 96
    .line 97
    if-nez v1, :cond_9

    .line 98
    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 102
    .line 103
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 107
    .line 108
    :cond_4
    iget-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->a:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 113
    .line 114
    iput-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 115
    .line 116
    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;

    .line 117
    .line 118
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    const/4 v3, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iget-object v3, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->b:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 126
    .line 127
    :goto_1
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->a:Landroid/content/Context;

    .line 128
    .line 129
    if-nez v4, :cond_7

    .line 130
    .line 131
    iput-object v3, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 132
    .line 133
    :cond_7
    iget-object v3, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->g:Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 134
    .line 135
    iput-object v3, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 136
    .line 137
    iget-object v6, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 138
    .line 139
    iput-object v6, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 140
    .line 141
    if-nez v3, :cond_8

    .line 142
    .line 143
    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 144
    .line 145
    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v3, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 149
    .line 150
    :cond_8
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 151
    .line 152
    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;)V

    .line 153
    .line 154
    .line 155
    iput-object v3, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_9
    if-nez v4, :cond_a

    .line 159
    .line 160
    move v1, v3

    .line 161
    goto :goto_2

    .line 162
    :cond_a
    move v1, v9

    .line 163
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->e:Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 167
    .line 168
    if-nez v1, :cond_b

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_b
    move v3, v9

    .line 172
    :goto_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 173
    .line 174
    .line 175
    :goto_4
    new-instance v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 176
    .line 177
    invoke-direct {v8, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V

    .line 178
    .line 179
    .line 180
    new-instance v3, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 181
    .line 182
    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a:Landroid/content/Context;

    .line 183
    .line 184
    move-object v6, p1

    .line 185
    move-object v7, p3

    .line 186
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    new-instance p1, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 197
    .line 198
    invoke-direct {p1, p4, p0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    move p1, v9

    .line 209
    :goto_5
    const/4 p2, 0x4

    .line 210
    if-ge p1, p2, :cond_c

    .line 211
    .line 212
    new-instance p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    .line 213
    .line 214
    invoke-direct {p2, p5, p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    add-int/lit8 p1, p1, 0x1

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_c
    new-instance p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;

    .line 224
    .line 225
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    new-instance p0, Landroidx/media3/exoplayer/image/ImageRenderer;

    .line 232
    .line 233
    new-instance p1, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;

    .line 234
    .line 235
    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/image/ImageRenderer;-><init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-array p0, v9, [Landroidx/media3/exoplayer/Renderer;

    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    .line 251
    .line 252
    return-object p0
.end method
