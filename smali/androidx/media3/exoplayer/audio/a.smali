.class public final synthetic Landroidx/media3/exoplayer/audio/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/audio/a;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/audio/a;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    .line 7
    .line 8
    check-cast p1, Lh7;

    .line 9
    .line 10
    iget-object p0, p1, Lh7;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->B:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 24
    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 40
    .line 41
    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 42
    .line 43
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 46
    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 56
    .line 57
    :cond_2
    :goto_1
    return-void

    .line 58
    :pswitch_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 59
    .line 60
    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 61
    .line 62
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 65
    .line 66
    if-eq p1, v0, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->P:Z

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 78
    .line 79
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 80
    .line 81
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->b()V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    return-void

    .line 89
    :pswitch_2
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 90
    .line 91
    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->d0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 99
    .line 100
    .line 101
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 102
    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 104
    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 108
    .line 109
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 113
    .line 114
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 115
    .line 116
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    new-instance v1, Lq3;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-direct {v1, p0, p1, v2}, Lq3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void

    .line 132
    :pswitch_3
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 133
    .line 134
    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 135
    .line 136
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 137
    .line 138
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 139
    .line 140
    if-eq p1, v0, :cond_6

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 148
    .line 149
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->d:I

    .line 150
    .line 151
    const/4 v1, -0x1

    .line 152
    if-eq v0, v1, :cond_7

    .line 153
    .line 154
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 155
    .line 156
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 157
    .line 158
    div-int/2addr p1, v0

    .line 159
    int-to-long v0, p1

    .line 160
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->t:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->X:J

    .line 186
    .line 187
    sub-long v11, v2, v4

    .line 188
    .line 189
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 190
    .line 191
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->p:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 192
    .line 193
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->e:Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 194
    .line 195
    iget v8, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->f:I

    .line 196
    .line 197
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v9

    .line 201
    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 202
    .line 203
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 204
    .line 205
    iget-object v7, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 206
    .line 207
    iget-object p0, v7, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 208
    .line 209
    if-eqz p0, :cond_8

    .line 210
    .line 211
    new-instance v6, Lo3;

    .line 212
    .line 213
    invoke-direct/range {v6 .. v12}, Lo3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_4
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
