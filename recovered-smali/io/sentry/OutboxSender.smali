.class public final Lio/sentry/OutboxSender;
.super Lio/sentry/DirectoryProcessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final i:Ljava/nio/charset/Charset;


# instance fields
.field public final e:Lio/sentry/IScopes;

.field public final f:Lio/sentry/IEnvelopeReader;

.field public final g:Lio/sentry/ISerializer;

.field public final h:Lio/sentry/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/OutboxSender;->i:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/IScopes;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p4

    .line 4
    move-wide v3, p5

    .line 5
    move v5, p7

    .line 6
    invoke-direct/range {v0 .. v5}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/IScopes;Lio/sentry/ILogger;JI)V

    .line 7
    .line 8
    .line 9
    const-string p0, "Scopes are required."

    .line 10
    .line 11
    invoke-static {v1, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lio/sentry/OutboxSender;->e:Lio/sentry/IScopes;

    .line 15
    .line 16
    const-string p0, "Envelope reader is required."

    .line 17
    .line 18
    invoke-static {p2, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, v0, Lio/sentry/OutboxSender;->f:Lio/sentry/IEnvelopeReader;

    .line 22
    .line 23
    const-string p0, "Serializer is required."

    .line 24
    .line 25
    invoke-static {p3, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p3, v0, Lio/sentry/OutboxSender;->g:Lio/sentry/ISerializer;

    .line 29
    .line 30
    const-string p0, "Logger is required."

    .line 31
    .line 32
    invoke-static {v2, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic c(Lio/sentry/OutboxSender;Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 2

    .line 1
    const-string v0, "Failed to delete: %s"

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 4
    .line 5
    invoke-interface {p2}, Lio/sentry/hints/Retryable;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p2

    .line 32
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p0, v1, p2, v0, p1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p0, "session"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "previous_session"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "startup_crash"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final b(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 7

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    const-class v1, Lio/sentry/hints/Retryable;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0, v2}, Lio/sentry/OutboxSender;->a(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "File \'%s\' should be ignored."

    .line 28
    .line 29
    invoke-interface {v3, p0, p2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 34
    .line 35
    new-instance v4, Ljava/io/FileInputStream;

    .line 36
    .line 37
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v4, p0, Lio/sentry/OutboxSender;->f:Lio/sentry/IEnvelopeReader;

    .line 44
    .line 45
    invoke-interface {v4, v2}, Lio/sentry/IEnvelopeReader;->a(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 52
    .line 53
    const-string v5, "Stream from path %s resulted in a null envelope."

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v4

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p0, v4, p2}, Lio/sentry/OutboxSender;->e(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 70
    .line 71
    .line 72
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 73
    .line 74
    const-string v5, "File \'%s\' is done."

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    check-cast v2, Lio/sentry/hints/Retryable;

    .line 107
    .line 108
    invoke-static {p0, p1, v2}, Lio/sentry/OutboxSender;->c(Lio/sentry/OutboxSender;Ljava/io/File;Lio/sentry/hints/Retryable;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    invoke-static {v1, v2, v3}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_1
    move-exception v2

    .line 117
    goto :goto_5

    .line 118
    :catch_0
    move-exception v2

    .line 119
    goto :goto_3

    .line 120
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_2
    move-exception v2

    .line 125
    :try_start_4
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    :goto_3
    :try_start_5
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 130
    .line 131
    const-string v5, "Error processing envelope."

    .line 132
    .line 133
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_3

    .line 149
    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    check-cast v2, Lio/sentry/hints/Retryable;

    .line 153
    .line 154
    invoke-static {p0, p1, v2}, Lio/sentry/OutboxSender;->c(Lio/sentry/OutboxSender;Ljava/io/File;Lio/sentry/hints/Retryable;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_3
    invoke-static {v1, v2, v3}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    return-void

    .line 162
    :goto_5
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_4

    .line 175
    .line 176
    if-eqz v4, :cond_4

    .line 177
    .line 178
    check-cast v4, Lio/sentry/hints/Retryable;

    .line 179
    .line 180
    invoke-static {p0, p1, v4}, Lio/sentry/OutboxSender;->c(Lio/sentry/OutboxSender;Ljava/io/File;Lio/sentry/hints/Retryable;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_4
    invoke-static {v1, v4, v3}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 185
    .line 186
    .line 187
    :goto_6
    throw v2
.end method

.method public final d(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;
    .locals 9

    .line 1
    iget-object p0, p0, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p1, Lio/sentry/TraceContext;->p:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v5, v1}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const-string v1, "Invalid sample rate parsed from TraceContext: %s"

    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p1, Lio/sentry/TraceContext;->q:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6, v1}, Lio/sentry/util/SampleRateUtils;->c(Ljava/lang/Double;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 55
    .line 56
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-direct/range {v3 .. v8}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 62
    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_1
    new-instance p1, Lio/sentry/TracesSamplingDecision;

    .line 66
    .line 67
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-direct {p1, v1, v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->a(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object p0

    .line 77
    :catch_0
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 78
    .line 79
    const-string v1, "Unable to parse sample rate from TraceContext: %s"

    .line 80
    .line 81
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    new-instance p0, Lio/sentry/TracesSamplingDecision;

    .line 89
    .line 90
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 94
    .line 95
    .line 96
    return-object p0
.end method

.method public final e(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 8
    .line 9
    iget-object v4, v0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 10
    .line 11
    iget-object v5, v0, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 12
    .line 13
    instance-of v0, v4, Ljava/util/Collection;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move-object v0, v4

    .line 19
    check-cast v0, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move v7, v6

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eqz v8, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v7, v7, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v7

    .line 44
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v7, v1, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 53
    .line 54
    const-string v8, "Processing Envelope with %d item(s)"

    .line 55
    .line 56
    invoke-interface {v7, v3, v8, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_11

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    iget-object v4, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 78
    .line 79
    iget-object v8, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 80
    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 84
    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v8, "Item %d has no header"

    .line 94
    .line 95
    invoke-interface {v7, v0, v8, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    move-object/from16 p1, v3

    .line 99
    .line 100
    move/from16 v16, v6

    .line 101
    .line 102
    goto/16 :goto_f

    .line 103
    .line 104
    :cond_2
    sget-object v9, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 105
    .line 106
    iget-object v10, v4, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    const-string v10, "Timed out waiting for event id submission: %s"

    .line 113
    .line 114
    const-string v11, "Item %d is being captured."

    .line 115
    .line 116
    const-string v12, "Item %d of has a different event id (%s) to the envelope header (%s)"

    .line 117
    .line 118
    const-string v13, "Item %d of type %s returned null by the parser."

    .line 119
    .line 120
    const-string v14, "Item failed to process."

    .line 121
    .line 122
    iget-object v15, v1, Lio/sentry/OutboxSender;->g:Lio/sentry/ISerializer;

    .line 123
    .line 124
    move-object/from16 p1, v3

    .line 125
    .line 126
    sget-object v3, Lio/sentry/OutboxSender;->i:Ljava/nio/charset/Charset;

    .line 127
    .line 128
    move/from16 v16, v6

    .line 129
    .line 130
    iget-object v6, v1, Lio/sentry/OutboxSender;->e:Lio/sentry/IScopes;

    .line 131
    .line 132
    if-eqz v9, :cond_8

    .line 133
    .line 134
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 135
    .line 136
    new-instance v9, Ljava/io/InputStreamReader;

    .line 137
    .line 138
    move-object/from16 v17, v0

    .line 139
    .line 140
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 141
    .line 142
    move-object/from16 v18, v14

    .line 143
    .line 144
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    invoke-direct {v0, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v9, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .line 156
    .line 157
    :try_start_2
    const-class v0, Lio/sentry/SentryEvent;

    .line 158
    .line 159
    invoke-interface {v15, v4, v0}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lio/sentry/SentryEvent;

    .line 164
    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 168
    .line 169
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    iget-object v6, v8, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 174
    .line 175
    filled-new-array {v3, v6}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v7, v0, v13, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_5

    .line 183
    .line 184
    :goto_3
    move-object v3, v0

    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :cond_3
    iget-object v3, v0, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 188
    .line 189
    if-eqz v3, :cond_5

    .line 190
    .line 191
    iget-object v3, v3, Lio/sentry/protocol/SdkVersion;->j:Ljava/lang/String;

    .line 192
    .line 193
    const-string v8, "sentry.javascript"

    .line 194
    .line 195
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_4

    .line 200
    .line 201
    const-string v8, "sentry.dart"

    .line 202
    .line 203
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_4

    .line 208
    .line 209
    const-string v8, "sentry.dotnet"

    .line 210
    .line 211
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_5

    .line 216
    .line 217
    :cond_4
    const-string v3, "sentry:isFromHybridSdk"

    .line 218
    .line 219
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v2, v8, v3}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    goto :goto_3

    .line 227
    :cond_5
    :goto_4
    iget-object v3, v5, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 228
    .line 229
    if-eqz v3, :cond_6

    .line 230
    .line 231
    iget-object v8, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 232
    .line 233
    invoke-virtual {v3, v8}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_6

    .line 238
    .line 239
    iget-object v0, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 240
    .line 241
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 242
    .line 243
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    iget-object v8, v5, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 248
    .line 249
    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-interface {v7, v3, v12, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .line 255
    .line 256
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    .line 258
    .line 259
    goto/16 :goto_f

    .line 260
    .line 261
    :catchall_1
    move-exception v0

    .line 262
    goto :goto_8

    .line 263
    :cond_6
    :try_start_4
    invoke-interface {v6, v0, v2}, Lio/sentry/IScopes;->x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 264
    .line 265
    .line 266
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 267
    .line 268
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-interface {v7, v3, v11, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Lio/sentry/OutboxSender;->f(Lio/sentry/Hint;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_7

    .line 284
    .line 285
    iget-object v0, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 286
    .line 287
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 288
    .line 289
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-interface {v7, v3, v10, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    .line 295
    .line 296
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_10

    .line 300
    .line 301
    :cond_7
    :goto_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 302
    .line 303
    .line 304
    goto/16 :goto_e

    .line 305
    .line 306
    :goto_6
    :try_start_6
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :catchall_2
    move-exception v0

    .line 311
    :try_start_7
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    :goto_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 315
    :catchall_3
    move-exception v0

    .line 316
    move-object/from16 v18, v14

    .line 317
    .line 318
    :goto_8
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 319
    .line 320
    move-object/from16 v9, v18

    .line 321
    .line 322
    invoke-interface {v7, v3, v9, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_e

    .line 326
    .line 327
    :cond_8
    move-object/from16 v17, v0

    .line 328
    .line 329
    move-object v9, v14

    .line 330
    sget-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 331
    .line 332
    iget-object v14, v4, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 333
    .line 334
    iget-object v4, v4, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 335
    .line 336
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_d

    .line 341
    .line 342
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    .line 343
    .line 344
    new-instance v0, Ljava/io/InputStreamReader;

    .line 345
    .line 346
    new-instance v14, Ljava/io/ByteArrayInputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 347
    .line 348
    move-object/from16 v18, v9

    .line 349
    .line 350
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    invoke-direct {v14, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v0, v14, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 358
    .line 359
    .line 360
    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 361
    .line 362
    .line 363
    :try_start_a
    const-class v0, Lio/sentry/protocol/SentryTransaction;

    .line 364
    .line 365
    invoke-interface {v15, v4, v0}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lio/sentry/protocol/SentryTransaction;

    .line 370
    .line 371
    if-nez v0, :cond_9

    .line 372
    .line 373
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 374
    .line 375
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget-object v6, v8, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 380
    .line 381
    filled-new-array {v3, v6}, [Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-interface {v7, v0, v13, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :goto_9
    move-object v3, v0

    .line 390
    goto :goto_b

    .line 391
    :cond_9
    iget-object v3, v5, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 392
    .line 393
    if-eqz v3, :cond_a

    .line 394
    .line 395
    iget-object v8, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 396
    .line 397
    invoke-virtual {v3, v8}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-nez v3, :cond_a

    .line 402
    .line 403
    iget-object v0, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 404
    .line 405
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 406
    .line 407
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    iget-object v8, v5, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 412
    .line 413
    filled-new-array {v6, v8, v0}, [Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {v7, v3, v12, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 418
    .line 419
    .line 420
    :try_start_b
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 421
    .line 422
    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :catchall_4
    move-exception v0

    .line 426
    goto :goto_d

    .line 427
    :catchall_5
    move-exception v0

    .line 428
    goto :goto_9

    .line 429
    :cond_a
    :try_start_c
    iget-object v3, v5, Lio/sentry/SentryEnvelopeHeader;->l:Lio/sentry/TraceContext;

    .line 430
    .line 431
    iget-object v8, v0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 432
    .line 433
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 434
    .line 435
    .line 436
    move-result-object v8

    .line 437
    if-eqz v8, :cond_b

    .line 438
    .line 439
    iget-object v8, v0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 440
    .line 441
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 442
    .line 443
    .line 444
    move-result-object v8

    .line 445
    invoke-virtual {v1, v3}, Lio/sentry/OutboxSender;->d(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-virtual {v8, v9}, Lio/sentry/SpanContext;->a(Lio/sentry/TracesSamplingDecision;)V

    .line 450
    .line 451
    .line 452
    :cond_b
    const/4 v8, 0x0

    .line 453
    invoke-interface {v6, v0, v3, v2, v8}, Lio/sentry/IScopes;->u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    .line 454
    .line 455
    .line 456
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 457
    .line 458
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-interface {v7, v3, v11, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2}, Lio/sentry/OutboxSender;->f(Lio/sentry/Hint;)Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-nez v3, :cond_c

    .line 474
    .line 475
    iget-object v0, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 476
    .line 477
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 478
    .line 479
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-interface {v7, v3, v10, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 484
    .line 485
    .line 486
    :try_start_d
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_10

    .line 490
    .line 491
    :cond_c
    :goto_a
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 492
    .line 493
    .line 494
    goto :goto_e

    .line 495
    :goto_b
    :try_start_e
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 496
    .line 497
    .line 498
    goto :goto_c

    .line 499
    :catchall_6
    move-exception v0

    .line 500
    :try_start_f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    :goto_c
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 504
    :catchall_7
    move-exception v0

    .line 505
    move-object/from16 v18, v9

    .line 506
    .line 507
    :goto_d
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 508
    .line 509
    move-object/from16 v9, v18

    .line 510
    .line 511
    invoke-interface {v7, v3, v9, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    .line 513
    .line 514
    goto :goto_e

    .line 515
    :cond_d
    new-instance v0, Lio/sentry/SentryEnvelope;

    .line 516
    .line 517
    iget-object v3, v5, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 518
    .line 519
    iget-object v8, v5, Lio/sentry/SentryEnvelopeHeader;->k:Lio/sentry/protocol/SdkVersion;

    .line 520
    .line 521
    move-object/from16 v9, v17

    .line 522
    .line 523
    invoke-direct {v0, v3, v8, v9}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 524
    .line 525
    .line 526
    invoke-interface {v6, v0, v2}, Lio/sentry/IScopes;->g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 527
    .line 528
    .line 529
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 530
    .line 531
    invoke-virtual {v4}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    filled-new-array {v3, v6}, [Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    const-string v6, "%s item %d is being captured."

    .line 544
    .line 545
    invoke-interface {v7, v0, v6, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v2}, Lio/sentry/OutboxSender;->f(Lio/sentry/Hint;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-nez v0, :cond_e

    .line 553
    .line 554
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 555
    .line 556
    invoke-virtual {v4}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    const-string v2, "Timed out waiting for item type submission: %s"

    .line 565
    .line 566
    invoke-interface {v7, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    goto :goto_10

    .line 570
    :cond_e
    :goto_e
    const-string v0, "sentry:typeCheckHint"

    .line 571
    .line 572
    invoke-virtual {v2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    instance-of v4, v3, Lio/sentry/hints/SubmissionResult;

    .line 577
    .line 578
    if-eqz v4, :cond_f

    .line 579
    .line 580
    check-cast v3, Lio/sentry/hints/SubmissionResult;

    .line 581
    .line 582
    invoke-interface {v3}, Lio/sentry/hints/SubmissionResult;->f()Z

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    if-nez v3, :cond_f

    .line 587
    .line 588
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 589
    .line 590
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    const-string v2, "Envelope had a failed capture at item %d. No more items will be sent."

    .line 599
    .line 600
    invoke-interface {v7, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    goto :goto_10

    .line 604
    :cond_f
    invoke-virtual {v2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    const-class v4, Lio/sentry/hints/Resettable;

    .line 613
    .line 614
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    if-eqz v0, :cond_10

    .line 619
    .line 620
    if-eqz v3, :cond_10

    .line 621
    .line 622
    check-cast v3, Lio/sentry/hints/Resettable;

    .line 623
    .line 624
    invoke-interface {v3}, Lio/sentry/hints/Resettable;->reset()V

    .line 625
    .line 626
    .line 627
    :cond_10
    :goto_f
    move-object/from16 v3, p1

    .line 628
    .line 629
    move/from16 v6, v16

    .line 630
    .line 631
    goto/16 :goto_2

    .line 632
    .line 633
    :cond_11
    :goto_10
    return-void
.end method

.method public final f(Lio/sentry/Hint;)Z
    .locals 1

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lio/sentry/hints/Flushable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lio/sentry/hints/Flushable;

    .line 12
    .line 13
    invoke-interface {p1}, Lio/sentry/hints/Flushable;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const-class v0, Lio/sentry/hints/Flushable;

    .line 19
    .line 20
    iget-object p0, p0, Lio/sentry/OutboxSender;->h:Lio/sentry/ILogger;

    .line 21
    .line 22
    invoke-static {v0, p1, p0}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0
.end method
