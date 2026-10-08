.class public final synthetic Landroidx/media3/exoplayer/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/exoplayer/h;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/h;->k:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;I)V
    .locals 0

    .line 10
    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/h;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/h;->k:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    .line 11
    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/h;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/h;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/h;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/h;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/PlayerMessage;

    .line 9
    .line 10
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0:I

    .line 11
    .line 12
    :try_start_0
    monitor-enter p0

    .line 13
    monitor-exit p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->a:Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    .line 30
    .line 31
    .line 32
    throw v1
    :try_end_2
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "ExoPlayerImplInternal"

    .line 35
    .line 36
    const-string v1, "Unexpected error delivering message on external thread."

    .line 37
    .line 38
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 50
    .line 51
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->G()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lb7;

    .line 58
    .line 59
    const/4 v2, 0x3

    .line 60
    invoke-direct {v1, v2}, Lb7;-><init>(I)V

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x40a

    .line 64
    .line 65
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->B:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->e:Landroid/content/Context;

    .line 74
    .line 75
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/media/AudioManager;->generateAudioSessionId()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, -0x1

    .line 86
    const/4 v3, 0x0

    .line 87
    if-eq v1, v2, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move v1, v3

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq v2, v1, :cond_1

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->l:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 111
    .line 112
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 113
    .line 114
    const/16 v0, 0x28

    .line 115
    .line 116
    invoke-interface {p0, v0, v1, v3}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    .line 121
    .line 122
    .line 123
    :cond_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
