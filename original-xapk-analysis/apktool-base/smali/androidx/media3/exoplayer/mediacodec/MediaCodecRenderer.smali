.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;
    }
.end annotation


# static fields
.field public static final P0:[B


# instance fields
.field public A0:Z

.field public B0:Z

.field public final C:Landroid/content/Context;

.field public C0:Z

.field public final D:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public D0:Z

.field public final E:Lk8;

.field public E0:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final F:Landroidx/media3/decoder/DecoderInputBuffer;

.field public F0:Landroidx/media3/exoplayer/DecoderCounters;

.field public final G:Landroidx/media3/decoder/DecoderInputBuffer;

.field public G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field public final H:Landroidx/media3/decoder/DecoderInputBuffer;

.field public H0:J

.field public final I:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

.field public I0:Z

.field public final J:Landroid/media/MediaCodec$BufferInfo;

.field public J0:Z

.field public final K:Ljava/util/ArrayDeque;

.field public K0:Z

.field public final L:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field public L0:J

.field public final M:Ljava/util/concurrent/atomic/AtomicInteger;

.field public M0:Landroidx/media3/exoplayer/CodecParameters;

.field public N:Landroidx/media3/common/Format;

.field public N0:Landroidx/media3/exoplayer/CodecParameters;

.field public O:Landroidx/media3/common/Format;

.field public O0:Lcom/google/common/collect/ImmutableSet;

.field public P:Landroidx/media3/exoplayer/drm/DrmSession;

.field public Q:Landroidx/media3/exoplayer/drm/DrmSession;

.field public R:Landroidx/media3/exoplayer/Renderer$WakeupListener;

.field public S:Landroid/media/MediaCrypto;

.field public final T:J

.field public U:F

.field public V:F

.field public W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public X:Landroidx/media3/common/Format;

.field public Y:Landroid/media/MediaFormat;

.field public Z:Z

.field public a0:F

.field public b0:Ljava/util/ArrayDeque;

.field public c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:J

.field public j0:Z

.field public k0:J

.field public l0:I

.field public m0:I

.field public n0:Ljava/nio/ByteBuffer;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:J

.field public z0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 11
    .line 12
    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->e:Lk8;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Lk8;

    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 30
    .line 31
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 37
    .line 38
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 39
    .line 40
    const/4 p3, 0x2

    .line 41
    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 45
    .line 46
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 47
    .line 48
    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x20

    .line 52
    .line 53
    iput v0, p1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->s:I

    .line 54
    .line 55
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 56
    .line 57
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:F

    .line 67
    .line 68
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:F

    .line 69
    .line 70
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:J

    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->i:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 85
    .line 86
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    new-instance p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    iput-object v2, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    iput p2, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->c:I

    .line 110
    .line 111
    iput p3, p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 112
    .line 113
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 114
    .line 115
    const/high16 p1, -0x40800000    # -1.0f

    .line 116
    .line 117
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:F

    .line 118
    .line 119
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 120
    .line 121
    const/4 p1, -0x1

    .line 122
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 123
    .line 124
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 125
    .line 126
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:J

    .line 127
    .line 128
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 129
    .line 130
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 131
    .line 132
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 133
    .line 134
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:J

    .line 135
    .line 136
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 137
    .line 138
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 139
    .line 140
    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 146
    .line 147
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 148
    .line 149
    const-wide/16 p1, 0x0

    .line 150
    .line 151
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 152
    .line 153
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->r()Lcom/google/common/collect/ImmutableSet;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 158
    .line 159
    sget-object p1, Landroidx/media3/exoplayer/CodecParameters;->b:Landroidx/media3/exoplayer/CodecParameters;

    .line 160
    .line 161
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0:Landroidx/media3/exoplayer/CodecParameters;

    .line 162
    .line 163
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0:Landroidx/media3/exoplayer/CodecParameters;

    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 12

    .line 1
    iget-wide v7, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/SampleStream;->b()I

    .line 9
    .line 10
    .line 11
    move-result v9

    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 13
    .line 14
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 15
    .line 16
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long p1, v0, v10

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 26
    .line 27
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    move-wide v3, p2

    .line 33
    move-wide/from16 v5, p4

    .line 34
    .line 35
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJJI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0:Z

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 58
    .line 59
    cmp-long v2, v0, v10

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 64
    .line 65
    cmp-long v4, v2, v10

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    cmp-long v0, v2, v0

    .line 70
    .line 71
    if-ltz v0, :cond_3

    .line 72
    .line 73
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 74
    .line 75
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    move-wide v3, p2

    .line 81
    move-wide/from16 v5, p4

    .line 82
    .line 83
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJJI)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 90
    .line 91
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 92
    .line 93
    cmp-long p1, v0, v10

    .line 94
    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void

    .line 101
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 102
    .line 103
    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 104
    .line 105
    move-wide v3, p2

    .line 106
    move-wide/from16 v5, p4

    .line 107
    .line 108
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJJI)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public A0()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 2
    .line 3
    return p0
.end method

.method public final B()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 6
    .line 7
    iput-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->e:J

    .line 8
    .line 9
    return-void
.end method

.method public B0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public C0()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v0, "MediaCodecRenderer"

    .line 24
    .line 25
    const-string v1, "Failed to update the DRM session, releasing the codec instead."

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_2
    return v2
.end method

.method public D0(Landroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract E0(Lk8;Landroidx/media3/common/Format;)I
.end method

.method public final F0(Landroidx/media3/common/Format;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:F

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:F

    .line 30
    .line 31
    cmpl-float v1, v0, p1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    .line 37
    .line 38
    cmpl-float v2, p1, v1

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    cmpl-float v0, v0, v1

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    cmpl-float v0, p1, v0

    .line 49
    .line 50
    if-lez v0, :cond_4

    .line 51
    .line 52
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "operating-rate"

    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:F

    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void
.end method

.method public final G(Landroid/media/MediaFormat;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_6

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0:Landroidx/media3/exoplayer/CodecParameters;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Float;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    check-cast v0, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    return-void
.end method

.method public final G0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->g()Landroidx/media3/decoder/CryptoConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 27
    .line 28
    const/16 v3, 0x1776

    .line 29
    .line 30
    invoke-virtual {p0, v0, v2, v1, v3}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 38
    .line 39
    .line 40
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 41
    .line 42
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 43
    .line 44
    return-void
.end method

.method public final H(JJ)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 4
    .line 5
    const/4 v15, 0x1

    .line 6
    xor-int/2addr v1, v15

    .line 7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->k()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x4

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v6, v1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 22
    .line 23
    iget v9, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->r:I

    .line 24
    .line 25
    iget-wide v10, v1, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 26
    .line 27
    iget-wide v12, v0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 28
    .line 29
    iget-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->q:J

    .line 30
    .line 31
    invoke-virtual {v0, v12, v13, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    invoke-virtual {v1, v3}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 36
    .line 37
    .line 38
    move-result v13

    .line 39
    iget-object v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 40
    .line 41
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move-wide/from16 v3, p3

    .line 47
    .line 48
    move-object v15, v1

    .line 49
    move-wide/from16 v1, p1

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    iget-wide v1, v15, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->q:J

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->f()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/16 v16, 0x0

    .line 67
    .line 68
    goto/16 :goto_12

    .line 69
    .line 70
    :cond_1
    move-object v15, v1

    .line 71
    :goto_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    return v2

    .line 80
    :cond_2
    const/4 v2, 0x0

    .line 81
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 82
    .line 83
    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {v15, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->j(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 92
    .line 93
    .line 94
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 95
    .line 96
    :cond_3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 97
    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->k()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    :cond_4
    :goto_1
    const/16 v17, 0x1

    .line 107
    .line 108
    goto/16 :goto_13

    .line 109
    .line 110
    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 113
    .line 114
    .line 115
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 118
    .line 119
    .line 120
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 121
    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    move/from16 v16, v2

    .line 125
    .line 126
    goto/16 :goto_12

    .line 127
    .line 128
    :cond_6
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 129
    .line 130
    const/16 v17, 0x1

    .line 131
    .line 132
    xor-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    const/4 v5, -0x5

    .line 153
    if-eq v4, v5, :cond_20

    .line 154
    .line 155
    const/4 v5, -0x4

    .line 156
    if-eq v4, v5, :cond_8

    .line 157
    .line 158
    const/4 v1, -0x3

    .line 159
    if-ne v4, v1, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_21

    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 172
    .line 173
    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 174
    .line 175
    goto/16 :goto_11

    .line 176
    .line 177
    :cond_7
    invoke-static {}, Lio/sentry/d;->d()V

    .line 178
    .line 179
    .line 180
    return v2

    .line 181
    :cond_8
    const/4 v4, 0x4

    .line 182
    invoke-virtual {v3, v4}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_9

    .line 187
    .line 188
    const/4 v5, 0x1

    .line 189
    iput-boolean v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 196
    .line 197
    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 198
    .line 199
    goto/16 :goto_11

    .line 200
    .line 201
    :cond_9
    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 202
    .line 203
    iget-wide v7, v3, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 204
    .line 205
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v5

    .line 209
    iput-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_a

    .line 216
    .line 217
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 218
    .line 219
    const/high16 v6, 0x20000000

    .line 220
    .line 221
    invoke-virtual {v5, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    if-eqz v5, :cond_b

    .line 226
    .line 227
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    iget-wide v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 232
    .line 233
    iput-wide v6, v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 234
    .line 235
    :cond_b
    iget-boolean v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 236
    .line 237
    const/16 v6, 0xff

    .line 238
    .line 239
    const/4 v7, 0x0

    .line 240
    const-string v8, "audio/opus"

    .line 241
    .line 242
    if-eqz v5, :cond_d

    .line 243
    .line 244
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    iput-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 250
    .line 251
    iget-object v5, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 252
    .line 253
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_c

    .line 258
    .line 259
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 260
    .line 261
    iget-object v5, v5, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_c

    .line 268
    .line 269
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 270
    .line 271
    iget-object v5, v5, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 272
    .line 273
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, [B

    .line 278
    .line 279
    const/16 v9, 0xb

    .line 280
    .line 281
    aget-byte v9, v5, v9

    .line 282
    .line 283
    and-int/2addr v9, v6

    .line 284
    shl-int/lit8 v9, v9, 0x8

    .line 285
    .line 286
    const/16 v10, 0xa

    .line 287
    .line 288
    aget-byte v5, v5, v10

    .line 289
    .line 290
    and-int/2addr v5, v6

    .line 291
    or-int/2addr v5, v9

    .line 292
    iget-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 293
    .line 294
    invoke-virtual {v9}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    iput v5, v9, Landroidx/media3/common/Format$Builder;->M:I

    .line 299
    .line 300
    new-instance v5, Landroidx/media3/common/Format;

    .line 301
    .line 302
    invoke-direct {v5, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 303
    .line 304
    .line 305
    iput-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 306
    .line 307
    :cond_c
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 308
    .line 309
    invoke-virtual {v0, v5, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 310
    .line 311
    .line 312
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 313
    .line 314
    :cond_d
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 315
    .line 316
    .line 317
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 318
    .line 319
    if-eqz v5, :cond_1c

    .line 320
    .line 321
    iget-object v5, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 322
    .line 323
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_1c

    .line 328
    .line 329
    const/high16 v5, 0x10000000

    .line 330
    .line 331
    invoke-virtual {v3, v5}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_e

    .line 336
    .line 337
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 338
    .line 339
    iput-object v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->k:Landroidx/media3/common/Format;

    .line 340
    .line 341
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 342
    .line 343
    .line 344
    :cond_e
    iget-wide v8, v0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 345
    .line 346
    iget-wide v10, v3, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 347
    .line 348
    sub-long/2addr v8, v10

    .line 349
    const-wide/32 v10, 0x13880

    .line 350
    .line 351
    .line 352
    cmp-long v5, v8, v10

    .line 353
    .line 354
    if-gtz v5, :cond_1c

    .line 355
    .line 356
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 357
    .line 358
    iget-object v5, v5, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 359
    .line 360
    iget-object v8, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 361
    .line 362
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    iget-object v9, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    iget-object v9, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 371
    .line 372
    invoke-virtual {v9}, Ljava/nio/Buffer;->limit()I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    iget-object v10, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 377
    .line 378
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    sub-int/2addr v9, v10

    .line 383
    if-nez v9, :cond_f

    .line 384
    .line 385
    goto/16 :goto_e

    .line 386
    .line 387
    :cond_f
    iget v9, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 388
    .line 389
    const/4 v10, 0x2

    .line 390
    if-ne v9, v10, :cond_11

    .line 391
    .line 392
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    const/4 v11, 0x1

    .line 397
    if-eq v9, v11, :cond_10

    .line 398
    .line 399
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 400
    .line 401
    .line 402
    move-result v9

    .line 403
    const/4 v11, 0x3

    .line 404
    if-ne v9, v11, :cond_11

    .line 405
    .line 406
    :cond_10
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    move-object v7, v5

    .line 411
    check-cast v7, [B

    .line 412
    .line 413
    :cond_11
    iget-object v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 416
    .line 417
    .line 418
    move-result v9

    .line 419
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    sub-int v12, v11, v9

    .line 424
    .line 425
    add-int/lit16 v13, v12, 0xff

    .line 426
    .line 427
    div-int/2addr v13, v6

    .line 428
    add-int/lit8 v14, v13, 0x1b

    .line 429
    .line 430
    add-int/2addr v14, v12

    .line 431
    iget v4, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 432
    .line 433
    if-ne v4, v10, :cond_13

    .line 434
    .line 435
    if-eqz v7, :cond_12

    .line 436
    .line 437
    array-length v4, v7

    .line 438
    add-int/lit8 v4, v4, 0x1c

    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_12
    const/16 v4, 0x2f

    .line 442
    .line 443
    :goto_3
    add-int/lit8 v16, v4, 0x2c

    .line 444
    .line 445
    add-int v14, v16, v14

    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_13
    move v4, v2

    .line 449
    :goto_4
    iget-object v6, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 450
    .line 451
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    if-ge v6, v14, :cond_14

    .line 456
    .line 457
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 462
    .line 463
    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    iput-object v6, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_14
    iget-object v6, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 473
    .line 474
    .line 475
    :goto_5
    iget-object v6, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 476
    .line 477
    iget v14, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 478
    .line 479
    const/16 v2, 0x16

    .line 480
    .line 481
    if-ne v14, v10, :cond_16

    .line 482
    .line 483
    if-eqz v7, :cond_15

    .line 484
    .line 485
    const/16 v22, 0x1

    .line 486
    .line 487
    const/16 v23, 0x1

    .line 488
    .line 489
    const-wide/16 v19, 0x0

    .line 490
    .line 491
    const/16 v21, 0x0

    .line 492
    .line 493
    move-object/from16 v18, v6

    .line 494
    .line 495
    invoke-static/range {v18 .. v23}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 496
    .line 497
    .line 498
    array-length v14, v7

    .line 499
    move/from16 p3, v11

    .line 500
    .line 501
    int-to-long v10, v14

    .line 502
    invoke-static {v10, v11}, Lcom/google/common/primitives/UnsignedBytes;->a(J)B

    .line 503
    .line 504
    .line 505
    move-result v10

    .line 506
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    array-length v14, v7

    .line 521
    add-int/lit8 v14, v14, 0x1c

    .line 522
    .line 523
    move/from16 p4, v4

    .line 524
    .line 525
    const/4 v4, 0x0

    .line 526
    invoke-static {v11, v14, v4, v10}, Landroidx/media3/common/util/Util;->j(III[B)I

    .line 527
    .line 528
    .line 529
    move-result v10

    .line 530
    invoke-virtual {v6, v2, v10}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 531
    .line 532
    .line 533
    array-length v4, v7

    .line 534
    add-int/lit8 v4, v4, 0x1c

    .line 535
    .line 536
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    .line 538
    .line 539
    goto :goto_6

    .line 540
    :cond_15
    move/from16 p4, v4

    .line 541
    .line 542
    move/from16 p3, v11

    .line 543
    .line 544
    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->d:[B

    .line 545
    .line 546
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 547
    .line 548
    .line 549
    :goto_6
    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->e:[B

    .line 550
    .line 551
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 552
    .line 553
    .line 554
    :goto_7
    const/4 v4, 0x0

    .line 555
    goto :goto_8

    .line 556
    :cond_16
    move/from16 p4, v4

    .line 557
    .line 558
    move/from16 p3, v11

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :goto_8
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    const/4 v11, 0x1

    .line 570
    if-le v4, v11, :cond_17

    .line 571
    .line 572
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    goto :goto_9

    .line 577
    :cond_17
    const/4 v4, 0x0

    .line 578
    :goto_9
    invoke-static {v7, v4}, Landroidx/media3/container/OpusUtil;->b(BB)J

    .line 579
    .line 580
    .line 581
    move-result-wide v10

    .line 582
    const-wide/32 v18, 0xbb80

    .line 583
    .line 584
    .line 585
    mul-long v10, v10, v18

    .line 586
    .line 587
    const-wide/32 v18, 0xf4240

    .line 588
    .line 589
    .line 590
    div-long v10, v10, v18

    .line 591
    .line 592
    long-to-int v4, v10

    .line 593
    iget v7, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->c:I

    .line 594
    .line 595
    add-int/2addr v7, v4

    .line 596
    iput v7, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->c:I

    .line 597
    .line 598
    int-to-long v10, v7

    .line 599
    iget v4, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 600
    .line 601
    const/16 v23, 0x0

    .line 602
    .line 603
    move/from16 v21, v4

    .line 604
    .line 605
    move-object/from16 v18, v6

    .line 606
    .line 607
    move-wide/from16 v19, v10

    .line 608
    .line 609
    move/from16 v22, v13

    .line 610
    .line 611
    invoke-static/range {v18 .. v23}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 612
    .line 613
    .line 614
    const/4 v4, 0x0

    .line 615
    :goto_a
    if-ge v4, v13, :cond_19

    .line 616
    .line 617
    const/16 v7, 0xff

    .line 618
    .line 619
    if-lt v12, v7, :cond_18

    .line 620
    .line 621
    const/4 v10, -0x1

    .line 622
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 623
    .line 624
    .line 625
    add-int/lit16 v10, v12, -0xff

    .line 626
    .line 627
    move v12, v10

    .line 628
    goto :goto_b

    .line 629
    :cond_18
    int-to-byte v10, v12

    .line 630
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 631
    .line 632
    .line 633
    const/4 v12, 0x0

    .line 634
    :goto_b
    add-int/lit8 v4, v4, 0x1

    .line 635
    .line 636
    goto :goto_a

    .line 637
    :cond_19
    move/from16 v4, p3

    .line 638
    .line 639
    :goto_c
    if-ge v9, v4, :cond_1a

    .line 640
    .line 641
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 642
    .line 643
    .line 644
    move-result v7

    .line 645
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 646
    .line 647
    .line 648
    add-int/lit8 v9, v9, 0x1

    .line 649
    .line 650
    goto :goto_c

    .line 651
    :cond_1a
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 652
    .line 653
    .line 654
    move-result v4

    .line 655
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 659
    .line 660
    .line 661
    iget v4, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 662
    .line 663
    const/4 v5, 0x2

    .line 664
    if-ne v4, v5, :cond_1b

    .line 665
    .line 666
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    add-int v4, v4, p4

    .line 675
    .line 676
    add-int/lit8 v4, v4, 0x2c

    .line 677
    .line 678
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 679
    .line 680
    .line 681
    move-result v5

    .line 682
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 683
    .line 684
    .line 685
    move-result v7

    .line 686
    sub-int/2addr v5, v7

    .line 687
    const/4 v7, 0x0

    .line 688
    invoke-static {v4, v5, v7, v2}, Landroidx/media3/common/util/Util;->j(III[B)I

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    add-int/lit8 v4, p4, 0x42

    .line 693
    .line 694
    invoke-virtual {v6, v4, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 695
    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_1b
    const/4 v7, 0x0

    .line 699
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 708
    .line 709
    .line 710
    move-result v9

    .line 711
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 712
    .line 713
    .line 714
    move-result v10

    .line 715
    sub-int/2addr v9, v10

    .line 716
    invoke-static {v5, v9, v7, v4}, Landroidx/media3/common/util/Util;->j(III[B)I

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    invoke-virtual {v6, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 721
    .line 722
    .line 723
    :goto_d
    iget v2, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 724
    .line 725
    const/16 v17, 0x1

    .line 726
    .line 727
    add-int/lit8 v2, v2, 0x1

    .line 728
    .line 729
    iput v2, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 730
    .line 731
    iput-object v6, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 732
    .line 733
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 734
    .line 735
    .line 736
    iget-object v2, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 737
    .line 738
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    invoke-virtual {v3, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->h(I)V

    .line 743
    .line 744
    .line 745
    iget-object v2, v3, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 746
    .line 747
    iget-object v4, v8, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 748
    .line 749
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 753
    .line 754
    .line 755
    :cond_1c
    :goto_e
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->k()Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-nez v2, :cond_1d

    .line 760
    .line 761
    goto :goto_f

    .line 762
    :cond_1d
    iget-wide v4, v0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 763
    .line 764
    iget-wide v6, v15, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->q:J

    .line 765
    .line 766
    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0(JJ)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    iget-wide v6, v3, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 771
    .line 772
    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0(JJ)Z

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    if-ne v2, v4, :cond_1e

    .line 777
    .line 778
    :goto_f
    invoke-virtual {v15, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->j(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    if-nez v2, :cond_1f

    .line 783
    .line 784
    :cond_1e
    const/4 v11, 0x1

    .line 785
    goto :goto_10

    .line 786
    :cond_1f
    const/4 v2, 0x0

    .line 787
    goto/16 :goto_2

    .line 788
    .line 789
    :goto_10
    iput-boolean v11, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 790
    .line 791
    goto :goto_11

    .line 792
    :cond_20
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 793
    .line 794
    .line 795
    :cond_21
    :goto_11
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->k()Z

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    if-eqz v1, :cond_22

    .line 800
    .line 801
    invoke-virtual {v15}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 802
    .line 803
    .line 804
    :cond_22
    invoke-virtual {v15}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->k()Z

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    if-nez v1, :cond_4

    .line 809
    .line 810
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 811
    .line 812
    if-nez v1, :cond_4

    .line 813
    .line 814
    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 815
    .line 816
    if-eqz v0, :cond_0

    .line 817
    .line 818
    goto/16 :goto_1

    .line 819
    .line 820
    :goto_12
    return v16

    .line 821
    :goto_13
    return v17
.end method

.method public final H0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/media3/common/Format;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroidx/media3/common/Format;

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0:Z

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public abstract I(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
.end method

.method public J(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 0

    .line 1
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final K()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0()V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public final L(JJ)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 9
    .line 10
    const/4 v15, 0x0

    .line 11
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    iget-object v8, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    invoke-interface {v5, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->m(Landroid/media/MediaCodec$BufferInfo;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-gez v1, :cond_10

    .line 30
    .line 31
    const/4 v5, -0x2

    .line 32
    const/4 v8, 0x2

    .line 33
    if-ne v1, v5, :cond_c

    .line 34
    .line 35
    iput-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->h()Landroid/media/MediaFormat;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v3, 0x1d

    .line 49
    .line 50
    if-lt v2, v3, :cond_b

    .line 51
    .line 52
    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 63
    .line 64
    sget-object v3, Landroidx/media3/exoplayer/CodecParameters;->b:Landroidx/media3/exoplayer/CodecParameters;

    .line 65
    .line 66
    new-instance v3, Landroidx/media3/exoplayer/CodecParameters$Builder;

    .line 67
    .line 68
    invoke-direct {v3}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    iget-object v7, v3, Landroidx/media3/exoplayer/CodecParameters$Builder;->a:Ljava/util/HashMap;

    .line 80
    .line 81
    if-eqz v5, :cond_9

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    invoke-static {v1, v5}, Lx4;->a(Landroid/media/MediaFormat;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eq v9, v6, :cond_8

    .line 100
    .line 101
    if-eq v9, v8, :cond_7

    .line 102
    .line 103
    const/4 v10, 0x3

    .line 104
    if-eq v9, v10, :cond_6

    .line 105
    .line 106
    if-eq v9, v4, :cond_5

    .line 107
    .line 108
    const/4 v10, 0x5

    .line 109
    if-eq v9, v10, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    if-nez v9, :cond_4

    .line 117
    .line 118
    invoke-virtual {v7, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_7
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v9

    .line 168
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_8
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_9
    new-instance v2, Landroidx/media3/exoplayer/CodecParameters;

    .line 189
    .line 190
    invoke-direct {v2, v7}, Landroidx/media3/exoplayer/CodecParameters;-><init>(Ljava/util/HashMap;)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0:Landroidx/media3/exoplayer/CodecParameters;

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/CodecParameters;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_a

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    iput-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0:Landroidx/media3/exoplayer/CodecParameters;

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0(Landroidx/media3/exoplayer/CodecParameters;)V

    .line 205
    .line 206
    .line 207
    :cond_b
    :goto_1
    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 208
    .line 209
    iput-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 210
    .line 211
    return v6

    .line 212
    :cond_c
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 213
    .line 214
    if-eqz v1, :cond_e

    .line 215
    .line 216
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 217
    .line 218
    if-nez v1, :cond_d

    .line 219
    .line 220
    iget v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 221
    .line 222
    if-ne v1, v8, :cond_e

    .line 223
    .line 224
    :cond_d
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 225
    .line 226
    .line 227
    :cond_e
    iget-wide v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:J

    .line 228
    .line 229
    cmp-long v1, v4, v2

    .line 230
    .line 231
    if-eqz v1, :cond_f

    .line 232
    .line 233
    const-wide/16 v1, 0x64

    .line 234
    .line 235
    add-long/2addr v4, v1

    .line 236
    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 242
    .line 243
    .line 244
    move-result-wide v1

    .line 245
    cmp-long v1, v4, v1

    .line 246
    .line 247
    if-gez v1, :cond_f

    .line 248
    .line 249
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 250
    .line 251
    .line 252
    return v7

    .line 253
    :cond_f
    move/from16 v18, v7

    .line 254
    .line 255
    goto/16 :goto_8

    .line 256
    .line 257
    :cond_10
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 258
    .line 259
    iget-wide v11, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 260
    .line 261
    sub-long/2addr v9, v11

    .line 262
    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 263
    .line 264
    iget-boolean v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 265
    .line 266
    if-eqz v9, :cond_11

    .line 267
    .line 268
    iput-boolean v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 269
    .line 270
    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 271
    .line 272
    .line 273
    return v6

    .line 274
    :cond_11
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 275
    .line 276
    if-nez v9, :cond_12

    .line 277
    .line 278
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 279
    .line 280
    and-int/2addr v9, v4

    .line 281
    if-eqz v9, :cond_12

    .line 282
    .line 283
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 284
    .line 285
    .line 286
    return v7

    .line 287
    :cond_12
    iput v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 288
    .line 289
    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->q(I)Ljava/nio/ByteBuffer;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:Ljava/nio/ByteBuffer;

    .line 294
    .line 295
    if-eqz v1, :cond_13

    .line 296
    .line 297
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 298
    .line 299
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:Ljava/nio/ByteBuffer;

    .line 303
    .line 304
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 305
    .line 306
    iget v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 307
    .line 308
    add-int/2addr v9, v10

    .line 309
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 310
    .line 311
    .line 312
    :cond_13
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 313
    .line 314
    invoke-virtual {v0, v9, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0(J)V

    .line 315
    .line 316
    .line 317
    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 318
    .line 319
    iget v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->f:I

    .line 320
    .line 321
    and-int/2addr v9, v6

    .line 322
    if-eqz v9, :cond_14

    .line 323
    .line 324
    iget-wide v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->e:J

    .line 325
    .line 326
    cmp-long v11, v9, v2

    .line 327
    .line 328
    if-eqz v11, :cond_14

    .line 329
    .line 330
    iget-wide v11, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 331
    .line 332
    iget-wide v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 333
    .line 334
    sub-long/2addr v11, v13

    .line 335
    cmp-long v9, v11, v9

    .line 336
    .line 337
    if-ltz v9, :cond_14

    .line 338
    .line 339
    move v9, v6

    .line 340
    goto :goto_3

    .line 341
    :cond_14
    move v9, v7

    .line 342
    :goto_3
    iget-boolean v10, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 343
    .line 344
    if-nez v10, :cond_16

    .line 345
    .line 346
    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 347
    .line 348
    iget-wide v12, v0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 349
    .line 350
    cmp-long v10, v10, v12

    .line 351
    .line 352
    if-ltz v10, :cond_16

    .line 353
    .line 354
    if-eqz v9, :cond_15

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_15
    move v12, v7

    .line 358
    goto :goto_5

    .line 359
    :cond_16
    :goto_4
    move v12, v6

    .line 360
    :goto_5
    iget-wide v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 361
    .line 362
    cmp-long v1, v10, v2

    .line 363
    .line 364
    if-eqz v1, :cond_17

    .line 365
    .line 366
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 367
    .line 368
    cmp-long v1, v10, v1

    .line 369
    .line 370
    if-gtz v1, :cond_17

    .line 371
    .line 372
    if-nez v9, :cond_17

    .line 373
    .line 374
    move v1, v6

    .line 375
    move v13, v1

    .line 376
    goto :goto_6

    .line 377
    :cond_17
    move v1, v6

    .line 378
    move v13, v7

    .line 379
    :goto_6
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:Ljava/nio/ByteBuffer;

    .line 380
    .line 381
    move v2, v7

    .line 382
    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 383
    .line 384
    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 385
    .line 386
    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 387
    .line 388
    iget-object v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 389
    .line 390
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    const/4 v9, 0x1

    .line 394
    move/from16 v16, v1

    .line 395
    .line 396
    move/from16 v18, v2

    .line 397
    .line 398
    move/from16 v17, v4

    .line 399
    .line 400
    move-object v15, v8

    .line 401
    move-wide/from16 v1, p1

    .line 402
    .line 403
    move v8, v3

    .line 404
    move-wide/from16 v3, p3

    .line 405
    .line 406
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_1b

    .line 411
    .line 412
    iget-wide v1, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 413
    .line 414
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(J)V

    .line 415
    .line 416
    .line 417
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 418
    .line 419
    and-int/lit8 v1, v1, 0x4

    .line 420
    .line 421
    if-eqz v1, :cond_18

    .line 422
    .line 423
    move/from16 v6, v16

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_18
    move/from16 v6, v18

    .line 427
    .line 428
    :goto_7
    if-nez v6, :cond_19

    .line 429
    .line 430
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 431
    .line 432
    if-eqz v1, :cond_19

    .line 433
    .line 434
    if-eqz v13, :cond_19

    .line 435
    .line 436
    iget-object v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 437
    .line 438
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 442
    .line 443
    .line 444
    move-result-wide v1

    .line 445
    iput-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:J

    .line 446
    .line 447
    :cond_19
    const/4 v1, -0x1

    .line 448
    iput v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 449
    .line 450
    const/4 v1, 0x0

    .line 451
    iput-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:Ljava/nio/ByteBuffer;

    .line 452
    .line 453
    if-nez v6, :cond_1a

    .line 454
    .line 455
    return v16

    .line 456
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 457
    .line 458
    .line 459
    :cond_1b
    :goto_8
    return v18
.end method

.method public final M()Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, v1, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/SampleStream;->b()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->f:I

    .line 17
    .line 18
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v3, :cond_21

    .line 22
    .line 23
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 24
    .line 25
    const/4 v9, 0x2

    .line 26
    if-eq v0, v9, :cond_21

    .line 27
    .line 28
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_0
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 35
    .line 36
    iget-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 37
    .line 38
    if-gez v0, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->k()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 45
    .line 46
    if-gez v0, :cond_1

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_1
    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->o(I)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v12, -0x1

    .line 63
    const/4 v13, 0x1

    .line 64
    if-ne v0, v13, :cond_4

    .line 65
    .line 66
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 72
    .line 73
    iget v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    const/4 v6, 0x4

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(IIIJ)V

    .line 80
    .line 81
    .line 82
    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 83
    .line 84
    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    :goto_0
    iput v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 87
    .line 88
    return v2

    .line 89
    :cond_4
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Z

    .line 94
    .line 95
    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0:[B

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    iget v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 106
    .line 107
    const-wide/16 v7, 0x0

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const/16 v5, 0x26

    .line 111
    .line 112
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(IIIJ)V

    .line 113
    .line 114
    .line 115
    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 116
    .line 117
    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 120
    .line 121
    return v13

    .line 122
    :cond_5
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 123
    .line 124
    if-ne v0, v13, :cond_7

    .line 125
    .line 126
    move v0, v2

    .line 127
    :goto_1
    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v4, v4, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ge v0, v4, :cond_6

    .line 139
    .line 140
    iget-object v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 141
    .line 142
    iget-object v4, v4, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, [B

    .line 149
    .line 150
    iget-object v5, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    iput v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 162
    .line 163
    :cond_7
    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iget-object v4, v1, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 175
    .line 176
    .line 177
    :try_start_0
    new-instance v5, Lf3;

    .line 178
    .line 179
    const/16 v6, 0x9

    .line 180
    .line 181
    invoke-direct {v5, v6, v1, v4}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v3, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->l(Lf3;)V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .line 186
    .line 187
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/4 v6, -0x3

    .line 194
    if-ne v5, v6, :cond_9

    .line 195
    .line 196
    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_21

    .line 201
    .line 202
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iget v3, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->f:I

    .line 211
    .line 212
    and-int/2addr v3, v13

    .line 213
    if-eqz v3, :cond_8

    .line 214
    .line 215
    iget-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_8
    iget-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 219
    .line 220
    :goto_2
    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 221
    .line 222
    return v2

    .line 223
    :cond_9
    const/4 v6, -0x5

    .line 224
    if-ne v5, v6, :cond_b

    .line 225
    .line 226
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 227
    .line 228
    if-ne v0, v9, :cond_a

    .line 229
    .line 230
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 231
    .line 232
    .line 233
    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 234
    .line 235
    :cond_a
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 236
    .line 237
    .line 238
    return v13

    .line 239
    :cond_b
    const/4 v4, 0x4

    .line 240
    invoke-virtual {v10, v4}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_10

    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    iget v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->f:I

    .line 255
    .line 256
    and-int/2addr v4, v13

    .line 257
    if-eqz v4, :cond_c

    .line 258
    .line 259
    iget-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_c
    iget-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 263
    .line 264
    :goto_3
    iput-wide v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 265
    .line 266
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 267
    .line 268
    if-ne v0, v9, :cond_d

    .line 269
    .line 270
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 271
    .line 272
    .line 273
    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 274
    .line 275
    :cond_d
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 276
    .line 277
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 278
    .line 279
    if-nez v0, :cond_e

    .line 280
    .line 281
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 282
    .line 283
    .line 284
    return v2

    .line 285
    :cond_e
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 286
    .line 287
    if-eqz v0, :cond_f

    .line 288
    .line 289
    goto/16 :goto_7

    .line 290
    .line 291
    :cond_f
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 292
    .line 293
    iget v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 294
    .line 295
    const-wide/16 v7, 0x0

    .line 296
    .line 297
    const/4 v6, 0x4

    .line 298
    const/4 v5, 0x0

    .line 299
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(IIIJ)V

    .line 300
    .line 301
    .line 302
    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 303
    .line 304
    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 305
    .line 306
    return v2

    .line 307
    :cond_10
    iget-boolean v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 308
    .line 309
    if-nez v4, :cond_11

    .line 310
    .line 311
    invoke-virtual {v10, v13}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_11

    .line 316
    .line 317
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 318
    .line 319
    .line 320
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 321
    .line 322
    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 323
    .line 324
    add-int/2addr v2, v13

    .line 325
    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 326
    .line 327
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 328
    .line 329
    if-ne v0, v9, :cond_12

    .line 330
    .line 331
    iput v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 332
    .line 333
    return v13

    .line 334
    :cond_11
    iget-wide v4, v10, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 335
    .line 336
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    if-eqz v6, :cond_13

    .line 341
    .line 342
    :cond_12
    return v13

    .line 343
    :cond_13
    const/high16 v6, 0x40000000    # 2.0f

    .line 344
    .line 345
    invoke-virtual {v10, v6}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-eqz v6, :cond_16

    .line 350
    .line 351
    iget-object v7, v10, Landroidx/media3/decoder/DecoderInputBuffer;->l:Landroidx/media3/decoder/CryptoInfo;

    .line 352
    .line 353
    if-nez v0, :cond_14

    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_14
    iget-object v8, v7, Landroidx/media3/decoder/CryptoInfo;->d:[I

    .line 360
    .line 361
    if-nez v8, :cond_15

    .line 362
    .line 363
    new-array v8, v13, [I

    .line 364
    .line 365
    iput-object v8, v7, Landroidx/media3/decoder/CryptoInfo;->d:[I

    .line 366
    .line 367
    iget-object v9, v7, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 368
    .line 369
    iput-object v8, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 370
    .line 371
    :cond_15
    iget-object v7, v7, Landroidx/media3/decoder/CryptoInfo;->d:[I

    .line 372
    .line 373
    aget v8, v7, v2

    .line 374
    .line 375
    add-int/2addr v8, v0

    .line 376
    aput v8, v7, v2

    .line 377
    .line 378
    :cond_16
    :goto_4
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 379
    .line 380
    if-eqz v0, :cond_17

    .line 381
    .line 382
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget-object v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 387
    .line 388
    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 389
    .line 390
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v4, v5, v8}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    iput-boolean v13, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->g:Z

    .line 397
    .line 398
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 399
    .line 400
    :cond_17
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 401
    .line 402
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 403
    .line 404
    .line 405
    move-result-wide v7

    .line 406
    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 407
    .line 408
    iget-wide v7, v1, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 409
    .line 410
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    cmp-long v0, v7, v14

    .line 416
    .line 417
    if-eqz v0, :cond_18

    .line 418
    .line 419
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    iget-wide v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 424
    .line 425
    sub-long v14, v4, v14

    .line 426
    .line 427
    cmp-long v0, v14, v7

    .line 428
    .line 429
    if-gez v0, :cond_19

    .line 430
    .line 431
    :cond_18
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 432
    .line 433
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 434
    .line 435
    .line 436
    move-result-wide v7

    .line 437
    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 438
    .line 439
    :cond_19
    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-nez v0, :cond_1a

    .line 444
    .line 445
    const/high16 v0, 0x20000000

    .line 446
    .line 447
    invoke-virtual {v10, v0}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_1c

    .line 452
    .line 453
    :cond_1a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    iget v7, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->f:I

    .line 462
    .line 463
    and-int/2addr v7, v13

    .line 464
    if-eqz v7, :cond_1b

    .line 465
    .line 466
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_1b
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 470
    .line 471
    :goto_5
    iput-wide v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 472
    .line 473
    :cond_1c
    invoke-virtual {v10}, Landroidx/media3/decoder/DecoderInputBuffer;->i()V

    .line 474
    .line 475
    .line 476
    const/high16 v0, 0x10000000

    .line 477
    .line 478
    invoke-virtual {v10, v0}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_1d

    .line 483
    .line 484
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 485
    .line 486
    .line 487
    :cond_1d
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 488
    .line 489
    if-eqz v0, :cond_1f

    .line 490
    .line 491
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 492
    .line 493
    cmp-long v0, v4, v7

    .line 494
    .line 495
    if-gtz v0, :cond_1e

    .line 496
    .line 497
    iget-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 498
    .line 499
    sub-long/2addr v7, v4

    .line 500
    const-wide/16 v16, 0x1

    .line 501
    .line 502
    add-long v7, v7, v16

    .line 503
    .line 504
    add-long/2addr v7, v14

    .line 505
    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 506
    .line 507
    :cond_1e
    iput-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 508
    .line 509
    iput-wide v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 510
    .line 511
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 512
    .line 513
    :cond_1f
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(Landroidx/media3/decoder/DecoderInputBuffer;)I

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    iget-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 521
    .line 522
    add-long/2addr v4, v14

    .line 523
    move v0, v6

    .line 524
    move-wide v6, v4

    .line 525
    iget v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 526
    .line 527
    if-eqz v0, :cond_20

    .line 528
    .line 529
    iget-object v5, v10, Landroidx/media3/decoder/DecoderInputBuffer;->l:Landroidx/media3/decoder/CryptoInfo;

    .line 530
    .line 531
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(ILandroidx/media3/decoder/CryptoInfo;JI)V

    .line 532
    .line 533
    .line 534
    goto :goto_6

    .line 535
    :cond_20
    move-wide/from16 v18, v6

    .line 536
    .line 537
    move v6, v8

    .line 538
    move-wide/from16 v7, v18

    .line 539
    .line 540
    iget-object v0, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    invoke-interface/range {v3 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(IIIJ)V

    .line 550
    .line 551
    .line 552
    :goto_6
    iput v12, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 553
    .line 554
    iput-object v11, v10, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 555
    .line 556
    iput-boolean v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 557
    .line 558
    iput v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 559
    .line 560
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 561
    .line 562
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->c:I

    .line 563
    .line 564
    add-int/2addr v1, v13

    .line 565
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->c:I

    .line 566
    .line 567
    return v13

    .line 568
    :catch_0
    move-exception v0

    .line 569
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0(Ljava/lang/Exception;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(I)Z

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V

    .line 576
    .line 577
    .line 578
    return v13

    .line 579
    :cond_21
    :goto_7
    return v2
.end method

.method public final N()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final O()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 33
    .line 34
    :cond_3
    :goto_0
    return v1
.end method

.method public final P(Z)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Lk8;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S(Lk8;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S(Lk8;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Drm session requires secure decoder for "

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", but no secure decoder available. Trying to proceed with "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "."

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "MediaCodecRenderer"

    .line 61
    .line 62
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object p0

    .line 66
    :cond_1
    return-object v2
.end method

.method public Q(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract R(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
.end method

.method public abstract S(Lk8;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
.end method

.method public T(JJZ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->g(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final U()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 17
    .line 18
    return-object p0
.end method

.method public abstract W(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.end method

.method public final X()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final Y()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->b:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public abstract Z(Landroidx/media3/decoder/DecoderInputBuffer;)V
.end method

.method public final a0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 12

    .line 1
    const-string v0, "createCodec:"

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v7, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:F

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2, v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    cmpg-float v3, v2, v3

    .line 25
    .line 26
    if-gtz v3, :cond_0

    .line 27
    .line 28
    const/high16 v2, -0x40800000    # -1.0f

    .line 29
    .line 30
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v6, 0x1f

    .line 46
    .line 47
    if-lt v5, v6, :cond_1

    .line 48
    .line 49
    iget-object v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->o:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Landroidx/media3/exoplayer/analytics/PlayerId;->a()Landroid/media/metrics/LogSessionId;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {}, Ldb;->e()Landroid/media/metrics/LogSessionId;

    .line 59
    .line 60
    .line 61
    invoke-static {v8}, Ldb;->v(Landroid/media/metrics/LogSessionId;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-nez v9, :cond_1

    .line 66
    .line 67
    iget-object v9, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->b:Landroid/media/MediaFormat;

    .line 68
    .line 69
    const-string v10, "log-session-id"

    .line 70
    .line 71
    invoke-static {v8}, Lo6;->q(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 94
    .line 95
    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 100
    .line 101
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-wide v8, v3

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {p1, p2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->e(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_2

    .line 132
    .line 133
    invoke-static {v1}, Landroidx/media3/common/Format;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 138
    .line 139
    const-string v0, ", "

    .line 140
    .line 141
    const-string v10, "]"

    .line 142
    .line 143
    const-string v11, "Format exceeds selected codec\'s capabilities ["

    .line 144
    .line 145
    invoke-static {v11, p2, v0, v7, v10}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v0, "MediaCodecRenderer"

    .line 150
    .line 151
    invoke-static {v0, p2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:F

    .line 155
    .line 156
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 157
    .line 158
    sget-object p2, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 159
    .line 160
    const/16 p2, 0x1d

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x1

    .line 164
    if-ne v5, p2, :cond_3

    .line 165
    .line 166
    const-string v2, "c2.android.aac.decoder"

    .line 167
    .line 168
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_0

    .line 176
    :cond_3
    move v2, v0

    .line 177
    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:Z

    .line 178
    .line 179
    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 180
    .line 181
    if-gt v5, p2, :cond_4

    .line 182
    .line 183
    const-string p2, "OMX.broadcom.video_decoder.tunnel"

    .line 184
    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-nez p2, :cond_5

    .line 190
    .line 191
    const-string p2, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 192
    .line 193
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_5

    .line 198
    .line 199
    const-string p2, "OMX.bcm.vdec.avc.tunnel"

    .line 200
    .line 201
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_5

    .line 206
    .line 207
    const-string p2, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 208
    .line 209
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_5

    .line 214
    .line 215
    const-string p2, "OMX.bcm.vdec.hevc.tunnel"

    .line 216
    .line 217
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_5

    .line 222
    .line 223
    const-string p2, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 224
    .line 225
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-nez p2, :cond_5

    .line 230
    .line 231
    :cond_4
    const-string p2, "Amazon"

    .line 232
    .line 233
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-eqz p2, :cond_6

    .line 240
    .line 241
    const-string p2, "AFTS"

    .line 242
    .line 243
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_6

    .line 250
    .line 251
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f:Z

    .line 252
    .line 253
    if-eqz p1, :cond_6

    .line 254
    .line 255
    :cond_5
    move v0, v1

    .line 256
    :cond_6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 257
    .line 258
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iget p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 264
    .line 265
    const/4 p2, 0x2

    .line 266
    if-ne p1, p2, :cond_7

    .line 267
    .line 268
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 274
    .line 275
    .line 276
    move-result-wide p1

    .line 277
    const-wide/16 v10, 0x3e8

    .line 278
    .line 279
    add-long/2addr p1, v10

    .line 280
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:J

    .line 281
    .line 282
    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 283
    .line 284
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->a:I

    .line 285
    .line 286
    add-int/2addr p2, v1

    .line 287
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->a:I

    .line 288
    .line 289
    sub-long p1, v3, v8

    .line 290
    .line 291
    if-lt v5, v6, :cond_8

    .line 292
    .line 293
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_8

    .line 300
    .line 301
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    new-instance v1, Ljava/util/ArrayList;

    .line 307
    .line 308
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 309
    .line 310
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->r(Ljava/util/ArrayList;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    move-object v2, p0

    .line 317
    move-wide v5, p1

    .line 318
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0(JJLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :catchall_0
    move-exception v0

    .line 323
    move-object p0, v0

    .line 324
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 325
    .line 326
    .line 327
    throw p0
.end method

.method public final b0(JJ)Z
    .locals 1

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O:Landroidx/media3/common/Format;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "audio/opus"

    .line 12
    .line 13
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sub-long/2addr p1, p3

    .line 20
    const-wide/32 p3, 0x13880

    .line 21
    .line 22
    .line 23
    cmp-long p0, p1, p3

    .line 24
    .line 25
    if-gtz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final c0()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 6
    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(Landroidx/media3/common/Format;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 32
    .line 33
    .line 34
    const-string v0, "audio/mp4a-latm"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "audio/mpeg"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    const-string v0, "audio/opus"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iput v4, v2, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->s:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/16 v0, 0x20

    .line 70
    .line 71
    iput v0, v2, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->s:I

    .line 72
    .line 73
    :goto_0
    iput-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x4

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v2, v3

    .line 94
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget-object v7, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 103
    .line 104
    sget-boolean v7, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->a:Z

    .line 105
    .line 106
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->f()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 113
    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/4 v7, 0x3

    .line 121
    if-eq v2, v7, :cond_5

    .line 122
    .line 123
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 124
    .line 125
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-ne v2, v6, :cond_6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_0
    move-exception v1

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->e(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    move v4, v3

    .line 147
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 148
    .line 149
    invoke-virtual {p0, v1, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0(Landroid/media/MediaCrypto;Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 153
    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 157
    .line 158
    if-nez v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 161
    .line 162
    .line 163
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 164
    .line 165
    return-void

    .line 166
    :goto_4
    const/16 v2, 0xfa1

    .line 167
    .line 168
    invoke-virtual {p0, v1, v0, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    throw p0

    .line 173
    :cond_8
    :goto_5
    return-void
.end method

.method public d(JJ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 12
    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const-string v2, "bypassRender"

    .line 50
    .line 51
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 67
    .line 68
    if-eqz v2, :cond_b

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    const-string v4, "drainAndFeed"

    .line 80
    .line 81
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L(JJ)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    iget-wide v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:J

    .line 96
    .line 97
    cmp-long v4, v7, v5

    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    sub-long/2addr v9, v2

    .line 111
    cmp-long v4, v9, v7

    .line 112
    .line 113
    if-gez v4, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    move v4, v1

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    :goto_2
    move v4, v0

    .line 119
    :goto_3
    if-eqz v4, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T:J

    .line 129
    .line 130
    cmp-long p3, p1, v5

    .line 131
    .line 132
    if-eqz p3, :cond_9

    .line 133
    .line 134
    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    .line 141
    .line 142
    move-result-wide p3

    .line 143
    sub-long/2addr p3, v2

    .line 144
    cmp-long p1, p3, p1

    .line 145
    .line 146
    if-gez p1, :cond_8

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    move p1, v1

    .line 150
    goto :goto_6

    .line 151
    :cond_9
    :goto_5
    move p1, v0

    .line 152
    :goto_6
    if-eqz p1, :cond_a

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_b
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 160
    .line 161
    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 162
    .line 163
    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 169
    .line 170
    sub-long/2addr p1, v3

    .line 171
    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->d(J)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    add-int/2addr p4, p1

    .line 176
    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->d:I

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(I)Z

    .line 179
    .line 180
    .line 181
    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 182
    .line 183
    monitor-enter p1

    .line 184
    monitor-exit p1
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 186
    :goto_8
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 187
    .line 188
    if-eqz p2, :cond_c

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    array-length p4, p3

    .line 196
    if-lez p4, :cond_10

    .line 197
    .line 198
    aget-object p3, p3, v1

    .line 199
    .line 200
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    const-string p4, "android.media.MediaCodec"

    .line 205
    .line 206
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    if-eqz p3, :cond_10

    .line 211
    .line 212
    :goto_9
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0(Ljava/lang/Exception;)V

    .line 213
    .line 214
    .line 215
    if-eqz p2, :cond_d

    .line 216
    .line 217
    move-object p2, p1

    .line 218
    check-cast p2, Landroid/media/MediaCodec$CodecException;

    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_d

    .line 225
    .line 226
    move v1, v0

    .line 227
    :cond_d
    if-eqz v1, :cond_e

    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 230
    .line 231
    .line 232
    :cond_e
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 233
    .line 234
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget p2, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->j:I

    .line 239
    .line 240
    const/16 p3, 0x44d

    .line 241
    .line 242
    if-ne p2, p3, :cond_f

    .line 243
    .line 244
    const/16 p2, 0xfa6

    .line 245
    .line 246
    goto :goto_a

    .line 247
    :cond_f
    const/16 p2, 0xfa3

    .line 248
    .line 249
    :goto_a
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 250
    .line 251
    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    throw p0

    .line 256
    :cond_10
    throw p1

    .line 257
    :goto_b
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 260
    .line 261
    .line 262
    move-result p3

    .line 263
    invoke-static {p3}, Landroidx/media3/common/util/Util;->p(I)I

    .line 264
    .line 265
    .line 266
    move-result p3

    .line 267
    invoke-virtual {p0, p1, p2, v1, p3}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    throw p0

    .line 272
    :cond_11
    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 274
    .line 275
    throw v0
.end method

.method public final d0(Landroid/media/MediaCrypto;Z)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    iget-object v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 6
    .line 7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P(Z)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iput-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 53
    .line 54
    const v2, -0xc34e

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v9, v0, v6, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;ZI)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_1
    :goto_2
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_8

    .line 68
    .line 69
    iget-object v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 70
    .line 71
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :goto_3
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 75
    .line 76
    if-nez v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v7, v0

    .line 83
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0(Landroidx/media3/common/Format;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_2
    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    :goto_4
    return-void

    .line 102
    :cond_3
    move-object/from16 v12, p1

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v1, v7, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object v4, v0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "Failed to initialize decoder: "

    .line 113
    .line 114
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v2, "MediaCodecRenderer"

    .line 125
    .line 126
    invoke-static {v2, v0, v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "Decoder init failed: "

    .line 137
    .line 138
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, ", "

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget-object v5, v9, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 159
    .line 160
    instance-of v0, v4, Landroid/media/MediaCodec$CodecException;

    .line 161
    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    move-object v0, v4

    .line 165
    check-cast v0, Landroid/media/MediaCodec$CodecException;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    move-object v8, v0

    .line 172
    goto :goto_5

    .line 173
    :cond_4
    move-object v8, v10

    .line 174
    :goto_5
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0(Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 181
    .line 182
    if-nez v0, :cond_5

    .line 183
    .line 184
    iput-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_5
    new-instance v13, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->j:Ljava/lang/String;

    .line 198
    .line 199
    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->k:Z

    .line 200
    .line 201
    iget-object v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->l:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 202
    .line 203
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->m:Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 v19, v0

    .line 206
    .line 207
    move-object/from16 v16, v2

    .line 208
    .line 209
    move/from16 v17, v3

    .line 210
    .line 211
    move-object/from16 v18, v4

    .line 212
    .line 213
    invoke-direct/range {v13 .. v19}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iput-object v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 217
    .line 218
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_6

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_6
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    iput-object v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 230
    .line 231
    return-void

    .line 232
    :cond_8
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 233
    .line 234
    const v1, -0xc34f

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v9, v10, v6, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;ZI)V

    .line 238
    .line 239
    .line 240
    throw v0
.end method

.method public e0(Landroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final f(Landroidx/media3/common/Format;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E:Lk8;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0(Lk8;Landroidx/media3/common/Format;)I

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/16 v1, 0xfa2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public abstract f0(Ljava/lang/Exception;)V
.end method

.method public final g(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T(JJZ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public abstract g0(JJLjava/lang/String;)V
.end method

.method public abstract h0(Landroidx/media3/exoplayer/CodecParameters;)V
.end method

.method public abstract i0(Ljava/lang/String;)V
.end method

.method public j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1d

    .line 13
    .line 14
    const-string v4, "video/av01"

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v5, :cond_5

    .line 22
    .line 23
    const-string v5, "video/x-vnd.on2.vp9"

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_5

    .line 30
    .line 31
    const-string v5, "video/dolby-vision"

    .line 32
    .line 33
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_6

    .line 38
    .line 39
    sget-object v7, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    :goto_0
    move-object v2, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {v1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->b(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/16 v5, 0x10

    .line 65
    .line 66
    if-eq v2, v5, :cond_4

    .line 67
    .line 68
    const/16 v5, 0x20

    .line 69
    .line 70
    if-eq v2, v5, :cond_4

    .line 71
    .line 72
    const/16 v5, 0x100

    .line 73
    .line 74
    if-eq v2, v5, :cond_4

    .line 75
    .line 76
    const/16 v5, 0x200

    .line 77
    .line 78
    if-eq v2, v5, :cond_3

    .line 79
    .line 80
    const/16 v5, 0x400

    .line 81
    .line 82
    if-eq v2, v5, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object v2, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const-string v2, "video/avc"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const-string v2, "video/hevc"

    .line 91
    .line 92
    :goto_1
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    :cond_5
    iget-object v2, v1, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v6, v1, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 111
    .line 112
    new-instance v2, Landroidx/media3/common/Format;

    .line 113
    .line 114
    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 115
    .line 116
    .line 117
    move-object v10, v2

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    move-object v10, v1

    .line 120
    :goto_2
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 123
    .line 124
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 125
    .line 126
    iput-object v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 127
    .line 128
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 133
    .line 134
    return-object v6

    .line 135
    :cond_7
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 136
    .line 137
    if-nez p1, :cond_8

    .line 138
    .line 139
    iput-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 142
    .line 143
    .line 144
    return-object v6

    .line 145
    :cond_8
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iget-object v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 156
    .line 157
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 158
    .line 159
    const/4 v5, 0x3

    .line 160
    if-ne v2, v4, :cond_9

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    if-eqz v4, :cond_1b

    .line 164
    .line 165
    if-nez v2, :cond_a

    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_a
    invoke-interface {v4}, Landroidx/media3/exoplayer/drm/DrmSession;->g()Landroidx/media3/decoder/CryptoConfig;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    if-nez v7, :cond_b

    .line 174
    .line 175
    goto/16 :goto_8

    .line 176
    .line 177
    :cond_b
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->g()Landroidx/media3/decoder/CryptoConfig;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    if-eqz v8, :cond_1b

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-nez v8, :cond_c

    .line 196
    .line 197
    goto/16 :goto_8

    .line 198
    .line 199
    :cond_c
    instance-of v7, v7, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 200
    .line 201
    if-nez v7, :cond_d

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_d
    invoke-interface {v4}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Ljava/util/UUID;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Ljava/util/UUID;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_e

    .line 217
    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_e
    sget-object v7, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    .line 221
    .line 222
    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Ljava/util/UUID;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_1b

    .line 231
    .line 232
    invoke-interface {v4}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Ljava/util/UUID;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v7, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_f

    .line 241
    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :cond_f
    :goto_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 245
    .line 246
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 247
    .line 248
    if-eq v2, v4, :cond_10

    .line 249
    .line 250
    move v2, v0

    .line 251
    goto :goto_4

    .line 252
    :cond_10
    move v2, v3

    .line 253
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->g:Z

    .line 258
    .line 259
    invoke-virtual {p0, v1, v9, v10, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    iget v7, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->d:I

    .line 264
    .line 265
    if-eqz v7, :cond_16

    .line 266
    .line 267
    const/4 v8, 0x2

    .line 268
    if-eq v7, v0, :cond_13

    .line 269
    .line 270
    if-eq v7, v8, :cond_12

    .line 271
    .line 272
    if-ne v7, v5, :cond_11

    .line 273
    .line 274
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 275
    .line 276
    .line 277
    iput-object v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 278
    .line 279
    if-eqz v2, :cond_18

    .line 280
    .line 281
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_18

    .line 286
    .line 287
    :goto_5
    move v12, v8

    .line 288
    goto :goto_7

    .line 289
    :cond_11
    invoke-static {}, Lio/sentry/d;->d()V

    .line 290
    .line 291
    .line 292
    return-object v6

    .line 293
    :cond_12
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 294
    .line 295
    .line 296
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 297
    .line 298
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 299
    .line 300
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Z

    .line 301
    .line 302
    iput-object v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 303
    .line 304
    if-eqz v2, :cond_18

    .line 305
    .line 306
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_18

    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_13
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 314
    .line 315
    .line 316
    iput-object v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 317
    .line 318
    if-eqz v2, :cond_14

    .line 319
    .line 320
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_18

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_14
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 328
    .line 329
    if-eqz v2, :cond_18

    .line 330
    .line 331
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 332
    .line 333
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_15

    .line 338
    .line 339
    iput v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_15
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_16
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 346
    .line 347
    if-eqz v2, :cond_17

    .line 348
    .line 349
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 350
    .line 351
    iput v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 358
    .line 359
    .line 360
    :cond_18
    :goto_6
    move v12, v3

    .line 361
    :goto_7
    if-eqz v7, :cond_1a

    .line 362
    .line 363
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 364
    .line 365
    if-ne v0, p1, :cond_19

    .line 366
    .line 367
    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 368
    .line 369
    if-ne p0, v5, :cond_1a

    .line 370
    .line 371
    :cond_19
    new-instance v7, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 372
    .line 373
    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 374
    .line 375
    const/4 v11, 0x0

    .line 376
    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 377
    .line 378
    .line 379
    return-object v7

    .line 380
    :cond_1a
    return-object v4

    .line 381
    :cond_1b
    :goto_8
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 382
    .line 383
    if-eqz p1, :cond_1c

    .line 384
    .line 385
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 386
    .line 387
    iput v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_1c
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 394
    .line 395
    .line 396
    :goto_9
    new-instance v7, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 397
    .line 398
    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 399
    .line 400
    const/4 v11, 0x0

    .line 401
    const/16 v12, 0x80

    .line 402
    .line 403
    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 404
    .line 405
    .line 406
    return-object v7

    .line 407
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 408
    .line 409
    const-string v0, "Sample MIME type is null."

    .line 410
    .line 411
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const/16 v0, 0xfa5

    .line 415
    .line 416
    invoke-virtual {p0, p1, v1, v3, v0}, Landroidx/media3/exoplayer/BaseRenderer;->r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    throw p0
.end method

.method public abstract k0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
.end method

.method public l(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V:F

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0(Landroidx/media3/common/Format;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public m0(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 22
    .line 23
    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->a:J

    .line 24
    .line 25
    cmp-long v1, p1, v1

    .line 26
    .line 27
    if-ltz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final n()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public abstract n0()V
.end method

.method public o(ILjava/lang/Object;)V
    .locals 4

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-eq p1, v0, :cond_f

    .line 4
    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    if-eq p1, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    if-lt p1, v1, :cond_e

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p2, Lcom/google/common/collect/ImmutableSet;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x1f

    .line 37
    .line 38
    if-lt p1, v0, :cond_5

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->i()Lcom/google/common/collect/UnmodifiableIterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->s(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->r(Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0:Lcom/google/common/collect/ImmutableSet;

    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    if-lt p1, v1, :cond_e

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast p2, Landroidx/media3/exoplayer/CodecParameters;

    .line 121
    .line 122
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0:Landroidx/media3/exoplayer/CodecParameters;

    .line 123
    .line 124
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 125
    .line 126
    if-eqz p0, :cond_e

    .line 127
    .line 128
    new-instance p1, Landroid/os/Bundle;

    .line 129
    .line 130
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object p2, p2, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_8
    instance-of v2, v0, Ljava/lang/Integer;

    .line 169
    .line 170
    if-eqz v2, :cond_9

    .line 171
    .line 172
    check-cast v0, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    instance-of v2, v0, Ljava/lang/Long;

    .line 183
    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Long;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 189
    .line 190
    .line 191
    move-result-wide v2

    .line 192
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    instance-of v2, v0, Ljava/lang/Float;

    .line 197
    .line 198
    if-eqz v2, :cond_b

    .line 199
    .line 200
    check-cast v0, Ljava/lang/Float;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_b
    instance-of v2, v0, Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v2, :cond_c

    .line 213
    .line 214
    check-cast v0, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_c
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    if-eqz v2, :cond_7

    .line 223
    .line 224
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    new-array v2, v2, [B

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_d
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(Landroid/os/Bundle;)V

    .line 244
    .line 245
    .line 246
    :cond_e
    :goto_2
    return-void

    .line 247
    :cond_f
    check-cast p2, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 253
    .line 254
    return-void
.end method

.method public o0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p0()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public abstract q0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
.end method

.method public final r0(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    or-int/2addr p1, v2

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v3, -0x5

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne p1, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 22
    .line 23
    .line 24
    return v4

    .line 25
    :cond_0
    const/4 v0, -0x4

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iput-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0()V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final s0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0:Landroidx/media3/exoplayer/DecoderCounters;

    .line 10
    .line 11
    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 31
    .line 32
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 61
    .line 62
    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_2
    move-exception v1

    .line 71
    goto :goto_5

    .line 72
    :cond_2
    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S:Landroid/media/MediaCrypto;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0()V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N:Landroidx/media3/common/Format;

    .line 3
    .line 4
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->i:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O()Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public abstract t0()V
.end method

.method public final u0()V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 7
    .line 8
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-wide v0, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0:Z

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->f()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0:Z

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->c:I

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->b:I

    .line 46
    .line 47
    return-void
.end method

.method public v(JZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    if-nez p4, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0:Z

    .line 29
    .line 30
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0:Z

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 48
    .line 49
    iget-object p2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-lez p2, :cond_4

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0:Z

    .line 59
    .line 60
    :cond_4
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 61
    .line 62
    iget-object p2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/media3/common/util/TimedValueQueue;->b()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 68
    .line 69
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->g:Z

    .line 70
    .line 71
    return-void
.end method

.method public v0()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->m:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0:I

    .line 10
    .line 11
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0:J

    .line 19
    .line 20
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0:J

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-wide v0, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->h:J

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0:J

    .line 29
    .line 30
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0:J

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0:Z

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0:J

    .line 36
    .line 37
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0:Z

    .line 42
    .line 43
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0:I

    .line 44
    .line 45
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0:I

    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 48
    .line 49
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 50
    .line 51
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0:Z

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0:J

    .line 56
    .line 57
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X:Landroidx/media3/common/Format;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y:Landroid/media/MediaFormat;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0:Z

    .line 19
    .line 20
    const/high16 v1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0:F

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0:Z

    .line 31
    .line 32
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0:I

    .line 33
    .line 34
    return-void
.end method

.method public final x0(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->a(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 10
    .line 11
    .line 12
    :cond_1
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 15
    .line 16
    .line 17
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 18
    .line 19
    return-void
.end method

.method public final y0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->c:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public z0(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
