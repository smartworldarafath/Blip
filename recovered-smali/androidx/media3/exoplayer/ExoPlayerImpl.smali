.class final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field public static final synthetic q0:I


# instance fields
.field public final A:J

.field public final B:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final C:Landroidx/media3/common/util/StuckPlayerDetector;

.field public final D:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

.field public final E:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

.field public final F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

.field public G:I

.field public H:Z

.field public I:I

.field public J:I

.field public K:Z

.field public L:Z

.field public M:Lcom/google/common/collect/ImmutableSet;

.field public final N:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public O:Landroidx/media3/exoplayer/SeekParameters;

.field public P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

.field public Q:Z

.field public R:Landroidx/media3/common/Player$Commands;

.field public S:Landroidx/media3/common/MediaMetadata;

.field public T:Ljava/lang/Object;

.field public U:Landroid/view/Surface;

.field public V:Landroid/view/SurfaceHolder;

.field public W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public X:Z

.field public Y:Landroid/view/TextureView;

.field public Z:I

.field public a0:Landroidx/media3/common/util/Size;

.field public final b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final b0:Landroidx/media3/common/AudioAttributes;

.field public final c:Landroidx/media3/common/Player$Commands;

.field public c0:Z

.field public final d:Landroidx/media3/common/util/ConditionVariable;

.field public d0:Landroidx/media3/common/text/CueGroup;

.field public final e:Landroid/content/Context;

.field public final e0:Z

.field public final f:Landroidx/media3/common/Player;

.field public f0:Z

.field public final g:[Landroidx/media3/exoplayer/Renderer;

.field public final g0:I

.field public final h:[Landroidx/media3/exoplayer/Renderer;

.field public h0:Z

.field public final i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public i0:Landroidx/media3/common/VideoSize;

.field public final j:Landroidx/media3/common/util/HandlerWrapper;

.field public final j0:J

.field public final k:Landroidx/media3/exoplayer/g;

.field public final k0:J

.field public final l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final l0:J

.field public final m:Landroidx/media3/common/util/ListenerSet;

.field public m0:Landroidx/media3/common/MediaMetadata;

.field public final n:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public n0:Landroidx/media3/exoplayer/PlaybackInfo;

.field public final o:Landroidx/media3/common/Timeline$Period;

.field public o0:I

.field public final p:Ljava/util/ArrayList;

.field public p0:J

.field public final q:Z

.field public final r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final s:Landroid/os/Looper;

.field public final t:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final u:Landroidx/media3/common/util/SystemClock;

.field public final v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field public final x:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

.field public final y:Landroidx/media3/common/util/WakeLockManager;

.field public final z:Landroidx/media3/common/util/WifiLockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g:Landroid/os/Looper;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v25

    .line 12
    const-string v2, " [AndroidXMedia3/1.11.0] ["

    .line 13
    .line 14
    const-string v3, "Init "

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v5, Landroidx/media3/common/util/ConditionVariable;

    .line 20
    .line 21
    invoke-direct {v5}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    .line 25
    .line 26
    :try_start_0
    const-string v5, "ExoPlayerImpl"

    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "]"

    .line 53
    .line 54
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b:Landroidx/media3/common/util/SystemClock;

    .line 67
    .line 68
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    .line 73
    .line 74
    new-instance v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 75
    .line 76
    invoke-direct {v2, v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 80
    .line 81
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->h:I

    .line 82
    .line 83
    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0:I

    .line 84
    .line 85
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i:Landroidx/media3/common/AudioAttributes;

    .line 86
    .line 87
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    .line 88
    .line 89
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->j:I

    .line 90
    .line 91
    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    .line 92
    .line 93
    iput-boolean v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:Z

    .line 94
    .line 95
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->s:J

    .line 96
    .line 97
    iput-wide v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->A:J

    .line 98
    .line 99
    new-instance v13, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 100
    .line 101
    invoke-direct {v13, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 102
    .line 103
    .line 104
    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 105
    .line 106
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 112
    .line 113
    new-instance v12, Landroid/os/Handler;

    .line 114
    .line 115
    invoke-direct {v12, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c:Le3;

    .line 119
    .line 120
    invoke-virtual {v2}, Le3;->get()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Landroidx/media3/exoplayer/RenderersFactory;

    .line 125
    .line 126
    move-object v11, v2

    .line 127
    check-cast v11, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 128
    .line 129
    move-object v14, v13

    .line 130
    move-object v15, v13

    .line 131
    move-object/from16 v16, v13

    .line 132
    .line 133
    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    .line 138
    .line 139
    array-length v3, v2

    .line 140
    const/4 v11, 0x1

    .line 141
    if-lez v3, :cond_0

    .line 142
    .line 143
    move v3, v11

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    move v3, v9

    .line 146
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 147
    .line 148
    .line 149
    array-length v2, v2

    .line 150
    new-array v2, v2, [Landroidx/media3/exoplayer/Renderer;

    .line 151
    .line 152
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    .line 153
    .line 154
    move v2, v9

    .line 155
    :goto_1
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    .line 156
    .line 157
    array-length v5, v3

    .line 158
    const/4 v12, 0x0

    .line 159
    if-ge v2, v5, :cond_1

    .line 160
    .line 161
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    .line 162
    .line 163
    aget-object v5, v5, v2

    .line 164
    .line 165
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    .line 166
    .line 167
    iget v5, v5, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 168
    .line 169
    aput-object v12, v3, v2

    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e:Le3;

    .line 178
    .line 179
    invoke-virtual {v2}, Le3;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    move-object v13, v2

    .line 184
    check-cast v13, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 185
    .line 186
    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 187
    .line 188
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Le3;

    .line 189
    .line 190
    invoke-virtual {v2}, Le3;->get()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f:Le3;

    .line 194
    .line 195
    invoke-virtual {v2}, Le3;->get()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    move-object v14, v2

    .line 200
    check-cast v14, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 201
    .line 202
    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->t:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 203
    .line 204
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->k:Z

    .line 205
    .line 206
    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q:Z

    .line 207
    .line 208
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->l:Landroidx/media3/exoplayer/SeekParameters;

    .line 209
    .line 210
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/SeekParameters;

    .line 211
    .line 212
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->n:J

    .line 213
    .line 214
    iput-wide v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0:J

    .line 215
    .line 216
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->o:J

    .line 217
    .line 218
    iput-wide v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0:J

    .line 219
    .line 220
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->p:J

    .line 221
    .line 222
    iput-wide v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0:J

    .line 223
    .line 224
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->m:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 225
    .line 226
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 227
    .line 228
    iput-boolean v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Z

    .line 229
    .line 230
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroid/os/Looper;

    .line 231
    .line 232
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->u:Landroidx/media3/common/util/SystemClock;

    .line 233
    .line 234
    iput-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->f:Landroidx/media3/common/Player;

    .line 235
    .line 236
    new-instance v2, Landroidx/media3/common/util/ListenerSet;

    .line 237
    .line 238
    new-instance v7, Landroidx/media3/exoplayer/e;

    .line 239
    .line 240
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 244
    .line 245
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    const/4 v8, 0x1

    .line 253
    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    .line 254
    .line 255
    .line 256
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 257
    .line 258
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 259
    .line 260
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 264
    .line 265
    new-instance v3, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    .line 271
    .line 272
    new-instance v3, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 273
    .line 274
    invoke-direct {v3}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 278
    .line 279
    new-instance v7, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 280
    .line 281
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    .line 282
    .line 283
    array-length v5, v3

    .line 284
    new-array v5, v5, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 285
    .line 286
    array-length v3, v3

    .line 287
    new-array v3, v3, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 288
    .line 289
    sget-object v8, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    .line 290
    .line 291
    invoke-direct {v7, v5, v3, v8, v12}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 295
    .line 296
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    .line 297
    .line 298
    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 299
    .line 300
    .line 301
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 302
    .line 303
    new-instance v3, Landroidx/media3/common/Player$Commands$Builder;

    .line 304
    .line 305
    invoke-direct {v3}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 306
    .line 307
    .line 308
    iget-object v5, v3, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    .line 309
    .line 310
    const/16 v8, 0x14

    .line 311
    .line 312
    new-array v15, v8, [I

    .line 313
    .line 314
    fill-array-data v15, :array_0

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    move v12, v9

    .line 321
    :goto_2
    if-ge v12, v8, :cond_2

    .line 322
    .line 323
    aget v8, v15, v12

    .line 324
    .line 325
    invoke-virtual {v5, v8}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    .line 326
    .line 327
    .line 328
    add-int/lit8 v12, v12, 0x1

    .line 329
    .line 330
    const/16 v8, 0x14

    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_2
    const/16 v8, 0x1d

    .line 334
    .line 335
    invoke-virtual {v3, v8, v11}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 336
    .line 337
    .line 338
    const/16 v8, 0x17

    .line 339
    .line 340
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 341
    .line 342
    .line 343
    const/16 v8, 0x19

    .line 344
    .line 345
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 346
    .line 347
    .line 348
    const/16 v8, 0x21

    .line 349
    .line 350
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 351
    .line 352
    .line 353
    const/16 v8, 0x1a

    .line 354
    .line 355
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 356
    .line 357
    .line 358
    const/16 v8, 0x22

    .line 359
    .line 360
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 361
    .line 362
    .line 363
    new-instance v3, Landroidx/media3/common/Player$Commands;

    .line 364
    .line 365
    invoke-virtual {v5}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-direct {v3, v5}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    .line 370
    .line 371
    .line 372
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->c:Landroidx/media3/common/Player$Commands;

    .line 373
    .line 374
    new-instance v3, Landroidx/media3/common/Player$Commands$Builder;

    .line 375
    .line 376
    invoke-direct {v3}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 377
    .line 378
    .line 379
    iget-object v3, v3, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    .line 380
    .line 381
    iget-object v5, v5, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 382
    .line 383
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    move v12, v9

    .line 387
    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 388
    .line 389
    .line 390
    move-result v15

    .line 391
    if-ge v12, v15, :cond_3

    .line 392
    .line 393
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 394
    .line 395
    .line 396
    move-result v15

    .line 397
    invoke-static {v12, v15}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    invoke-virtual {v3, v15}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    .line 405
    .line 406
    .line 407
    add-int/lit8 v12, v12, 0x1

    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_3
    const/4 v5, 0x4

    .line 411
    invoke-virtual {v3, v5}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    .line 412
    .line 413
    .line 414
    const/16 v12, 0xa

    .line 415
    .line 416
    invoke-virtual {v3, v12}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    .line 417
    .line 418
    .line 419
    new-instance v12, Landroidx/media3/common/Player$Commands;

    .line 420
    .line 421
    invoke-virtual {v3}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-direct {v12, v3}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    .line 426
    .line 427
    .line 428
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/Player$Commands;

    .line 429
    .line 430
    const/4 v3, 0x0

    .line 431
    invoke-virtual {v6, v4, v3}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    .line 436
    .line 437
    new-instance v12, Landroidx/media3/exoplayer/g;

    .line 438
    .line 439
    invoke-direct {v12, v1}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 440
    .line 441
    .line 442
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->k:Landroidx/media3/exoplayer/g;

    .line 443
    .line 444
    invoke-static {v7}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    iput-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 449
    .line 450
    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 451
    .line 452
    check-cast v15, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 453
    .line 454
    invoke-virtual {v15, v1, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->O(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    .line 455
    .line 456
    .line 457
    new-instance v15, Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 458
    .line 459
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->z:Ljava/lang/String;

    .line 460
    .line 461
    invoke-direct {v15, v3}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    move-object v3, v2

    .line 465
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 466
    .line 467
    move-object/from16 v17, v3

    .line 468
    .line 469
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    .line 470
    .line 471
    move-object/from16 v19, v4

    .line 472
    .line 473
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    .line 474
    .line 475
    move/from16 v18, v5

    .line 476
    .line 477
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    .line 478
    .line 479
    move/from16 v20, v8

    .line 480
    .line 481
    new-instance v8, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 482
    .line 483
    invoke-direct {v8}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    .line 484
    .line 485
    .line 486
    move-object/from16 v21, v10

    .line 487
    .line 488
    iget v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:I

    .line 489
    .line 490
    move/from16 v22, v11

    .line 491
    .line 492
    iget-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 493
    .line 494
    move-object/from16 v23, v21

    .line 495
    .line 496
    move-object/from16 v21, v12

    .line 497
    .line 498
    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 499
    .line 500
    move/from16 v24, v20

    .line 501
    .line 502
    move-object/from16 v20, v6

    .line 503
    .line 504
    move-object v6, v13

    .line 505
    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/SeekParameters;

    .line 506
    .line 507
    move/from16 v26, v9

    .line 508
    .line 509
    move-object v9, v14

    .line 510
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->q:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 511
    .line 512
    move-object/from16 v27, v2

    .line 513
    .line 514
    move-object/from16 v28, v3

    .line 515
    .line 516
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->r:J

    .line 517
    .line 518
    move-wide/from16 v29, v2

    .line 519
    .line 520
    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Z

    .line 521
    .line 522
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    .line 523
    .line 524
    move/from16 v31, v2

    .line 525
    .line 526
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 527
    .line 528
    move-object/from16 v32, v2

    .line 529
    .line 530
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->B:Z

    .line 531
    .line 532
    move/from16 v24, v2

    .line 533
    .line 534
    move/from16 v18, v3

    .line 535
    .line 536
    move-object/from16 v22, v15

    .line 537
    .line 538
    move-object/from16 v35, v17

    .line 539
    .line 540
    move-object/from16 v34, v23

    .line 541
    .line 542
    move/from16 v0, v26

    .line 543
    .line 544
    move-object/from16 v2, v27

    .line 545
    .line 546
    move-object/from16 v3, v28

    .line 547
    .line 548
    move-wide/from16 v15, v29

    .line 549
    .line 550
    move/from16 v17, v31

    .line 551
    .line 552
    move-object/from16 v23, v32

    .line 553
    .line 554
    invoke-direct/range {v2 .. v24}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/g;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Z)V

    .line 555
    .line 556
    .line 557
    move-object v3, v2

    .line 558
    move-object/from16 v4, v19

    .line 559
    .line 560
    move-object/from16 v6, v20

    .line 561
    .line 562
    move-object/from16 v2, v22

    .line 563
    .line 564
    iget-object v8, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 565
    .line 566
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 567
    .line 568
    iget-object v13, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 569
    .line 570
    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:I

    .line 571
    .line 572
    sget-object v5, Landroidx/media3/common/MediaMetadata;->C:Landroidx/media3/common/MediaMetadata;

    .line 573
    .line 574
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 575
    .line 576
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 577
    .line 578
    const/4 v10, -0x1

    .line 579
    iput v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:I

    .line 580
    .line 581
    sget-object v5, Landroidx/media3/common/text/CueGroup;->c:Landroidx/media3/common/text/CueGroup;

    .line 582
    .line 583
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:Landroidx/media3/common/text/CueGroup;

    .line 584
    .line 585
    const/4 v11, 0x1

    .line 586
    iput-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    .line 587
    .line 588
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 589
    .line 590
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->H(Landroidx/media3/common/Player$Listener;)V

    .line 591
    .line 592
    .line 593
    new-instance v5, Landroid/os/Handler;

    .line 594
    .line 595
    invoke-direct {v5, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    .line 597
    .line 598
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 599
    .line 600
    invoke-interface {v9, v5, v7}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->b(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 601
    .line 602
    .line 603
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 604
    .line 605
    move-object/from16 v7, v35

    .line 606
    .line 607
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 611
    .line 612
    const/16 v5, 0x1f

    .line 613
    .line 614
    if-lt v9, v5, :cond_4

    .line 615
    .line 616
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    .line 617
    .line 618
    move-object/from16 v12, p1

    .line 619
    .line 620
    iget-boolean v7, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x:Z

    .line 621
    .line 622
    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 623
    .line 624
    const/4 v14, 0x0

    .line 625
    invoke-virtual {v6, v3, v14}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    new-instance v15, Landroidx/media3/exoplayer/l;

    .line 630
    .line 631
    invoke-direct {v15, v5, v7, v1, v2}, Landroidx/media3/exoplayer/l;-><init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 632
    .line 633
    .line 634
    invoke-interface {v3, v15}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 635
    .line 636
    .line 637
    goto :goto_4

    .line 638
    :cond_4
    move-object/from16 v12, p1

    .line 639
    .line 640
    const/4 v14, 0x0

    .line 641
    :goto_4
    new-instance v2, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 642
    .line 643
    new-instance v7, Landroidx/media3/exoplayer/g;

    .line 644
    .line 645
    invoke-direct {v7, v1}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 646
    .line 647
    .line 648
    move-object v5, v4

    .line 649
    move-object v4, v13

    .line 650
    move-object/from16 v3, v25

    .line 651
    .line 652
    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    .line 653
    .line 654
    .line 655
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->B:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 656
    .line 657
    new-instance v5, Landroidx/media3/exoplayer/h;

    .line 658
    .line 659
    invoke-direct {v5, v1}, Landroidx/media3/exoplayer/h;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Ljava/lang/Runnable;)V

    .line 663
    .line 664
    .line 665
    move/from16 v22, v11

    .line 666
    .line 667
    new-instance v11, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    .line 668
    .line 669
    iget-object v2, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    .line 670
    .line 671
    move-object/from16 v16, v14

    .line 672
    .line 673
    iget-object v14, v12, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g:Landroid/os/Looper;

    .line 674
    .line 675
    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 676
    .line 677
    move-object v13, v12

    .line 678
    move-object v12, v2

    .line 679
    move-object v2, v13

    .line 680
    move-object v13, v4

    .line 681
    move-object/from16 v33, v16

    .line 682
    .line 683
    move-object/from16 v16, v6

    .line 684
    .line 685
    invoke-direct/range {v11 .. v16}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;Landroidx/media3/common/util/SystemClock;)V

    .line 686
    .line 687
    .line 688
    move-object v4, v13

    .line 689
    move-object/from16 v6, v16

    .line 690
    .line 691
    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    .line 692
    .line 693
    invoke-virtual {v11}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a()V

    .line 694
    .line 695
    .line 696
    iget v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t:I

    .line 697
    .line 698
    const v7, 0x7fffffff

    .line 699
    .line 700
    .line 701
    if-eq v5, v7, :cond_6

    .line 702
    .line 703
    iget v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u:I

    .line 704
    .line 705
    if-eq v5, v7, :cond_6

    .line 706
    .line 707
    iget v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    .line 708
    .line 709
    if-eq v5, v7, :cond_6

    .line 710
    .line 711
    iget v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    .line 712
    .line 713
    if-ne v5, v7, :cond_5

    .line 714
    .line 715
    goto :goto_5

    .line 716
    :cond_5
    move/from16 v0, v22

    .line 717
    .line 718
    :cond_6
    :goto_5
    new-instance v5, Landroidx/media3/common/util/WakeLockManager;

    .line 719
    .line 720
    move-object/from16 v7, v34

    .line 721
    .line 722
    invoke-direct {v5, v7, v4, v6}, Landroidx/media3/common/util/WakeLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;)V

    .line 723
    .line 724
    .line 725
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/util/WakeLockManager;

    .line 726
    .line 727
    iget-boolean v11, v5, Landroidx/media3/common/util/WakeLockManager;->d:Z

    .line 728
    .line 729
    if-ne v11, v0, :cond_7

    .line 730
    .line 731
    goto :goto_6

    .line 732
    :cond_7
    iput-boolean v0, v5, Landroidx/media3/common/util/WakeLockManager;->d:Z

    .line 733
    .line 734
    iget-boolean v11, v5, Landroidx/media3/common/util/WakeLockManager;->e:Z

    .line 735
    .line 736
    invoke-virtual {v5, v0, v11}, Landroidx/media3/common/util/WakeLockManager;->a(ZZ)V

    .line 737
    .line 738
    .line 739
    :goto_6
    new-instance v0, Landroidx/media3/common/util/WifiLockManager;

    .line 740
    .line 741
    invoke-direct {v0, v7, v4, v6}, Landroidx/media3/common/util/WifiLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;)V

    .line 742
    .line 743
    .line 744
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WifiLockManager;

    .line 745
    .line 746
    sget v0, Landroidx/media3/common/DeviceInfo;->c:I

    .line 747
    .line 748
    sget-object v0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 749
    .line 750
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0:Landroidx/media3/common/VideoSize;

    .line 751
    .line 752
    sget-object v0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    .line 753
    .line 754
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    .line 755
    .line 756
    const/16 v0, 0x22

    .line 757
    .line 758
    if-lt v9, v0, :cond_8

    .line 759
    .line 760
    new-instance v12, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    .line 761
    .line 762
    invoke-direct {v12, v1, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/content/Context;)V

    .line 763
    .line 764
    .line 765
    goto :goto_7

    .line 766
    :cond_8
    move-object/from16 v12, v33

    .line 767
    .line 768
    :goto_7
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->D:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    .line 769
    .line 770
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 771
    .line 772
    invoke-direct {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;-><init>()V

    .line 773
    .line 774
    .line 775
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->E:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 776
    .line 777
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 778
    .line 779
    invoke-direct {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;-><init>()V

    .line 780
    .line 781
    .line 782
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 783
    .line 784
    new-instance v0, Landroidx/media3/common/util/StuckPlayerDetector;

    .line 785
    .line 786
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 787
    .line 788
    move-object v5, v3

    .line 789
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->u:Landroidx/media3/common/util/SystemClock;

    .line 790
    .line 791
    move-object v6, v4

    .line 792
    iget v4, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t:I

    .line 793
    .line 794
    move-object v7, v5

    .line 795
    iget v5, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u:I

    .line 796
    .line 797
    move-object v9, v6

    .line 798
    iget v6, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    .line 799
    .line 800
    iget v2, v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    .line 801
    .line 802
    move-object v11, v7

    .line 803
    move v7, v2

    .line 804
    move-object v2, v9

    .line 805
    move-object v9, v11

    .line 806
    move/from16 v11, v22

    .line 807
    .line 808
    invoke-direct/range {v0 .. v7}, Landroidx/media3/common/util/StuckPlayerDetector;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/util/StuckPlayerDetector$Callback;Landroidx/media3/common/util/SystemClock;IIII)V

    .line 809
    .line 810
    .line 811
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->C:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 812
    .line 813
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 814
    .line 815
    const/16 v2, 0x26

    .line 816
    .line 817
    invoke-interface {v8, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 822
    .line 823
    .line 824
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    .line 825
    .line 826
    invoke-interface {v8, v0}, Landroidx/media3/common/util/HandlerWrapper;->b(Ljava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 831
    .line 832
    .line 833
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->b0:Landroidx/media3/common/AudioAttributes;

    .line 834
    .line 835
    const/4 v2, 0x3

    .line 836
    invoke-virtual {v1, v11, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    .line 840
    .line 841
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    const/4 v2, 0x2

    .line 846
    const/4 v3, 0x4

    .line 847
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    const/4 v0, 0x5

    .line 851
    invoke-virtual {v1, v2, v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 852
    .line 853
    .line 854
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:Z

    .line 855
    .line 856
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    const/16 v2, 0x9

    .line 861
    .line 862
    invoke-virtual {v1, v11, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 866
    .line 867
    const/4 v2, 0x6

    .line 868
    const/16 v3, 0x8

    .line 869
    .line 870
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0:I

    .line 874
    .line 875
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    const/16 v2, 0x10

    .line 880
    .line 881
    invoke-virtual {v1, v10, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .line 883
    .line 884
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    .line 885
    .line 886
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :goto_8
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    .line 891
    .line 892
    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 893
    .line 894
    .line 895
    throw v0

    .line 896
    nop

    .line 897
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static i0(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    .line 7
    .line 8
    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 21
    .line 22
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v4, v2, v4

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    iget v1, v1, Landroidx/media3/common/Timeline$Period;->c:I

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->j:J

    .line 42
    .line 43
    return-wide v0

    .line 44
    :cond_0
    iget-wide v0, v1, Landroidx/media3/common/Timeline$Period;->e:J

    .line 45
    .line 46
    add-long/2addr v0, v2

    .line 47
    return-wide v0
.end method

.method public static j0(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p0

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->b(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:Landroidx/media3/common/text/CueGroup;

    .line 5
    .line 6
    return-object p0
.end method

.method public final B(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->e(Landroidx/media3/common/Player$Listener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public final D()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    return p0
.end method

.method public final E(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:I

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/media3/exoplayer/f;

    .line 25
    .line 26
    invoke-direct {v0, p1, v2}, Landroidx/media3/exoplayer/f;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->b()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final F(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->O()Landroidx/media3/common/TrackSelectionParameters;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p1, Landroidx/media3/common/TrackSelectionParameters;->w:Lcom/google/common/collect/ImmutableSet;

    .line 19
    .line 20
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Lcom/google/common/collect/ImmutableSet;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->i()Lcom/google/common/collect/UnmodifiableIterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4, v5, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->i(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a()Landroidx/media3/common/TrackSelectionParameters;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v2, p1

    .line 60
    :goto_1
    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 61
    .line 62
    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    instance-of v4, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move-object v4, v2

    .line 75
    check-cast v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    new-instance v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 81
    .line 82
    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->c(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 91
    .line 92
    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    new-instance v0, Landroidx/media3/exoplayer/b;

    .line 105
    .line 106
    invoke-direct {v0, v3, p1}, Landroidx/media3/exoplayer/b;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 110
    .line 111
    const/16 p1, 0x13

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void
.end method

.method public final G(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final H(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final I()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 7
    .line 8
    return p0
.end method

.method public final J()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->G:I

    .line 5
    .line 6
    return p0
.end method

.method public final K()Landroidx/media3/common/Timeline;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    return-object p0
.end method

.method public final L()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroid/os/Looper;

    .line 2
    .line 3
    return-object p0
.end method

.method public final M(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->o:Landroidx/media3/common/util/ListenerSet;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final N()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 5
    .line 6
    return p0
.end method

.method public final O()Landroidx/media3/common/TrackSelectionParameters;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 5
    .line 6
    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Lcom/google/common/collect/ImmutableSet;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->j(Ljava/util/Set;)V

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    return-object v0
.end method

.method public final P()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 20
    .line 21
    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 24
    .line 25
    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->k:J

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    return-wide v0

    .line 52
    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 53
    .line 54
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 73
    .line 74
    invoke-virtual {v1, v0, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 81
    .line 82
    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->d(I)J

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move-wide v2, v0

    .line 89
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 90
    .line 91
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 98
    .line 99
    invoke-virtual {v1, v0, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 100
    .line 101
    .line 102
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->e:J

    .line 103
    .line 104
    add-long/2addr v2, v0

    .line 105
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->N(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    return-wide v0
.end method

.method public final Q(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "ExoPlayerImpl"

    .line 22
    .line 23
    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    new-instance v1, Landroid/view/Surface;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final R()Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 5
    .line 6
    return-object p0
.end method

.method public final S()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final T()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public final Y(IJZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v3, 0x1

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    move v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->o()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-lt p1, v5, :cond_2

    .line 32
    .line 33
    :goto_1
    return-void

    .line 34
    :cond_2
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 35
    .line 36
    check-cast v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 37
    .line 38
    iget-boolean v6, v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->r:Z

    .line 39
    .line 40
    if-nez v6, :cond_3

    .line 41
    .line 42
    invoke-virtual {v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->G()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iput-boolean v3, v5, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->r:Z

    .line 47
    .line 48
    new-instance v7, Lb7;

    .line 49
    .line 50
    const/4 v8, 0x5

    .line 51
    invoke-direct {v7, v8}, Lb7;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6, v2, v7}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 58
    .line 59
    add-int/2addr v2, v3

    .line 60
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    const-string v1, "ExoPlayerImpl"

    .line 69
    .line 70
    const-string v2, "seekTo ignored because an ad is playing"

    .line 71
    .line 72
    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 78
    .line 79
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->k:Landroidx/media3/exoplayer/g;

    .line 86
    .line 87
    iget-object v0, v0, Landroidx/media3/exoplayer/g;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 88
    .line 89
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    .line 90
    .line 91
    new-instance v3, Landroidx/media3/exoplayer/i;

    .line 92
    .line 93
    invoke-direct {v3, v0, v1}, Landroidx/media3/exoplayer/i;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 101
    .line 102
    iget v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 103
    .line 104
    const/4 v5, 0x3

    .line 105
    if-eq v3, v5, :cond_5

    .line 106
    .line 107
    const/4 v6, 0x4

    .line 108
    if-ne v3, v6, :cond_6

    .line 109
    .line 110
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 117
    .line 118
    const/4 v3, 0x2

    .line 119
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {p0, v4, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {p0, v2, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 140
    .line 141
    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 142
    .line 143
    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 144
    .line 145
    invoke-direct {v6, v4, p1, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v3, v5, v6}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 153
    .line 154
    .line 155
    const/4 v4, 0x1

    .line 156
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    move-object v1, v2

    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x1

    .line 163
    move-object v0, p0

    .line 164
    move v8, p4

    .line 165
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final a()V
    .locals 7

    .line 1
    const-string v0, "ExoPlayerImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Release "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " [AndroidXMedia3/1.11.0] ["

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "] ["

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 37
    .line 38
    const-class v2, Landroidx/media3/common/MediaLibraryInfo;

    .line 39
    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    sget-object v3, Landroidx/media3/common/MediaLibraryInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit v2

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "]"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->x:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/util/WakeLockManager;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WifiLockManager;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->D:Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v3, 0x22

    .line 85
    .line 86
    if-lt v2, v3, :cond_1

    .line 87
    .line 88
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->a:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/content/Context;

    .line 95
    .line 96
    if-nez v2, :cond_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->b:Landroidx/media3/exoplayer/m;

    .line 100
    .line 101
    invoke-static {v2, v0}, Ld1;->o(Landroid/content/Context;Landroidx/media3/exoplayer/m;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->C:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->a()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 110
    .line 111
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:Z

    .line 112
    .line 113
    const/4 v3, 0x7

    .line 114
    const/4 v4, 0x1

    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 118
    .line 119
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_2

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iput-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:Z

    .line 131
    .line 132
    new-instance v2, Landroidx/media3/common/util/ConditionVariable;

    .line 133
    .line 134
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    .line 135
    .line 136
    invoke-direct {v2, v5}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 137
    .line 138
    .line 139
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 140
    .line 141
    invoke-interface {v5, v3, v2}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v5}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 146
    .line 147
    .line 148
    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:J

    .line 149
    .line 150
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/ConditionVariable;->b(J)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    move v0, v4

    .line 156
    :goto_2
    if-nez v0, :cond_4

    .line 157
    .line 158
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 159
    .line 160
    new-instance v2, Landroidx/media3/exoplayer/e;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    const/16 v5, 0xa

    .line 166
    .line 167
    invoke-virtual {v0, v5, v2}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->d()V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    .line 176
    .line 177
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->f()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 181
    .line 182
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 183
    .line 184
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->a(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 188
    .line 189
    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 190
    .line 191
    if-eqz v2, :cond_5

    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 198
    .line 199
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 200
    .line 201
    invoke-static {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 206
    .line 207
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 214
    .line 215
    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 216
    .line 217
    iput-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 218
    .line 219
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 220
    .line 221
    const-wide/16 v5, 0x0

    .line 222
    .line 223
    iput-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 224
    .line 225
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 226
    .line 227
    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 228
    .line 229
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->q:Landroidx/media3/common/util/HandlerWrapper;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v5, Le;

    .line 235
    .line 236
    invoke-direct {v5, v3, v0}, Le;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v2, v5}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 246
    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 250
    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 254
    .line 255
    :cond_6
    sget-object v0, Landroidx/media3/common/text/CueGroup;->c:Landroidx/media3/common/text/CueGroup;

    .line 256
    .line 257
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:Landroidx/media3/common/text/CueGroup;

    .line 258
    .line 259
    iput-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0:Z

    .line 260
    .line 261
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 262
    .line 263
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 264
    .line 265
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_8

    .line 270
    .line 271
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 272
    .line 273
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 274
    .line 275
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 276
    .line 277
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 278
    .line 279
    invoke-virtual {v2, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    const/4 v2, -0x1

    .line 284
    if-eq v0, v2, :cond_7

    .line 285
    .line 286
    move v1, v4

    .line 287
    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 288
    .line 289
    const-string v2, "periodUid %s not found in timeline %s with size %d"

    .line 290
    .line 291
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 292
    .line 293
    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 294
    .line 295
    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 296
    .line 297
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 308
    .line 309
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 310
    .line 311
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->o()I

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    filled-new-array {v4, v3, p0}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    :cond_8
    return-void

    .line 331
    :catchall_0
    move-exception p0

    .line 332
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    throw p0
.end method

.method public final b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->S()J

    .line 20
    .line 21
    .line 22
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    add-int/2addr v2, v3

    .line 26
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    move v4, v10

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ge v4, v6, :cond_0

    .line 45
    .line 46
    new-instance v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 47
    .line 48
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Landroidx/media3/exoplayer/source/MediaSource;

    .line 53
    .line 54
    iget-boolean v8, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q:Z

    .line 55
    .line 56
    invoke-direct {v6, v7, v8}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    .line 63
    .line 64
    iget-object v8, v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->b:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 67
    .line 68
    invoke-direct {v7, v8, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v6, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 87
    .line 88
    new-instance v7, Ljava/util/Random;

    .line 89
    .line 90
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->a:Ljava/util/Random;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    invoke-direct {v7, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v6, v7}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(Ljava/util/Random;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->a(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 107
    .line 108
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 109
    .line 110
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 111
    .line 112
    invoke-direct {v1, v2, v4}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    const/4 v4, -0x1

    .line 120
    iget v6, v1, Landroidx/media3/exoplayer/PlaylistTimeline;->e:I

    .line 121
    .line 122
    if-nez v2, :cond_2

    .line 123
    .line 124
    if-ge v4, v6, :cond_1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_2
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->a(Z)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 140
    .line 141
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1, v7, v8, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {p0, v2, v1, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget v11, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 155
    .line 156
    if-ne v11, v3, :cond_3

    .line 157
    .line 158
    move v11, v3

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v12, 0x4

    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    :goto_2
    move v11, v12

    .line 168
    goto :goto_3

    .line 169
    :cond_4
    if-ne v7, v4, :cond_5

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    if-lt v7, v6, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    const/4 v11, 0x2

    .line 176
    :goto_3
    invoke-static {v2, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->D(J)J

    .line 181
    .line 182
    .line 183
    move-result-wide v8

    .line 184
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->P:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 185
    .line 186
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 187
    .line 188
    iget-object v2, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 189
    .line 190
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 191
    .line 192
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;IJ)V

    .line 193
    .line 194
    .line 195
    const/16 v5, 0x11

    .line 196
    .line 197
    invoke-interface {v2, v5, v4}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 205
    .line 206
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 207
    .line 208
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 211
    .line 212
    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_7

    .line 219
    .line 220
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 221
    .line 222
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_7

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_7
    move v3, v10

    .line 232
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v5

    .line 236
    const/4 v7, -0x1

    .line 237
    const/4 v8, 0x0

    .line 238
    const/4 v2, 0x0

    .line 239
    const/4 v4, 0x4

    .line 240
    move-object v0, p0

    .line 241
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final c(Landroidx/media3/common/PlaybackParameters;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 37
    .line 38
    .line 39
    const/4 v8, -0x1

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x5

    .line 44
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    move-object v1, p0

    .line 50
    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c0()Landroidx/media3/common/MediaMetadata;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object v1, v0, Landroidx/media3/common/MediaMetadata;->B:Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->f:[B

    .line 43
    .line 44
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->a:Ljava/lang/CharSequence;

    .line 49
    .line 50
    :cond_2
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->b:Ljava/lang/CharSequence;

    .line 55
    .line 56
    :cond_3
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->c:Ljava/lang/CharSequence;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->c:Ljava/lang/CharSequence;

    .line 61
    .line 62
    :cond_4
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->d:Ljava/lang/CharSequence;

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->d:Ljava/lang/CharSequence;

    .line 67
    .line 68
    :cond_5
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->e:Ljava/lang/CharSequence;

    .line 69
    .line 70
    if-eqz v3, :cond_6

    .line 71
    .line 72
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->e:Ljava/lang/CharSequence;

    .line 73
    .line 74
    :cond_6
    if-eqz v2, :cond_8

    .line 75
    .line 76
    iget-object v3, v0, Landroidx/media3/common/MediaMetadata;->g:Ljava/lang/Integer;

    .line 77
    .line 78
    if-nez v2, :cond_7

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_7
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, [B

    .line 87
    .line 88
    :goto_0
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->f:[B

    .line 89
    .line 90
    iput-object v3, p0, Landroidx/media3/common/MediaMetadata$Builder;->g:Ljava/lang/Integer;

    .line 91
    .line 92
    sget-object v2, Landroidx/media3/common/MediaMetadata;->C:Landroidx/media3/common/MediaMetadata;

    .line 93
    .line 94
    :cond_8
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->h:Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v2, :cond_9

    .line 97
    .line 98
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->h:Ljava/lang/Integer;

    .line 99
    .line 100
    :cond_9
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->i:Ljava/lang/Integer;

    .line 101
    .line 102
    if-eqz v2, :cond_a

    .line 103
    .line 104
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->i:Ljava/lang/Integer;

    .line 105
    .line 106
    :cond_a
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->j:Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v2, :cond_b

    .line 109
    .line 110
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->j:Ljava/lang/Integer;

    .line 111
    .line 112
    :cond_b
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->k:Ljava/lang/Boolean;

    .line 113
    .line 114
    if-eqz v2, :cond_c

    .line 115
    .line 116
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->k:Ljava/lang/Boolean;

    .line 117
    .line 118
    :cond_c
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->l:Ljava/lang/Integer;

    .line 119
    .line 120
    if-eqz v2, :cond_d

    .line 121
    .line 122
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->l:Ljava/lang/Integer;

    .line 123
    .line 124
    :cond_d
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->m:Ljava/lang/Integer;

    .line 125
    .line 126
    if-eqz v2, :cond_e

    .line 127
    .line 128
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->l:Ljava/lang/Integer;

    .line 129
    .line 130
    :cond_e
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->n:Ljava/lang/Integer;

    .line 131
    .line 132
    if-eqz v2, :cond_f

    .line 133
    .line 134
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->m:Ljava/lang/Integer;

    .line 135
    .line 136
    :cond_f
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->o:Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz v2, :cond_10

    .line 139
    .line 140
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->n:Ljava/lang/Integer;

    .line 141
    .line 142
    :cond_10
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->p:Ljava/lang/Integer;

    .line 143
    .line 144
    if-eqz v2, :cond_11

    .line 145
    .line 146
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->o:Ljava/lang/Integer;

    .line 147
    .line 148
    :cond_11
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->q:Ljava/lang/Integer;

    .line 149
    .line 150
    if-eqz v2, :cond_12

    .line 151
    .line 152
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->p:Ljava/lang/Integer;

    .line 153
    .line 154
    :cond_12
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->r:Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v2, :cond_13

    .line 157
    .line 158
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->q:Ljava/lang/Integer;

    .line 159
    .line 160
    :cond_13
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->s:Ljava/lang/CharSequence;

    .line 161
    .line 162
    if-eqz v2, :cond_14

    .line 163
    .line 164
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/CharSequence;

    .line 165
    .line 166
    :cond_14
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->t:Ljava/lang/CharSequence;

    .line 167
    .line 168
    if-eqz v2, :cond_15

    .line 169
    .line 170
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/CharSequence;

    .line 171
    .line 172
    :cond_15
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->u:Ljava/lang/CharSequence;

    .line 173
    .line 174
    if-eqz v2, :cond_16

    .line 175
    .line 176
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->t:Ljava/lang/CharSequence;

    .line 177
    .line 178
    :cond_16
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->v:Ljava/lang/CharSequence;

    .line 179
    .line 180
    if-eqz v2, :cond_17

    .line 181
    .line 182
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->u:Ljava/lang/CharSequence;

    .line 183
    .line 184
    :cond_17
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->w:Ljava/lang/Integer;

    .line 185
    .line 186
    if-eqz v2, :cond_18

    .line 187
    .line 188
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->v:Ljava/lang/Integer;

    .line 189
    .line 190
    :cond_18
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->x:Ljava/lang/Integer;

    .line 191
    .line 192
    if-eqz v2, :cond_19

    .line 193
    .line 194
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->w:Ljava/lang/Integer;

    .line 195
    .line 196
    :cond_19
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->y:Ljava/lang/CharSequence;

    .line 197
    .line 198
    if-eqz v2, :cond_1a

    .line 199
    .line 200
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->x:Ljava/lang/CharSequence;

    .line 201
    .line 202
    :cond_1a
    iget-object v2, v0, Landroidx/media3/common/MediaMetadata;->z:Ljava/lang/CharSequence;

    .line 203
    .line 204
    if-eqz v2, :cond_1b

    .line 205
    .line 206
    iput-object v2, p0, Landroidx/media3/common/MediaMetadata$Builder;->y:Ljava/lang/CharSequence;

    .line 207
    .line 208
    :cond_1b
    iget-object v0, v0, Landroidx/media3/common/MediaMetadata;->A:Ljava/lang/Integer;

    .line 209
    .line 210
    if-eqz v0, :cond_1c

    .line 211
    .line 212
    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->z:Ljava/lang/Integer;

    .line 213
    .line 214
    :cond_1c
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_1d

    .line 219
    .line 220
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v0, p0, Landroidx/media3/common/MediaMetadata$Builder;->A:Lcom/google/common/collect/ImmutableList;

    .line 225
    .line 226
    :cond_1d
    :goto_1
    new-instance v0, Landroidx/media3/common/MediaMetadata;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 229
    .line 230
    .line 231
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z:I

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {p0, v2, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 7
    .line 8
    return-object p0
.end method

.method public final e0(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/PlayerMessage;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 10
    .line 11
    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    move v5, v0

    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 19
    .line 20
    iget-object v6, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public final f()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final f0(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    iget-wide v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 4
    .line 5
    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 18
    .line 19
    invoke-virtual {v3, v0, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    .line 22
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v0, v1, v5

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h0(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    invoke-virtual {v3, p1, p0, v0, v1}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->j:J

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0

    .line 50
    :cond_0
    iget-wide p0, v4, Landroidx/media3/common/Timeline$Period;->e:J

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->N(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    add-long/2addr v0, p0

    .line 61
    return-wide v0

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 63
    .line 64
    .line 65
    move-result-wide p0

    .line 66
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0
.end method

.method public final g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final g0(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:J

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->D(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    return-wide p0

    .line 16
    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 26
    .line 27
    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 39
    .line 40
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 43
    .line 44
    invoke-virtual {v2, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 45
    .line 46
    .line 47
    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->e:J

    .line 48
    .line 49
    add-long/2addr v0, p0

    .line 50
    return-wide v0
.end method

.method public final getDuration()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 15
    .line 16
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    invoke-virtual {v0, v2, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 21
    .line 22
    .line 23
    iget v0, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 24
    .line 25
    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/Timeline$Period;->a(II)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    return-wide v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 57
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->k:J

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method public final h()Landroidx/media3/common/Player$Commands;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/Player$Commands;

    .line 5
    .line 6
    return-object p0
.end method

.method public final h0(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 1

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroidx/media3/common/Timeline$Period;->c:I

    .line 25
    .line 26
    return p0
.end method

.method public final i()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 7
    .line 8
    return p0
.end method

.method public final isScrubbingModeEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 5
    .line 6
    return p0
.end method

.method public final j(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/media3/exoplayer/j;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/j;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->b()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final k()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l0:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public final k0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v4

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v3, v5

    .line 21
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    sget-object v10, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 43
    .line 44
    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:J

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v11

    .line 50
    sget-object v19, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    .line 57
    move-result-object v21

    .line 58
    const-wide/16 v17, 0x0

    .line 59
    .line 60
    move-wide v13, v11

    .line 61
    move-wide v15, v11

    .line 62
    move-object/from16 v20, v0

    .line 63
    .line 64
    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 73
    .line 74
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 78
    .line 79
    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-nez v10, :cond_3

    .line 88
    .line 89
    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 90
    .line 91
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-direct {v11, v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    iget-object v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 98
    .line 99
    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->D(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->p()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_4

    .line 116
    .line 117
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 118
    .line 119
    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget-wide v14, v2, Landroidx/media3/common/Timeline$Period;->e:J

    .line 124
    .line 125
    sub-long/2addr v7, v14

    .line 126
    if-eqz v10, :cond_4

    .line 127
    .line 128
    sub-long v14, v7, v12

    .line 129
    .line 130
    const-wide/16 v16, 0x1

    .line 131
    .line 132
    cmp-long v2, v14, v16

    .line 133
    .line 134
    if-nez v2, :cond_4

    .line 135
    .line 136
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 137
    .line 138
    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->d:J

    .line 143
    .line 144
    cmp-long v2, v7, v2

    .line 145
    .line 146
    if-nez v2, :cond_4

    .line 147
    .line 148
    sub-long v7, v7, v16

    .line 149
    .line 150
    :cond_4
    if-eqz v10, :cond_5

    .line 151
    .line 152
    cmp-long v2, v12, v7

    .line 153
    .line 154
    if-gez v2, :cond_6

    .line 155
    .line 156
    :cond_5
    move v1, v10

    .line 157
    move-object v10, v11

    .line 158
    move-wide v11, v12

    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_6
    if-nez v2, :cond_a

    .line 162
    .line 163
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 164
    .line 165
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    const/4 v3, -0x1

    .line 172
    if-eq v2, v3, :cond_8

    .line 173
    .line 174
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 175
    .line 176
    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget v2, v2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 181
    .line 182
    iget-object v3, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 183
    .line 184
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 185
    .line 186
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    .line 191
    .line 192
    if-eq v2, v3, :cond_7

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    return-object v9

    .line 196
    :cond_8
    :goto_3
    iget-object v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 197
    .line 198
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    iget v1, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 212
    .line 213
    iget v2, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->a(II)J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    :goto_4
    move-object v10, v11

    .line 220
    goto :goto_5

    .line 221
    :cond_9
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->d:J

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_5
    iget-wide v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 225
    .line 226
    iget-wide v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 227
    .line 228
    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 229
    .line 230
    iget-wide v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 231
    .line 232
    sub-long v17, v0, v4

    .line 233
    .line 234
    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 235
    .line 236
    iget-object v5, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 237
    .line 238
    iget-object v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 239
    .line 240
    move-wide v15, v2

    .line 241
    move-object/from16 v19, v4

    .line 242
    .line 243
    move-object/from16 v20, v5

    .line 244
    .line 245
    move-object/from16 v21, v6

    .line 246
    .line 247
    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v2, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 256
    .line 257
    return-object v2

    .line 258
    :cond_a
    move-object v10, v11

    .line 259
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    xor-int/2addr v0, v5

    .line 264
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 265
    .line 266
    .line 267
    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 268
    .line 269
    sub-long v2, v12, v7

    .line 270
    .line 271
    sub-long/2addr v0, v2

    .line 272
    const-wide/16 v2, 0x0

    .line 273
    .line 274
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 275
    .line 276
    .line 277
    move-result-wide v17

    .line 278
    iget-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 279
    .line 280
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 281
    .line 282
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 283
    .line 284
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_b

    .line 289
    .line 290
    add-long v0, v12, v17

    .line 291
    .line 292
    :cond_b
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 293
    .line 294
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 295
    .line 296
    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 297
    .line 298
    move-wide v11, v12

    .line 299
    move-wide v13, v11

    .line 300
    move-wide v15, v11

    .line 301
    move-object/from16 v19, v2

    .line 302
    .line 303
    move-object/from16 v20, v3

    .line 304
    .line 305
    move-object/from16 v21, v4

    .line 306
    .line 307
    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    iput-wide v0, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 312
    .line 313
    return-object v2

    .line 314
    :goto_6
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    xor-int/2addr v2, v5

    .line 319
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 320
    .line 321
    .line 322
    if-nez v1, :cond_c

    .line 323
    .line 324
    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 325
    .line 326
    :goto_7
    move-object/from16 v19, v2

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_c
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :goto_8
    if-nez v1, :cond_d

    .line 333
    .line 334
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->b:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 335
    .line 336
    :goto_9
    move-object/from16 v20, v0

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_d
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :goto_a
    if-nez v1, :cond_e

    .line 343
    .line 344
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :goto_b
    move-object/from16 v21, v0

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_e
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 352
    .line 353
    goto :goto_b

    .line 354
    :goto_c
    const-wide/16 v17, 0x0

    .line 355
    .line 356
    move-wide v13, v11

    .line 357
    move-wide v15, v11

    .line 358
    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iput-wide v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 367
    .line 368
    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:I

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    :cond_0
    return p0

    .line 21
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final l0(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:I

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long p1, p3, p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    move-wide p3, v1

    .line 21
    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:J

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    if-eq p2, v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->o()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lt p2, v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v3, p2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->H:Z

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3, v1, v2}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    iget-wide p3, p3, Landroidx/media3/common/Timeline$Window;->j:J

    .line 50
    .line 51
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 57
    .line 58
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->D(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 63
    .line 64
    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public final m(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final m0(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/common/util/Size;->a:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/common/util/Size;->b:I

    .line 8
    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/common/util/Size;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->a0:Landroidx/media3/common/util/Size;

    .line 19
    .line 20
    new-instance v0, Landroidx/media3/exoplayer/d;

    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/d;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 26
    .line 27
    const/16 v2, 0x18

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroidx/media3/common/util/Size;

    .line 33
    .line 34
    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    const/16 p2, 0xe

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final n()Landroidx/media3/common/VideoSize;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0:Landroidx/media3/common/VideoSize;

    .line 5
    .line 6
    return-object p0
.end method

.method public final n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 15
    .line 16
    xor-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x2710

    .line 22
    .line 23
    iput v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 24
    .line 25
    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 26
    .line 27
    xor-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    const-string v0, "ExoPlayerImpl"

    .line 57
    .line 58
    const-string v3, "SurfaceTextureListener already unset or replaced."

    .line 59
    .line 60
    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y:Landroid/view/TextureView;

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final o()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 40
    .line 41
    const/16 v1, 0x1d

    .line 42
    .line 43
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 48
    .line 49
    .line 50
    const/4 v10, -0x1

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v5, 0x1

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x5

    .line 55
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    move-object v3, p0

    .line 61
    invoke-virtual/range {v3 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final o0(IILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->g:[Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, -0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    if-eq p1, v4, :cond_0

    .line 12
    .line 13
    move-object v4, v5

    .line 14
    check-cast v4, Landroidx/media3/exoplayer/BaseRenderer;

    .line 15
    .line 16
    iget v4, v4, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 17
    .line 18
    if-ne v4, p1, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-boolean v5, v4, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 25
    .line 26
    xor-int/lit8 v5, v5, 0x1

    .line 27
    .line 28
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 29
    .line 30
    .line 31
    iput p2, v4, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 32
    .line 33
    iget-boolean v5, v4, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 34
    .line 35
    xor-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 38
    .line 39
    .line 40
    iput-object p3, v4, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    .line 43
    .line 44
    .line 45
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->h:[Landroidx/media3/exoplayer/Renderer;

    .line 49
    .line 50
    array-length v1, v0

    .line 51
    :goto_1
    if-ge v2, v1, :cond_5

    .line 52
    .line 53
    aget-object v3, v0, v2

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    if-eq p1, v4, :cond_3

    .line 58
    .line 59
    move-object v5, v3

    .line 60
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    .line 61
    .line 62
    iget v5, v5, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 63
    .line 64
    if-ne v5, p1, :cond_4

    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 71
    .line 72
    xor-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 75
    .line 76
    .line 77
    iput p2, v3, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 78
    .line 79
    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 80
    .line 81
    xor-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 84
    .line 85
    .line 86
    iput-object p3, v3, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    .line 89
    .line 90
    .line 91
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    return-void
.end method

.method public final p(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->e:Landroidx/media3/exoplayer/SeekParameters;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/SeekParameters;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/SeekParameters;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->O:Landroidx/media3/exoplayer/SeekParameters;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    const/4 v0, 0x5

    .line 23
    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final p0(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 15
    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public final q0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->A:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide v4, v2

    .line 22
    :goto_1
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 23
    .line 24
    iget-boolean v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S:Z

    .line 25
    .line 26
    if-nez v7, :cond_3

    .line 27
    .line 28
    iget-object v7, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    new-instance v7, Landroidx/media3/common/util/ConditionVariable;

    .line 42
    .line 43
    iget-object v8, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    .line 44
    .line 45
    invoke-direct {v7, v8}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 46
    .line 47
    .line 48
    iget-object v6, v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 49
    .line 50
    new-instance v8, Landroid/util/Pair;

    .line 51
    .line 52
    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/16 v9, 0x1e

    .line 56
    .line 57
    invoke-interface {v6, v9, v8}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-interface {v6}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 62
    .line 63
    .line 64
    cmp-long v2, v4, v2

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v7, v4, v5}, Landroidx/media3/common/util/ConditionVariable;->b(J)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 77
    .line 78
    if-ne v0, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 85
    .line 86
    :cond_4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    .line 91
    .line 92
    const-string v0, "Detaching surface timed out."

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 98
    .line 99
    const/4 v1, 0x2

    .line 100
    const/16 v2, 0x3eb

    .line 101
    .line 102
    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void
.end method

.method public final r(Landroid/view/SurfaceView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0(Landroid/view/SurfaceHolder;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->v:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 30
    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->w:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 44
    .line 45
    xor-int/2addr v3, v1

    .line 46
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x2710

    .line 50
    .line 51
    iput v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 54
    .line 55
    iget-boolean v4, v0, Landroidx/media3/exoplayer/PlayerMessage;->f:Z

    .line 56
    .line 57
    xor-int/2addr v1, v4

    .line 58
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 59
    .line 60
    .line 61
    iput-object v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->b()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->W:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0(Landroid/view/SurfaceHolder;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    move-object p1, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 100
    .line 101
    .line 102
    if-nez p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0()V

    .line 109
    .line 110
    .line 111
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    .line 112
    .line 113
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->V:Landroid/view/SurfaceHolder;

    .line 114
    .line 115
    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final r0(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j0(Landroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 27
    .line 28
    add-int/2addr p1, v1

    .line 29
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 41
    .line 42
    .line 43
    const/4 v9, -0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x5

    .line 48
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    move-object v2, p0

    .line 54
    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q:Z

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 15
    .line 16
    const/16 v0, 0x17

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final s0()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/Player$Commands;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f:Landroidx/media3/common/Player;

    .line 6
    .line 7
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v1, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v9, 0x0

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-boolean v4, v4, Landroidx/media3/common/Timeline$Window;->f:Z

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    move v4, v8

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v4, v9

    .line 44
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->p()Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/4 v11, -0x1

    .line 53
    if-eqz v10, :cond_1

    .line 54
    .line 55
    move v5, v11

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->J()I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-ne v12, v8, :cond_2

    .line 66
    .line 67
    move v12, v9

    .line 68
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->N()Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    invoke-virtual {v5, v10, v12, v13}, Landroidx/media3/common/Timeline;->k(IIZ)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_1
    if-eq v5, v11, :cond_3

    .line 77
    .line 78
    move v5, v8

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move v5, v9

    .line 81
    :goto_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->p()Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_4

    .line 90
    .line 91
    move v10, v11

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->J()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-ne v13, v8, :cond_5

    .line 102
    .line 103
    move v13, v9

    .line 104
    :cond_5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->N()Z

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    invoke-virtual {v10, v12, v13, v14}, Landroidx/media3/common/Timeline;->e(IIZ)I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    :goto_3
    if-eq v10, v11, :cond_6

    .line 113
    .line 114
    move v10, v8

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move v10, v9

    .line 117
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->W()Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->p()Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-nez v13, :cond_7

    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-virtual {v12, v13, v3, v6, v7}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-boolean v3, v3, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 140
    .line 141
    if-eqz v3, :cond_7

    .line 142
    .line 143
    move v3, v8

    .line 144
    goto :goto_5

    .line 145
    :cond_7
    move v3, v9

    .line 146
    :goto_5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K()Landroidx/media3/common/Timeline;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    new-instance v6, Landroidx/media3/common/Player$Commands$Builder;

    .line 155
    .line 156
    invoke-direct {v6}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c:Landroidx/media3/common/Player$Commands;

    .line 160
    .line 161
    iget-object v7, v7, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 162
    .line 163
    iget-object v7, v7, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 164
    .line 165
    iget-object v12, v6, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    .line 166
    .line 167
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move v13, v9

    .line 171
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-ge v13, v14, :cond_8

    .line 176
    .line 177
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    invoke-static {v13, v14}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    invoke-virtual {v12, v14}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v13, v13, 0x1

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_8
    xor-int/lit8 v7, v2, 0x1

    .line 195
    .line 196
    const/4 v13, 0x4

    .line 197
    invoke-virtual {v6, v13, v7}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 198
    .line 199
    .line 200
    if-eqz v4, :cond_9

    .line 201
    .line 202
    if-nez v2, :cond_9

    .line 203
    .line 204
    move v13, v8

    .line 205
    goto :goto_7

    .line 206
    :cond_9
    move v13, v9

    .line 207
    :goto_7
    const/4 v14, 0x5

    .line 208
    invoke-virtual {v6, v14, v13}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 209
    .line 210
    .line 211
    if-eqz v5, :cond_a

    .line 212
    .line 213
    if-nez v2, :cond_a

    .line 214
    .line 215
    move v13, v8

    .line 216
    goto :goto_8

    .line 217
    :cond_a
    move v13, v9

    .line 218
    :goto_8
    const/4 v14, 0x6

    .line 219
    invoke-virtual {v6, v14, v13}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 220
    .line 221
    .line 222
    if-nez v1, :cond_c

    .line 223
    .line 224
    if-nez v5, :cond_b

    .line 225
    .line 226
    if-eqz v11, :cond_b

    .line 227
    .line 228
    if-eqz v4, :cond_c

    .line 229
    .line 230
    :cond_b
    if-nez v2, :cond_c

    .line 231
    .line 232
    move v5, v8

    .line 233
    goto :goto_9

    .line 234
    :cond_c
    move v5, v9

    .line 235
    :goto_9
    const/4 v13, 0x7

    .line 236
    invoke-virtual {v6, v13, v5}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 237
    .line 238
    .line 239
    if-eqz v10, :cond_d

    .line 240
    .line 241
    if-nez v2, :cond_d

    .line 242
    .line 243
    move v5, v8

    .line 244
    goto :goto_a

    .line 245
    :cond_d
    move v5, v9

    .line 246
    :goto_a
    const/16 v13, 0x8

    .line 247
    .line 248
    invoke-virtual {v6, v13, v5}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 249
    .line 250
    .line 251
    if-nez v1, :cond_f

    .line 252
    .line 253
    if-nez v10, :cond_e

    .line 254
    .line 255
    if-eqz v11, :cond_f

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    :cond_e
    if-nez v2, :cond_f

    .line 260
    .line 261
    move v1, v8

    .line 262
    goto :goto_b

    .line 263
    :cond_f
    move v1, v9

    .line 264
    :goto_b
    const/16 v3, 0x9

    .line 265
    .line 266
    invoke-virtual {v6, v3, v1}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 267
    .line 268
    .line 269
    const/16 v1, 0xa

    .line 270
    .line 271
    invoke-virtual {v6, v1, v7}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 272
    .line 273
    .line 274
    if-eqz v4, :cond_10

    .line 275
    .line 276
    if-nez v2, :cond_10

    .line 277
    .line 278
    move v1, v8

    .line 279
    goto :goto_c

    .line 280
    :cond_10
    move v1, v9

    .line 281
    :goto_c
    const/16 v3, 0xb

    .line 282
    .line 283
    invoke-virtual {v6, v3, v1}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 284
    .line 285
    .line 286
    if-eqz v4, :cond_11

    .line 287
    .line 288
    if-nez v2, :cond_11

    .line 289
    .line 290
    goto :goto_d

    .line 291
    :cond_11
    move v8, v9

    .line 292
    :goto_d
    const/16 v1, 0xc

    .line 293
    .line 294
    invoke-virtual {v6, v1, v8}, Landroidx/media3/common/Player$Commands$Builder;->a(IZ)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Landroidx/media3/common/Player$Commands;

    .line 298
    .line 299
    invoke-virtual {v12}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-direct {v1, v2}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    .line 304
    .line 305
    .line 306
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->R:Landroidx/media3/common/Player$Commands;

    .line 307
    .line 308
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_12

    .line 313
    .line 314
    new-instance v0, Landroidx/media3/exoplayer/g;

    .line 315
    .line 316
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/g;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 317
    .line 318
    .line 319
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 320
    .line 321
    const/16 v1, 0xd

    .line 322
    .line 323
    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 324
    .line 325
    .line 326
    :cond_12
    return-void
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0(IILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->N:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object v3, v2, Landroidx/media3/common/TrackSelectionParameters;->w:Lcom/google/common/collect/ImmutableSet;

    .line 33
    .line 34
    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Lcom/google/common/collect/ImmutableSet;

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->a:Lcom/google/common/collect/ImmutableSet;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->i()Lcom/google/common/collect/UnmodifiableIterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->i(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a()Landroidx/media3/common/TrackSelectionParameters;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 76
    .line 77
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Lcom/google/common/collect/ImmutableSet;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->j(Ljava/util/Set;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 86
    .line 87
    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->M:Lcom/google/common/collect/ImmutableSet;

    .line 92
    .line 93
    move-object v0, v3

    .line 94
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    instance-of v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 111
    .line 112
    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->c(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->l(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 129
    .line 130
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 131
    .line 132
    const/16 v1, 0x24

    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 146
    .line 147
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 148
    .line 149
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 150
    .line 151
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0(IZ)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final t()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 7
    .line 8
    return-object p0
.end method

.method public final t0(IZ)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->L:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 10
    .line 11
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 21
    .line 22
    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 23
    .line 24
    if-ne v4, p2, :cond_2

    .line 25
    .line 26
    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 27
    .line 28
    if-ne v4, v0, :cond_2

    .line 29
    .line 30
    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 31
    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 36
    .line 37
    add-int/2addr v4, v2

    .line 38
    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 39
    .line 40
    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_3
    invoke-virtual {v3, p1, v0, p2}, Landroidx/media3/exoplayer/PlaybackInfo;->e(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    shl-int/2addr v0, v1

    .line 53
    or-int/2addr p1, v0

    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 57
    .line 58
    invoke-interface {v0, v2, p2, p1}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 63
    .line 64
    .line 65
    const/4 v11, -0x1

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x5

    .line 70
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    move-object v4, p0

    .line 76
    invoke-virtual/range {v4 .. v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final u(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 8
    .line 9
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 10
    .line 11
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 21
    .line 22
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 23
    .line 24
    iget-object v8, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {v4, v8}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, v5, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 36
    .line 37
    iget-object v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 38
    .line 39
    iget-object v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 42
    .line 43
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 52
    .line 53
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->o()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const-string v10, "periodUid %s not found in timeline %s with size %d"

    .line 66
    .line 67
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-static {v8, v4}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 75
    .line 76
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 77
    .line 78
    invoke-virtual {v4, v8}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget-object v8, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 83
    .line 84
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    iget-object v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 91
    .line 92
    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 93
    .line 94
    iget-object v13, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 95
    .line 96
    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 97
    .line 98
    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->p()Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    const/16 v16, 0x3

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    const/16 v18, 0x2

    .line 107
    .line 108
    const-wide/16 v5, 0x0

    .line 109
    .line 110
    if-eqz v15, :cond_2

    .line 111
    .line 112
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-eqz v15, :cond_2

    .line 117
    .line 118
    new-instance v8, Landroid/util/Pair;

    .line 119
    .line 120
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->p()Z

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->p()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eq v15, v7, :cond_3

    .line 136
    .line 137
    new-instance v8, Landroid/util/Pair;

    .line 138
    .line 139
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_3
    iget-object v7, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v11, v7, v9}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    iget v7, v7, Landroidx/media3/common/Timeline$Period;->c:I

    .line 157
    .line 158
    invoke-virtual {v11, v7, v8, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 163
    .line 164
    iget-object v11, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v13, v11, v9}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    iget v9, v9, Landroidx/media3/common/Timeline$Period;->c:I

    .line 171
    .line 172
    invoke-virtual {v13, v9, v8, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    iget-object v8, v8, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_7

    .line 183
    .line 184
    if-eqz p3, :cond_4

    .line 185
    .line 186
    if-nez v2, :cond_4

    .line 187
    .line 188
    const/4 v7, 0x1

    .line 189
    goto :goto_1

    .line 190
    :cond_4
    if-eqz p3, :cond_5

    .line 191
    .line 192
    const/4 v7, 0x1

    .line 193
    if-ne v2, v7, :cond_5

    .line 194
    .line 195
    move/from16 v7, v18

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_5
    if-nez v4, :cond_6

    .line 199
    .line 200
    move/from16 v7, v16

    .line 201
    .line 202
    :goto_1
    new-instance v8, Landroid/util/Pair;

    .line 203
    .line 204
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_6
    invoke-static {}, Lio/sentry/d;->d()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_7
    if-eqz p3, :cond_8

    .line 219
    .line 220
    if-nez v2, :cond_8

    .line 221
    .line 222
    iget-wide v7, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 223
    .line 224
    iget-wide v11, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 225
    .line 226
    cmp-long v7, v7, v11

    .line 227
    .line 228
    if-gez v7, :cond_8

    .line 229
    .line 230
    new-instance v8, Landroid/util/Pair;

    .line 231
    .line 232
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_8
    if-eqz p3, :cond_9

    .line 243
    .line 244
    const/4 v7, 0x1

    .line 245
    if-ne v2, v7, :cond_9

    .line 246
    .line 247
    if-eqz p8, :cond_9

    .line 248
    .line 249
    new-instance v8, Landroid/util/Pair;

    .line 250
    .line 251
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 252
    .line 253
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_9
    new-instance v8, Landroid/util/Pair;

    .line 262
    .line 263
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 264
    .line 265
    invoke-direct {v8, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :goto_2
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v7, Ljava/lang/Boolean;

    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v8, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v7, :cond_b

    .line 285
    .line 286
    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 287
    .line 288
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->p()Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-nez v10, :cond_a

    .line 293
    .line 294
    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 295
    .line 296
    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 297
    .line 298
    iget-object v11, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 299
    .line 300
    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 301
    .line 302
    invoke-virtual {v10, v11, v12}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    iget v10, v10, Landroidx/media3/common/Timeline$Period;->c:I

    .line 307
    .line 308
    iget-object v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 309
    .line 310
    iget-object v12, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 311
    .line 312
    invoke-virtual {v11, v10, v12, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_a
    const/4 v10, 0x0

    .line 320
    :goto_3
    sget-object v11, Landroidx/media3/common/MediaMetadata;->C:Landroidx/media3/common/MediaMetadata;

    .line 321
    .line 322
    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_b
    const/4 v10, 0x0

    .line 326
    :goto_4
    if-nez v7, :cond_c

    .line 327
    .line 328
    iget-object v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 329
    .line 330
    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 331
    .line 332
    invoke-interface {v11, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    if-nez v11, :cond_f

    .line 337
    .line 338
    :cond_c
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 339
    .line 340
    invoke-virtual {v11}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 345
    .line 346
    move/from16 v13, v17

    .line 347
    .line 348
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    if-ge v13, v14, :cond_e

    .line 353
    .line 354
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v14

    .line 358
    check-cast v14, Landroidx/media3/common/Metadata;

    .line 359
    .line 360
    move/from16 v15, v17

    .line 361
    .line 362
    :goto_6
    iget-object v9, v14, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 363
    .line 364
    array-length v5, v9

    .line 365
    if-ge v15, v5, :cond_d

    .line 366
    .line 367
    aget-object v5, v9, v15

    .line 368
    .line 369
    invoke-interface {v5, v11}, Landroidx/media3/common/Metadata$Entry;->b(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 370
    .line 371
    .line 372
    add-int/lit8 v15, v15, 0x1

    .line 373
    .line 374
    const-wide/16 v5, 0x0

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 378
    .line 379
    const-wide/16 v5, 0x0

    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_e
    new-instance v5, Landroidx/media3/common/MediaMetadata;

    .line 383
    .line 384
    invoke-direct {v5, v11}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 385
    .line 386
    .line 387
    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 388
    .line 389
    :cond_f
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0()Landroidx/media3/common/MediaMetadata;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 394
    .line 395
    invoke-virtual {v5, v6}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 400
    .line 401
    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 402
    .line 403
    iget-boolean v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 404
    .line 405
    if-eq v5, v9, :cond_10

    .line 406
    .line 407
    const/4 v5, 0x1

    .line 408
    goto :goto_7

    .line 409
    :cond_10
    move/from16 v5, v17

    .line 410
    .line 411
    :goto_7
    iget v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 412
    .line 413
    iget v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 414
    .line 415
    if-eq v9, v11, :cond_11

    .line 416
    .line 417
    const/4 v9, 0x1

    .line 418
    goto :goto_8

    .line 419
    :cond_11
    move/from16 v9, v17

    .line 420
    .line 421
    :goto_8
    if-nez v9, :cond_12

    .line 422
    .line 423
    if-eqz v5, :cond_13

    .line 424
    .line 425
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v0()V

    .line 426
    .line 427
    .line 428
    :cond_13
    iget-boolean v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    .line 429
    .line 430
    iget-boolean v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    .line 431
    .line 432
    if-eq v11, v12, :cond_14

    .line 433
    .line 434
    const/4 v11, 0x1

    .line 435
    goto :goto_9

    .line 436
    :cond_14
    move/from16 v11, v17

    .line 437
    .line 438
    :goto_9
    if-nez v4, :cond_15

    .line 439
    .line 440
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 441
    .line 442
    new-instance v12, Landroidx/media3/exoplayer/a;

    .line 443
    .line 444
    move/from16 v13, p2

    .line 445
    .line 446
    move/from16 v14, v17

    .line 447
    .line 448
    invoke-direct {v12, v13, v14, v1}, Landroidx/media3/exoplayer/a;-><init>(IILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4, v14, v12}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 452
    .line 453
    .line 454
    :cond_15
    if-eqz p3, :cond_1d

    .line 455
    .line 456
    new-instance v4, Landroidx/media3/common/Timeline$Period;

    .line 457
    .line 458
    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 459
    .line 460
    .line 461
    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 462
    .line 463
    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->p()Z

    .line 464
    .line 465
    .line 466
    move-result v12

    .line 467
    if-nez v12, :cond_16

    .line 468
    .line 469
    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 470
    .line 471
    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 472
    .line 473
    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 474
    .line 475
    invoke-virtual {v13, v12, v4}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 476
    .line 477
    .line 478
    iget v13, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 479
    .line 480
    iget-object v14, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 481
    .line 482
    invoke-virtual {v14, v12}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 483
    .line 484
    .line 485
    move-result v14

    .line 486
    iget-object v15, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 487
    .line 488
    move/from16 v19, v5

    .line 489
    .line 490
    iget-object v5, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 491
    .line 492
    move/from16 v21, v6

    .line 493
    .line 494
    move/from16 v20, v7

    .line 495
    .line 496
    const-wide/16 v6, 0x0

    .line 497
    .line 498
    invoke-virtual {v15, v13, v5, v6, v7}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 503
    .line 504
    iget-object v6, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 505
    .line 506
    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 507
    .line 508
    move-object/from16 v23, v5

    .line 509
    .line 510
    move-object/from16 v25, v6

    .line 511
    .line 512
    move-object/from16 v26, v12

    .line 513
    .line 514
    move/from16 v24, v13

    .line 515
    .line 516
    move/from16 v27, v14

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_16
    move/from16 v19, v5

    .line 520
    .line 521
    move/from16 v21, v6

    .line 522
    .line 523
    move/from16 v20, v7

    .line 524
    .line 525
    move/from16 v24, p7

    .line 526
    .line 527
    move/from16 v27, v24

    .line 528
    .line 529
    const/16 v23, 0x0

    .line 530
    .line 531
    const/16 v25, 0x0

    .line 532
    .line 533
    const/16 v26, 0x0

    .line 534
    .line 535
    :goto_a
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 536
    .line 537
    if-nez v2, :cond_19

    .line 538
    .line 539
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 544
    .line 545
    if-eqz v5, :cond_17

    .line 546
    .line 547
    iget v5, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 548
    .line 549
    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 550
    .line 551
    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/Timeline$Period;->a(II)J

    .line 552
    .line 553
    .line 554
    move-result-wide v4

    .line 555
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 556
    .line 557
    .line 558
    move-result-wide v6

    .line 559
    goto :goto_c

    .line 560
    :cond_17
    iget v5, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 561
    .line 562
    const/4 v6, -0x1

    .line 563
    if-eq v5, v6, :cond_18

    .line 564
    .line 565
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 566
    .line 567
    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 568
    .line 569
    .line 570
    move-result-wide v4

    .line 571
    :goto_b
    move-wide v6, v4

    .line 572
    goto :goto_c

    .line 573
    :cond_18
    iget-wide v5, v4, Landroidx/media3/common/Timeline$Period;->e:J

    .line 574
    .line 575
    iget-wide v12, v4, Landroidx/media3/common/Timeline$Period;->d:J

    .line 576
    .line 577
    add-long v4, v5, v12

    .line 578
    .line 579
    goto :goto_b

    .line 580
    :cond_19
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_1a

    .line 585
    .line 586
    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 587
    .line 588
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 589
    .line 590
    .line 591
    move-result-wide v6

    .line 592
    goto :goto_c

    .line 593
    :cond_1a
    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->e:J

    .line 594
    .line 595
    iget-wide v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 596
    .line 597
    add-long/2addr v4, v6

    .line 598
    goto :goto_b

    .line 599
    :goto_c
    new-instance v22, Landroidx/media3/common/Player$PositionInfo;

    .line 600
    .line 601
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->N(J)J

    .line 602
    .line 603
    .line 604
    move-result-wide v28

    .line 605
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->N(J)J

    .line 606
    .line 607
    .line 608
    move-result-wide v30

    .line 609
    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 610
    .line 611
    iget v5, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 612
    .line 613
    iget v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 614
    .line 615
    move/from16 v33, v4

    .line 616
    .line 617
    move/from16 v32, v5

    .line 618
    .line 619
    invoke-direct/range {v22 .. v33}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v4, v22

    .line 623
    .line 624
    iget-object v5, v0, Landroidx/media3/common/BasePlayer;->a:Landroidx/media3/common/Timeline$Window;

    .line 625
    .line 626
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 627
    .line 628
    .line 629
    move-result v6

    .line 630
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l()I

    .line 631
    .line 632
    .line 633
    move-result v7

    .line 634
    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 635
    .line 636
    iget-object v12, v12, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 637
    .line 638
    invoke-virtual {v12}, Landroidx/media3/common/Timeline;->p()Z

    .line 639
    .line 640
    .line 641
    move-result v12

    .line 642
    if-nez v12, :cond_1b

    .line 643
    .line 644
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 645
    .line 646
    iget-object v12, v7, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 647
    .line 648
    iget-object v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 649
    .line 650
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 651
    .line 652
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 653
    .line 654
    invoke-virtual {v7, v12, v13}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 655
    .line 656
    .line 657
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 658
    .line 659
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 660
    .line 661
    invoke-virtual {v7, v12}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 666
    .line 667
    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 668
    .line 669
    const-wide/16 v14, 0x0

    .line 670
    .line 671
    invoke-virtual {v13, v6, v5, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 672
    .line 673
    .line 674
    move-result-object v13

    .line 675
    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 676
    .line 677
    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 678
    .line 679
    move-object/from16 v25, v5

    .line 680
    .line 681
    move-object/from16 v26, v12

    .line 682
    .line 683
    move-object/from16 v23, v13

    .line 684
    .line 685
    :goto_d
    move/from16 v27, v7

    .line 686
    .line 687
    goto :goto_e

    .line 688
    :cond_1b
    const/16 v23, 0x0

    .line 689
    .line 690
    const/16 v25, 0x0

    .line 691
    .line 692
    const/16 v26, 0x0

    .line 693
    .line 694
    goto :goto_d

    .line 695
    :goto_e
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->N(J)J

    .line 696
    .line 697
    .line 698
    move-result-wide v28

    .line 699
    new-instance v22, Landroidx/media3/common/Player$PositionInfo;

    .line 700
    .line 701
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 702
    .line 703
    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 704
    .line 705
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    if-eqz v5, :cond_1c

    .line 710
    .line 711
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 712
    .line 713
    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 714
    .line 715
    .line 716
    move-result-wide v12

    .line 717
    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->N(J)J

    .line 718
    .line 719
    .line 720
    move-result-wide v12

    .line 721
    move-wide/from16 v30, v12

    .line 722
    .line 723
    goto :goto_f

    .line 724
    :cond_1c
    move-wide/from16 v30, v28

    .line 725
    .line 726
    :goto_f
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 727
    .line 728
    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 729
    .line 730
    iget v7, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 731
    .line 732
    iget v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 733
    .line 734
    move/from16 v33, v5

    .line 735
    .line 736
    move/from16 v24, v6

    .line 737
    .line 738
    move/from16 v32, v7

    .line 739
    .line 740
    invoke-direct/range {v22 .. v33}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 741
    .line 742
    .line 743
    move-object/from16 v5, v22

    .line 744
    .line 745
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 746
    .line 747
    new-instance v7, Landroidx/media3/exoplayer/k;

    .line 748
    .line 749
    invoke-direct {v7, v2, v4, v5}, Landroidx/media3/exoplayer/k;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    .line 750
    .line 751
    .line 752
    const/16 v2, 0xb

    .line 753
    .line 754
    invoke-virtual {v6, v2, v7}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 755
    .line 756
    .line 757
    goto :goto_10

    .line 758
    :cond_1d
    move/from16 v19, v5

    .line 759
    .line 760
    move/from16 v21, v6

    .line 761
    .line 762
    move/from16 v20, v7

    .line 763
    .line 764
    :goto_10
    if-eqz v20, :cond_1e

    .line 765
    .line 766
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 767
    .line 768
    new-instance v4, Landroidx/media3/exoplayer/a;

    .line 769
    .line 770
    const/4 v7, 0x1

    .line 771
    invoke-direct {v4, v8, v7, v10}, Landroidx/media3/exoplayer/a;-><init>(IILjava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2, v7, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 775
    .line 776
    .line 777
    :cond_1e
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 778
    .line 779
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 780
    .line 781
    const/4 v5, 0x7

    .line 782
    if-eq v2, v4, :cond_1f

    .line 783
    .line 784
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 785
    .line 786
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 787
    .line 788
    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 789
    .line 790
    .line 791
    const/16 v6, 0xa

    .line 792
    .line 793
    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 794
    .line 795
    .line 796
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 797
    .line 798
    if-eqz v2, :cond_1f

    .line 799
    .line 800
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 801
    .line 802
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 803
    .line 804
    const/16 v7, 0x8

    .line 805
    .line 806
    invoke-direct {v4, v1, v7}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 810
    .line 811
    .line 812
    :cond_1f
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 813
    .line 814
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 815
    .line 816
    if-eq v2, v4, :cond_20

    .line 817
    .line 818
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 819
    .line 820
    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->e:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v2, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    .line 823
    .line 824
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    check-cast v4, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 828
    .line 829
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 830
    .line 831
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 832
    .line 833
    const/16 v6, 0x9

    .line 834
    .line 835
    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 836
    .line 837
    .line 838
    move/from16 v6, v18

    .line 839
    .line 840
    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 841
    .line 842
    .line 843
    :cond_20
    if-nez v21, :cond_21

    .line 844
    .line 845
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 846
    .line 847
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 848
    .line 849
    new-instance v6, Landroidx/media3/exoplayer/b;

    .line 850
    .line 851
    const/4 v14, 0x0

    .line 852
    invoke-direct {v6, v14, v2}, Landroidx/media3/exoplayer/b;-><init>(ILjava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    const/16 v2, 0xe

    .line 856
    .line 857
    invoke-virtual {v4, v2, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 858
    .line 859
    .line 860
    goto :goto_11

    .line 861
    :cond_21
    const/4 v14, 0x0

    .line 862
    :goto_11
    if-eqz v11, :cond_22

    .line 863
    .line 864
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 865
    .line 866
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 867
    .line 868
    invoke-direct {v4, v1, v14}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 869
    .line 870
    .line 871
    move/from16 v6, v16

    .line 872
    .line 873
    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 874
    .line 875
    .line 876
    :cond_22
    if-nez v9, :cond_23

    .line 877
    .line 878
    if-eqz v19, :cond_24

    .line 879
    .line 880
    :cond_23
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 881
    .line 882
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 883
    .line 884
    const/4 v7, 0x1

    .line 885
    invoke-direct {v4, v1, v7}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 886
    .line 887
    .line 888
    const/4 v6, -0x1

    .line 889
    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 890
    .line 891
    .line 892
    :cond_24
    const/4 v2, 0x4

    .line 893
    if-eqz v9, :cond_25

    .line 894
    .line 895
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 896
    .line 897
    new-instance v6, Landroidx/media3/exoplayer/c;

    .line 898
    .line 899
    const/4 v7, 0x2

    .line 900
    invoke-direct {v6, v1, v7}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v4, v2, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 904
    .line 905
    .line 906
    :cond_25
    const/4 v4, 0x5

    .line 907
    if-nez v19, :cond_26

    .line 908
    .line 909
    iget v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 910
    .line 911
    iget v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 912
    .line 913
    if-eq v6, v7, :cond_27

    .line 914
    .line 915
    :cond_26
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 916
    .line 917
    new-instance v7, Landroidx/media3/exoplayer/c;

    .line 918
    .line 919
    const/4 v8, 0x3

    .line 920
    invoke-direct {v7, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v6, v4, v7}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 924
    .line 925
    .line 926
    :cond_27
    iget v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 927
    .line 928
    iget v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 929
    .line 930
    const/4 v8, 0x6

    .line 931
    if-eq v6, v7, :cond_28

    .line 932
    .line 933
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 934
    .line 935
    new-instance v7, Landroidx/media3/exoplayer/c;

    .line 936
    .line 937
    invoke-direct {v7, v1, v2}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v6, v8, v7}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 941
    .line 942
    .line 943
    :cond_28
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    .line 944
    .line 945
    .line 946
    move-result v2

    .line 947
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    if-eq v2, v6, :cond_29

    .line 952
    .line 953
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 954
    .line 955
    new-instance v6, Landroidx/media3/exoplayer/c;

    .line 956
    .line 957
    invoke-direct {v6, v1, v4}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 961
    .line 962
    .line 963
    :cond_29
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 964
    .line 965
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 966
    .line 967
    invoke-virtual {v2, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    if-nez v2, :cond_2a

    .line 972
    .line 973
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 974
    .line 975
    new-instance v4, Landroidx/media3/exoplayer/c;

    .line 976
    .line 977
    invoke-direct {v4, v1, v8}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 978
    .line 979
    .line 980
    const/16 v5, 0xc

    .line 981
    .line 982
    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 983
    .line 984
    .line 985
    :cond_2a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s0()V

    .line 986
    .line 987
    .line 988
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 989
    .line 990
    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->b()V

    .line 991
    .line 992
    .line 993
    iget-boolean v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 994
    .line 995
    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 996
    .line 997
    if-eq v2, v1, :cond_2b

    .line 998
    .line 999
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v1

    .line 1009
    if-eqz v1, :cond_2b

    .line 1010
    .line 1011
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 1016
    .line 1017
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 1018
    .line 1019
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1020
    .line 1021
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v0()V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_12

    .line 1025
    :cond_2b
    return-void
.end method

.method public final v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->k0:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public final v0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->z:Landroidx/media3/common/util/WifiLockManager;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->y:Landroidx/media3/common/util/WakeLockManager;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v4, :cond_3

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    if-eq v0, v5, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x4

    .line 20
    if-ne v0, p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 31
    .line 32
    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    move v3, v4

    .line 43
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/WakeLockManager;->b(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/WifiLockManager;->a(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final w()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final w0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d:Landroidx/media3/common/util/ConditionVariable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->a()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroid/os/Looper;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    const-string v2, "\'\nExpected thread: \'"

    .line 39
    .line 40
    const-string v3, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 41
    .line 42
    const-string v4, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    .line 43
    .line 44
    invoke-static {v4, v0, v2, v1, v3}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->e0:Z

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 64
    .line 65
    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->f0:Z

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final x()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    .line 24
    iget-wide v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    return-wide v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->P()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0
.end method

.method public final y()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 7
    .line 8
    return p0
.end method

.method public final z()Landroidx/media3/common/Tracks;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w0()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->d:Landroidx/media3/common/Tracks;

    .line 9
    .line 10
    return-object p0
.end method
