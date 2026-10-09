.class public final synthetic Lio/sentry/android/replay/capture/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:J

.field public final synthetic m:Lio/sentry/android/replay/ScreenshotRecorderConfig;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Lkotlin/jvm/functions/Function2;JLio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/capture/c;->j:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/capture/c;->k:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/sentry/android/replay/capture/c;->l:J

    .line 9
    .line 10
    iput-object p5, p0, Lio/sentry/android/replay/capture/c;->m:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    sget v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->u:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/capture/c;->j:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 4
    .line 5
    iget-object v0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 6
    .line 7
    iget-object v11, v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v2, p0, Lio/sentry/android/replay/capture/c;->l:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lio/sentry/android/replay/capture/c;->k:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    invoke-interface {v3, v0, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    .line 23
    .line 24
    sget-object v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    aget-object v2, v2, v12

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v4, v0

    .line 34
    check-cast v4, Ljava/util/Date;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 44
    .line 45
    const-string v2, "Segment timestamp is not set, not recording frame"

    .line 46
    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v2, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    const-string v2, "Not capturing segment, because the app is terminating, will be captured on next launch"

    .line 68
    .line 69
    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iget-object p0, p0, Lio/sentry/android/replay/capture/c;->m:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 76
    .line 77
    if-nez p0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 84
    .line 85
    const-string v2, "Recorder config is not set, not capturing a segment"

    .line 86
    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget-object v2, v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 94
    .line 95
    invoke-interface {v2}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 96
    .line 97
    .line 98
    move-result-wide v13

    .line 99
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    sub-long v2, v13, v2

    .line 104
    .line 105
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iget-wide v5, v5, Lio/sentry/SentryReplayOptions;->i:J

    .line 110
    .line 111
    cmp-long v2, v2, v5

    .line 112
    .line 113
    if-ltz v2, :cond_4

    .line 114
    .line 115
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iget-wide v2, v2, Lio/sentry/SentryReplayOptions;->i:J

    .line 120
    .line 121
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i()Lio/sentry/protocol/SentryId;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    iget v7, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 130
    .line 131
    iget v8, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 132
    .line 133
    iget v9, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->e:I

    .line 134
    .line 135
    iget v10, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->f:I

    .line 136
    .line 137
    invoke-static/range {v1 .. v10}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIII)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    instance-of v2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    check-cast p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 146
    .line 147
    iget-object v2, v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 148
    .line 149
    invoke-static {p0, v2}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/2addr v2, v12

    .line 157
    invoke-virtual {v1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l(I)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a:Lio/sentry/SentryReplayEvent;

    .line 161
    .line 162
    iget-object p0, p0, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 163
    .line 164
    invoke-virtual {v1, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n(Ljava/util/Date;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    iget-object p0, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 170
    .line 171
    .line 172
    move-result-wide v1

    .line 173
    sub-long/2addr v13, v1

    .line 174
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget-wide v1, p0, Lio/sentry/SentryReplayOptions;->j:J

    .line 179
    .line 180
    cmp-long p0, v13, v1

    .line 181
    .line 182
    if-ltz p0, :cond_5

    .line 183
    .line 184
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-interface {p0}, Lio/sentry/ReplayController;->stop()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 196
    .line 197
    const-string v2, "Session replay deadline exceeded (1h), stopping recording"

    .line 198
    .line 199
    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    .line 201
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_5
    return-void
.end method
