.class public final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutputProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;,
        Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;
    }
.end annotation


# static fields
.field public static final l:Lcom/google/common/base/Supplier;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field public final c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field public final d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

.field public final e:F

.field public f:Landroidx/media3/common/util/ListenerSet;

.field public g:Landroidx/media3/common/util/Clock;

.field public h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field public j:Landroid/os/Looper;

.field public k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu2;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lu2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->l:Lcom/google/common/base/Supplier;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 16
    .line 17
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    .line 33
    .line 34
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$Builder;->e:F

    .line 35
    .line 36
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    .line 37
    .line 38
    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
    .locals 8

    .line 1
    :try_start_0
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->h:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->i:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/16 v3, 0x22

    .line 7
    .line 8
    if-eq v1, v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    if-lt v4, v3, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Ld1;->a(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-static {v2, v1}, Ld1;->f(Landroid/content/Context;I)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->k:Landroid/content/Context;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    move v7, v1

    .line 38
    move-object v1, v0

    .line 39
    move v0, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->b:I

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->c:I

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->a:I

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->g:Landroidx/media3/common/AudioAttributes;

    .line 70
    .line 71
    iget-boolean v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->d:Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    .line 73
    const/4 v6, 0x1

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    :try_start_2
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 77
    .line 78
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x3

    .line 82
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/16 v5, 0x10

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 102
    .line 103
    .line 104
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :goto_1
    :try_start_3
    new-instance v5, Landroid/media/AudioTrack$Builder;

    .line 106
    .line 107
    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    const/16 v4, 0x1d

    .line 135
    .line 136
    if-lt v2, v4, :cond_4

    .line 137
    .line 138
    iget-boolean v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->e:Z

    .line 139
    .line 140
    invoke-static {v0, v4}, Ll0;->o(Landroid/media/AudioTrack$Builder;Z)V

    .line 141
    .line 142
    .line 143
    :cond_4
    if-lt v2, v3, :cond_5

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-static {v0, v1}, Ld1;->p(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 151
    .line 152
    .line 153
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 154
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-ne v0, v6, :cond_6

    .line 159
    .line 160
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 161
    .line 162
    iget v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    .line 163
    .line 164
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->g:Landroidx/media3/common/util/Clock;

    .line 165
    .line 166
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->d:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider$CapabilityChangeListener;

    .line 167
    .line 168
    move-object v2, p1

    .line 169
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$CapabilityChangeListener;FLandroidx/media3/common/util/Clock;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    .line 175
    .line 176
    :catch_0
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;

    .line 177
    .line 178
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    goto :goto_2

    .line 184
    :catch_2
    move-exception v0

    .line 185
    :goto_2
    move-object p0, v0

    .line 186
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public final b(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 9
    .line 10
    check-cast v1, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 11
    .line 12
    invoke-virtual {v1, v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;

    .line 17
    .line 18
    invoke-direct {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 22
    .line 23
    iget v4, v0, Landroidx/media3/common/Format;->M:I

    .line 24
    .line 25
    const-string v5, "audio/raw"

    .line 26
    .line 27
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x2

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    if-ne v4, v6, :cond_1

    .line 36
    .line 37
    :goto_0
    move v5, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    iput v5, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->d:I

    .line 49
    .line 50
    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->a:Z

    .line 51
    .line 52
    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a:Z

    .line 53
    .line 54
    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->b:Z

    .line 55
    .line 56
    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->b:Z

    .line 57
    .line 58
    iget-boolean p0, v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->c:Z

    .line 59
    .line 60
    iput-boolean p0, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->c:Z

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final c(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->a:Landroidx/media3/common/Format;

    .line 6
    .line 7
    iget-boolean v3, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->d:Z

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 15
    .line 16
    iget v6, v2, Landroidx/media3/common/Format;->K:I

    .line 17
    .line 18
    iget v7, v2, Landroidx/media3/common/Format;->J:I

    .line 19
    .line 20
    iget v8, v2, Landroidx/media3/common/Format;->L:I

    .line 21
    .line 22
    iget v9, v2, Landroidx/media3/common/Format;->M:I

    .line 23
    .line 24
    const-string v10, "audio/raw"

    .line 25
    .line 26
    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    const/4 v11, 0x2

    .line 31
    const/4 v12, -0x1

    .line 32
    const/4 v13, 0x1

    .line 33
    if-eqz v10, :cond_1

    .line 34
    .line 35
    invoke-static {v9}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 40
    .line 41
    .line 42
    if-eq v6, v12, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v7}, Landroidx/media3/common/util/Util;->m(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    :goto_0
    invoke-static {v9}, Landroidx/media3/common/util/Util;->n(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    mul-int/2addr v3, v7

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_1
    const/4 v15, 0x0

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->c:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 62
    .line 63
    check-cast v9, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    .line 64
    .line 65
    invoke-virtual {v9, v2, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->a(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    sget-object v9, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->d:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    .line 71
    .line 72
    :goto_2
    if-eqz v3, :cond_7

    .line 73
    .line 74
    iget-boolean v3, v9, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->a:Z

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v3, v2, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v5, v3}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v6, v12, :cond_3

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-static {v7}, Landroidx/media3/common/util/Util;->m(I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    :goto_3
    const/16 v10, 0xb

    .line 95
    .line 96
    const/16 v15, 0xc

    .line 97
    .line 98
    if-eq v3, v10, :cond_4

    .line 99
    .line 100
    if-ne v3, v15, :cond_6

    .line 101
    .line 102
    :cond_4
    const/16 v10, 0x3e80

    .line 103
    .line 104
    if-lt v8, v10, :cond_6

    .line 105
    .line 106
    sget-object v10, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->l:Lcom/google/common/base/Supplier;

    .line 107
    .line 108
    invoke-interface {v10}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    check-cast v10, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-nez v10, :cond_6

    .line 119
    .line 120
    if-ne v3, v15, :cond_5

    .line 121
    .line 122
    if-ne v7, v11, :cond_5

    .line 123
    .line 124
    const/4 v6, 0x4

    .line 125
    :cond_5
    div-int/lit8 v8, v8, 0x2

    .line 126
    .line 127
    const/16 v3, 0xa

    .line 128
    .line 129
    :cond_6
    iget-boolean v7, v9, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->b:Z

    .line 130
    .line 131
    move v9, v3

    .line 132
    move v3, v12

    .line 133
    move v10, v13

    .line 134
    move v15, v10

    .line 135
    goto :goto_4

    .line 136
    :cond_7
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 137
    .line 138
    invoke-virtual {v3, v2, v4}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-eqz v3, :cond_16

    .line 143
    .line 144
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v6, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v3, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    move v10, v11

    .line 161
    move v3, v12

    .line 162
    const/4 v7, 0x0

    .line 163
    goto :goto_1

    .line 164
    :goto_4
    iget v2, v2, Landroidx/media3/common/Format;->k:I

    .line 165
    .line 166
    const-string v14, "audio/vnd.dts.hd;profile=lbr"

    .line 167
    .line 168
    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    if-ne v2, v12, :cond_8

    .line 175
    .line 176
    const v2, 0xbb800

    .line 177
    .line 178
    .line 179
    :cond_8
    iget v5, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->h:I

    .line 180
    .line 181
    if-eq v5, v12, :cond_9

    .line 182
    .line 183
    move/from16 v16, v13

    .line 184
    .line 185
    goto/16 :goto_e

    .line 186
    .line 187
    :cond_9
    invoke-static {v8, v6, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    const/4 v14, -0x2

    .line 192
    if-eq v5, v14, :cond_a

    .line 193
    .line 194
    move v14, v13

    .line 195
    goto :goto_5

    .line 196
    :cond_a
    const/4 v14, 0x0

    .line 197
    :goto_5
    invoke-static {v14}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 198
    .line 199
    .line 200
    if-eq v3, v12, :cond_b

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    move v3, v13

    .line 204
    :goto_6
    if-eqz v15, :cond_c

    .line 205
    .line 206
    iget v14, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->e:F

    .line 207
    .line 208
    float-to-double v11, v14

    .line 209
    goto :goto_7

    .line 210
    :cond_c
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 211
    .line 212
    :goto_7
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->b:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 213
    .line 214
    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    const-wide/32 v17, 0xf4240

    .line 220
    .line 221
    .line 222
    if-eqz v10, :cond_14

    .line 223
    .line 224
    if-eq v10, v13, :cond_12

    .line 225
    .line 226
    const/4 v14, 0x2

    .line 227
    if-ne v10, v14, :cond_11

    .line 228
    .line 229
    const/4 v14, 0x5

    .line 230
    move/from16 v16, v13

    .line 231
    .line 232
    const/16 v13, 0x8

    .line 233
    .line 234
    if-ne v9, v14, :cond_d

    .line 235
    .line 236
    const v14, 0x7a120

    .line 237
    .line 238
    .line 239
    :goto_8
    const/4 v0, -0x1

    .line 240
    goto :goto_9

    .line 241
    :cond_d
    if-ne v9, v13, :cond_e

    .line 242
    .line 243
    const v14, 0xf4240

    .line 244
    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_e
    const v14, 0x3d090

    .line 248
    .line 249
    .line 250
    goto :goto_8

    .line 251
    :goto_9
    if-eq v2, v0, :cond_f

    .line 252
    .line 253
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 254
    .line 255
    invoke-static {v2, v13}, Lcom/google/common/math/IntMath;->b(II)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    goto :goto_b

    .line 260
    :cond_f
    invoke-static {v9}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    const v2, -0x7fffffff

    .line 265
    .line 266
    .line 267
    if-eq v0, v2, :cond_10

    .line 268
    .line 269
    move/from16 v2, v16

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_10
    const/4 v2, 0x0

    .line 273
    :goto_a
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 274
    .line 275
    .line 276
    :goto_b
    int-to-long v13, v14

    .line 277
    move-wide/from16 v19, v11

    .line 278
    .line 279
    int-to-long v11, v0

    .line 280
    mul-long/2addr v13, v11

    .line 281
    div-long v13, v13, v17

    .line 282
    .line 283
    invoke-static {v13, v14}, Lcom/google/common/primitives/Ints;->b(J)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    goto :goto_d

    .line 288
    :cond_11
    invoke-static {}, Lfe;->h()V

    .line 289
    .line 290
    .line 291
    const/4 v0, 0x0

    .line 292
    return-object v0

    .line 293
    :cond_12
    move-wide/from16 v19, v11

    .line 294
    .line 295
    move/from16 v16, v13

    .line 296
    .line 297
    invoke-static {v9}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    const v2, -0x7fffffff

    .line 302
    .line 303
    .line 304
    if-eq v0, v2, :cond_13

    .line 305
    .line 306
    move/from16 v2, v16

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_13
    const/4 v2, 0x0

    .line 310
    :goto_c
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 311
    .line 312
    .line 313
    const-wide/32 v11, 0x2faf080

    .line 314
    .line 315
    .line 316
    int-to-long v13, v0

    .line 317
    mul-long/2addr v11, v13

    .line 318
    div-long v11, v11, v17

    .line 319
    .line 320
    invoke-static {v11, v12}, Lcom/google/common/primitives/Ints;->b(J)I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    goto :goto_d

    .line 325
    :cond_14
    move-wide/from16 v19, v11

    .line 326
    .line 327
    move/from16 v16, v13

    .line 328
    .line 329
    const-wide/32 v11, 0x7a120

    .line 330
    .line 331
    .line 332
    int-to-long v13, v8

    .line 333
    mul-long/2addr v11, v13

    .line 334
    int-to-long v13, v3

    .line 335
    mul-long/2addr v11, v13

    .line 336
    div-long v11, v11, v17

    .line 337
    .line 338
    invoke-static {v11, v12}, Lcom/google/common/primitives/Ints;->b(J)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    :goto_d
    int-to-double v11, v0

    .line 343
    mul-double v11, v11, v19

    .line 344
    .line 345
    double-to-int v0, v11

    .line 346
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    add-int/2addr v0, v3

    .line 351
    add-int/lit8 v0, v0, -0x1

    .line 352
    .line 353
    div-int/2addr v0, v3

    .line 354
    mul-int v5, v0, v3

    .line 355
    .line 356
    :goto_e
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 359
    .line 360
    .line 361
    sget-object v2, Landroidx/media3/common/AudioAttributes;->b:Landroidx/media3/common/AudioAttributes;

    .line 362
    .line 363
    const/4 v2, -0x1

    .line 364
    iput v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->i:I

    .line 365
    .line 366
    iput v8, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->b:I

    .line 367
    .line 368
    iput v6, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->c:I

    .line 369
    .line 370
    iput v9, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->a:I

    .line 371
    .line 372
    iput v5, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->f:I

    .line 373
    .line 374
    iget v2, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->e:I

    .line 375
    .line 376
    iput v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->h:I

    .line 377
    .line 378
    iput-object v4, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->g:Landroidx/media3/common/AudioAttributes;

    .line 379
    .line 380
    move/from16 v2, v16

    .line 381
    .line 382
    if-ne v10, v2, :cond_15

    .line 383
    .line 384
    move v13, v2

    .line 385
    goto :goto_f

    .line 386
    :cond_15
    const/4 v13, 0x0

    .line 387
    :goto_f
    iput-boolean v13, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->e:Z

    .line 388
    .line 389
    iget-boolean v2, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->g:Z

    .line 390
    .line 391
    iput-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->d:Z

    .line 392
    .line 393
    iput-boolean v15, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->j:Z

    .line 394
    .line 395
    iput-boolean v7, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->k:Z

    .line 396
    .line 397
    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->f:I

    .line 398
    .line 399
    iput v1, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->i:I

    .line 400
    .line 401
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 402
    .line 403
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)V

    .line 404
    .line 405
    .line 406
    return-object v1

    .line 407
    :cond_16
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;

    .line 408
    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v3, "Unable to configure passthrough for: "

    .line 412
    .line 413
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f:Landroidx/media3/common/util/ListenerSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 9
    .line 10
    if-eqz p0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->d:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 29
    .line 30
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    if-lt v2, v3, :cond_4

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    iget-object v3, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->c:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v4, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v4, v2}, Lk;->g(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 61
    .line 62
    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->e:Landroid/content/BroadcastReceiver;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->f:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->a:Landroid/content/ContentResolver;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    .line 78
    .line 79
    :cond_6
    :goto_1
    return-void
.end method

.method public final e(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->c:Landroid/media/AudioDeviceInfo;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->b:Landroidx/media3/common/AudioAttributes;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->f()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    .line 12
    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 20
    .line 21
    new-instance v5, Lp;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v5, v6, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v4, v5, p1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lp;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 31
    .line 32
    iget-boolean p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->k:Z

    .line 44
    .line 45
    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->f:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->a:Landroid/content/ContentResolver;

    .line 50
    .line 51
    iget-object v4, p1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->b:Landroid/net/Uri;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {v0, v4, v5, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->d:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallback;

    .line 64
    .line 65
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 68
    .line 69
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v4, 0x20

    .line 73
    .line 74
    if-lt v0, v4, :cond_2

    .line 75
    .line 76
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    invoke-static {p1}, Landroidx/media3/common/util/Util;->C(Landroid/content/Context;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    new-instance v4, Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 85
    .line 86
    new-instance v6, Le;

    .line 87
    .line 88
    const/4 v7, 0x4

    .line 89
    invoke-direct {v6, v7, v1}, Le;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {v4, p1, v6, v0}, Landroidx/media3/exoplayer/util/SpatializerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    .line 97
    .line 98
    .line 99
    iput-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->g:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 100
    .line 101
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 102
    .line 103
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->e:Landroid/content/BroadcastReceiver;

    .line 107
    .line 108
    invoke-virtual {p1, v3, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 117
    .line 118
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 119
    .line 120
    invoke-static {p1, v0, v3, v4, v2}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 125
    .line 126
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    if-eqz v1, :cond_7

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iput-object v0, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 143
    .line 144
    iget-object v4, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    .line 145
    .line 146
    iget-object v5, v1, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    sget-object v7, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    .line 153
    .line 154
    new-instance v7, Landroid/content/IntentFilter;

    .line 155
    .line 156
    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-static {v4, v7, v5, v0, v6}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->i:Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 171
    .line 172
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 173
    .line 174
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    iput-object p1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->j:Landroidx/media3/common/AudioAttributes;

    .line 182
    .line 183
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a:Landroid/content/Context;

    .line 184
    .line 185
    iget-object v4, v0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->i:Landroid/media/AudioDeviceInfo;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->a()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    sget-object v6, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    .line 192
    .line 193
    new-instance v6, Landroid/content/IntentFilter;

    .line 194
    .line 195
    invoke-direct {v6, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v1, v2, p1, v4, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->b(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->h:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->j:Landroid/os/Looper;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 20
    :goto_1
    const-string v3, "null"

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    move-object v1, v3

    .line 25
    goto :goto_2

    .line 26
    :cond_3
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
    :goto_2
    if-nez v0, :cond_4

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_3
    if-eqz v2, :cond_5

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->j:Landroid/os/Looper;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_5
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s"

    .line 55
    .line 56
    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
