.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;
    }
.end annotation


# static fields
.field public static final d0:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:Z

.field public F:Z

.field public G:J

.field public H:J

.field public I:F

.field public J:Ljava/nio/ByteBuffer;

.field public K:I

.field public L:Ljava/nio/ByteBuffer;

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:Z

.field public T:Landroidx/media3/common/AuxEffectInfo;

.field public U:Landroid/media/AudioDeviceInfo;

.field public V:I

.field public W:Z

.field public X:J

.field public Y:Z

.field public Z:Z

.field public final a:Landroid/content/Context;

.field public a0:J

.field public final b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

.field public b0:J

.field public final c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field public c0:Landroid/os/Handler;

.field public final d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

.field public final e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

.field public final f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

.field public final g:Lcom/google/common/collect/ImmutableList;

.field public final h:Ljava/util/ArrayDeque;

.field public i:I

.field public j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

.field public final k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

.field public final l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

.field public m:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

.field public o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public q:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

.field public s:Lh7;

.field public t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

.field public u:Landroidx/media3/common/AudioAttributes;

.field public v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public x:Landroidx/media3/common/PlaybackParameters;

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->a:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v1, Landroidx/media3/common/AudioAttributes;->b:Landroidx/media3/common/AudioAttributes;

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->f:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 30
    .line 31
    new-instance p1, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 37
    .line 38
    new-instance v2, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 39
    .line 40
    invoke-direct {v2}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v3, Landroidx/media3/common/util/Util;->b:[B

    .line 44
    .line 45
    iput-object v3, v2, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    .line 46
    .line 47
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 48
    .line 49
    new-instance v3, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    .line 50
    .line 51
    invoke-direct {v3}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    .line 55
    .line 56
    new-instance v3, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    .line 57
    .line 58
    invoke-direct {v3}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    .line 62
    .line 63
    invoke-static {v2, p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    .line 68
    .line 69
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:F

    .line 72
    .line 73
    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 74
    .line 75
    new-instance p1, Landroidx/media3/common/AuxEffectInfo;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroidx/media3/common/AuxEffectInfo;

    .line 81
    .line 82
    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 83
    .line 84
    sget-object v3, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 85
    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    const-wide/16 v6, 0x0

    .line 89
    .line 90
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 94
    .line 95
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 96
    .line 97
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    .line 98
    .line 99
    new-instance p1, Ljava/util/ArrayDeque;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    .line 105
    .line 106
    new-instance p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 107
    .line 108
    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 112
    .line 113
    new-instance p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 114
    .line 115
    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 119
    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v1, 0x22

    .line 123
    .line 124
    const/4 v2, -0x1

    .line 125
    if-lt p1, v1, :cond_2

    .line 126
    .line 127
    if-nez v0, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v0}, Ld1;->a(Landroid/content/Context;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    if-eq p1, v2, :cond_2

    .line 137
    .line 138
    move v2, p1

    .line 139
    :cond_2
    :goto_1
    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:I

    .line 140
    .line 141
    return-void
.end method

.method public static i(ILjava/nio/ByteBuffer;)I
    .locals 10

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eq p0, v0, :cond_19

    .line 8
    .line 9
    const/16 v0, 0x1e

    .line 10
    .line 11
    const/4 v5, -0x2

    .line 12
    const/4 v6, -0x1

    .line 13
    if-eq p0, v0, :cond_12

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    packed-switch p0, :pswitch_data_1

    .line 24
    .line 25
    .line 26
    const-string p1, "Unexpected audio encoding: "

    .line 27
    .line 28
    invoke-static {p0, p1}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v3

    .line 36
    :pswitch_0
    new-array p0, v1, [B

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    .line 49
    .line 50
    invoke-direct {p1, v1, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Landroidx/media3/extractor/Ac4Util;->c(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget p0, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->c:I

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_1
    const/16 p0, 0x200

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-int/2addr v0, v7

    .line 72
    move v2, p0

    .line 73
    :goto_0
    if-gt v2, v0, :cond_2

    .line 74
    .line 75
    add-int/lit8 v7, v2, 0x4

    .line 76
    .line 77
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    if-ne v8, v9, :cond_0

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    :goto_1
    and-int/2addr v7, v5

    .line 97
    const v8, -0x78d9046

    .line 98
    .line 99
    .line 100
    if-ne v7, v8, :cond_1

    .line 101
    .line 102
    sub-int/2addr v2, p0

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    move v2, v6

    .line 108
    :goto_2
    if-ne v2, v6, :cond_3

    .line 109
    .line 110
    return v3

    .line 111
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    add-int/2addr p0, v2

    .line 116
    add-int/lit8 p0, p0, 0x7

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    and-int/lit16 p0, p0, 0xff

    .line 123
    .line 124
    const/16 v0, 0xbb

    .line 125
    .line 126
    if-ne p0, v0, :cond_4

    .line 127
    .line 128
    move v3, v4

    .line 129
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    add-int/2addr p0, v2

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    const/16 v0, 0x9

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    const/16 v0, 0x8

    .line 140
    .line 141
    :goto_3
    add-int/2addr p0, v0

    .line 142
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    shr-int/lit8 p0, p0, 0x4

    .line 147
    .line 148
    and-int/lit8 p0, p0, 0x7

    .line 149
    .line 150
    const/16 p1, 0x28

    .line 151
    .line 152
    shl-int p0, p1, p0

    .line 153
    .line 154
    mul-int/2addr p0, v1

    .line 155
    return p0

    .line 156
    :pswitch_3
    const/16 p0, 0x800

    .line 157
    .line 158
    return p0

    .line 159
    :pswitch_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 174
    .line 175
    if-ne p1, v2, :cond_6

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    :goto_4
    const/high16 p1, -0x200000

    .line 183
    .line 184
    and-int v2, p0, p1

    .line 185
    .line 186
    if-ne v2, p1, :cond_7

    .line 187
    .line 188
    ushr-int/lit8 p1, p0, 0x13

    .line 189
    .line 190
    and-int/2addr p1, v0

    .line 191
    if-ne p1, v4, :cond_8

    .line 192
    .line 193
    :cond_7
    :goto_5
    move p0, v6

    .line 194
    goto :goto_6

    .line 195
    :cond_8
    ushr-int/lit8 v2, p0, 0x11

    .line 196
    .line 197
    and-int/2addr v2, v0

    .line 198
    if-nez v2, :cond_9

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_9
    ushr-int/lit8 v5, p0, 0xc

    .line 202
    .line 203
    const/16 v8, 0xf

    .line 204
    .line 205
    and-int/2addr v5, v8

    .line 206
    ushr-int/2addr p0, v7

    .line 207
    and-int/2addr p0, v0

    .line 208
    if-eqz v5, :cond_7

    .line 209
    .line 210
    if-eq v5, v8, :cond_7

    .line 211
    .line 212
    if-ne p0, v0, :cond_a

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_a
    const/16 p0, 0x480

    .line 216
    .line 217
    if-eq v2, v4, :cond_c

    .line 218
    .line 219
    if-eq v2, v1, :cond_e

    .line 220
    .line 221
    if-ne v2, v0, :cond_b

    .line 222
    .line 223
    const/16 p0, 0x180

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_b
    invoke-static {}, Lfe;->h()V

    .line 227
    .line 228
    .line 229
    return v3

    .line 230
    :cond_c
    if-ne p1, v0, :cond_d

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_d
    const/16 p0, 0x240

    .line 234
    .line 235
    :cond_e
    :goto_6
    if-eq p0, v6, :cond_f

    .line 236
    .line 237
    return p0

    .line 238
    :cond_f
    invoke-static {}, Lfe;->h()V

    .line 239
    .line 240
    .line 241
    return v3

    .line 242
    :pswitch_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    add-int/2addr p0, v2

    .line 247
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    and-int/lit16 p0, p0, 0xf8

    .line 252
    .line 253
    shr-int/2addr p0, v0

    .line 254
    if-le p0, v7, :cond_11

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    add-int/lit8 p0, p0, 0x4

    .line 261
    .line 262
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    and-int/lit16 p0, p0, 0xc0

    .line 267
    .line 268
    shr-int/lit8 p0, p0, 0x6

    .line 269
    .line 270
    if-ne p0, v0, :cond_10

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_10
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    add-int/lit8 p0, p0, 0x4

    .line 278
    .line 279
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    and-int/lit8 p0, p0, 0x30

    .line 284
    .line 285
    shr-int/lit8 v0, p0, 0x4

    .line 286
    .line 287
    :goto_7
    sget-object p0, Landroidx/media3/extractor/Ac3Util;->a:[I

    .line 288
    .line 289
    aget p0, p0, v0

    .line 290
    .line 291
    mul-int/lit16 p0, p0, 0x100

    .line 292
    .line 293
    return p0

    .line 294
    :cond_11
    const/16 p0, 0x600

    .line 295
    .line 296
    return p0

    .line 297
    :cond_12
    :pswitch_6
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    const v0, -0xde4bec0

    .line 302
    .line 303
    .line 304
    if-eq p0, v0, :cond_18

    .line 305
    .line 306
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    const v0, -0x17bd3b8f

    .line 311
    .line 312
    .line 313
    if-ne p0, v0, :cond_13

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_13
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    const v0, 0x25205864

    .line 321
    .line 322
    .line 323
    if-ne p0, v0, :cond_14

    .line 324
    .line 325
    const/16 p0, 0x1000

    .line 326
    .line 327
    return p0

    .line 328
    :cond_14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eq v0, v5, :cond_17

    .line 337
    .line 338
    if-eq v0, v6, :cond_16

    .line 339
    .line 340
    const/16 v3, 0x1f

    .line 341
    .line 342
    if-eq v0, v3, :cond_15

    .line 343
    .line 344
    add-int/lit8 v0, p0, 0x4

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    and-int/2addr v0, v4

    .line 351
    shl-int/lit8 v0, v0, 0x6

    .line 352
    .line 353
    add-int/2addr p0, v2

    .line 354
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    :goto_8
    and-int/lit16 p0, p0, 0xfc

    .line 359
    .line 360
    :goto_9
    shr-int/2addr p0, v1

    .line 361
    or-int/2addr p0, v0

    .line 362
    goto :goto_b

    .line 363
    :cond_15
    add-int/lit8 v0, p0, 0x5

    .line 364
    .line 365
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    and-int/lit8 v0, v0, 0x7

    .line 370
    .line 371
    shl-int/lit8 v0, v0, 0x4

    .line 372
    .line 373
    add-int/lit8 p0, p0, 0x6

    .line 374
    .line 375
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    :goto_a
    and-int/lit8 p0, p0, 0x3c

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_16
    add-int/lit8 v0, p0, 0x4

    .line 383
    .line 384
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    and-int/lit8 v0, v0, 0x7

    .line 389
    .line 390
    shl-int/lit8 v0, v0, 0x4

    .line 391
    .line 392
    add-int/lit8 p0, p0, 0x7

    .line 393
    .line 394
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    goto :goto_a

    .line 399
    :cond_17
    add-int/lit8 v0, p0, 0x5

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    and-int/2addr v0, v4

    .line 406
    shl-int/lit8 v0, v0, 0x6

    .line 407
    .line 408
    add-int/lit8 p0, p0, 0x4

    .line 409
    .line 410
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 411
    .line 412
    .line 413
    move-result p0

    .line 414
    goto :goto_8

    .line 415
    :goto_b
    add-int/2addr p0, v4

    .line 416
    mul-int/lit8 p0, p0, 0x20

    .line 417
    .line 418
    return p0

    .line 419
    :cond_18
    :goto_c
    :pswitch_7
    const/16 p0, 0x400

    .line 420
    .line 421
    return p0

    .line 422
    :cond_19
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    and-int/2addr p0, v1

    .line 427
    if-nez p0, :cond_1a

    .line 428
    .line 429
    move v2, v3

    .line 430
    goto :goto_f

    .line 431
    :cond_1a
    const/16 p0, 0x1a

    .line 432
    .line 433
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    const/16 v0, 0x1c

    .line 438
    .line 439
    move v2, v0

    .line 440
    move v1, v3

    .line 441
    :goto_d
    if-ge v1, p0, :cond_1b

    .line 442
    .line 443
    add-int/lit8 v5, v1, 0x1b

    .line 444
    .line 445
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    add-int/2addr v2, v5

    .line 450
    add-int/lit8 v1, v1, 0x1

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_1b
    add-int/lit8 p0, v2, 0x1a

    .line 454
    .line 455
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 456
    .line 457
    .line 458
    move-result p0

    .line 459
    move v1, v3

    .line 460
    :goto_e
    if-ge v1, p0, :cond_1c

    .line 461
    .line 462
    add-int/lit8 v5, v2, 0x1b

    .line 463
    .line 464
    add-int/2addr v5, v1

    .line 465
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    add-int/2addr v0, v5

    .line 470
    add-int/lit8 v1, v1, 0x1

    .line 471
    .line 472
    goto :goto_e

    .line 473
    :cond_1c
    add-int/2addr v2, v0

    .line 474
    :goto_f
    add-int/lit8 p0, v2, 0x1a

    .line 475
    .line 476
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 477
    .line 478
    .line 479
    move-result p0

    .line 480
    add-int/lit8 p0, p0, 0x1b

    .line 481
    .line 482
    add-int/2addr p0, v2

    .line 483
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    sub-int/2addr v1, p0

    .line 492
    if-le v1, v4, :cond_1d

    .line 493
    .line 494
    add-int/2addr p0, v4

    .line 495
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    :cond_1d
    invoke-static {v0, v3}, Landroidx/media3/container/OpusUtil;->b(BB)J

    .line 500
    .line 501
    .line 502
    move-result-wide p0

    .line 503
    const-wide/32 v0, 0xbb80

    .line 504
    .line 505
    .line 506
    mul-long/2addr p0, v0

    .line 507
    const-wide/32 v0, 0xf4240

    .line 508
    .line 509
    .line 510
    div-long/2addr p0, v0

    .line 511
    long-to-int p0, p0

    .line 512
    return p0

    .line 513
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 25
    .line 26
    iget v0, v0, Landroidx/media3/common/Format;->M:I

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 29
    .line 30
    iget-object v3, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->c:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 31
    .line 32
    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    cmpl-float v6, v4, v5

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    if-lez v6, :cond_0

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v6, v1

    .line 46
    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 47
    .line 48
    .line 49
    iget v6, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    .line 50
    .line 51
    cmpl-float v6, v6, v4

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    .line 56
    .line 57
    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    .line 58
    .line 59
    :cond_1
    iget v4, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    .line 60
    .line 61
    cmpl-float v5, v4, v5

    .line 62
    .line 63
    if-lez v5, :cond_2

    .line 64
    .line 65
    move v5, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v5, v1

    .line 68
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 69
    .line 70
    .line 71
    iget v5, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    .line 72
    .line 73
    cmpl-float v5, v5, v4

    .line 74
    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    iput v4, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    .line 78
    .line 79
    iput-boolean v7, v3, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 83
    .line 84
    :cond_4
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 85
    .line 86
    :goto_3
    move-object v4, v0

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 92
    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 96
    .line 97
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 106
    .line 107
    iget v0, v0, Landroidx/media3/common/Format;->M:I

    .line 108
    .line 109
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    .line 110
    .line 111
    iget-object v0, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->b:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 112
    .line 113
    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->o:Z

    .line 114
    .line 115
    :cond_6
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    .line 116
    .line 117
    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 118
    .line 119
    const-wide/16 v0, 0x0

    .line 120
    .line 121
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 132
    .line 133
    iget v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 134
    .line 135
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v7

    .line 139
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v(J)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->y:Z

    .line 155
    .line 156
    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 159
    .line 160
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 161
    .line 162
    iget-object p2, p1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 163
    .line 164
    if-eqz p2, :cond_7

    .line 165
    .line 166
    new-instance v0, Lt3;

    .line 167
    .line 168
    invoke-direct {v0, p1, p0}, Lt3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    .line 173
    .line 174
    :cond_7
    return-void
.end method

.method public final b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :goto_0
    move-object v8, v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 15
    .line 16
    iget v2, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 17
    .line 18
    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    .line 19
    .line 20
    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 21
    .line 22
    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 25
    .line 26
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 27
    .line 28
    iget-boolean v7, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    .line 29
    .line 30
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/Format;ZLandroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    throw v1
.end method

.method public final c(Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Lh7;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lh7;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lh7;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s:Lh7;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Landroidx/media3/common/util/ListenerSet;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v2, v3}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/lang/Thread;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 37
    .line 38
    :cond_0
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->a:Landroidx/media3/common/Format;

    .line 44
    .line 45
    iget-object v0, v3, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 46
    .line 47
    iget v1, v3, Landroidx/media3/common/Format;->J:I

    .line 48
    .line 49
    iget v2, v3, Landroidx/media3/common/Format;->M:I

    .line 50
    .line 51
    const-string v4, "audio/raw"

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, -0x1

    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    invoke-static {v2}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Landroidx/media3/common/util/Util;->n(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    mul-int/2addr v0, v1

    .line 73
    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    .line 74
    .line 75
    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->f(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    .line 89
    .line 90
    iget-object v7, v7, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->a:[Landroidx/media3/common/audio/AudioProcessor;

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->h([Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v7, Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-direct {v7, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 102
    .line 103
    .line 104
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 105
    .line 106
    invoke-virtual {v7, v6}, Landroidx/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_2

    .line 111
    .line 112
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 113
    .line 114
    :cond_2
    iget v6, v3, Landroidx/media3/common/Format;->N:I

    .line 115
    .line 116
    iget v8, v3, Landroidx/media3/common/Format;->O:I

    .line 117
    .line 118
    iget-object v9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 119
    .line 120
    iput v6, v9, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->i:I

    .line 121
    .line 122
    iput v8, v9, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->j:I

    .line 123
    .line 124
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 125
    .line 126
    iget-object v8, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->b:Lcom/google/common/primitives/ImmutableIntArray;

    .line 127
    .line 128
    iput-object v8, v6, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->i:Lcom/google/common/primitives/ImmutableIntArray;

    .line 129
    .line 130
    new-instance v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 131
    .line 132
    iget v8, v3, Landroidx/media3/common/Format;->L:I

    .line 133
    .line 134
    invoke-direct {v6, v8, v1, v2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 135
    .line 136
    .line 137
    :try_start_0
    iget-object v2, v7, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    .line 138
    .line 139
    sget-object v8, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 140
    .line 141
    invoke-virtual {v6, v8}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-nez v8, :cond_6

    .line 146
    .line 147
    move v8, v4

    .line 148
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-ge v8, v9, :cond_4

    .line 153
    .line 154
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Landroidx/media3/common/audio/AudioProcessor;

    .line 159
    .line 160
    invoke-interface {v9, v6}, Landroidx/media3/common/audio/AudioProcessor;->m(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-interface {v9}, Landroidx/media3/common/audio/AudioProcessor;->h()Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-eqz v9, :cond_3

    .line 169
    .line 170
    sget-object v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 171
    .line 172
    invoke-virtual {v10, v6}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    xor-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    move-object v6, v10

    .line 182
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_4
    iget v2, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    .line 186
    .line 187
    iget v8, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 188
    .line 189
    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    iput v8, v9, Landroidx/media3/common/Format$Builder;->L:I

    .line 194
    .line 195
    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    .line 196
    .line 197
    iput v6, v9, Landroidx/media3/common/Format$Builder;->K:I

    .line 198
    .line 199
    iput v2, v9, Landroidx/media3/common/Format$Builder;->I:I

    .line 200
    .line 201
    if-ne v2, v1, :cond_5

    .line 202
    .line 203
    iget v5, v3, Landroidx/media3/common/Format;->K:I

    .line 204
    .line 205
    :cond_5
    iput v5, v9, Landroidx/media3/common/Format$Builder;->J:I

    .line 206
    .line 207
    new-instance v1, Landroidx/media3/common/Format;

    .line 208
    .line 209
    invoke-direct {v1, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v8}, Landroidx/media3/common/util/Util;->n(I)I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    mul-int/2addr v5, v2

    .line 217
    move v6, v5

    .line 218
    move v5, v0

    .line 219
    :goto_1
    move-object v8, v7

    .line 220
    goto :goto_2

    .line 221
    :cond_6
    :try_start_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 222
    .line 223
    invoke-direct {p0, v6}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 224
    .line 225
    .line 226
    throw p0
    :try_end_1
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    move-object p0, v0

    .line 229
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 230
    .line 231
    invoke-direct {p1, p0, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_7
    new-instance v7, Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 236
    .line 237
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 242
    .line 243
    .line 244
    move-object v1, v3

    .line 245
    move v6, v5

    .line 246
    goto :goto_1

    .line 247
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    .line 252
    .line 253
    :try_start_2
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 254
    .line 255
    check-cast v7, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 256
    .line 257
    invoke-virtual {v7, v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 258
    .line 259
    .line 260
    move-result-object v7
    :try_end_2
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    iget-boolean v0, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    .line 262
    .line 263
    iget v9, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 264
    .line 265
    const-string v10, ")"

    .line 266
    .line 267
    if-eqz v9, :cond_b

    .line 268
    .line 269
    iget v9, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    .line 270
    .line 271
    if-eqz v9, :cond_a

    .line 272
    .line 273
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 274
    .line 275
    new-instance v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 276
    .line 277
    iget-object v9, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->c:Landroidx/media3/common/Timeline;

    .line 278
    .line 279
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioSinkConfig;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 280
    .line 281
    if-eqz p1, :cond_8

    .line 282
    .line 283
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 284
    .line 285
    :goto_3
    move-object v10, p1

    .line 286
    move-object v4, v1

    .line 287
    goto :goto_4

    .line 288
    :cond_8
    const/4 p1, 0x0

    .line 289
    goto :goto_3

    .line 290
    :goto_4
    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;Landroidx/media3/common/Timeline;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_9

    .line 298
    .line 299
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 300
    .line 301
    return-void

    .line 302
    :cond_9
    iput-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 303
    .line 304
    return-void

    .line 305
    :cond_a
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 306
    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v1, "Invalid output channel config (isOffload="

    .line 310
    .line 311
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p0

    .line 328
    :cond_b
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 329
    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v1, "Invalid output encoding (isOffload="

    .line 333
    .line 334
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :catch_1
    move-exception v0

    .line 352
    move-object p0, v0

    .line 353
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 354
    .line 355
    invoke-direct {p1, p0, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    .line 356
    .line 357
    .line 358
    throw p1
.end method

.method public final d(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_2

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-gez v1, :cond_3

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    :try_start_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    iget v8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:I

    .line 51
    .line 52
    invoke-virtual {v6, v8, p1, p2, v7}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->d(IJLjava/nio/ByteBuffer;)Z

    .line 53
    .line 54
    .line 55
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutput$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:J

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    iput-object p2, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 64
    .line 65
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    .line 71
    .line 72
    iput-wide v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    .line 83
    .line 84
    cmp-long v0, v6, v2

    .line 85
    .line 86
    if-lez v0, :cond_4

    .line 87
    .line 88
    iput-boolean v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:Z

    .line 89
    .line 90
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:Z

    .line 101
    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 105
    .line 106
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 107
    .line 108
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->a()V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 116
    .line 117
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    .line 124
    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    sub-int/2addr v1, v0

    .line 132
    int-to-long v0, v1

    .line 133
    add-long/2addr v2, v0

    .line 134
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    .line 135
    .line 136
    :cond_6
    if-eqz p1, :cond_9

    .line 137
    .line 138
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 139
    .line 140
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_8

    .line 145
    .line 146
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    if-ne p1, v0, :cond_7

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_7
    move v4, v5

    .line 154
    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 155
    .line 156
    .line 157
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    .line 158
    .line 159
    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    .line 160
    .line 161
    int-to-long v2, p1

    .line 162
    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:I

    .line 163
    .line 164
    int-to-long v4, p1

    .line 165
    mul-long/2addr v2, v4

    .line 166
    add-long/2addr v2, v0

    .line 167
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    .line 168
    .line 169
    :cond_8
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    :cond_9
    :goto_2
    return-void

    .line 172
    :catch_0
    move-exception p1

    .line 173
    iget-boolean p2, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->k:Z

    .line 174
    .line 175
    if-eqz p2, :cond_c

    .line 176
    .line 177
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    cmp-long v1, v6, v2

    .line 182
    .line 183
    if-lez v1, :cond_a

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 187
    .line 188
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_c

    .line 193
    .line 194
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 195
    .line 196
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 197
    .line 198
    iget-boolean v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    .line 199
    .line 200
    if-nez v1, :cond_b

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    iput-boolean v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_c
    move v4, v5

    .line 207
    :goto_3
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 208
    .line 209
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 210
    .line 211
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 212
    .line 213
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->j:I

    .line 214
    .line 215
    invoke-direct {v1, p1, v2, v4}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/Format;Z)V

    .line 216
    .line 217
    .line 218
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 219
    .line 220
    if-eqz p0, :cond_d

    .line 221
    .line 222
    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 223
    .line 224
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    :cond_d
    if-nez p2, :cond_e

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a(Ljava/lang/Exception;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_e
    throw v1
.end method

.method public final e()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d(J)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez p0, :cond_4

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-boolean v5, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput-boolean v4, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/media3/common/audio/AudioProcessor;

    .line 43
    .line 44
    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessor;->l()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    :cond_3
    :goto_1
    return v4

    .line 69
    :cond_4
    return v3
.end method

.method public final f()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    .line 16
    .line 17
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    .line 18
    .line 19
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    .line 20
    .line 21
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:Z

    .line 25
    .line 26
    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    .line 27
    .line 28
    new-instance v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 29
    .line 30
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 31
    .line 32
    const-wide/16 v8, 0x0

    .line 33
    .line 34
    const-wide/16 v10, 0x0

    .line 35
    .line 36
    invoke-direct/range {v6 .. v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    .line 37
    .line 38
    .line 39
    iput-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 40
    .line 41
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    .line 42
    .line 43
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 44
    .line 45
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->h:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->clear()V

    .line 48
    .line 49
    .line 50
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:I

    .line 53
    .line 54
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->M:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 63
    .line 64
    iput-wide v3, v0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    .line 65
    .line 66
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v(J)V

    .line 67
    .line 68
    .line 69
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 76
    .line 77
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 78
    .line 79
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 85
    .line 86
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 87
    .line 88
    iget-object v6, v6, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    .line 89
    .line 90
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v7, 0x3

    .line 95
    if-ne v6, v7, :cond_1

    .line 96
    .line 97
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 98
    .line 99
    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    .line 100
    .line 101
    .line 102
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 103
    .line 104
    const/16 v7, 0x1d

    .line 105
    .line 106
    if-lt v6, v7, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_2

    .line 113
    .line 114
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->i:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v7, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 120
    .line 121
    iget-object v7, v7, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 122
    .line 123
    iget-object v8, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->b:Landroid/media/AudioTrack$StreamEventCallback;

    .line 124
    .line 125
    invoke-static {v7, v8}, Ll0;->s(Landroid/media/AudioTrack;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 126
    .line 127
    .line 128
    iget-object v6, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->a:Landroid/os/Handler;

    .line 129
    .line 130
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 134
    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    iget-object v7, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->a:Landroid/media/AudioTrack;

    .line 138
    .line 139
    iget-object v8, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->d:Landroidx/media3/exoplayer/audio/b;

    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v8}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 145
    .line 146
    .line 147
    iput-object v5, v6, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;->d:Landroidx/media3/exoplayer/audio/b;

    .line 148
    .line 149
    iput-object v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->e:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$OnRoutingChangedListenerApi24;

    .line 150
    .line 151
    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 152
    .line 153
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 154
    .line 155
    invoke-static {v5}, Landroidx/media3/common/util/Util;->k(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    sget-object v8, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v8

    .line 162
    :try_start_0
    sget-object v9, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    .line 164
    if-nez v9, :cond_4

    .line 165
    .line 166
    new-instance v9, Lgi;

    .line 167
    .line 168
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    sput-object v9, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    move-object p0, v0

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    :goto_0
    sget v9, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 182
    .line 183
    const/4 v10, 0x1

    .line 184
    add-int/2addr v9, v10

    .line 185
    sput v9, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 186
    .line 187
    sget-object v9, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 188
    .line 189
    new-instance v11, Ls3;

    .line 190
    .line 191
    invoke-direct {v11, v6, v7, v0, v10}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    .line 196
    const-wide/16 v6, 0x14

    .line 197
    .line 198
    invoke-interface {v9, v11, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 199
    .line 200
    .line 201
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iput-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :goto_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    throw p0

    .line 207
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 208
    .line 209
    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 210
    .line 211
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    .line 212
    .line 213
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 214
    .line 215
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 216
    .line 217
    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 218
    .line 219
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    .line 220
    .line 221
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 222
    .line 223
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a0:J

    .line 224
    .line 225
    iput-wide v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:J

    .line 226
    .line 227
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->c0:Landroid/os/Handler;

    .line 228
    .line 229
    if-eqz p0, :cond_6

    .line 230
    .line 231
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_6
    return-void
.end method

.method public final g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;-><init>(Landroidx/media3/common/Format;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u:Landroidx/media3/common/AudioAttributes;

    .line 7
    .line 8
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->b:Landroidx/media3/common/AudioAttributes;

    .line 9
    .line 10
    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i:I

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->d:Z

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Landroid/media/AudioDeviceInfo;

    .line 20
    .line 21
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->c:Landroid/media/AudioDeviceInfo;

    .line 22
    .line 23
    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 24
    .line 25
    iput p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->e:I

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 28
    .line 29
    iput-boolean p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->g:Z

    .line 30
    .line 31
    const/4 p1, -0x1

    .line 32
    iput p1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->h:I

    .line 33
    .line 34
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->V:I

    .line 35
    .line 36
    iput p0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->f:I

    .line 37
    .line 38
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method

.method public final h(Landroidx/media3/common/Format;)I
    .locals 5

    .line 1
    iget v0, p1, Landroidx/media3/common/Format;->M:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Landroidx/media3/common/Format;->M:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput v1, p1, Landroidx/media3/common/Format$Builder;->L:I

    .line 21
    .line 22
    new-instance v0, Landroidx/media3/common/Format;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v0

    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast v4, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 38
    .line 39
    invoke-virtual {v4, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->d:I

    .line 44
    .line 45
    if-eq p0, v2, :cond_3

    .line 46
    .line 47
    if-eq p0, v1, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return v1

    .line 54
    :cond_3
    :goto_1
    return v2
.end method

.method public final j()J
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->B:J

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 12
    .line 13
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 14
    .line 15
    int-to-long v2, p0

    .line 16
    add-long/2addr v0, v2

    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr v0, v4

    .line 20
    div-long/2addr v0, v2

    .line 21
    return-wide v0

    .line 22
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->C:J

    .line 23
    .line 24
    return-wide v0
.end method

.method public final k(IJLjava/nio/ByteBuffer;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v7

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v5, v6

    .line 21
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v5, :cond_9

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_2
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 38
    .line 39
    if-eqz v5, :cond_4

    .line 40
    .line 41
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 42
    .line 43
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 44
    .line 45
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 46
    .line 47
    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    .line 48
    .line 49
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 50
    .line 51
    .line 52
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 53
    .line 54
    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 55
    .line 56
    invoke-virtual {v9, v5}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->l()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V

    .line 74
    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 78
    .line 79
    iput-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 80
    .line 81
    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 82
    .line 83
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 84
    .line 85
    if-eqz v5, :cond_8

    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_8

    .line 92
    .line 93
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 94
    .line 95
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 96
    .line 97
    iget-boolean v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    .line 98
    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 102
    .line 103
    iget-object v9, v5, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 104
    .line 105
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 v11, 0x1d

    .line 108
    .line 109
    if-ge v10, v11, :cond_5

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v9}, Landroid/media/AudioTrack;->getPlayState()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    const/4 v13, 0x3

    .line 117
    if-eq v12, v13, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    invoke-static {v9}, Ll0;->p(Landroid/media/AudioTrack;)V

    .line 121
    .line 122
    .line 123
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 124
    .line 125
    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->A:Z

    .line 126
    .line 127
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 128
    .line 129
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 130
    .line 131
    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->f:Z

    .line 132
    .line 133
    :goto_2
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 134
    .line 135
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 136
    .line 137
    iget-object v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 138
    .line 139
    iget v12, v9, Landroidx/media3/common/Format;->N:I

    .line 140
    .line 141
    iget v9, v9, Landroidx/media3/common/Format;->O:I

    .line 142
    .line 143
    if-ge v10, v11, :cond_7

    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 150
    .line 151
    invoke-static {v5, v12, v9}, Ll0;->q(Landroid/media/AudioTrack;II)V

    .line 152
    .line 153
    .line 154
    :goto_3
    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Z:Z

    .line 155
    .line 156
    :cond_8
    :goto_4
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(J)V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 164
    .line 165
    if-nez v5, :cond_b

    .line 166
    .line 167
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m()Z

    .line 168
    .line 169
    .line 170
    move-result v5
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    if-nez v5, :cond_b

    .line 172
    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :catch_0
    move-exception v0

    .line 176
    iget-boolean v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->j:Z

    .line 177
    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    invoke-virtual {v9, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a(Ljava/lang/Exception;)V

    .line 181
    .line 182
    .line 183
    return v7

    .line 184
    :cond_a
    throw v0

    .line 185
    :cond_b
    iput-object v8, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 186
    .line 187
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    iput-wide v10, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->b:J

    .line 193
    .line 194
    iput-wide v10, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 195
    .line 196
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 197
    .line 198
    const-wide/16 v12, 0x0

    .line 199
    .line 200
    if-eqz v5, :cond_d

    .line 201
    .line 202
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v14

    .line 206
    iput-wide v14, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    .line 207
    .line 208
    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 209
    .line 210
    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->w()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_c

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t()V

    .line 219
    .line 220
    .line 221
    :cond_c
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(J)V

    .line 222
    .line 223
    .line 224
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 225
    .line 226
    if-eqz v5, :cond_d

    .line 227
    .line 228
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o()V

    .line 229
    .line 230
    .line 231
    :cond_d
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    if-nez v5, :cond_19

    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 240
    .line 241
    if-ne v5, v9, :cond_e

    .line 242
    .line 243
    move v5, v6

    .line 244
    goto :goto_5

    .line 245
    :cond_e
    move v5, v7

    .line 246
    :goto_5
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-nez v5, :cond_f

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_f
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 257
    .line 258
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-nez v5, :cond_10

    .line 263
    .line 264
    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    .line 265
    .line 266
    if-nez v5, :cond_10

    .line 267
    .line 268
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 269
    .line 270
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 271
    .line 272
    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 273
    .line 274
    invoke-static {v5, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->i(ILjava/nio/ByteBuffer;)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    iput v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    .line 279
    .line 280
    if-nez v5, :cond_10

    .line 281
    .line 282
    :goto_6
    return v6

    .line 283
    :cond_10
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 284
    .line 285
    if-eqz v5, :cond_12

    .line 286
    .line 287
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e()Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-nez v5, :cond_11

    .line 292
    .line 293
    goto/16 :goto_a

    .line 294
    .line 295
    :cond_11
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(J)V

    .line 296
    .line 297
    .line 298
    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->v:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 299
    .line 300
    :cond_12
    iget-wide v14, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    .line 301
    .line 302
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 303
    .line 304
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-eqz v9, :cond_13

    .line 309
    .line 310
    move-wide/from16 v16, v10

    .line 311
    .line 312
    iget-wide v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    .line 313
    .line 314
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 315
    .line 316
    iget v9, v9, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->c:I

    .line 317
    .line 318
    move-wide/from16 v18, v12

    .line 319
    .line 320
    int-to-long v12, v9

    .line 321
    div-long/2addr v10, v12

    .line 322
    goto :goto_7

    .line 323
    :cond_13
    move-wide/from16 v16, v10

    .line 324
    .line 325
    move-wide/from16 v18, v12

    .line 326
    .line 327
    iget-wide v10, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    .line 328
    .line 329
    :goto_7
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 330
    .line 331
    iget-wide v12, v9, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    .line 332
    .line 333
    sub-long/2addr v10, v12

    .line 334
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 335
    .line 336
    iget v5, v5, Landroidx/media3/common/Format;->L:I

    .line 337
    .line 338
    invoke-static {v5, v10, v11}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 339
    .line 340
    .line 341
    move-result-wide v9

    .line 342
    add-long/2addr v9, v14

    .line 343
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 344
    .line 345
    if-nez v5, :cond_15

    .line 346
    .line 347
    sub-long v11, v9, v2

    .line 348
    .line 349
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 350
    .line 351
    .line 352
    move-result-wide v11

    .line 353
    const-wide/32 v13, 0x30d40

    .line 354
    .line 355
    .line 356
    cmp-long v5, v11, v13

    .line 357
    .line 358
    if-lez v5, :cond_15

    .line 359
    .line 360
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 361
    .line 362
    if-eqz v5, :cond_14

    .line 363
    .line 364
    new-instance v11, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    .line 365
    .line 366
    new-instance v12, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v13, "Unexpected audio track timestamp discontinuity: expected "

    .line 369
    .line 370
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v13, ", got "

    .line 377
    .line 378
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v12

    .line 388
    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 392
    .line 393
    invoke-virtual {v5, v11}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a(Ljava/lang/Exception;)V

    .line 394
    .line 395
    .line 396
    :cond_14
    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 397
    .line 398
    :cond_15
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 399
    .line 400
    if-eqz v5, :cond_17

    .line 401
    .line 402
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-nez v5, :cond_16

    .line 407
    .line 408
    goto/16 :goto_a

    .line 409
    .line 410
    :cond_16
    sub-long v9, v2, v9

    .line 411
    .line 412
    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    .line 413
    .line 414
    add-long/2addr v11, v9

    .line 415
    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->G:J

    .line 416
    .line 417
    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->E:Z

    .line 418
    .line 419
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->a(J)V

    .line 420
    .line 421
    .line 422
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 423
    .line 424
    if-eqz v5, :cond_17

    .line 425
    .line 426
    cmp-long v9, v9, v18

    .line 427
    .line 428
    if-eqz v9, :cond_17

    .line 429
    .line 430
    check-cast v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 431
    .line 432
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 433
    .line 434
    iput-boolean v6, v5, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->Z0:Z

    .line 435
    .line 436
    :cond_17
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 437
    .line 438
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_18

    .line 443
    .line 444
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    .line 445
    .line 446
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    int-to-long v11, v5

    .line 451
    add-long/2addr v9, v11

    .line 452
    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->z:J

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_18
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    .line 456
    .line 457
    iget v5, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->D:I

    .line 458
    .line 459
    int-to-long v11, v5

    .line 460
    int-to-long v13, v1

    .line 461
    mul-long/2addr v11, v13

    .line 462
    add-long/2addr v11, v9

    .line 463
    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->A:J

    .line 464
    .line 465
    :goto_8
    iput-object v4, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 466
    .line 467
    iput v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:I

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_19
    move-wide/from16 v16, v10

    .line 471
    .line 472
    move-wide/from16 v18, v12

    .line 473
    .line 474
    :goto_9
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q(J)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-nez v1, :cond_1a

    .line 484
    .line 485
    iput-object v8, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 486
    .line 487
    iput v7, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->K:I

    .line 488
    .line 489
    return v6

    .line 490
    :cond_1a
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 491
    .line 492
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 493
    .line 494
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 495
    .line 496
    .line 497
    move-result-wide v3

    .line 498
    iget-wide v8, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 499
    .line 500
    cmp-long v1, v8, v16

    .line 501
    .line 502
    if-eqz v1, :cond_1b

    .line 503
    .line 504
    cmp-long v1, v3, v18

    .line 505
    .line 506
    if-lez v1, :cond_1b

    .line 507
    .line 508
    iget-object v1, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 509
    .line 510
    check-cast v1, Landroidx/media3/common/util/SystemClock;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 516
    .line 517
    .line 518
    move-result-wide v3

    .line 519
    iget-wide v1, v2, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 520
    .line 521
    sub-long/2addr v3, v1

    .line 522
    const-wide/16 v1, 0xc8

    .line 523
    .line 524
    cmp-long v1, v3, v1

    .line 525
    .line 526
    if-ltz v1, :cond_1b

    .line 527
    .line 528
    const-string v1, "DefaultAudioSink"

    .line 529
    .line 530
    const-string v2, "Resetting stalled audio output"

    .line 531
    .line 532
    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V

    .line 536
    .line 537
    .line 538
    return v6

    .line 539
    :cond_1b
    :goto_a
    return v7
.end method

.method public final l()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    int-to-long v5, p0

    .line 47
    const-wide/32 v7, 0xf4240

    .line 48
    .line 49
    .line 50
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmp-long p0, v0, v2

    .line 57
    .line 58
    if-lez p0, :cond_1

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_1
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public final m()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->k:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->a:Ljava/lang/Exception;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->c:J

    .line 23
    .line 24
    cmp-long v0, v3, v0

    .line 25
    .line 26
    if-gez v0, :cond_2

    .line 27
    .line 28
    :goto_0
    return v2

    .line 29
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 30
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :catch_0
    move-exception v1

    .line 41
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 44
    .line 45
    iget v4, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 46
    .line 47
    iget v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 48
    .line 49
    invoke-static {v3}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 54
    .line 55
    const/4 v6, -0x1

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget-object v3, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 59
    .line 60
    iget v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 61
    .line 62
    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 63
    .line 64
    mul-int/2addr v3, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-object v3, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 67
    .line 68
    iget v3, v3, Landroidx/media3/common/Format;->k:I

    .line 69
    .line 70
    if-eq v3, v6, :cond_4

    .line 71
    .line 72
    div-int/lit8 v3, v3, 0x8

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget-object v3, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 76
    .line 77
    iget v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 78
    .line 79
    invoke-static {v3}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const v5, -0x7fffffff

    .line 84
    .line 85
    .line 86
    if-eq v3, v5, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const v3, 0xf4240

    .line 90
    .line 91
    .line 92
    :goto_2
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 93
    .line 94
    iget-object v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 95
    .line 96
    iget v7, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 97
    .line 98
    iget v8, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    .line 99
    .line 100
    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 101
    .line 102
    invoke-static {v7, v8, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 111
    .line 112
    iget v5, v5, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 113
    .line 114
    if-eq v5, v6, :cond_6

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    move v5, v0

    .line 118
    :goto_3
    if-le v4, v3, :cond_13

    .line 119
    .line 120
    div-int/lit8 v4, v4, 0x2

    .line 121
    .line 122
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    rem-int v6, v4, v5

    .line 127
    .line 128
    if-eqz v6, :cond_7

    .line 129
    .line 130
    sub-int v6, v5, v6

    .line 131
    .line 132
    add-int/2addr v6, v4

    .line 133
    move v4, v6

    .line 134
    :cond_7
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 135
    .line 136
    iget-object v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iput v4, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->f:I

    .line 143
    .line 144
    new-instance v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 145
    .line 146
    invoke-direct {v7, v6}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    .line 147
    .line 148
    .line 149
    :try_start_1
    invoke-virtual {p0, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 154
    .line 155
    invoke-static {v8, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    iput-object v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    move-object v1, v6

    .line 162
    :goto_4
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 163
    .line 164
    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 165
    .line 166
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 167
    .line 168
    iget-object v4, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 169
    .line 170
    invoke-direct {v3, p0, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V

    .line 171
    .line 172
    .line 173
    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 174
    .line 175
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_9

    .line 187
    .line 188
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 189
    .line 190
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 191
    .line 192
    iget-boolean v3, v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->k:Z

    .line 193
    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 197
    .line 198
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 199
    .line 200
    iget v4, v1, Landroidx/media3/common/Format;->N:I

    .line 201
    .line 202
    iget v1, v1, Landroidx/media3/common/Format;->O:I

    .line 203
    .line 204
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .line 206
    const/16 v6, 0x1d

    .line 207
    .line 208
    if-ge v5, v6, :cond_8

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_8
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 215
    .line 216
    invoke-static {v3, v4, v1}, Ll0;->q(Landroid/media/AudioTrack;II)V

    .line 217
    .line 218
    .line 219
    :cond_9
    :goto_5
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 220
    .line 221
    if-eqz v1, :cond_b

    .line 222
    .line 223
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    const/16 v5, 0x1f

    .line 231
    .line 232
    if-ge v4, v5, :cond_a

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/PlayerId;->a()Landroid/media/metrics/LogSessionId;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {}, Ldb;->e()Landroid/media/metrics/LogSessionId;

    .line 240
    .line 241
    .line 242
    invoke-static {v1}, Ldb;->v(Landroid/media/metrics/LogSessionId;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_b

    .line 247
    .line 248
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 249
    .line 250
    invoke-static {v3, v1}, Lu0;->t(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    .line 251
    .line 252
    .line 253
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_c

    .line 258
    .line 259
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 260
    .line 261
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->I:F

    .line 262
    .line 263
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 264
    .line 265
    invoke-virtual {v1, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 266
    .line 267
    .line 268
    :cond_c
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->T:Landroidx/media3/common/AuxEffectInfo;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->U:Landroid/media/AudioDeviceInfo;

    .line 274
    .line 275
    if-eqz v1, :cond_d

    .line 276
    .line 277
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 278
    .line 279
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 280
    .line 281
    invoke-virtual {v3, v1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 282
    .line 283
    .line 284
    :cond_d
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 285
    .line 286
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 287
    .line 288
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 289
    .line 290
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 295
    .line 296
    if-eq v1, v3, :cond_e

    .line 297
    .line 298
    move v2, v0

    .line 299
    :cond_e
    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 300
    .line 301
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 302
    .line 303
    if-eqz v1, :cond_12

    .line 304
    .line 305
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 306
    .line 307
    new-instance v4, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 308
    .line 309
    iget-object v3, v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 310
    .line 311
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    check-cast v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 315
    .line 316
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 317
    .line 318
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 319
    .line 320
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 321
    .line 322
    if-eqz v3, :cond_f

    .line 323
    .line 324
    new-instance v5, Lq3;

    .line 325
    .line 326
    invoke-direct {v5, v1, v4, v0}, Lq3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    .line 331
    .line 332
    :cond_f
    if-eqz v2, :cond_12

    .line 333
    .line 334
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->S:Z

    .line 335
    .line 336
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 337
    .line 338
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 339
    .line 340
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 345
    .line 346
    iput v3, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    .line 347
    .line 348
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 349
    .line 350
    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 358
    .line 359
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 360
    .line 361
    if-eqz v1, :cond_10

    .line 362
    .line 363
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 364
    .line 365
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 370
    .line 371
    iput v3, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    .line 372
    .line 373
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 374
    .line 375
    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v1, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 383
    .line 384
    :cond_10
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 385
    .line 386
    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->R:I

    .line 387
    .line 388
    check-cast v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 389
    .line 390
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 391
    .line 392
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 393
    .line 394
    const/16 v3, 0x23

    .line 395
    .line 396
    if-lt v2, v3, :cond_11

    .line 397
    .line 398
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->T0:Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;

    .line 399
    .line 400
    if-eqz v2, :cond_11

    .line 401
    .line 402
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController;->b(I)V

    .line 403
    .line 404
    .line 405
    :cond_11
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 406
    .line 407
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 408
    .line 409
    if-eqz v2, :cond_12

    .line 410
    .line 411
    new-instance v3, Lw2;

    .line 412
    .line 413
    invoke-direct {v3, p0, v0, v1}, Lw2;-><init>(IILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    .line 418
    .line 419
    :cond_12
    return v0

    .line 420
    :catch_1
    move-exception v6

    .line 421
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    :cond_13
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 427
    .line 428
    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 429
    .line 430
    iget-boolean v2, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    .line 431
    .line 432
    if-nez v2, :cond_14

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_14
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 436
    .line 437
    :goto_7
    throw v1
.end method

.method public final n()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final o()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 13
    .line 14
    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 15
    .line 16
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 26
    .line 27
    check-cast v1, Landroidx/media3/common/util/SystemClock;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iget v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    .line 47
    .line 48
    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->j:J

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->k:Z

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iput-wide v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    .line 39
    .line 40
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 41
    .line 42
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->D(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 56
    .line 57
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->x:J

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final q(J)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u(Ljava/nio/ByteBuffer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d(J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_8

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->a()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    aget-object v1, v1, v2

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d(Ljava/nio/ByteBuffer;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->a()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    aget-object v0, v1, v0

    .line 76
    .line 77
    :goto_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->u(Ljava/nio/ByteBuffer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d(J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_6

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 106
    .line 107
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->c()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    iget-boolean v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    .line 116
    .line 117
    if-eqz v2, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->d(Ljava/nio/ByteBuffer;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->o:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->r:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b:Landroidx/media3/common/Format;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->a:Landroidx/media3/common/Format;

    .line 47
    .line 48
    invoke-direct {v2, v0, p0}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->p(I)Lcom/google/common/collect/UnmodifiableListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    .line 22
    .line 23
    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->e:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->reset()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->f:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->reset()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    move v3, v1

    .line 44
    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v3, v4, :cond_1

    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/media3/common/audio/AudioProcessor;

    .line 55
    .line 56
    sget-object v5, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->d:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 57
    .line 58
    invoke-interface {v4, v5}, Landroidx/media3/common/audio/AudioProcessor;->k(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v4}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iput-object v2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    sget-object v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 77
    .line 78
    iput-boolean v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    .line 79
    .line 80
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 83
    .line 84
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 12
    .line 13
    new-instance v3, Landroid/media/PlaybackParams;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/media/PlaybackParams;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 23
    .line 24
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->c:F

    .line 25
    .line 26
    const v6, 0x3dcccccd    # 0.1f

    .line 27
    .line 28
    .line 29
    invoke-static {v4, v6, v5}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v3, v4}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->b:F

    .line 38
    .line 39
    const/high16 v4, 0x41000000    # 8.0f

    .line 40
    .line 41
    invoke-static {v1, v6, v4}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v3, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-virtual {v1, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v3, "AudioTrackAudioOutput"

    .line 60
    .line 61
    const-string v4, "Failed to set playback params"

    .line 62
    .line 63
    invoke-static {v3, v4, v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->f:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 88
    .line 89
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-direct {v1, v2, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->x:Landroidx/media3/common/PlaybackParameters;

    .line 109
    .line 110
    :cond_0
    return-void
.end method

.method public final u(Ljava/nio/ByteBuffer;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->b(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const-wide/16 v1, 0x14

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 38
    .line 39
    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 40
    .line 41
    int-to-long v5, v1

    .line 42
    const-wide/32 v7, 0xf4240

    .line 43
    .line 44
    .line 45
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 46
    .line 47
    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    long-to-int v1, v1

    .line 52
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    int-to-long v4, v1

    .line 57
    cmp-long v6, v2, v4

    .line 58
    .line 59
    if-ltz v6, :cond_3

    .line 60
    .line 61
    :goto_1
    move-object/from16 v3, p1

    .line 62
    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 66
    .line 67
    iget-object v7, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 68
    .line 69
    iget v7, v7, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 70
    .line 71
    iget v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 72
    .line 73
    long-to-int v2, v2

    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_21

    .line 99
    .line 100
    if-ge v2, v1, :cond_21

    .line 101
    .line 102
    const/high16 v13, 0x50000000

    .line 103
    .line 104
    const/high16 v14, 0x10000000

    .line 105
    .line 106
    const/16 v15, 0x16

    .line 107
    .line 108
    const/16 v9, 0x15

    .line 109
    .line 110
    const/4 v10, 0x4

    .line 111
    const/4 v11, 0x3

    .line 112
    const/4 v12, 0x2

    .line 113
    const-wide/high16 v16, -0x3e20000000000000L    # -2.147483648E9

    .line 114
    .line 115
    const-wide v18, 0x41dfffffffc00000L    # 2.147483647E9

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const/high16 v20, -0x31000000

    .line 121
    .line 122
    const/high16 v21, 0x4f000000

    .line 123
    .line 124
    if-eq v7, v12, :cond_11

    .line 125
    .line 126
    if-eq v7, v11, :cond_10

    .line 127
    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    const/high16 v11, 0x3f800000    # 1.0f

    .line 131
    .line 132
    const/high16 v12, -0x40800000    # -1.0f

    .line 133
    .line 134
    if-eq v7, v10, :cond_f

    .line 135
    .line 136
    if-eq v7, v9, :cond_e

    .line 137
    .line 138
    if-eq v7, v15, :cond_d

    .line 139
    .line 140
    if-eq v7, v14, :cond_c

    .line 141
    .line 142
    if-eq v7, v13, :cond_b

    .line 143
    .line 144
    const/high16 v13, 0x60000000

    .line 145
    .line 146
    if-eq v7, v13, :cond_a

    .line 147
    .line 148
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 149
    .line 150
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 151
    .line 152
    const-wide/16 v23, 0x0

    .line 153
    .line 154
    const/high16 v13, 0x70000000

    .line 155
    .line 156
    if-eq v7, v13, :cond_9

    .line 157
    .line 158
    const/high16 v13, 0x71000000

    .line 159
    .line 160
    if-eq v7, v13, :cond_7

    .line 161
    .line 162
    const/high16 v13, 0x72000000

    .line 163
    .line 164
    if-ne v7, v13, :cond_6

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 167
    .line 168
    .line 169
    move-result-wide v11

    .line 170
    invoke-static {v11, v12}, Ljava/lang/Long;->reverseBytes(J)J

    .line 171
    .line 172
    .line 173
    move-result-wide v11

    .line 174
    invoke-static {v11, v12}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 175
    .line 176
    .line 177
    move-result-wide v11

    .line 178
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 179
    .line 180
    .line 181
    move-result-wide v11

    .line 182
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 183
    .line 184
    .line 185
    move-result-wide v9

    .line 186
    cmpg-double v11, v9, v23

    .line 187
    .line 188
    if-gez v11, :cond_5

    .line 189
    .line 190
    :goto_3
    neg-double v9, v9

    .line 191
    mul-double v9, v9, v16

    .line 192
    .line 193
    :goto_4
    double-to-int v9, v9

    .line 194
    goto/16 :goto_9

    .line 195
    .line 196
    :cond_5
    mul-double v9, v9, v18

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    invoke-static {}, Lio/sentry/d;->d()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    invoke-static {v9, v12, v11}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    cmpg-float v10, v9, v22

    .line 220
    .line 221
    if-gez v10, :cond_8

    .line 222
    .line 223
    :goto_5
    neg-float v9, v9

    .line 224
    mul-float v9, v9, v20

    .line 225
    .line 226
    :goto_6
    float-to-int v9, v9

    .line 227
    goto/16 :goto_9

    .line 228
    .line 229
    :cond_8
    mul-float v9, v9, v21

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 237
    .line 238
    .line 239
    move-result-wide v11

    .line 240
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 241
    .line 242
    .line 243
    move-result-wide v9

    .line 244
    cmpg-double v11, v9, v23

    .line 245
    .line 246
    if-gez v11, :cond_5

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    and-int/lit16 v9, v9, 0xff

    .line 254
    .line 255
    shl-int/lit8 v9, v9, 0x18

    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    and-int/lit16 v10, v10, 0xff

    .line 262
    .line 263
    shl-int/lit8 v10, v10, 0x10

    .line 264
    .line 265
    or-int/2addr v9, v10

    .line 266
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    and-int/lit16 v10, v10, 0xff

    .line 271
    .line 272
    shl-int/lit8 v10, v10, 0x8

    .line 273
    .line 274
    or-int/2addr v9, v10

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    and-int/lit16 v10, v10, 0xff

    .line 280
    .line 281
    :goto_7
    or-int/2addr v9, v10

    .line 282
    goto/16 :goto_9

    .line 283
    .line 284
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    and-int/lit16 v9, v9, 0xff

    .line 289
    .line 290
    shl-int/lit8 v9, v9, 0x18

    .line 291
    .line 292
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    and-int/lit16 v10, v10, 0xff

    .line 297
    .line 298
    shl-int/lit8 v10, v10, 0x10

    .line 299
    .line 300
    or-int/2addr v9, v10

    .line 301
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    and-int/lit16 v10, v10, 0xff

    .line 306
    .line 307
    shl-int/lit8 v10, v10, 0x8

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    and-int/lit16 v9, v9, 0xff

    .line 315
    .line 316
    shl-int/lit8 v9, v9, 0x18

    .line 317
    .line 318
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    and-int/lit16 v10, v10, 0xff

    .line 323
    .line 324
    shl-int/lit8 v10, v10, 0x10

    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    and-int/lit16 v9, v9, 0xff

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    and-int/lit16 v10, v10, 0xff

    .line 338
    .line 339
    shl-int/lit8 v10, v10, 0x8

    .line 340
    .line 341
    or-int/2addr v9, v10

    .line 342
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    and-int/lit16 v10, v10, 0xff

    .line 347
    .line 348
    shl-int/lit8 v10, v10, 0x10

    .line 349
    .line 350
    or-int/2addr v9, v10

    .line 351
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    :goto_8
    and-int/lit16 v10, v10, 0xff

    .line 356
    .line 357
    shl-int/lit8 v10, v10, 0x18

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    and-int/lit16 v9, v9, 0xff

    .line 365
    .line 366
    shl-int/lit8 v9, v9, 0x8

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    and-int/lit16 v10, v10, 0xff

    .line 373
    .line 374
    shl-int/lit8 v10, v10, 0x10

    .line 375
    .line 376
    or-int/2addr v9, v10

    .line 377
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 378
    .line 379
    .line 380
    move-result v10

    .line 381
    goto :goto_8

    .line 382
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    invoke-static {v9, v12, v11}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 387
    .line 388
    .line 389
    move-result v9

    .line 390
    cmpg-float v10, v9, v22

    .line 391
    .line 392
    if-gez v10, :cond_8

    .line 393
    .line 394
    goto/16 :goto_5

    .line 395
    .line 396
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    and-int/lit16 v9, v9, 0xff

    .line 401
    .line 402
    shl-int/lit8 v9, v9, 0x18

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    and-int/lit16 v9, v9, 0xff

    .line 410
    .line 411
    shl-int/lit8 v9, v9, 0x10

    .line 412
    .line 413
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 414
    .line 415
    .line 416
    move-result v10

    .line 417
    goto :goto_8

    .line 418
    :goto_9
    int-to-long v9, v9

    .line 419
    int-to-long v11, v2

    .line 420
    mul-long/2addr v9, v11

    .line 421
    div-long/2addr v9, v4

    .line 422
    long-to-int v9, v9

    .line 423
    const/4 v10, 0x2

    .line 424
    if-eq v7, v10, :cond_20

    .line 425
    .line 426
    const/4 v10, 0x3

    .line 427
    if-eq v7, v10, :cond_1f

    .line 428
    .line 429
    const/4 v10, 0x4

    .line 430
    if-eq v7, v10, :cond_1d

    .line 431
    .line 432
    const/16 v10, 0x15

    .line 433
    .line 434
    if-eq v7, v10, :cond_1c

    .line 435
    .line 436
    const/16 v10, 0x16

    .line 437
    .line 438
    if-eq v7, v10, :cond_1b

    .line 439
    .line 440
    const/high16 v13, 0x10000000

    .line 441
    .line 442
    if-eq v7, v13, :cond_1a

    .line 443
    .line 444
    const/high16 v10, 0x50000000

    .line 445
    .line 446
    if-eq v7, v10, :cond_19

    .line 447
    .line 448
    const/high16 v13, 0x60000000

    .line 449
    .line 450
    if-eq v7, v13, :cond_18

    .line 451
    .line 452
    const/high16 v13, 0x70000000

    .line 453
    .line 454
    if-eq v7, v13, :cond_16

    .line 455
    .line 456
    const/high16 v13, 0x71000000

    .line 457
    .line 458
    if-eq v7, v13, :cond_14

    .line 459
    .line 460
    const/high16 v13, 0x72000000

    .line 461
    .line 462
    if-ne v7, v13, :cond_13

    .line 463
    .line 464
    if-gez v9, :cond_12

    .line 465
    .line 466
    int-to-double v9, v9

    .line 467
    neg-double v9, v9

    .line 468
    div-double v9, v9, v16

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_12
    int-to-double v9, v9

    .line 472
    div-double v9, v9, v18

    .line 473
    .line 474
    :goto_a
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 475
    .line 476
    .line 477
    move-result-wide v9

    .line 478
    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    .line 479
    .line 480
    .line 481
    move-result-wide v9

    .line 482
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 483
    .line 484
    .line 485
    goto/16 :goto_c

    .line 486
    .line 487
    :cond_13
    invoke-static {}, Lio/sentry/d;->d()V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_14
    if-gez v9, :cond_15

    .line 492
    .line 493
    int-to-float v9, v9

    .line 494
    neg-float v9, v9

    .line 495
    div-float v9, v9, v20

    .line 496
    .line 497
    goto :goto_b

    .line 498
    :cond_15
    int-to-float v9, v9

    .line 499
    div-float v9, v9, v21

    .line 500
    .line 501
    :goto_b
    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 506
    .line 507
    .line 508
    move-result v9

    .line 509
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 510
    .line 511
    .line 512
    goto/16 :goto_c

    .line 513
    .line 514
    :cond_16
    if-gez v9, :cond_17

    .line 515
    .line 516
    int-to-double v9, v9

    .line 517
    neg-double v9, v9

    .line 518
    div-double v9, v9, v16

    .line 519
    .line 520
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 521
    .line 522
    .line 523
    goto/16 :goto_c

    .line 524
    .line 525
    :cond_17
    int-to-double v9, v9

    .line 526
    div-double v9, v9, v18

    .line 527
    .line 528
    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 529
    .line 530
    .line 531
    goto/16 :goto_c

    .line 532
    .line 533
    :cond_18
    shr-int/lit8 v10, v9, 0x18

    .line 534
    .line 535
    int-to-byte v10, v10

    .line 536
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 537
    .line 538
    .line 539
    shr-int/lit8 v10, v9, 0x10

    .line 540
    .line 541
    int-to-byte v10, v10

    .line 542
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 543
    .line 544
    .line 545
    shr-int/lit8 v10, v9, 0x8

    .line 546
    .line 547
    int-to-byte v10, v10

    .line 548
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    .line 550
    .line 551
    int-to-byte v9, v9

    .line 552
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 553
    .line 554
    .line 555
    goto/16 :goto_c

    .line 556
    .line 557
    :cond_19
    shr-int/lit8 v10, v9, 0x18

    .line 558
    .line 559
    int-to-byte v10, v10

    .line 560
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 561
    .line 562
    .line 563
    shr-int/lit8 v10, v9, 0x10

    .line 564
    .line 565
    int-to-byte v10, v10

    .line 566
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 567
    .line 568
    .line 569
    shr-int/lit8 v9, v9, 0x8

    .line 570
    .line 571
    int-to-byte v9, v9

    .line 572
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 573
    .line 574
    .line 575
    goto :goto_c

    .line 576
    :cond_1a
    shr-int/lit8 v10, v9, 0x18

    .line 577
    .line 578
    int-to-byte v10, v10

    .line 579
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 580
    .line 581
    .line 582
    shr-int/lit8 v9, v9, 0x10

    .line 583
    .line 584
    int-to-byte v9, v9

    .line 585
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    .line 587
    .line 588
    goto :goto_c

    .line 589
    :cond_1b
    int-to-byte v10, v9

    .line 590
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 591
    .line 592
    .line 593
    shr-int/lit8 v10, v9, 0x8

    .line 594
    .line 595
    int-to-byte v10, v10

    .line 596
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 597
    .line 598
    .line 599
    shr-int/lit8 v10, v9, 0x10

    .line 600
    .line 601
    int-to-byte v10, v10

    .line 602
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 603
    .line 604
    .line 605
    shr-int/lit8 v9, v9, 0x18

    .line 606
    .line 607
    int-to-byte v9, v9

    .line 608
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    .line 610
    .line 611
    goto :goto_c

    .line 612
    :cond_1c
    shr-int/lit8 v10, v9, 0x8

    .line 613
    .line 614
    int-to-byte v10, v10

    .line 615
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 616
    .line 617
    .line 618
    shr-int/lit8 v10, v9, 0x10

    .line 619
    .line 620
    int-to-byte v10, v10

    .line 621
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 622
    .line 623
    .line 624
    shr-int/lit8 v9, v9, 0x18

    .line 625
    .line 626
    int-to-byte v9, v9

    .line 627
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 628
    .line 629
    .line 630
    goto :goto_c

    .line 631
    :cond_1d
    if-gez v9, :cond_1e

    .line 632
    .line 633
    int-to-float v9, v9

    .line 634
    neg-float v9, v9

    .line 635
    div-float v9, v9, v20

    .line 636
    .line 637
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 638
    .line 639
    .line 640
    goto :goto_c

    .line 641
    :cond_1e
    int-to-float v9, v9

    .line 642
    div-float v9, v9, v21

    .line 643
    .line 644
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 645
    .line 646
    .line 647
    goto :goto_c

    .line 648
    :cond_1f
    shr-int/lit8 v9, v9, 0x18

    .line 649
    .line 650
    int-to-byte v9, v9

    .line 651
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 652
    .line 653
    .line 654
    goto :goto_c

    .line 655
    :cond_20
    shr-int/lit8 v10, v9, 0x10

    .line 656
    .line 657
    int-to-byte v10, v10

    .line 658
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 659
    .line 660
    .line 661
    shr-int/lit8 v9, v9, 0x18

    .line 662
    .line 663
    int-to-byte v9, v9

    .line 664
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 665
    .line 666
    .line 667
    :goto_c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 668
    .line 669
    .line 670
    move-result v9

    .line 671
    add-int v10, v8, v6

    .line 672
    .line 673
    if-ne v9, v10, :cond_4

    .line 674
    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 676
    .line 677
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    goto/16 :goto_2

    .line 682
    .line 683
    :cond_21
    move-object/from16 v1, p1

    .line 684
    .line 685
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 689
    .line 690
    .line 691
    :goto_d
    iput-object v3, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->L:Ljava/nio/ByteBuffer;

    .line 692
    .line 693
    return-void
.end method

.method public final v(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->f:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 4
    .line 5
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v1, p1, v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->H:J

    .line 20
    .line 21
    sub-long/2addr p1, v1

    .line 22
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->g:Landroidx/media3/common/Timeline;

    .line 23
    .line 24
    sget-object v2, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->h:Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 38
    .line 39
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->g:Landroidx/media3/common/Timeline;

    .line 40
    .line 41
    iget-object v1, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->h:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v2, v1, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 44
    .line 45
    .line 46
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->e:J

    .line 47
    .line 48
    add-long/2addr p1, v0

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->q:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 50
    .line 51
    new-instance v1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;

    .line 52
    .line 53
    invoke-direct {v1}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->g:Landroidx/media3/common/Timeline;

    .line 59
    .line 60
    iput-object v2, v1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->h:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p0, v1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->c:Ljava/lang/Object;

    .line 65
    .line 66
    iput-wide p1, v1, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a:J

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a()Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-object p1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    .line 73
    .line 74
    iget-object p2, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    iput-boolean v1, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    .line 81
    .line 82
    move v2, v1

    .line 83
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_3

    .line 88
    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroidx/media3/common/audio/AudioProcessor;

    .line 94
    .line 95
    invoke-interface {v3, p0}, Landroidx/media3/common/audio/AudioProcessor;->k(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v3}, Landroidx/media3/common/audio/AudioProcessor;->h()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    new-instance v4, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-wide v5, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->a:J

    .line 111
    .line 112
    iput-wide v5, v4, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a:J

    .line 113
    .line 114
    iget-object v7, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->b:Landroidx/media3/common/Timeline;

    .line 115
    .line 116
    iput-object v7, v4, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->b:Landroidx/media3/common/Timeline;

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->c:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p0, v4, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->c:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-interface {v3, v5, v6}, Landroidx/media3/common/audio/AudioProcessor;->n(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    iput-wide v5, v4, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a:J

    .line 127
    .line 128
    invoke-virtual {v4}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata$Builder;->a()Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    new-array p0, p0, [Ljava/nio/ByteBuffer;

    .line 143
    .line 144
    iput-object p0, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->a()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-gt v1, p0, :cond_4

    .line 151
    .line 152
    iget-object p0, v0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroidx/media3/common/audio/AudioProcessor;

    .line 159
    .line 160
    invoke-interface {p1}, Landroidx/media3/common/audio/AudioProcessor;->i()Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    aput-object p1, p0, v1

    .line 165
    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    return-void
.end method

.method public final w()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->j:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method
