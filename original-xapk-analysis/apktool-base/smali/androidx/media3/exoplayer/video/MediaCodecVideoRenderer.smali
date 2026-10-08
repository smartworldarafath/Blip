.class public Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field public static final L1:[I

.field public static M1:Z

.field public static N1:Z


# instance fields
.field public A1:J

.field public B1:Landroidx/media3/common/VideoSize;

.field public C1:Landroidx/media3/common/VideoSize;

.field public D1:I

.field public E1:Z

.field public F1:I

.field public G1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

.field public H1:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public I1:J

.field public J1:Z

.field public K1:I

.field public final Q0:Landroid/content/Context;

.field public final R0:Z

.field public final S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final T0:I

.field public final U0:Z

.field public final V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final W0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public final X0:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field public final Y0:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

.field public final Z0:J

.field public final a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public final b1:Ljava/util/PriorityQueue;

.field public c1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field public d1:Z

.field public e1:Z

.field public f1:Z

.field public g1:Z

.field public h1:Landroidx/media3/exoplayer/video/VideoSink;

.field public i1:Z

.field public j1:I

.field public k1:Ljava/util/List;

.field public l1:Landroid/view/Surface;

.field public m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field public n1:Landroidx/media3/common/util/Size;

.field public o1:Z

.field public p1:I

.field public q1:I

.field public r1:J

.field public s1:I

.field public t1:I

.field public u1:I

.field public v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public w1:J

.field public x1:Z

.field public y1:J

.field public z1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    iget-object v3, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->c:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 9
    .line 10
    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0:Landroid/content/Context;

    .line 18
    .line 19
    iget v1, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->g:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T0:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 25
    .line 26
    new-instance v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 27
    .line 28
    iget-object v3, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->e:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v4, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->f:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v2, v4

    .line 46
    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0:Z

    .line 47
    .line 48
    new-instance v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 49
    .line 50
    iget-wide v5, p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->d:J

    .line 51
    .line 52
    invoke-direct {v2, v0, p0, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 56
    .line 57
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 58
    .line 59
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 63
    .line 64
    new-instance p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 65
    .line 66
    new-instance v0, Lp;

    .line 67
    .line 68
    const/16 v2, 0xd

    .line 69
    .line 70
    invoke-direct {v0, v2, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>(Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 77
    .line 78
    sget-object p1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 79
    .line 80
    const-string p1, "NVIDIA"

    .line 81
    .line 82
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U0:Z

    .line 89
    .line 90
    sget-object p1, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    .line 91
    .line 92
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n1:Landroidx/media3/common/util/Size;

    .line 93
    .line 94
    iput v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p1:I

    .line 95
    .line 96
    iput v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1:I

    .line 97
    .line 98
    sget-object p1, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 99
    .line 100
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B1:Landroidx/media3/common/VideoSize;

    .line 101
    .line 102
    iput v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1:I

    .line 103
    .line 104
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 105
    .line 106
    const/16 p1, -0x3e8

    .line 107
    .line 108
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1:I

    .line 109
    .line 110
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 116
    .line 117
    new-instance p1, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 118
    .line 119
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 123
    .line 124
    new-instance p1, Ljava/util/PriorityQueue;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1:Ljava/util/PriorityQueue;

    .line 130
    .line 131
    const-wide/16 v2, -0x3a98

    .line 132
    .line 133
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z0:J

    .line 134
    .line 135
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 136
    .line 137
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 141
    .line 142
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 143
    .line 144
    return-void
.end method

.method public static I0(Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "OMX.google"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const-class p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M1:Z

    .line 15
    .line 16
    if-nez v1, :cond_13

    .line 17
    .line 18
    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x1c

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    const/4 v4, 0x6

    .line 26
    const/4 v5, 0x5

    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v8, 0x2

    .line 30
    const/4 v9, -0x1

    .line 31
    const/4 v10, 0x1

    .line 32
    if-gt v1, v2, :cond_9

    .line 33
    .line 34
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sparse-switch v2, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    :goto_0
    move v1, v9

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_0
    const-string v2, "machuca"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v1, v3

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const-string v2, "once"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v1, v4

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string v2, "magnolia"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v1, v5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_3
    const-string v2, "aquaman"

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move v1, v6

    .line 92
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v2, "oneday"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    move v1, v7

    .line 103
    goto :goto_1

    .line 104
    :sswitch_5
    const-string v2, "dangalUHD"

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    move v1, v8

    .line 114
    goto :goto_1

    .line 115
    :sswitch_6
    const-string v2, "dangalFHD"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_7

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    move v1, v10

    .line 125
    goto :goto_1

    .line 126
    :sswitch_7
    const-string v2, "dangal"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_8

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_8
    move v1, v0

    .line 136
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :pswitch_0
    move v0, v10

    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_9
    :goto_2
    :try_start_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    sparse-switch v2, :sswitch_data_1

    .line 153
    .line 154
    .line 155
    :goto_3
    move v3, v9

    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :sswitch_8
    const-string v2, "AFTEUFF014"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_a

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_a
    const/16 v3, 0x8

    .line 168
    .line 169
    goto/16 :goto_4

    .line 170
    .line 171
    :sswitch_9
    const-string v2, "AFTSO001"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_12

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :sswitch_a
    const-string v2, "AFTEU014"

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_b

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    move v3, v4

    .line 190
    goto :goto_4

    .line 191
    :sswitch_b
    const-string v2, "AFTEU011"

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_c

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_c
    move v3, v5

    .line 201
    goto :goto_4

    .line 202
    :sswitch_c
    const-string v2, "AFTR"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_d

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_d
    move v3, v6

    .line 212
    goto :goto_4

    .line 213
    :sswitch_d
    const-string v2, "AFTN"

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_e

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_e
    move v3, v7

    .line 223
    goto :goto_4

    .line 224
    :sswitch_e
    const-string v2, "AFTA"

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_f

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_f
    move v3, v8

    .line 234
    goto :goto_4

    .line 235
    :sswitch_f
    const-string v2, "AFTKMST12"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_10

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_10
    move v3, v10

    .line 245
    goto :goto_4

    .line 246
    :sswitch_10
    const-string v2, "AFTJMST12"

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_11

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_11
    move v3, v0

    .line 256
    :cond_12
    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 257
    .line 258
    .line 259
    :goto_5
    :try_start_2
    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1:Z

    .line 260
    .line 261
    sput-boolean v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M1:Z

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    goto :goto_7

    .line 266
    :cond_13
    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    sget-boolean p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1:Z

    .line 268
    .line 269
    return p0

    .line 270
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    throw v0

    .line 272
    nop

    .line 273
    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static J0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 11

    .line 1
    iget v0, p1, Landroidx/media3/common/Format;->w:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/common/Format;->x:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_d

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v3, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v4, "video/dolby-vision"

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "video/avc"

    .line 24
    .line 25
    const-string v6, "video/av01"

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    const-string v8, "video/hevc"

    .line 29
    .line 30
    const/4 v9, 0x2

    .line 31
    if-eqz v4, :cond_4

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v3, 0x200

    .line 48
    .line 49
    if-eq p1, v3, :cond_2

    .line 50
    .line 51
    if-eq p1, v7, :cond_2

    .line 52
    .line 53
    if-ne p1, v9, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v3, 0x400

    .line 57
    .line 58
    if-ne p1, v3, :cond_3

    .line 59
    .line 60
    move-object v3, v6

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move-object v3, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v3, v8

    .line 65
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v10, 0x3

    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    :goto_2
    move v7, v2

    .line 75
    goto :goto_3

    .line 76
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const/4 v7, 0x6

    .line 86
    goto :goto_3

    .line 87
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    const/4 v7, 0x5

    .line 97
    goto :goto_3

    .line 98
    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    move v7, v4

    .line 106
    goto :goto_3

    .line 107
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    move v7, v10

    .line 117
    goto :goto_3

    .line 118
    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_9

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    move v7, v9

    .line 126
    goto :goto_3

    .line 127
    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_b

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_a

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_a
    const/4 v7, 0x0

    .line 144
    :cond_b
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :pswitch_0
    mul-int/2addr v0, v1

    .line 149
    mul-int/2addr v0, v10

    .line 150
    div-int/lit8 v0, v0, 0x8

    .line 151
    .line 152
    return v0

    .line 153
    :pswitch_1
    sget-object p1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 154
    .line 155
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 156
    .line 157
    const-string v3, "BRAVIA 4K 2015"

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_d

    .line 164
    .line 165
    const-string v3, "Amazon"

    .line 166
    .line 167
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_c

    .line 174
    .line 175
    const-string v3, "KFSOWI"

    .line 176
    .line 177
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_d

    .line 182
    .line 183
    const-string v3, "AFTS"

    .line 184
    .line 185
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_c

    .line 190
    .line 191
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 192
    .line 193
    if-eqz p0, :cond_c

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_c
    const/16 p0, 0x10

    .line 197
    .line 198
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->e(II)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->e(II)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    mul-int/2addr p0, p1

    .line 207
    mul-int/lit16 p0, p0, 0x300

    .line 208
    .line 209
    div-int/2addr p0, v4

    .line 210
    return p0

    .line 211
    :pswitch_2
    mul-int/2addr v0, v1

    .line 212
    mul-int/2addr v0, v10

    .line 213
    div-int/2addr v0, v4

    .line 214
    const/high16 p0, 0x200000

    .line 215
    .line 216
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    return p0

    .line 221
    :pswitch_3
    mul-int/2addr v0, v1

    .line 222
    mul-int/2addr v0, v10

    .line 223
    div-int/2addr v0, v4

    .line 224
    return v0

    .line 225
    :cond_d
    :goto_4
    return v2

    .line 226
    nop

    .line 227
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static K0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2

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
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v1, "video/dolby-vision"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {p1, p0, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->g(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static L0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 4

    .line 1
    iget v0, p1, Landroidx/media3/common/Format;->q:I

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v2, v0

    .line 14
    :goto_0
    if-ge v0, p0, :cond_0

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    array-length v3, v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p0, p1, Landroidx/media3/common/Format;->q:I

    .line 28
    .line 29
    add-int/2addr p0, v2

    .line 30
    return p0

    .line 31
    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final A0()Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 10
    .line 11
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v6, v2, v4

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    const-wide/16 v8, 0x1

    .line 22
    .line 23
    add-long/2addr v8, v2

    .line 24
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()J

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    add-long/2addr v10, v2

    .line 29
    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 30
    .line 31
    add-long/2addr v2, v8

    .line 32
    const-wide v8, 0x7fffffffffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    sub-long/2addr v8, v10

    .line 38
    cmp-long v2, v2, v8

    .line 39
    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v2, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v2, v7

    .line 46
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    iget-boolean v3, v3, Landroidx/media3/exoplayer/ScrubbingModeParameters;->c:Z

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x1:Z

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget v0, v0, Landroidx/media3/common/Format;->r:I

    .line 65
    .line 66
    if-gtz v0, :cond_5

    .line 67
    .line 68
    :cond_3
    if-nez v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    cmp-long p0, v2, v4

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    :goto_2
    return v1

    .line 80
    :cond_5
    :goto_3
    return v7
.end method

.method public final B0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final C0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "c2.mtk.avc.decoder"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "c2.mtk.hevc.decoder"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "c2.mtk.vp9.decoder"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final E0(Lk8;Landroidx/media3/common/Format;)I
    .locals 10

    .line 1
    iget-object v0, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->t:Landroidx/media3/common/DrmInitData;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-static {p0, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-static {v2, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_3
    iget v4, p2, Landroidx/media3/common/Format;->T:I

    .line 53
    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    if-ne v4, v5, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-static {v5, v1, v1, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_5
    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 70
    .line 71
    invoke-virtual {v4, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_7

    .line 76
    .line 77
    move v6, v2

    .line 78
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ge v6, v7, :cond_7

    .line 83
    .line 84
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 89
    .line 90
    invoke-virtual {v7, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_6

    .line 95
    .line 96
    move v3, v1

    .line 97
    move v5, v2

    .line 98
    move-object v4, v7

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    move v3, v2

    .line 104
    :goto_3
    if-eqz v5, :cond_8

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    goto :goto_4

    .line 108
    :cond_8
    const/4 v6, 0x3

    .line 109
    :goto_4
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    const/16 v7, 0x10

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_9
    const/16 v7, 0x8

    .line 119
    .line 120
    :goto_5
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g:Z

    .line 121
    .line 122
    if-eqz v4, :cond_a

    .line 123
    .line 124
    const/16 v4, 0x40

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_a
    move v4, v1

    .line 128
    :goto_6
    if-eqz v3, :cond_b

    .line 129
    .line 130
    const/16 v3, 0x80

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_b
    move v3, v1

    .line 134
    :goto_7
    const-string v8, "video/dolby-vision"

    .line 135
    .line 136
    iget-object v9, p2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_c

    .line 143
    .line 144
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-nez v8, :cond_c

    .line 149
    .line 150
    const/16 v3, 0x100

    .line 151
    .line 152
    :cond_c
    if-eqz v5, :cond_d

    .line 153
    .line 154
    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_d

    .line 163
    .line 164
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/e;

    .line 172
    .line 173
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/g;

    .line 177
    .line 178
    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 189
    .line 190
    invoke-virtual {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_d

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_d

    .line 201
    .line 202
    const/16 v1, 0x20

    .line 203
    .line 204
    :cond_d
    or-int p0, v6, v7

    .line 205
    .line 206
    or-int/2addr p0, v1

    .line 207
    or-int/2addr p0, v4

    .line 208
    or-int/2addr p0, v3

    .line 209
    return p0
.end method

.method public final I(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 10

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p2, Landroidx/media3/common/Format;->B:F

    .line 6
    .line 7
    iget v2, p3, Landroidx/media3/common/Format;->B:F

    .line 8
    .line 9
    iget v3, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->e:I

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v5, p3, Landroidx/media3/common/Format;->w:I

    .line 17
    .line 18
    iget v6, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    .line 19
    .line 20
    if-gt v5, v6, :cond_0

    .line 21
    .line 22
    iget v5, p3, Landroidx/media3/common/Format;->x:I

    .line 23
    .line 24
    iget v6, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    .line 25
    .line 26
    if-le v5, v6, :cond_1

    .line 27
    .line 28
    :cond_0
    or-int/lit16 v3, v3, 0x100

    .line 29
    .line 30
    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget v4, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    .line 35
    .line 36
    if-le v5, v4, :cond_2

    .line 37
    .line 38
    or-int/lit8 v3, v3, 0x40

    .line 39
    .line 40
    :cond_2
    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1:I

    .line 41
    .line 42
    const/high16 v4, -0x80000000

    .line 43
    .line 44
    if-ne p0, v4, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v4, 0x1f

    .line 50
    .line 51
    if-ge p0, v4, :cond_7

    .line 52
    .line 53
    const/16 v4, 0x1e

    .line 54
    .line 55
    if-ne p0, v4, :cond_4

    .line 56
    .line 57
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 58
    .line 59
    const-string v4, "MiTV"

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/high16 p0, -0x40800000    # -1.0f

    .line 69
    .line 70
    cmpl-float v4, v1, p0

    .line 71
    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    cmpl-float p0, v2, p0

    .line 75
    .line 76
    if-nez p0, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-boolean p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 80
    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    if-eqz p4, :cond_6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    div-float/2addr p0, p4

    .line 95
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 96
    .line 97
    .line 98
    move-result p4

    .line 99
    int-to-float p4, p4

    .line 100
    sub-float/2addr p0, p4

    .line 101
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    const p4, 0x3c23d70a    # 0.01f

    .line 106
    .line 107
    .line 108
    cmpl-float p0, p0, p4

    .line 109
    .line 110
    if-lez p0, :cond_7

    .line 111
    .line 112
    const/high16 p0, 0x10000

    .line 113
    .line 114
    or-int/2addr v3, p0

    .line 115
    :cond_7
    :goto_0
    move v9, v3

    .line 116
    new-instance v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 117
    .line 118
    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v9, :cond_8

    .line 121
    .line 122
    const/4 p0, 0x0

    .line 123
    :goto_1
    move v8, p0

    .line 124
    move-object v6, p2

    .line 125
    move-object v7, p3

    .line 126
    goto :goto_2

    .line 127
    :cond_8
    iget p0, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_2
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 131
    .line 132
    .line 133
    return-object v4
.end method

.method public final J(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final M0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x23

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->j:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 52
    .line 53
    if-nez v0, :cond_b

    .line 54
    .line 55
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-static {}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move v2, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    sget v2, Landroidx/media3/exoplayer/video/PlaceholderSurface;->m:I

    .line 71
    .line 72
    :goto_0
    move v2, v0

    .line 73
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 77
    .line 78
    const-string v3, "ExoPlayer:PlaceholderSurface"

    .line 79
    .line 80
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    sget p1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->m:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    move p1, v1

    .line 89
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 90
    .line 91
    .line 92
    new-instance v3, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-direct {v3, v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 99
    .line 100
    .line 101
    iput-object v3, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->k:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance v4, Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 104
    .line 105
    invoke-direct {v4, v3}, Landroidx/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    .line 106
    .line 107
    .line 108
    iput-object v4, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->j:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 109
    .line 110
    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v3, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->k:Landroid/os/Handler;

    .line 112
    .line 113
    invoke-virtual {v3, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    .line 119
    .line 120
    :goto_3
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->n:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 121
    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->m:Ljava/lang/RuntimeException;

    .line 125
    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->l:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    if-nez p1, :cond_7

    .line 131
    .line 132
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    goto :goto_4

    .line 138
    :catch_0
    move v1, v0

    .line 139
    goto :goto_3

    .line 140
    :cond_7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 148
    .line 149
    .line 150
    :cond_8
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->m:Ljava/lang/RuntimeException;

    .line 151
    .line 152
    if-nez p1, :cond_a

    .line 153
    .line 154
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->l:Ljava/lang/Error;

    .line 155
    .line 156
    if-nez p1, :cond_9

    .line 157
    .line 158
    iget-object p1, v2, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->n:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_9
    throw p1

    .line 167
    :cond_a
    throw p1

    .line 168
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    throw p0

    .line 170
    :cond_b
    :goto_5
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 171
    .line 172
    return-object p0
.end method

.method public final N0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x23

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->h:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final O0(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    const/high16 v0, 0x20000000

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 18
    .line 19
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    iget-wide p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 37
    .line 38
    sub-long/2addr p0, v2

    .line 39
    const-wide/32 v2, 0x186a0

    .line 40
    .line 41
    .line 42
    cmp-long p0, p0, v2

    .line 43
    .line 44
    if-gtz p0, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_3
    :goto_0
    return v1
.end method

.method public final P0()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1:J

    .line 15
    .line 16
    sub-long v2, v0, v2

    .line 17
    .line 18
    iget v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 19
    .line 20
    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object v6, v5, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    new-instance v7, Lli;

    .line 27
    .line 28
    invoke-direct {v7, v5, v4, v2, v3}, Lli;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 36
    .line 37
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1:J

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final Q(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;->e:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 20
    .line 21
    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-gez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O0(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    const/16 p0, 0x20

    .line 34
    .line 35
    return p0

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final Q0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->G1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    .line 17
    .line 18
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x21

    .line 21
    .line 22
    if-lt p0, v1, :cond_2

    .line 23
    .line 24
    new-instance p0, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "tunnel-peek"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public final R(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 8

    .line 1
    array-length v0, p3

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget-object v4, p3, v2

    .line 9
    .line 10
    iget v4, v4, Landroidx/media3/common/Format;->B:F

    .line 11
    .line 12
    cmpl-float v5, v4, v1

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float p3, v3, v1

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmp-long v0, v4, v6

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    long-to-float p3, v2

    .line 51
    const v0, 0x4e6e6b28    # 1.0E9f

    .line 52
    .line 53
    .line 54
    div-float v3, v0, p3

    .line 55
    .line 56
    :cond_2
    cmpl-float p3, v3, v1

    .line 57
    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    move v3, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    mul-float/2addr v3, p1

    .line 63
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 64
    .line 65
    if-eqz p1, :cond_a

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 68
    .line 69
    if-eqz p0, :cond_a

    .line 70
    .line 71
    iget p1, p2, Landroidx/media3/common/Format;->w:I

    .line 72
    .line 73
    iget p2, p2, Landroidx/media3/common/Format;->x:I

    .line 74
    .line 75
    iget-boolean p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->i:Z

    .line 76
    .line 77
    const v0, -0x800001

    .line 78
    .line 79
    .line 80
    if-nez p3, :cond_4

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    iget p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->l:F

    .line 84
    .line 85
    cmpl-float v0, p3, v0

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->j:I

    .line 90
    .line 91
    if-ne v0, p1, :cond_5

    .line 92
    .line 93
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->k:I

    .line 94
    .line 95
    if-ne v0, p2, :cond_5

    .line 96
    .line 97
    move v0, p3

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(IID)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    const/high16 v0, 0x44800000    # 1024.0f

    .line 106
    .line 107
    if-eqz p3, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    const/4 p3, 0x0

    .line 111
    :goto_2
    sub-float v2, v0, p3

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/high16 v5, 0x40a00000    # 5.0f

    .line 118
    .line 119
    cmpl-float v4, v4, v5

    .line 120
    .line 121
    if-lez v4, :cond_8

    .line 122
    .line 123
    const/high16 v4, 0x40000000    # 2.0f

    .line 124
    .line 125
    div-float/2addr v2, v4

    .line 126
    add-float/2addr v2, p3

    .line 127
    float-to-double v4, v2

    .line 128
    invoke-virtual {p0, p1, p2, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(IID)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    move p3, v2

    .line 135
    goto :goto_2

    .line 136
    :cond_7
    move v0, v2

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    move v0, p3

    .line 139
    :goto_3
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->l:F

    .line 140
    .line 141
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->j:I

    .line 142
    .line 143
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->k:I

    .line 144
    .line 145
    :goto_4
    cmpl-float p0, v3, v1

    .line 146
    .line 147
    if-eqz p0, :cond_9

    .line 148
    .line 149
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    :cond_9
    return v0

    .line 155
    :cond_a
    return v3
.end method

.method public final R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 3

    .line 1
    const-string v0, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->j(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 13
    .line 14
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    add-int/2addr p2, p3

    .line 18
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1:I

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 24
    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B1:Landroidx/media3/common/VideoSize;

    .line 28
    .line 29
    sget-object p4, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 30
    .line 31
    invoke-virtual {p2, p4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 36
    .line 37
    if-nez p4, :cond_0

    .line 38
    .line 39
    iget-object p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 40
    .line 41
    invoke-virtual {p2, p4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    if-nez p4, :cond_0

    .line 46
    .line 47
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 53
    .line 54
    iget p4, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    if-eq p4, v1, :cond_1

    .line 58
    .line 59
    move p1, p3

    .line 60
    :cond_1
    iput v1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 61
    .line 62
    iget-object p4, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 63
    .line 64
    check-cast p4, Landroidx/media3/common/util/SystemClock;

    .line 65
    .line 66
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    iput-wide v1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p2, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    new-instance p4, Lmi;

    .line 94
    .line 95
    invoke-direct {p4, v0, p1, v1, v2}, Lmi;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    :cond_2
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o1:Z

    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public final S(Lk8;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K0(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object p3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/e;

    .line 17
    .line 18
    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/g;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/g;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    return-object p3
.end method

.method public final S0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 13
    .line 14
    if-eq v0, p1, :cond_b

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f(Landroid/view/Surface;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o1:Z

    .line 29
    .line 30
    iget v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 33
    .line 34
    if-eqz v5, :cond_6

    .line 35
    .line 36
    iget-object v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    if-nez v6, :cond_5

    .line 40
    .line 41
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_4

    .line 51
    .line 52
    iget-boolean v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1:Z

    .line 53
    .line 54
    if-nez v8, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v5, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->p(Landroid/view/Surface;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v6, 0x23

    .line 69
    .line 70
    if-lt v0, v6, :cond_3

    .line 71
    .line 72
    invoke-interface {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->i()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {}, Lio/sentry/d;->d()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    :goto_1
    move v0, v7

    .line 88
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 91
    .line 92
    if-eqz p1, :cond_8

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 99
    .line 100
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 101
    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->o()V

    .line 105
    .line 106
    .line 107
    :cond_8
    :goto_3
    const/4 p1, 0x2

    .line 108
    if-ne v4, p1, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 111
    .line 112
    if-eqz p1, :cond_9

    .line 113
    .line 114
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->s(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_9
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    .line 119
    .line 120
    .line 121
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_b
    if-eqz p1, :cond_d

    .line 126
    .line 127
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 128
    .line 129
    if-eqz p1, :cond_c

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    .line 132
    .line 133
    .line 134
    :cond_c
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 135
    .line 136
    if-eqz p1, :cond_d

    .line 137
    .line 138
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o1:Z

    .line 139
    .line 140
    if-eqz p0, :cond_d

    .line 141
    .line 142
    iget-object p0, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 143
    .line 144
    if-eqz p0, :cond_d

    .line 145
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    new-instance v3, Lmi;

    .line 151
    .line 152
    invoke-direct {v3, v2, p1, v0, v1}, Lmi;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    :cond_d
    return-void
.end method

.method public final T0(JJZZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 10
    .line 11
    neg-long v0, v0

    .line 12
    sub-long/2addr p3, v0

    .line 13
    :cond_0
    const-wide/32 v0, -0x7a120

    .line 14
    .line 15
    .line 16
    cmp-long p1, p1, v0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-gez p1, :cond_8

    .line 20
    .line 21
    if-nez p5, :cond_8

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 29
    .line 30
    sub-long v0, p3, v0

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/source/SampleStream;->d(J)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_1
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w1:J

    .line 41
    .line 42
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 43
    .line 44
    iget-wide p3, p3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long p3, p3, v0

    .line 52
    .line 53
    const/4 p4, 0x1

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    move p3, p4

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move p3, p2

    .line 59
    :goto_0
    iget-object p5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1:Ljava/util/PriorityQueue;

    .line 60
    .line 61
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move v1, p2

    .line 66
    move v2, v1

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    iget-wide v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 84
    .line 85
    cmp-long v3, v3, v5

    .line 86
    .line 87
    if-ltz v3, :cond_3

    .line 88
    .line 89
    if-nez p3, :cond_3

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p5}, Ljava/util/PriorityQueue;->clear()V

    .line 98
    .line 99
    .line 100
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 101
    .line 102
    if-eqz p6, :cond_5

    .line 103
    .line 104
    iget p5, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 105
    .line 106
    add-int/2addr p5, p1

    .line 107
    iget p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 108
    .line 109
    iget p6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 110
    .line 111
    add-int/2addr p1, p6

    .line 112
    iput p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 113
    .line 114
    add-int/2addr p5, v1

    .line 115
    add-int/2addr p5, v2

    .line 116
    iput p5, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    iget p5, p3, Landroidx/media3/exoplayer/DecoderCounters;->j:I

    .line 120
    .line 121
    add-int/2addr p5, p4

    .line 122
    iput p5, p3, Landroidx/media3/exoplayer/DecoderCounters;->j:I

    .line 123
    .line 124
    add-int/2addr p1, v1

    .line 125
    iget p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 126
    .line 127
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(II)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 131
    .line 132
    iget p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 133
    .line 134
    add-int/2addr p3, v2

    .line 135
    iput p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 136
    .line 137
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 144
    .line 145
    .line 146
    :cond_6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 147
    .line 148
    if-eqz p0, :cond_7

    .line 149
    .line 150
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->q(Z)V

    .line 151
    .line 152
    .line 153
    :cond_7
    return p4

    .line 154
    :cond_8
    :goto_3
    return p2
.end method

.method public final U0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I0(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->a()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

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

.method public final V0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V
    .locals 1

    .line 1
    const-string v0, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 13
    .line 14
    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->f:I

    .line 19
    .line 20
    return-void
.end method

.method public final W(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 24

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
    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v6, v3, Landroidx/media3/common/Format;->w:I

    .line 15
    .line 16
    iget v7, v3, Landroidx/media3/common/Format;->B:F

    .line 17
    .line 18
    iget-object v8, v3, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 19
    .line 20
    iget v9, v3, Landroidx/media3/common/Format;->x:I

    .line 21
    .line 22
    invoke-static/range {p1 .. p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    array-length v11, v5

    .line 27
    const/4 v13, -0x1

    .line 28
    const/4 v14, 0x1

    .line 29
    if-ne v11, v14, :cond_1

    .line 30
    .line 31
    if-eq v10, v13, :cond_0

    .line 32
    .line 33
    invoke-static/range {p1 .. p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v5, v13, :cond_0

    .line 38
    .line 39
    int-to-float v10, v10

    .line 40
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 41
    .line 42
    mul-float/2addr v10, v11

    .line 43
    float-to-int v10, v10

    .line 44
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    :cond_0
    new-instance v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 49
    .line 50
    invoke-direct {v5, v6, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v19, v8

    .line 54
    .line 55
    move v15, v9

    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :cond_1
    array-length v11, v5

    .line 59
    move v14, v6

    .line 60
    move v12, v9

    .line 61
    const/4 v15, 0x0

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    :goto_0
    if-ge v15, v11, :cond_6

    .line 65
    .line 66
    aget-object v13, v5, v15

    .line 67
    .line 68
    move-object/from16 v18, v5

    .line 69
    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    iget-object v5, v13, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 73
    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iput-object v8, v5, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    .line 81
    .line 82
    new-instance v13, Landroidx/media3/common/Format;

    .line 83
    .line 84
    invoke-direct {v13, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v1, v3, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move/from16 v19, v11

    .line 92
    .line 93
    iget v11, v13, Landroidx/media3/common/Format;->x:I

    .line 94
    .line 95
    iget v5, v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    .line 96
    .line 97
    if-eqz v5, :cond_5

    .line 98
    .line 99
    iget v5, v13, Landroidx/media3/common/Format;->w:I

    .line 100
    .line 101
    move/from16 v20, v15

    .line 102
    .line 103
    const/4 v15, -0x1

    .line 104
    if-eq v5, v15, :cond_4

    .line 105
    .line 106
    if-ne v11, v15, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/16 v17, 0x0

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    :goto_1
    const/16 v17, 0x1

    .line 113
    .line 114
    :goto_2
    or-int v16, v16, v17

    .line 115
    .line 116
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-static {v1, v13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    move v10, v5

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move/from16 v20, v15

    .line 135
    .line 136
    const/4 v15, -0x1

    .line 137
    :goto_3
    add-int/lit8 v5, v20, 0x1

    .line 138
    .line 139
    move v13, v15

    .line 140
    move/from16 v11, v19

    .line 141
    .line 142
    move v15, v5

    .line 143
    move-object/from16 v5, v18

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    if-eqz v16, :cond_11

    .line 147
    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v11, "Resolutions unknown. Codec max resolution: "

    .line 151
    .line 152
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v11, "x"

    .line 159
    .line 160
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v13, "MediaCodecVideoRenderer"

    .line 171
    .line 172
    invoke-static {v13, v5}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    if-le v9, v6, :cond_7

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    const/4 v5, 0x0

    .line 180
    :goto_4
    if-eqz v5, :cond_8

    .line 181
    .line 182
    move v15, v9

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    move v15, v6

    .line 185
    :goto_5
    move/from16 v16, v5

    .line 186
    .line 187
    if-eqz v5, :cond_9

    .line 188
    .line 189
    move v5, v6

    .line 190
    goto :goto_6

    .line 191
    :cond_9
    move v5, v9

    .line 192
    :goto_6
    int-to-float v2, v5

    .line 193
    move/from16 v17, v2

    .line 194
    .line 195
    int-to-float v2, v15

    .line 196
    div-float v2, v17, v2

    .line 197
    .line 198
    move/from16 v17, v2

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    :goto_7
    const/16 v18, 0x0

    .line 202
    .line 203
    move-object/from16 v19, v8

    .line 204
    .line 205
    const/16 v8, 0x9

    .line 206
    .line 207
    if-ge v2, v8, :cond_10

    .line 208
    .line 209
    sget-object v8, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1:[I

    .line 210
    .line 211
    aget v8, v8, v2

    .line 212
    .line 213
    move/from16 v20, v2

    .line 214
    .line 215
    int-to-float v2, v8

    .line 216
    mul-float v2, v2, v17

    .line 217
    .line 218
    float-to-int v2, v2

    .line 219
    if-le v8, v15, :cond_10

    .line 220
    .line 221
    if-gt v2, v5, :cond_a

    .line 222
    .line 223
    goto :goto_d

    .line 224
    :cond_a
    move/from16 v21, v2

    .line 225
    .line 226
    if-eqz v16, :cond_b

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_b
    move v2, v8

    .line 230
    :goto_8
    if-eqz v16, :cond_c

    .line 231
    .line 232
    :goto_9
    move/from16 v21, v5

    .line 233
    .line 234
    goto :goto_a

    .line 235
    :cond_c
    move/from16 v8, v21

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :goto_a
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 239
    .line 240
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    if-nez v5, :cond_d

    .line 245
    .line 246
    move/from16 v23, v15

    .line 247
    .line 248
    move-object/from16 v3, v18

    .line 249
    .line 250
    goto :goto_b

    .line 251
    :cond_d
    move-object/from16 v22, v5

    .line 252
    .line 253
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    move/from16 v23, v15

    .line 258
    .line 259
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    new-instance v3, Landroid/graphics/Point;

    .line 264
    .line 265
    invoke-static {v2, v5}, Landroidx/media3/common/util/Util;->e(II)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    mul-int/2addr v2, v5

    .line 270
    invoke-static {v8, v15}, Landroidx/media3/common/util/Util;->e(II)I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    mul-int/2addr v5, v15

    .line 275
    invoke-direct {v3, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 276
    .line 277
    .line 278
    :goto_b
    if-eqz v3, :cond_e

    .line 279
    .line 280
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 281
    .line 282
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 283
    .line 284
    move v15, v9

    .line 285
    float-to-double v8, v7

    .line 286
    invoke-virtual {v1, v2, v5, v8, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->g(IID)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_f

    .line 291
    .line 292
    goto :goto_e

    .line 293
    :cond_e
    move v15, v9

    .line 294
    :cond_f
    add-int/lit8 v2, v20, 0x1

    .line 295
    .line 296
    move-object/from16 v3, p2

    .line 297
    .line 298
    move v9, v15

    .line 299
    move-object/from16 v8, v19

    .line 300
    .line 301
    move/from16 v5, v21

    .line 302
    .line 303
    move/from16 v15, v23

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :goto_c
    move-object/from16 v3, v18

    .line 307
    .line 308
    goto :goto_e

    .line 309
    :cond_10
    :goto_d
    move v15, v9

    .line 310
    goto :goto_c

    .line 311
    :goto_e
    if-eqz v3, :cond_12

    .line 312
    .line 313
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 314
    .line 315
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 320
    .line 321
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iput v14, v2, Landroidx/media3/common/Format$Builder;->v:I

    .line 330
    .line 331
    iput v12, v2, Landroidx/media3/common/Format$Builder;->w:I

    .line 332
    .line 333
    new-instance v3, Landroidx/media3/common/Format;

    .line 334
    .line 335
    invoke-direct {v3, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v3, "Codec max resolution adjusted to: "

    .line 349
    .line 350
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_f

    .line 370
    :cond_11
    move-object/from16 v19, v8

    .line 371
    .line 372
    move v15, v9

    .line 373
    :cond_12
    :goto_f
    new-instance v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 374
    .line 375
    invoke-direct {v5, v14, v12, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 376
    .line 377
    .line 378
    :goto_10
    iput-object v5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 379
    .line 380
    iget-boolean v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 381
    .line 382
    if-eqz v2, :cond_13

    .line 383
    .line 384
    iget v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1:I

    .line 385
    .line 386
    goto :goto_11

    .line 387
    :cond_13
    const/4 v2, 0x0

    .line 388
    :goto_11
    new-instance v3, Landroid/media/MediaFormat;

    .line 389
    .line 390
    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v8, "mime"

    .line 394
    .line 395
    invoke-virtual {v3, v8, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const-string v4, "width"

    .line 399
    .line 400
    invoke-virtual {v3, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    const-string v4, "height"

    .line 404
    .line 405
    invoke-virtual {v3, v4, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v4, p2

    .line 409
    .line 410
    iget-object v6, v4, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 411
    .line 412
    invoke-static {v3, v6}, Landroidx/media3/common/util/MediaFormatUtil;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 413
    .line 414
    .line 415
    const/high16 v6, -0x40800000    # -1.0f

    .line 416
    .line 417
    cmpl-float v8, v7, v6

    .line 418
    .line 419
    if-eqz v8, :cond_14

    .line 420
    .line 421
    const-string v8, "frame-rate"

    .line 422
    .line 423
    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 424
    .line 425
    .line 426
    :cond_14
    const-string v7, "rotation-degrees"

    .line 427
    .line 428
    iget v8, v4, Landroidx/media3/common/Format;->C:I

    .line 429
    .line 430
    invoke-static {v3, v7, v8}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    if-eqz v19, :cond_15

    .line 434
    .line 435
    const-string v7, "color-transfer"

    .line 436
    .line 437
    move-object/from16 v8, v19

    .line 438
    .line 439
    iget v9, v8, Landroidx/media3/common/ColorInfo;->c:I

    .line 440
    .line 441
    invoke-static {v3, v7, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    const-string v7, "color-standard"

    .line 445
    .line 446
    iget v9, v8, Landroidx/media3/common/ColorInfo;->a:I

    .line 447
    .line 448
    invoke-static {v3, v7, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    const-string v7, "color-range"

    .line 452
    .line 453
    iget v9, v8, Landroidx/media3/common/ColorInfo;->b:I

    .line 454
    .line 455
    invoke-static {v3, v7, v9}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 456
    .line 457
    .line 458
    iget-object v7, v8, Landroidx/media3/common/ColorInfo;->d:[B

    .line 459
    .line 460
    if-eqz v7, :cond_15

    .line 461
    .line 462
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    const-string v8, "hdr-static-info"

    .line 467
    .line 468
    invoke-virtual {v3, v8, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 469
    .line 470
    .line 471
    :cond_15
    const-string v7, "video/dolby-vision"

    .line 472
    .line 473
    iget-object v8, v4, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    if-eqz v7, :cond_16

    .line 480
    .line 481
    invoke-static {v4}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    if-eqz v7, :cond_16

    .line 486
    .line 487
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v7, Ljava/lang/Integer;

    .line 490
    .line 491
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 492
    .line 493
    .line 494
    move-result v7

    .line 495
    const-string v8, "profile"

    .line 496
    .line 497
    invoke-static {v3, v8, v7}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 498
    .line 499
    .line 500
    :cond_16
    const-string v7, "max-width"

    .line 501
    .line 502
    iget v8, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    .line 503
    .line 504
    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 505
    .line 506
    .line 507
    const-string v7, "max-height"

    .line 508
    .line 509
    iget v8, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    .line 510
    .line 511
    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 512
    .line 513
    .line 514
    const-string v7, "max-input-size"

    .line 515
    .line 516
    iget v5, v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    .line 517
    .line 518
    invoke-static {v3, v7, v5}, Landroidx/media3/common/util/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 519
    .line 520
    .line 521
    const-string v5, "priority"

    .line 522
    .line 523
    const/4 v7, 0x0

    .line 524
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    cmpl-float v5, p4, v6

    .line 528
    .line 529
    if-eqz v5, :cond_17

    .line 530
    .line 531
    const-string v5, "operating-rate"

    .line 532
    .line 533
    move/from16 v6, p4

    .line 534
    .line 535
    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 536
    .line 537
    .line 538
    :cond_17
    iget-boolean v5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U0:Z

    .line 539
    .line 540
    if-eqz v5, :cond_18

    .line 541
    .line 542
    const-string v5, "no-post-process"

    .line 543
    .line 544
    const/4 v6, 0x1

    .line 545
    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 546
    .line 547
    .line 548
    const-string v5, "auto-frc"

    .line 549
    .line 550
    const/4 v7, 0x0

    .line 551
    invoke-virtual {v3, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 552
    .line 553
    .line 554
    goto :goto_12

    .line 555
    :cond_18
    const/4 v6, 0x1

    .line 556
    :goto_12
    if-eqz v2, :cond_19

    .line 557
    .line 558
    const-string v5, "tunneled-playback"

    .line 559
    .line 560
    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 561
    .line 562
    .line 563
    const-string v5, "audio-session-id"

    .line 564
    .line 565
    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 566
    .line 567
    .line 568
    :cond_19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 569
    .line 570
    const/16 v5, 0x23

    .line 571
    .line 572
    if-lt v2, v5, :cond_1a

    .line 573
    .line 574
    iget v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1:I

    .line 575
    .line 576
    neg-int v2, v2

    .line 577
    const/4 v7, 0x0

    .line 578
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    const-string v5, "importance"

    .line 583
    .line 584
    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 585
    .line 586
    .line 587
    :cond_1a
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G(Landroid/media/MediaFormat;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 595
    .line 596
    if-eqz v2, :cond_1b

    .line 597
    .line 598
    iget-object v0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0:Landroid/content/Context;

    .line 599
    .line 600
    invoke-static {v0}, Landroidx/media3/common/util/Util;->B(Landroid/content/Context;)Z

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    if-nez v0, :cond_1b

    .line 605
    .line 606
    const-string v0, "allow-frame-drop"

    .line 607
    .line 608
    const/4 v7, 0x0

    .line 609
    invoke-virtual {v3, v0, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 610
    .line 611
    .line 612
    :cond_1b
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    .line 613
    .line 614
    const/4 v6, 0x0

    .line 615
    move-object/from16 v5, p3

    .line 616
    .line 617
    move-object v2, v3

    .line 618
    move-object/from16 v3, p2

    .line 619
    .line 620
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    .line 621
    .line 622
    .line 623
    return-object v0
.end method

.method public final W0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->h:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->h:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iget p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    .line 10
    .line 11
    add-int/2addr p2, p1

    .line 12
    iput p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    .line 13
    .line 14
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 18
    .line 19
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1:I

    .line 23
    .line 24
    iget p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->i:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->i:I

    .line 31
    .line 32
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T0:I

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 37
    .line 38
    if-lt p2, p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P0()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final X0(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 2
    .line 3
    iget-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->k:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    iput-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->k:J

    .line 7
    .line 8
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->l:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->l:I

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1:J

    .line 15
    .line 16
    add-long/2addr v0, p1

    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1:J

    .line 18
    .line 19
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1:I

    .line 24
    .line 25
    return-void
.end method

.method public final Z(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->o:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x7

    .line 12
    if-lt v0, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    const/16 v6, -0x4b

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    if-ne v0, v6, :cond_2

    .line 42
    .line 43
    const/16 v8, 0x3c

    .line 44
    .line 45
    if-ne v1, v8, :cond_2

    .line 46
    .line 47
    if-ne v2, v7, :cond_2

    .line 48
    .line 49
    const/4 v8, 0x4

    .line 50
    if-ne v3, v8, :cond_2

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    if-ne v4, v7, :cond_2

    .line 55
    .line 56
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-array v0, v0, [B

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance p1, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "hdr10-plus-info"

    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 v4, 0x25

    .line 94
    .line 95
    if-lt v3, v4, :cond_4

    .line 96
    .line 97
    if-ne v0, v6, :cond_4

    .line 98
    .line 99
    const/16 v0, 0x90

    .line 100
    .line 101
    if-ne v1, v0, :cond_4

    .line 102
    .line 103
    if-ne v2, v7, :cond_4

    .line 104
    .line 105
    const/4 v0, 0x5

    .line 106
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    new-array v1, v0, [B

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    .line 120
    .line 121
    if-lez v0, :cond_3

    .line 122
    .line 123
    move v5, v7

    .line 124
    :cond_3
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 125
    .line 126
    if-eqz v5, :cond_4

    .line 127
    .line 128
    new-instance p1, Landroid/os/Bundle;

    .line 129
    .line 130
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v0, "hdr-st2094-50-info"

    .line 134
    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-wide v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:J

    .line 37
    .line 38
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v0, v3, v5

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-wide v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:J

    .line 57
    .line 58
    cmp-long v0, v3, v5

    .line 59
    .line 60
    if-gez v0, :cond_3

    .line 61
    .line 62
    :cond_2
    move v1, v2

    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->t(Z)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_4
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    :cond_5
    return v2

    .line 83
    :cond_6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
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
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->b()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final d(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->d(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    const/16 p2, 0x1b59

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    iget-object p4, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->j:Landroidx/media3/common/Format;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    throw p0

    .line 20
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d(JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e0(Landroidx/media3/common/Format;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->w(Landroidx/media3/common/Format;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/16 v1, 0x1b58

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0

    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public final f0(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lf3;

    .line 15
    .line 16
    const/16 v2, 0x19

    .line 17
    .line 18
    invoke-direct {v1, v2, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final g0(JJLjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v8, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v8, :cond_0

    .line 6
    .line 7
    new-instance v0, Lr3;

    .line 8
    .line 9
    const/4 v7, 0x1

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
    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, p5

    .line 21
    :goto_0
    invoke-static {v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I0(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d1:Z

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 p3, 0x1d

    .line 35
    .line 36
    const/4 p4, 0x0

    .line 37
    const/4 p5, 0x1

    .line 38
    if-lt p2, p3, :cond_3

    .line 39
    .line 40
    const-string p2, "video/x-vnd.on2.vp9"

    .line 41
    .line 42
    iget-object p3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 51
    .line 52
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    new-array p1, p4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 57
    .line 58
    :cond_1
    array-length p2, p1

    .line 59
    move p3, p4

    .line 60
    :goto_1
    if-ge p3, p2, :cond_3

    .line 61
    .line 62
    aget-object v0, p1, p3

    .line 63
    .line 64
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 65
    .line 66
    const/16 v1, 0x4000

    .line 67
    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    move p1, p5

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move p1, p4

    .line 76
    :goto_2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f1:Z

    .line 77
    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 p2, 0x25

    .line 81
    .line 82
    if-ge p1, p2, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string p2, "video/av01"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    move p4, p5

    .line 100
    :cond_4
    iput-boolean p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1:Z

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    return-object p0
.end method

.method public final h0(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lf3;

    .line 8
    .line 9
    const/16 v2, 0x1a

    .line 10
    .line 11
    invoke-direct {v1, v2, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1:I

    .line 7
    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->x()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 22
    .line 23
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lf3;

    .line 8
    .line 9
    const/16 v2, 0x17

    .line 10
    .line 11
    invoke-direct {v1, v2, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Ls3;

    .line 20
    .line 21
    const/4 v4, 0x7

    .line 22
    invoke-direct {v3, v1, p1, v0, v4}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-object v0
.end method

.method public final k0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p1:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->n(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p2, p1, Landroidx/media3/common/Format;->w:I

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/Format;->x:I

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "crop-right"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "crop-top"

    .line 30
    .line 31
    const-string v4, "crop-bottom"

    .line 32
    .line 33
    const-string v5, "crop-left"

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    move v2, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v2, v1

    .line 59
    :goto_0
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    sub-int/2addr v0, v5

    .line 70
    add-int/2addr v0, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const-string v0, "width"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_1
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    sub-int/2addr v2, p2

    .line 89
    add-int/2addr v2, v6

    .line 90
    move p2, v2

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const-string v2, "height"

    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    :goto_2
    move v10, v0

    .line 99
    move v0, p2

    .line 100
    move p2, v10

    .line 101
    :goto_3
    iget v2, p1, Landroidx/media3/common/Format;->E:F

    .line 102
    .line 103
    iget v3, p1, Landroidx/media3/common/Format;->C:I

    .line 104
    .line 105
    const/16 v4, 0x5a

    .line 106
    .line 107
    if-eq v3, v4, :cond_5

    .line 108
    .line 109
    const/16 v4, 0x10e

    .line 110
    .line 111
    if-ne v3, v4, :cond_6

    .line 112
    .line 113
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 114
    .line 115
    div-float v2, v3, v2

    .line 116
    .line 117
    move v10, v0

    .line 118
    move v0, p2

    .line 119
    move p2, v10

    .line 120
    :cond_6
    new-instance v3, Landroidx/media3/common/VideoSize;

    .line 121
    .line 122
    invoke-direct {v3, v2, p2, v0}, Landroidx/media3/common/VideoSize;-><init>(FII)V

    .line 123
    .line 124
    .line 125
    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B1:Landroidx/media3/common/VideoSize;

    .line 126
    .line 127
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 128
    .line 129
    if-eqz v4, :cond_a

    .line 130
    .line 131
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Z

    .line 132
    .line 133
    if-eqz v3, :cond_a

    .line 134
    .line 135
    if-lez p2, :cond_9

    .line 136
    .line 137
    if-gtz v0, :cond_7

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput p2, p1, Landroidx/media3/common/Format$Builder;->v:I

    .line 145
    .line 146
    iput v0, p1, Landroidx/media3/common/Format$Builder;->w:I

    .line 147
    .line 148
    iput v2, p1, Landroidx/media3/common/Format$Builder;->D:F

    .line 149
    .line 150
    new-instance v5, Landroidx/media3/common/Format;

    .line 151
    .line 152
    invoke-direct {v5, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 153
    .line 154
    .line 155
    iget v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1:I

    .line 156
    .line 157
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1:Ljava/util/List;

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    :goto_4
    move-object v9, p1

    .line 162
    goto :goto_5

    .line 163
    :cond_8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_4

    .line 168
    :goto_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y()J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    invoke-interface/range {v4 .. v9}, Landroidx/media3/exoplayer/video/VideoSink;->p(Landroidx/media3/common/Format;JILjava/util/List;)V

    .line 173
    .line 174
    .line 175
    const/4 p1, 0x2

    .line 176
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1:I

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_9
    :goto_6
    return-void

    .line 180
    :cond_a
    iget p1, p1, Landroidx/media3/common/Format;->B:F

    .line 181
    .line 182
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 183
    .line 184
    iput p1, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->f:F

    .line 185
    .line 186
    iget-object p1, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    .line 189
    .line 190
    .line 191
    iget-object p1, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    .line 194
    .line 195
    .line 196
    iput-boolean v1, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 197
    .line 198
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    iput-wide v2, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 204
    .line 205
    iput v1, p2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    .line 206
    .line 207
    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c()V

    .line 208
    .line 209
    .line 210
    :goto_7
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Z

    .line 211
    .line 212
    return-void
.end method

.method public final l(FF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->n(F)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g(F)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c(F)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final m0(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(J)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->l()V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 26
    .line 27
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 28
    .line 29
    neg-long v1, v1

    .line 30
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/video/VideoSink;->j(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final o(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_e

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-eq p1, v1, :cond_c

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq p1, v1, :cond_b

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_a

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_7

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq p1, v1, :cond_4

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    if-eq p1, v1, :cond_3

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    move p1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, v1

    .line 44
    :goto_0
    check-cast p2, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 45
    .line 46
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-boolean p2, p2, Landroidx/media3/exoplayer/ScrubbingModeParameters;->b:Z

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v0, v1

    .line 56
    :goto_1
    if-eq p1, v0, :cond_d

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 74
    .line 75
    invoke-virtual {p2, v0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast p2, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1:I

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 91
    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v0, 0x23

    .line 99
    .line 100
    if-lt p2, v0, :cond_d

    .line 101
    .line 102
    new-instance p2, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 105
    .line 106
    .line 107
    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1:I

    .line 108
    .line 109
    neg-int p0, p0

    .line 110
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    const-string v0, "importance"

    .line 115
    .line 116
    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    check-cast p2, Landroidx/media3/common/util/Size;

    .line 127
    .line 128
    iget p1, p2, Landroidx/media3/common/util/Size;->a:I

    .line 129
    .line 130
    if-eqz p1, :cond_d

    .line 131
    .line 132
    iget p1, p2, Landroidx/media3/common/util/Size;->b:I

    .line 133
    .line 134
    if-eqz p1, :cond_d

    .line 135
    .line 136
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n1:Landroidx/media3/common/util/Size;

    .line 137
    .line 138
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 139
    .line 140
    if-eqz p1, :cond_d

    .line 141
    .line 142
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->f(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    check-cast p2, Ljava/util/List;

    .line 155
    .line 156
    sget-object p1, Landroidx/media3/common/VideoFrameProcessor;->a:Lcom/google/common/collect/ImmutableList;

    .line 157
    .line 158
    invoke-interface {p2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 165
    .line 166
    if-eqz p1, :cond_d

    .line 167
    .line 168
    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->c()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_5

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 176
    .line 177
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->u()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1:Ljava/util/List;

    .line 182
    .line 183
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 184
    .line 185
    if-eqz p0, :cond_d

    .line 186
    .line 187
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->r(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    check-cast p2, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1:I

    .line 201
    .line 202
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 203
    .line 204
    if-eqz p2, :cond_8

    .line 205
    .line 206
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->m(I)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 211
    .line 212
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 213
    .line 214
    iget p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:I

    .line 215
    .line 216
    if-ne p2, p1, :cond_9

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_9
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:I

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c(Z)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    check-cast p2, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->p1:I

    .line 235
    .line 236
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 237
    .line 238
    if-eqz p0, :cond_d

    .line 239
    .line 240
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->n(I)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    check-cast p2, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1:I

    .line 254
    .line 255
    if-eq p2, p1, :cond_d

    .line 256
    .line 257
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1:I

    .line 258
    .line 259
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 260
    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 271
    .line 272
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 273
    .line 274
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 275
    .line 276
    if-eqz p0, :cond_d

    .line 277
    .line 278
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/video/VideoSink;->k(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    .line 279
    .line 280
    .line 281
    :cond_d
    :goto_2
    return-void

    .line 282
    :cond_e
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "video/av01"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget v0, v0, Landroidx/media3/common/ColorInfo;->e:I

    .line 31
    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    if-le v0, v4, :cond_0

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v2

    .line 39
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/video/Av1ObuUtil;->a(Ljava/nio/ByteBuffer;Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e1:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/video/Av1ObuUtil;->a(Ljava/nio/ByteBuffer;Z)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 69
    .line 70
    if-eqz v0, :cond_17

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_17

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    add-int/lit16 v6, v4, 0x1f4

    .line 87
    .line 88
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :cond_3
    const-string v1, "video/hevc"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_17

    .line 121
    .line 122
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    if-eqz v0, :cond_17

    .line 125
    .line 126
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 127
    .line 128
    if-eqz v1, :cond_17

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_17

    .line 135
    .line 136
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    sub-int v5, v4, v1

    .line 147
    .line 148
    const/4 v6, 0x4

    .line 149
    if-ge v5, v6, :cond_4

    .line 150
    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_4
    :goto_2
    if-ge v1, v4, :cond_17

    .line 154
    .line 155
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/video/HevcSeiUtil;->a(Ljava/nio/ByteBuffer;II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ne v1, v4, :cond_5

    .line 160
    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_5
    add-int/lit8 v5, v1, 0x3

    .line 164
    .line 165
    if-lt v5, v4, :cond_6

    .line 166
    .line 167
    goto/16 :goto_c

    .line 168
    .line 169
    :cond_6
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    and-int/lit8 v7, v7, 0x7e

    .line 174
    .line 175
    shr-int/2addr v7, v3

    .line 176
    if-ltz v7, :cond_7

    .line 177
    .line 178
    const/16 v8, 0x1f

    .line 179
    .line 180
    if-gt v7, v8, :cond_7

    .line 181
    .line 182
    goto/16 :goto_c

    .line 183
    .line 184
    :cond_7
    const/16 v8, 0x27

    .line 185
    .line 186
    if-ne v7, v8, :cond_16

    .line 187
    .line 188
    add-int/lit8 v1, v1, 0x5

    .line 189
    .line 190
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/video/HevcSeiUtil;->a(Ljava/nio/ByteBuffer;II)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    move v7, v2

    .line 195
    :cond_8
    :goto_3
    if-ge v1, v5, :cond_16

    .line 196
    .line 197
    move v8, v2

    .line 198
    :goto_4
    const/4 v9, 0x2

    .line 199
    const/4 v10, 0x3

    .line 200
    const/16 v11, 0xff

    .line 201
    .line 202
    if-ge v1, v5, :cond_d

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    and-int/2addr v12, v11

    .line 209
    if-ne v12, v10, :cond_9

    .line 210
    .line 211
    if-lt v7, v9, :cond_9

    .line 212
    .line 213
    add-int/lit8 v1, v1, 0x1

    .line 214
    .line 215
    move v7, v2

    .line 216
    goto :goto_4

    .line 217
    :cond_9
    if-nez v12, :cond_a

    .line 218
    .line 219
    add-int/lit8 v7, v7, 0x1

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    move v7, v2

    .line 223
    :goto_5
    add-int/lit8 v13, v1, 0x1

    .line 224
    .line 225
    add-int/2addr v8, v12

    .line 226
    if-eq v12, v11, :cond_c

    .line 227
    .line 228
    if-ne v8, v6, :cond_b

    .line 229
    .line 230
    const/4 v8, -0x2

    .line 231
    invoke-virtual {v0, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    .line 234
    :cond_b
    move v1, v13

    .line 235
    goto :goto_6

    .line 236
    :cond_c
    move v1, v13

    .line 237
    goto :goto_4

    .line 238
    :cond_d
    :goto_6
    if-lt v1, v5, :cond_e

    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_e
    move v8, v2

    .line 242
    :cond_f
    :goto_7
    if-ge v1, v5, :cond_12

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    and-int/2addr v12, v11

    .line 249
    if-ne v12, v10, :cond_10

    .line 250
    .line 251
    if-lt v7, v9, :cond_10

    .line 252
    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 254
    .line 255
    move v7, v2

    .line 256
    goto :goto_7

    .line 257
    :cond_10
    if-nez v12, :cond_11

    .line 258
    .line 259
    add-int/lit8 v7, v7, 0x1

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_11
    move v7, v2

    .line 263
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 264
    .line 265
    add-int/2addr v8, v12

    .line 266
    if-eq v12, v11, :cond_f

    .line 267
    .line 268
    :cond_12
    move v12, v2

    .line 269
    :goto_9
    if-ge v12, v8, :cond_8

    .line 270
    .line 271
    if-lt v1, v5, :cond_13

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_13
    add-int/lit8 v13, v1, 0x1

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    and-int/2addr v1, v11

    .line 281
    if-ne v1, v10, :cond_15

    .line 282
    .line 283
    if-lt v7, v9, :cond_15

    .line 284
    .line 285
    add-int/lit8 v12, v12, -0x1

    .line 286
    .line 287
    :cond_14
    move v7, v2

    .line 288
    goto :goto_a

    .line 289
    :cond_15
    if-nez v1, :cond_14

    .line 290
    .line 291
    add-int/lit8 v7, v7, 0x1

    .line 292
    .line 293
    :goto_a
    add-int/2addr v12, v3

    .line 294
    move v1, v13

    .line 295
    goto :goto_9

    .line 296
    :cond_16
    :goto_b
    move v1, v5

    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_17
    :goto_c
    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:I

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q(Landroidx/media3/decoder/DecoderInputBuffer;)I

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 306
    .line 307
    const/16 v1, 0x22

    .line 308
    .line 309
    if-lt v0, v1, :cond_18

    .line 310
    .line 311
    and-int/lit8 p1, p1, 0x20

    .line 312
    .line 313
    if-nez p1, :cond_19

    .line 314
    .line 315
    :cond_18
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 316
    .line 317
    if-nez p1, :cond_19

    .line 318
    .line 319
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 320
    .line 321
    add-int/2addr p1, v3

    .line 322
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 323
    .line 324
    :cond_19
    return-void
.end method

.method public final p(J)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w1:J

    .line 15
    .line 16
    cmp-long v0, p1, v4

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 22
    .line 23
    cmp-long p0, v4, v2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    cmp-long p0, p1, v4

    .line 30
    .line 31
    if-lez p0, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    return v1
.end method

.method public final q0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p7

    .line 6
    .line 7
    move-wide/from16 v6, p10

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    sub-long v4, v6, v4

    .line 17
    .line 18
    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 19
    .line 20
    iget-wide v8, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 21
    .line 22
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v0, v8, v10

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v9

    .line 35
    :goto_0
    move v10, v9

    .line 36
    move v11, v10

    .line 37
    :goto_1
    iget-object v12, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1:Ljava/util/PriorityQueue;

    .line 38
    .line 39
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    check-cast v13, Ljava/lang/Long;

    .line 44
    .line 45
    const-wide/16 v14, 0x3e8

    .line 46
    .line 47
    const/16 p6, 0x1

    .line 48
    .line 49
    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 50
    .line 51
    if-eqz v13, :cond_2

    .line 52
    .line 53
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    cmp-long v16, v16, v6

    .line 58
    .line 59
    if-gez v16, :cond_2

    .line 60
    .line 61
    invoke-virtual {v12}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v16

    .line 68
    mul-long v14, v14, v16

    .line 69
    .line 70
    invoke-virtual {v8, v14, v15}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    iget-wide v14, v1, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 78
    .line 79
    cmp-long v8, v12, v14

    .line 80
    .line 81
    if-ltz v8, :cond_1

    .line 82
    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    add-int/lit8 v10, v10, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v1, v10, v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(II)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 95
    .line 96
    iget v10, v0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 97
    .line 98
    add-int/2addr v10, v11

    .line 99
    iput v10, v0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 100
    .line 101
    mul-long v10, v6, v14

    .line 102
    .line 103
    invoke-virtual {v8, v10, v11}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b(J)V

    .line 104
    .line 105
    .line 106
    iget-object v10, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 107
    .line 108
    if-eqz v10, :cond_4

    .line 109
    .line 110
    if-eqz p12, :cond_3

    .line 111
    .line 112
    if-nez p13, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    .line 115
    .line 116
    .line 117
    return p6

    .line 118
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    .line 119
    .line 120
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v10, v6, v7, v0}, Landroidx/media3/exoplayer/video/VideoSink;->h(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    return v0

    .line 128
    :cond_4
    move-object v0, v1

    .line 129
    move-wide/from16 v17, v4

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    invoke-virtual {v8}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a()J

    .line 136
    .line 137
    .line 138
    move-result-wide v12

    .line 139
    iget-wide v14, v8, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->h:J

    .line 140
    .line 141
    iget-object v3, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 142
    .line 143
    move-wide/from16 v19, v1

    .line 144
    .line 145
    move v2, v9

    .line 146
    move-wide/from16 v8, v19

    .line 147
    .line 148
    iget-object v1, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 149
    .line 150
    move-wide/from16 v4, p1

    .line 151
    .line 152
    move/from16 v10, p12

    .line 153
    .line 154
    move/from16 v11, p13

    .line 155
    .line 156
    move-object/from16 v16, v3

    .line 157
    .line 158
    move-wide v2, v6

    .line 159
    move-wide/from16 v6, p3

    .line 160
    .line 161
    invoke-virtual/range {v1 .. v16}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a(JJJJZZJJLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v4, 0x4

    .line 166
    const/4 v5, 0x5

    .line 167
    iget-object v13, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 168
    .line 169
    iget-object v6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 170
    .line 171
    if-eqz v6, :cond_5

    .line 172
    .line 173
    if-eq v1, v5, :cond_5

    .line 174
    .line 175
    if-eq v1, v4, :cond_5

    .line 176
    .line 177
    iget-wide v7, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 178
    .line 179
    invoke-virtual {v6, v2, v3, v7, v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a(JJ)V

    .line 180
    .line 181
    .line 182
    :cond_5
    if-eqz v1, :cond_d

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    if-eq v1, v2, :cond_a

    .line 186
    .line 187
    const/4 v3, 0x2

    .line 188
    if-eq v1, v3, :cond_9

    .line 189
    .line 190
    const/4 v3, 0x3

    .line 191
    if-eq v1, v3, :cond_8

    .line 192
    .line 193
    if-eq v1, v4, :cond_6

    .line 194
    .line 195
    if-ne v1, v5, :cond_7

    .line 196
    .line 197
    :cond_6
    const/4 v1, 0x0

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    :goto_2
    return v1

    .line 208
    :cond_8
    move-object/from16 v3, p5

    .line 209
    .line 210
    move/from16 v4, p7

    .line 211
    .line 212
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    .line 213
    .line 214
    .line 215
    iget-wide v3, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 216
    .line 217
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(J)V

    .line 218
    .line 219
    .line 220
    return v2

    .line 221
    :cond_9
    move-object/from16 v3, p5

    .line 222
    .line 223
    move/from16 v4, p7

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    const-string v5, "dropVideoBuffer"

    .line 227
    .line 228
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(II)V

    .line 238
    .line 239
    .line 240
    iget-wide v3, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 241
    .line 242
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(J)V

    .line 243
    .line 244
    .line 245
    return v2

    .line 246
    :cond_a
    move-object/from16 v3, p5

    .line 247
    .line 248
    move/from16 v4, p7

    .line 249
    .line 250
    iget-wide v9, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    .line 251
    .line 252
    iget-wide v13, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 253
    .line 254
    iget-wide v5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A1:J

    .line 255
    .line 256
    cmp-long v1, v9, v5

    .line 257
    .line 258
    if-nez v1, :cond_b

    .line 259
    .line 260
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_b
    iget-object v6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 265
    .line 266
    if-eqz v6, :cond_c

    .line 267
    .line 268
    iget-object v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 269
    .line 270
    move-object/from16 v11, p14

    .line 271
    .line 272
    move-wide/from16 v7, v17

    .line 273
    .line 274
    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    invoke-virtual {v0, v3, v4, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 278
    .line 279
    .line 280
    :goto_3
    invoke-virtual {v0, v13, v14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(J)V

    .line 281
    .line 282
    .line 283
    iput-wide v9, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A1:J

    .line 284
    .line 285
    return v2

    .line 286
    :cond_d
    move-object/from16 v3, p5

    .line 287
    .line 288
    move/from16 v4, p7

    .line 289
    .line 290
    move-wide/from16 v7, v17

    .line 291
    .line 292
    const/4 v2, 0x1

    .line 293
    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 299
    .line 300
    .line 301
    move-result-wide v9

    .line 302
    iget-object v6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 303
    .line 304
    if-eqz v6, :cond_e

    .line 305
    .line 306
    iget-object v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 307
    .line 308
    move-object/from16 v11, p14

    .line 309
    .line 310
    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 311
    .line 312
    .line 313
    :cond_e
    invoke-virtual {v0, v3, v4, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 314
    .line 315
    .line 316
    iget-wide v3, v13, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 317
    .line 318
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X0(J)V

    .line 319
    .line 320
    .line 321
    return v2
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1:Landroidx/media3/common/VideoSize;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->o1:Z

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->G1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListener;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A0()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x1:Z

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    monitor-enter p0

    .line 30
    monitor-exit p0

    .line 31
    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    new-instance v3, Lni;

    .line 36
    .line 37
    invoke-direct {v3, v0, p0, v1}, Lni;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v2

    .line 50
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    monitor-enter p0

    .line 56
    monitor-exit p0

    .line 57
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    new-instance v4, Lni;

    .line 62
    .line 63
    invoke-direct {v4, v0, p0, v1}, Lni;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a(Landroidx/media3/common/VideoSize;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method

.method public final t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->l()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U()J

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final u(ZZ)V
    .locals 8

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
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->b:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1:I

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v2, v1

    .line 27
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 31
    .line 32
    if-eq v2, p1, :cond_2

    .line 33
    .line 34
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 42
    .line 43
    iget-object v3, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    new-instance v4, Lni;

    .line 48
    .line 49
    invoke-direct {v4, v2, p1, v0}, Lni;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1:Z

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 58
    .line 59
    if-nez p1, :cond_9

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1:Ljava/util/List;

    .line 62
    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 66
    .line 67
    if-nez p1, :cond_8

    .line 68
    .line 69
    new-instance p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {p1, v3, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->d:Z

    .line 77
    .line 78
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z0:J

    .line 79
    .line 80
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmp-long v7, v3, v5

    .line 86
    .line 87
    if-eqz v7, :cond_4

    .line 88
    .line 89
    neg-long v5, v3

    .line 90
    :cond_4
    iput-wide v5, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->g:J

    .line 91
    .line 92
    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iput-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->e:Landroidx/media3/common/util/Clock;

    .line 98
    .line 99
    iget-boolean v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->f:Z

    .line 100
    .line 101
    xor-int/2addr v3, v1

    .line 102
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    new-instance v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;

    .line 110
    .line 111
    invoke-direct {v3}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v3, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    .line 115
    .line 116
    :cond_5
    new-instance v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 117
    .line 118
    invoke-direct {v3, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V

    .line 119
    .line 120
    .line 121
    iput-boolean v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->f:Z

    .line 122
    .line 123
    iget p1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:I

    .line 124
    .line 125
    if-ge v1, p1, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iput v1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:I

    .line 129
    .line 130
    :goto_2
    iget-object p1, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->c:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->i(Landroid/util/SparseArray;I)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroidx/media3/exoplayer/video/VideoSink;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    new-instance v4, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    .line 146
    .line 147
    iget-object v5, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    .line 148
    .line 149
    invoke-direct {v4, v3, v5}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    iget-object v3, v3, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object p1, v4

    .line 161
    :goto_3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 162
    .line 163
    :cond_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1:Z

    .line 164
    .line 165
    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 166
    .line 167
    if-eqz p1, :cond_d

    .line 168
    .line 169
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-interface {p1, v0, v2}, Landroidx/media3/exoplayer/video/VideoSink;->v(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 182
    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 186
    .line 187
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->k(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 191
    .line 192
    if-eqz p1, :cond_b

    .line 193
    .line 194
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n1:Landroidx/media3/common/util/Size;

    .line 195
    .line 196
    sget-object v0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_b

    .line 203
    .line 204
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 205
    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->l1:Landroid/view/Surface;

    .line 207
    .line 208
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->n1:Landroidx/media3/common/util/Size;

    .line 209
    .line 210
    invoke-interface {p1, v0, v2}, Landroidx/media3/exoplayer/video/VideoSink;->f(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 211
    .line 212
    .line 213
    :cond_b
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 214
    .line 215
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1:I

    .line 216
    .line 217
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->m(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 221
    .line 222
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:F

    .line 223
    .line 224
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->n(F)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->k1:Ljava/util/List;

    .line 228
    .line 229
    if-eqz p1, :cond_c

    .line 230
    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 232
    .line 233
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->r(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    :cond_c
    xor-int/lit8 p1, p2, 0x1

    .line 237
    .line 238
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->j1:I

    .line 239
    .line 240
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0:Z

    .line 241
    .line 242
    return-void

    .line 243
    :cond_d
    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 244
    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    iput-object p0, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 249
    .line 250
    xor-int/lit8 p0, p2, 0x1

    .line 251
    .line 252
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    .line 253
    .line 254
    .line 255
    return-void
.end method

.method public final v(JZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->q(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w1:J

    .line 14
    .line 15
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v(JZZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    .line 28
    .line 29
    .line 30
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iput-wide v2, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 36
    .line 37
    iget p1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 38
    .line 39
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 44
    .line 45
    iput-wide v2, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 46
    .line 47
    iput-boolean p4, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 54
    .line 55
    .line 56
    :cond_3
    if-eqz p3, :cond_5

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-interface {p1, p4}, Landroidx/media3/exoplayer/video/VideoSink;->s(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p2, p4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q0()V

    .line 70
    .line 71
    .line 72
    iput p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1:I

    .line 73
    .line 74
    return-void
.end method

.method public final v0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x1:Z

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->b:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v4, v3}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1:Z

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 29
    .line 30
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :catchall_0
    move-exception v4

    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception v4

    .line 45
    :try_start_2
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v5, v3}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 53
    .line 54
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :goto_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i1:Z

    .line 56
    .line 57
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1:J

    .line 58
    .line 59
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g1:Z

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->m1:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 69
    .line 70
    :cond_3
    throw v4
.end method

.method public final y()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1:J

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1:J

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->i()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final z()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P0()V

    .line 2
    .line 3
    .line 4
    iget v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1:I

    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1:J

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 12
    .line 13
    iget-object v7, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz v7, :cond_0

    .line 16
    .line 17
    new-instance v0, Lli;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct/range {v0 .. v5}, Lli;-><init>(Ljava/lang/Object;JII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1:J

    .line 29
    .line 30
    iput v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->z1:I

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h1:Landroidx/media3/exoplayer/video/VideoSink;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->g()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V0:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 41
    .line 42
    iput-boolean v6, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 43
    .line 44
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 52
    .line 53
    iput-boolean v6, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->b()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 70
    .line 71
    .line 72
    :cond_4
    return-void
.end method

.method public final z0(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 14

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O0(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 10
    .line 11
    iget-wide v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-gez v0, :cond_1

    .line 17
    .line 18
    move v0, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a1:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 22
    .line 23
    if-eqz v5, :cond_3

    .line 24
    .line 25
    iget-wide v6, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a:J

    .line 26
    .line 27
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v10, v6, v8

    .line 33
    .line 34
    if-nez v10, :cond_2

    .line 35
    .line 36
    move-wide v2, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-wide v10, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b:J

    .line 39
    .line 40
    long-to-double v10, v10

    .line 41
    sub-long/2addr v2, v6

    .line 42
    long-to-double v2, v2

    .line 43
    iget-wide v5, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c:D

    .line 44
    .line 45
    mul-double/2addr v2, v5

    .line 46
    add-double/2addr v2, v10

    .line 47
    double-to-long v2, v2

    .line 48
    :goto_1
    cmp-long v5, v2, v8

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    iget-wide v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z0:J

    .line 53
    .line 54
    cmp-long v2, v2, v5

    .line 55
    .line 56
    if-gez v2, :cond_3

    .line 57
    .line 58
    move v2, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move v2, v1

    .line 61
    :goto_2
    if-nez v0, :cond_4

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/high16 v2, 0x10000000

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    :goto_3
    return v1

    .line 75
    :cond_5
    const/high16 v2, 0x4000000

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 84
    .line 85
    .line 86
    :goto_4
    move v1, v4

    .line 87
    goto/16 :goto_d

    .line 88
    .line 89
    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y0:Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 90
    .line 91
    if-eqz v2, :cond_15

    .line 92
    .line 93
    iget-object v3, v2, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v5, v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->b:Ljava/lang/String;

    .line 101
    .line 102
    const-string v6, "video/av01"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_15

    .line 109
    .line 110
    iget-object v5, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    if-eqz v5, :cond_15

    .line 113
    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    iget v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:I

    .line 117
    .line 118
    if-gtz v6, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    move v6, v1

    .line 122
    goto :goto_6

    .line 123
    :cond_8
    :goto_5
    move v6, v4

    .line 124
    :goto_6
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_9

    .line 136
    .line 137
    invoke-static {v3}, Landroidx/media3/container/ObuParser;->b(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a(Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-static {v5}, Landroidx/media3/container/ObuParser;->b(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->a(Ljava/util/ArrayList;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    sub-int/2addr v7, v4

    .line 163
    move v8, v1

    .line 164
    :goto_7
    if-ltz v7, :cond_10

    .line 165
    .line 166
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    .line 171
    .line 172
    iget v10, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    .line 173
    .line 174
    const/4 v11, 0x2

    .line 175
    const/4 v12, 0x6

    .line 176
    const/4 v13, 0x3

    .line 177
    if-eq v10, v11, :cond_d

    .line 178
    .line 179
    const/16 v11, 0xf

    .line 180
    .line 181
    if-ne v10, v11, :cond_a

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_a
    if-ne v10, v13, :cond_b

    .line 185
    .line 186
    if-nez v6, :cond_b

    .line 187
    .line 188
    goto :goto_a

    .line 189
    :cond_b
    if-eq v10, v12, :cond_c

    .line 190
    .line 191
    if-ne v10, v13, :cond_10

    .line 192
    .line 193
    :cond_c
    iget-object v10, v2, Landroidx/media3/exoplayer/video/Av1SampleDependencyParser;->b:Landroidx/media3/container/ObuParser$SequenceHeader;

    .line 194
    .line 195
    if-eqz v10, :cond_10

    .line 196
    .line 197
    :try_start_0
    new-instance v11, Landroidx/media3/container/ObuParser$FrameHeader;

    .line 198
    .line 199
    invoke-direct {v11, v10, v9}, Landroidx/media3/container/ObuParser$FrameHeader;-><init>(Landroidx/media3/container/ObuParser$SequenceHeader;Landroidx/media3/container/ObuParser$Obu;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :catch_0
    const/4 v11, 0x0

    .line 204
    :goto_8
    if-eqz v11, :cond_10

    .line 205
    .line 206
    iget-boolean v9, v11, Landroidx/media3/container/ObuParser$FrameHeader;->a:Z

    .line 207
    .line 208
    if-nez v9, :cond_10

    .line 209
    .line 210
    :cond_d
    :goto_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    .line 215
    .line 216
    iget v9, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    .line 217
    .line 218
    if-eq v9, v12, :cond_e

    .line 219
    .line 220
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    check-cast v9, Landroidx/media3/container/ObuParser$Obu;

    .line 225
    .line 226
    iget v9, v9, Landroidx/media3/container/ObuParser$Obu;->a:I

    .line 227
    .line 228
    if-ne v9, v13, :cond_f

    .line 229
    .line 230
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 231
    .line 232
    :cond_f
    add-int/lit8 v7, v7, -0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_10
    :goto_a
    if-gt v8, v4, :cond_13

    .line 236
    .line 237
    add-int/lit8 v2, v7, 0x1

    .line 238
    .line 239
    const/16 v6, 0x8

    .line 240
    .line 241
    if-lt v2, v6, :cond_11

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_11
    if-ltz v7, :cond_12

    .line 245
    .line 246
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Landroidx/media3/container/ObuParser$Obu;

    .line 251
    .line 252
    iget-object v2, v2, Landroidx/media3/container/ObuParser$Obu;->b:Ljava/nio/ByteBuffer;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    goto :goto_c

    .line 259
    :cond_12
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    goto :goto_c

    .line 264
    :cond_13
    :goto_b
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    :goto_c
    if-nez v2, :cond_14

    .line 269
    .line 270
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_14
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eq v2, v3, :cond_15

    .line 280
    .line 281
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    .line 287
    .line 288
    add-int/2addr v3, v2

    .line 289
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-ge v3, v5, :cond_15

    .line 294
    .line 295
    const/high16 v3, 0x40000000    # 2.0f

    .line 296
    .line 297
    invoke-virtual {p1, v3}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-nez v3, :cond_15

    .line 302
    .line 303
    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :cond_15
    :goto_d
    if-eqz v1, :cond_17

    .line 314
    .line 315
    if-nez v0, :cond_16

    .line 316
    .line 317
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:I

    .line 318
    .line 319
    add-int/2addr v0, v4

    .line 320
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1:I

    .line 321
    .line 322
    :cond_16
    iget-wide v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 323
    .line 324
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b1:Ljava/util/PriorityQueue;

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    :cond_17
    return v1
.end method
