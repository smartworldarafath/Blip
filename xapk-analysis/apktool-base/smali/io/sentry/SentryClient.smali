.class public final Lio/sentry/SentryClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISentryClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryClient$SortBreadcrumbsByDate;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lio/sentry/SentryOptions;

.field public final c:Lio/sentry/transport/ITransport;

.field public final d:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

.field public final e:Lio/sentry/logger/ILoggerBatchProcessor;

.field public final f:Lio/sentry/metrics/IMetricsBatchProcessor;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SentryClient;->d:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/sentry/SentryClient;->a:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportFactory()Lio/sentry/ITransportFactory;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lio/sentry/NoOpTransportFactory;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lio/sentry/AsyncHttpTransportFactory;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setTransportFactory(Lio/sentry/ITransportFactory;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v1, Lio/sentry/RequestDetailsResolver;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lio/sentry/RequestDetailsResolver;-><init>(Lio/sentry/SentryOptions;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lio/sentry/RequestDetailsResolver;->a:Lio/sentry/Dsn;

    .line 38
    .line 39
    iget-object v3, v2, Lio/sentry/Dsn;->c:Ljava/net/URI;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, "/envelope/"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v4, v2, Lio/sentry/Dsn;->b:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v2, v2, Lio/sentry/Dsn;->a:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "Sentry sentry_version=7,sentry_client="

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v1, Lio/sentry/RequestDetailsResolver;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, ",sentry_key="

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-lez v4, :cond_1

    .line 101
    .line 102
    const-string v4, ",sentry_secret="

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const-string v2, ""

    .line 110
    .line 111
    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v4, Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v5, "User-Agent"

    .line 124
    .line 125
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v1, "X-Sentry-Auth"

    .line 129
    .line 130
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v1, Lio/sentry/RequestDetails;

    .line 134
    .line 135
    invoke-direct {v1, v3, v4}, Lio/sentry/RequestDetails;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, p1, v1}, Lio/sentry/ITransportFactory;->a(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;)Lio/sentry/transport/ITransport;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 143
    .line 144
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-boolean v0, v0, Lio/sentry/SentryOptions$Logs;->a:Z

    .line 149
    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Lio/sentry/SentryOptions$Logs;->b:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    .line 157
    .line 158
    invoke-interface {v0, p1, p0}, Lio/sentry/logger/ILoggerBatchProcessorFactory;->a(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/logger/ILoggerBatchProcessor;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lio/sentry/SentryClient;->e:Lio/sentry/logger/ILoggerBatchProcessor;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    sget-object v0, Lio/sentry/logger/NoOpLoggerBatchProcessor;->j:Lio/sentry/logger/NoOpLoggerBatchProcessor;

    .line 166
    .line 167
    iput-object v0, p0, Lio/sentry/SentryClient;->e:Lio/sentry/logger/ILoggerBatchProcessor;

    .line 168
    .line 169
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-boolean v0, v0, Lio/sentry/SentryOptions$Metrics;->a:Z

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v0, v0, Lio/sentry/SentryOptions$Metrics;->b:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    .line 182
    .line 183
    invoke-interface {v0, p1, p0}, Lio/sentry/metrics/IMetricsBatchProcessorFactory;->a(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lio/sentry/SentryClient;->f:Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 188
    .line 189
    return-void

    .line 190
    :cond_3
    sget-object p1, Lio/sentry/metrics/NoOpMetricsBatchProcessor;->j:Lio/sentry/metrics/NoOpMetricsBatchProcessor;

    .line 191
    .line 192
    iput-object p1, p0, Lio/sentry/SentryClient;->f:Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 193
    .line 194
    return-void
.end method

.method public static q(Lio/sentry/Hint;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/Hint;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/Hint;->d:Lio/sentry/Attachment;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lio/sentry/Hint;->e:Lio/sentry/Attachment;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p0, p0, Lio/sentry/Hint;->f:Lio/sentry/Attachment;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lio/sentry/Session;Lio/sentry/Hint;)V
    .locals 4

    .line 1
    const-string v0, "Session is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lio/sentry/Session;->v:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "Serializer is required."

    .line 28
    .line 29
    invoke-static {v0, v3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lio/sentry/SentryEnvelope;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lio/sentry/SentryEnvelopeItem;->d(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {v3, v0, v2, p1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3, p2}, Lio/sentry/SentryClient;->g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 52
    .line 53
    const-string v0, "Failed to capture session."

    .line 54
    .line 55
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    new-array p2, p2, [Ljava/lang/Object;

    .line 67
    .line 68
    const-string v0, "Sessions can\'t be captured without setting a release."

    .line 69
    .line 70
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v5, "Closing SentryClient."

    .line 13
    .line 14
    invoke-interface {v1, v2, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :goto_0
    invoke-virtual {p0, v1, v2}, Lio/sentry/SentryClient;->c(J)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lio/sentry/SentryClient;->e:Lio/sentry/logger/ILoggerBatchProcessor;

    .line 30
    .line 31
    invoke-interface {v1, p1}, Lio/sentry/logger/ILoggerBatchProcessor;->b(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lio/sentry/SentryClient;->f:Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 35
    .line 36
    invoke-interface {v1, p1}, Lio/sentry/metrics/IMetricsBatchProcessor;->b(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 40
    .line 41
    invoke-interface {v1, p1}, Lio/sentry/transport/ITransport;->b(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 51
    .line 52
    const-string v4, "Failed to close the connection to the Sentry Server."

    .line 53
    .line 54
    invoke-interface {v1, v2, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lio/sentry/EventProcessor;

    .line 76
    .line 77
    instance-of v2, v1, Ljava/io/Closeable;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    :try_start_1
    move-object v2, v1

    .line 82
    check-cast v2, Ljava/io/Closeable;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v2

    .line 89
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 94
    .line 95
    const-string v6, "Failed to close the event processor {}."

    .line 96
    .line 97
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iput-boolean v3, p0, Lio/sentry/SentryClient;->a:Z

    .line 106
    .line 107
    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/SentryClient;->e:Lio/sentry/logger/ILoggerBatchProcessor;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/sentry/logger/ILoggerBatchProcessor;->c(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/SentryClient;->f:Lio/sentry/metrics/IMetricsBatchProcessor;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lio/sentry/metrics/IMetricsBatchProcessor;->c(J)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2}, Lio/sentry/transport/ITransport;->c(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/transport/ITransport;->d()Lio/sentry/transport/RateLimiter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p3}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 8
    .line 9
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, Lio/sentry/IScope;->d()Lio/sentry/protocol/Request;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .line 70
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    :goto_1
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 101
    .line 102
    invoke-interface {p2}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-direct {v0, v2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_5

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2, v3}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-interface {p2}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    invoke-interface {p2}, Lio/sentry/IScope;->t()Lio/sentry/PropagationContext;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lio/sentry/TransactionContext;->b(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    invoke-interface {v0}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 184
    .line 185
    .line 186
    :cond_8
    :goto_3
    iget-object v0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 187
    .line 188
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 193
    .line 194
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 195
    .line 196
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    const-string v4, "Capturing session replay: %s"

    .line 201
    .line 202
    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 206
    .line 207
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 208
    .line 209
    if-eqz v2, :cond_9

    .line 210
    .line 211
    move-object v1, v2

    .line 212
    :cond_9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_b

    .line 225
    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Lio/sentry/EventProcessor;

    .line 231
    .line 232
    :try_start_0
    invoke-interface {v3, p1, p3}, Lio/sentry/EventProcessor;->a(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;

    .line 233
    .line 234
    .line 235
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    goto :goto_4

    .line 237
    :catchall_0
    move-exception v4

    .line 238
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    const-string v8, "An exception occurred while processing replay event by processor: %s"

    .line 257
    .line 258
    invoke-interface {v5, v6, v4, v8, v7}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :goto_4
    if-nez p1, :cond_a

    .line 262
    .line 263
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    const-string v5, "Replay event was dropped by a processor: %s"

    .line 282
    .line 283
    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    sget-object v3, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 291
    .line 292
    sget-object v4, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 293
    .line 294
    invoke-interface {v2, v3, v4}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 295
    .line 296
    .line 297
    :cond_b
    if-eqz p1, :cond_c

    .line 298
    .line 299
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeSendReplay()Lio/sentry/SentryOptions$BeforeSendReplayCallback;

    .line 300
    .line 301
    .line 302
    :cond_c
    if-nez p1, :cond_d

    .line 303
    .line 304
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 305
    .line 306
    return-object p0

    .line 307
    :cond_d
    const/4 v2, 0x0

    .line 308
    :try_start_1
    invoke-virtual {p0, p2, p3, p1, v2}, Lio/sentry/SentryClient;->r(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    const-class v2, Lio/sentry/hints/Backfillable;

    .line 313
    .line 314
    const-string v3, "sentry:typeCheckHint"

    .line 315
    .line 316
    invoke-virtual {p3, v3}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    iget-object v3, p3, Lio/sentry/Hint;->g:Lio/sentry/ReplayRecording;

    .line 325
    .line 326
    invoke-virtual {p0, p1, v3, p2, v2}, Lio/sentry/SentryClient;->p(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Lio/sentry/TraceContext;Z)Lio/sentry/SentryEnvelope;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p3}, Lio/sentry/Hint;->a()V

    .line 331
    .line 332
    .line 333
    iget-object p0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 334
    .line 335
    invoke-interface {p0, p1, p3}, Lio/sentry/transport/ITransport;->N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 345
    .line 346
    const-string p3, "Capturing event %s failed."

    .line 347
    .line 348
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-interface {p1, p2, p0, p3, v0}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 356
    .line 357
    :goto_5
    return-object v1
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 2
    .line 3
    invoke-interface {p0}, Lio/sentry/transport/ITransport;->f()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/Hint;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 17
    .line 18
    const-string v0, "Failed to capture envelope."

    .line 19
    .line 20
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 24
    .line 25
    return-object p0
.end method

.method public final h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 7

    .line 1
    const-string v0, "profileChunk is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 13
    .line 14
    iget-object v3, p1, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 15
    .line 16
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "Capturing profile chunk: %s"

    .line 21
    .line 22
    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 26
    .line 27
    iget-object v2, p1, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 28
    .line 29
    invoke-static {v2, v0}, Lio/sentry/protocol/DebugMeta;->a(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iput-object v2, p1, Lio/sentry/ProfileChunk;->j:Lio/sentry/protocol/DebugMeta;

    .line 36
    .line 37
    :cond_0
    :try_start_0
    new-instance v2, Lio/sentry/SentryEnvelope;

    .line 38
    .line 39
    new-instance v3, Lio/sentry/SentryEnvelopeHeader;

    .line 40
    .line 41
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v3, v1, v4, v5}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {p1, v4, v6}, Lio/sentry/SentryEnvelopeItem;->c(Lio/sentry/ProfileChunk;Lio/sentry/ISerializer;Lio/sentry/IProfileConverter;)Lio/sentry/SentryEnvelopeItem;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v2, v3, p1}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2, v5}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception p0

    .line 76
    :goto_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    const-string v2, "Capturing profile chunk %s failed."

    .line 83
    .line 84
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {p1, v0, p0, v2, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 92
    .line 93
    return-object p0
.end method

.method public final i(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    new-instance p4, Lio/sentry/Hint;

    .line 4
    .line 5
    invoke-direct {p4}, Lio/sentry/Hint;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p4}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p3}, Lio/sentry/IScope;->z()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p4, Lio/sentry/Hint;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 30
    .line 31
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 32
    .line 33
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "Capturing transaction: %s"

    .line 38
    .line 39
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getIgnoredTransactions()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p1, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_2
    if-eqz v0, :cond_8

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lio/sentry/FilterString;

    .line 77
    .line 78
    iget-object v5, v5, Lio/sentry/FilterString;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :catchall_0
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_8

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lio/sentry/FilterString;

    .line 102
    .line 103
    :try_start_0
    iget-object v4, v4, Lio/sentry/FilterString;->b:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    if-nez v4, :cond_7

    .line 106
    .line 107
    move v4, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_7
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 114
    .line 115
    .line 116
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    if-eqz v4, :cond_6

    .line 118
    .line 119
    :goto_1
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 124
    .line 125
    iget-object p3, p1, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 126
    .line 127
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    const-string p4, "Transaction was dropped as transaction name %s is ignored"

    .line 132
    .line 133
    invoke-interface {p0, p2, p4, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 141
    .line 142
    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 143
    .line 144
    invoke-interface {p0, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sget-object p3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 152
    .line 153
    iget-object p1, p1, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    add-int/lit8 p1, p1, 0x1

    .line 160
    .line 161
    int-to-long p4, p1

    .line 162
    invoke-interface {p0, p2, p3, p4, p5}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 163
    .line 164
    .line 165
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_8
    :goto_2
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 169
    .line 170
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    move-object v2, v0

    .line 176
    :goto_3
    invoke-virtual {p0, p1, p4}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_a

    .line 181
    .line 182
    invoke-virtual {p0, p1, p3}, Lio/sentry/SentryClient;->l(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p3}, Lio/sentry/IScope;->J()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-virtual {p0, p1, p4, p3}, Lio/sentry/SentryClient;->u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-nez p1, :cond_a

    .line 194
    .line 195
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 200
    .line 201
    const-string v5, "Transaction was dropped by applyScope"

    .line 202
    .line 203
    new-array v6, v3, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-interface {p3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    if-eqz p1, :cond_b

    .line 209
    .line 210
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p0, p1, p4, p3}, Lio/sentry/SentryClient;->u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :cond_b
    move-object v5, p1

    .line 219
    if-nez v5, :cond_c

    .line 220
    .line 221
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 226
    .line 227
    const-string p2, "Transaction was dropped by Event processors."

    .line 228
    .line 229
    new-array p3, v3, [Ljava/lang/Object;

    .line 230
    .line 231
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_c
    iget-object p1, v5, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-ge p1, p3, :cond_d

    .line 249
    .line 250
    sub-int/2addr p3, p1

    .line 251
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 256
    .line 257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const-string v4, "%d spans were dropped by beforeSendTransaction."

    .line 266
    .line 267
    invoke-interface {p1, v0, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    .line 275
    .line 276
    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 277
    .line 278
    int-to-long v6, p3

    .line 279
    invoke-interface {p1, v0, v3, v6, v7}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 280
    .line 281
    .line 282
    :cond_d
    :try_start_1
    invoke-static {p4}, Lio/sentry/SentryClient;->q(Lio/sentry/Hint;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    new-instance v6, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result p3

    .line 299
    if-eqz p3, :cond_e

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p3

    .line 305
    check-cast p3, Lio/sentry/Attachment;

    .line 306
    .line 307
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_e
    const/4 v7, 0x0

    .line 312
    move-object v4, p0

    .line 313
    move-object v8, p2

    .line 314
    move-object v9, p5

    .line 315
    invoke-virtual/range {v4 .. v9}, Lio/sentry/SentryClient;->m(Lio/sentry/SentryBaseEvent;Ljava/util/ArrayList;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {p4}, Lio/sentry/Hint;->a()V

    .line 320
    .line 321
    .line 322
    if-eqz p0, :cond_f

    .line 323
    .line 324
    invoke-virtual {v4, p0, p4}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 325
    .line 326
    .line 327
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    goto :goto_7

    .line 329
    :catch_0
    move-exception v0

    .line 330
    :goto_5
    move-object p0, v0

    .line 331
    goto :goto_6

    .line 332
    :catch_1
    move-exception v0

    .line 333
    goto :goto_5

    .line 334
    :goto_6
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 339
    .line 340
    const-string p3, "Capturing transaction %s failed."

    .line 341
    .line 342
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p4

    .line 346
    invoke-interface {p1, p2, p0, p3, p4}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    sget-object v2, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 350
    .line 351
    :cond_f
    :goto_7
    return-object v2
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryClient;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public final j(Lio/sentry/protocol/Feedback;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 12

    .line 1
    new-instance v0, Lio/sentry/SentryEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "feedback"

    .line 7
    .line 8
    iget-object v2, v0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 9
    .line 10
    invoke-virtual {v2, p1, v1}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lio/sentry/Hint;

    .line 14
    .line 15
    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v3, p1, Lio/sentry/protocol/Feedback;->o:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Lio/sentry/IScope;->D()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, p1, Lio/sentry/protocol/Feedback;->o:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    iget-object v3, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 29
    .line 30
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 35
    .line 36
    iget-object v6, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 37
    .line 38
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const-string v7, "Capturing feedback: %s"

    .line 43
    .line 44
    invoke-interface {v4, v5, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_9

    .line 53
    .line 54
    iget-object v4, v0, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 55
    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    invoke-interface {p2}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iput-object v4, v0, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 63
    .line 64
    :cond_1
    iget-object v4, v0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    new-instance v4, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Ljava/util/Map$Entry;

    .line 104
    .line 105
    iget-object v7, v0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-nez v7, :cond_3

    .line 116
    .line 117
    iget-object v7, v0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 118
    .line 119
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    :goto_1
    new-instance v4, Lio/sentry/protocol/Contexts;

    .line 136
    .line 137
    invoke-interface {p2}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-direct {v4, v6}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v4, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_6

    .line 159
    .line 160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Ljava/util/Map$Entry;

    .line 165
    .line 166
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v2, v7}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-nez v7, :cond_5

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Ljava/lang/String;

    .line 181
    .line 182
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v2, v6, v7}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    invoke-interface {p2}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    if-nez v6, :cond_8

    .line 199
    .line 200
    if-nez v4, :cond_7

    .line 201
    .line 202
    invoke-interface {p2}, Lio/sentry/IScope;->t()Lio/sentry/PropagationContext;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v4}, Lio/sentry/TransactionContext;->b(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v2, v4}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    invoke-interface {v4}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v2, v4}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    :goto_3
    invoke-interface {p2}, Lio/sentry/IScope;->J()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/SentryClient;->t(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-nez v0, :cond_9

    .line 230
    .line 231
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 236
    .line 237
    const-string p2, "Feedback was dropped by applyScope"

    .line 238
    .line 239
    new-array v0, v5, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 245
    .line 246
    return-object p0

    .line 247
    :cond_9
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/SentryClient;->t(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getBeforeSendFeedback()Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_a

    .line 262
    .line 263
    :try_start_0
    check-cast v2, Lio/sentry/kotlin/multiplatform/extensions/a;

    .line 264
    .line 265
    invoke-virtual {v2, v0, v1}, Lio/sentry/kotlin/multiplatform/extensions/a;->b(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 275
    .line 276
    const-string v6, "The BeforeSendFeedback callback threw an exception."

    .line 277
    .line 278
    invoke-interface {v2, v4, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 283
    .line 284
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 289
    .line 290
    const-string v6, "Event was dropped by beforeSend"

    .line 291
    .line 292
    new-array v5, v5, [Ljava/lang/Object;

    .line 293
    .line 294
    invoke-interface {v2, v4, v6, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    sget-object v4, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    .line 302
    .line 303
    sget-object v5, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 304
    .line 305
    invoke-interface {v2, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 306
    .line 307
    .line 308
    :cond_b
    move-object v7, v0

    .line 309
    if-nez v7, :cond_c

    .line 310
    .line 311
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 312
    .line 313
    return-object p0

    .line 314
    :cond_c
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 315
    .line 316
    iget-object v2, v7, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 317
    .line 318
    if-eqz v2, :cond_d

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_d
    move-object v2, v0

    .line 322
    :goto_5
    iget-object v4, p1, Lio/sentry/protocol/Feedback;->n:Lio/sentry/protocol/SentryId;

    .line 323
    .line 324
    if-nez v4, :cond_e

    .line 325
    .line 326
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-interface {v4, v5}, Lio/sentry/ReplayController;->n(Ljava/lang/Boolean;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {p2}, Lio/sentry/IScope;->h()Lio/sentry/protocol/SentryId;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v4, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-nez v0, :cond_e

    .line 344
    .line 345
    iput-object v4, p1, Lio/sentry/protocol/Feedback;->n:Lio/sentry/protocol/SentryId;

    .line 346
    .line 347
    :cond_e
    :try_start_1
    iget-object p1, v7, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p0, p2, v1, v7, p1}, Lio/sentry/SentryClient;->r(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-static {v1}, Lio/sentry/SentryClient;->q(Lio/sentry/Hint;)Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    const/4 v9, 0x0

    .line 358
    const/4 v11, 0x0

    .line 359
    move-object v6, p0

    .line 360
    invoke-virtual/range {v6 .. v11}, Lio/sentry/SentryClient;->m(Lio/sentry/SentryBaseEvent;Ljava/util/ArrayList;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-virtual {v1}, Lio/sentry/Hint;->a()V

    .line 365
    .line 366
    .line 367
    if-eqz p0, :cond_f

    .line 368
    .line 369
    invoke-virtual {v6, p0, v1}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 370
    .line 371
    .line 372
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    goto :goto_8

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :goto_6
    move-object p0, v0

    .line 376
    goto :goto_7

    .line 377
    :catch_1
    move-exception v0

    .line 378
    goto :goto_6

    .line 379
    :goto_7
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 384
    .line 385
    const-string v0, "Capturing feedback %s failed."

    .line 386
    .line 387
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-interface {p1, p2, p0, v0, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    sget-object v2, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 395
    .line 396
    :cond_f
    :goto_8
    return-object v2
.end method

.method public final k(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 12

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lio/sentry/Hint;

    .line 4
    .line 5
    invoke-direct {p3}, Lio/sentry/Hint;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Lio/sentry/IScope;->z()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p3, Lio/sentry/Hint;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 26
    .line 27
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 32
    .line 33
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "Capturing event: %s"

    .line 40
    .line 41
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->a()Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getIgnoredExceptionsForType()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "Event was dropped as the exception %s is ignored"

    .line 77
    .line 78
    invoke-interface {p0, v2, p2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sget-object p1, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 86
    .line 87
    sget-object p2, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 88
    .line 89
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getIgnoredErrors()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v2, 0x0

    .line 100
    if-eqz v0, :cond_c

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v4, p1, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    iget-object v5, v4, Lio/sentry/protocol/Message;->k:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object v4, v4, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->a()Ljava/lang/Throwable;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v4, :cond_6

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_8

    .line 155
    .line 156
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lio/sentry/FilterString;

    .line 161
    .line 162
    iget-object v5, v5, Lio/sentry/FilterString;->a:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_7

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_c

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Lio/sentry/FilterString;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/String;

    .line 202
    .line 203
    iget-object v7, v4, Lio/sentry/FilterString;->b:Ljava/util/regex/Pattern;

    .line 204
    .line 205
    if-nez v7, :cond_b

    .line 206
    .line 207
    move v6, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_b
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    :goto_0
    if-eqz v6, :cond_a

    .line 218
    .line 219
    :goto_1
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 224
    .line 225
    iget-object p1, p1, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 226
    .line 227
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string p3, "Event was dropped as it matched a string/pattern in ignoredErrors"

    .line 232
    .line 233
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    sget-object p1, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 241
    .line 242
    sget-object p2, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 243
    .line 244
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 245
    .line 246
    .line 247
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 248
    .line 249
    return-object p0

    .line 250
    :cond_c
    :goto_2
    invoke-virtual {p0, p1, p3}, Lio/sentry/SentryClient;->w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_14

    .line 255
    .line 256
    if-eqz p2, :cond_13

    .line 257
    .line 258
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryClient;->l(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p1, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v3, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 264
    .line 265
    if-nez v0, :cond_d

    .line 266
    .line 267
    invoke-interface {p2}, Lio/sentry/IScope;->K()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iput-object v0, p1, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 272
    .line 273
    :cond_d
    iget-object v0, p1, Lio/sentry/SentryEvent;->F:Ljava/util/List;

    .line 274
    .line 275
    if-nez v0, :cond_e

    .line 276
    .line 277
    invoke-interface {p2}, Lio/sentry/IScope;->H()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->i(Ljava/util/List;)V

    .line 282
    .line 283
    .line 284
    :cond_e
    invoke-interface {p2}, Lio/sentry/IScope;->s()Lio/sentry/SentryLevel;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-eqz v0, :cond_f

    .line 289
    .line 290
    invoke-interface {p2}, Lio/sentry/IScope;->s()Lio/sentry/SentryLevel;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iput-object v0, p1, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 295
    .line 296
    :cond_f
    invoke-interface {p2}, Lio/sentry/IScope;->b()Lio/sentry/ISpan;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    if-nez v4, :cond_11

    .line 305
    .line 306
    if-nez v0, :cond_10

    .line 307
    .line 308
    invoke-interface {p2}, Lio/sentry/IScope;->t()Lio/sentry/PropagationContext;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lio/sentry/TransactionContext;->b(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v3, v0}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_10
    invoke-interface {v0}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v3, v0}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 325
    .line 326
    .line 327
    :cond_11
    :goto_3
    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->f()Lio/sentry/protocol/FeatureFlags;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-nez v0, :cond_12

    .line 332
    .line 333
    invoke-interface {p2}, Lio/sentry/IScope;->c()Lio/sentry/protocol/FeatureFlags;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    if-eqz v0, :cond_12

    .line 338
    .line 339
    invoke-virtual {v3, v0}, Lio/sentry/protocol/Contexts;->p(Lio/sentry/protocol/FeatureFlags;)V

    .line 340
    .line 341
    .line 342
    :cond_12
    invoke-interface {p2}, Lio/sentry/IScope;->J()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p0, p1, p3, v0}, Lio/sentry/SentryClient;->s(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    :cond_13
    if-nez p1, :cond_14

    .line 351
    .line 352
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 357
    .line 358
    const-string p2, "Event was dropped by applyScope"

    .line 359
    .line 360
    new-array p3, v2, [Ljava/lang/Object;

    .line 361
    .line 362
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 366
    .line 367
    return-object p0

    .line 368
    :cond_14
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {p0, p1, p3, v0}, Lio/sentry/SentryClient;->s(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    const/4 v3, 0x0

    .line 377
    if-eqz p1, :cond_16

    .line 378
    .line 379
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    if-eqz v0, :cond_15

    .line 384
    .line 385
    :try_start_0
    check-cast v0, Lio/sentry/kotlin/multiplatform/extensions/a;

    .line 386
    .line 387
    invoke-virtual {v0, p1, p3}, Lio/sentry/kotlin/multiplatform/extensions/a;->b(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    move-object p1, v0

    .line 393
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 398
    .line 399
    const-string v5, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue."

    .line 400
    .line 401
    invoke-interface {v0, v4, v5, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    .line 403
    .line 404
    move-object p1, v3

    .line 405
    :cond_15
    :goto_4
    if-nez p1, :cond_16

    .line 406
    .line 407
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 412
    .line 413
    const-string v5, "Event was dropped by beforeSend"

    .line 414
    .line 415
    new-array v6, v2, [Ljava/lang/Object;

    .line 416
    .line 417
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    sget-object v4, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    .line 425
    .line 426
    sget-object v5, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 427
    .line 428
    invoke-interface {v0, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 429
    .line 430
    .line 431
    :cond_16
    if-eqz p1, :cond_1b

    .line 432
    .line 433
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isEnableEventSizeLimiting()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_17

    .line 438
    .line 439
    goto :goto_5

    .line 440
    :cond_17
    invoke-static {p1, v1}, Lio/sentry/util/EventSizeLimitingUtils;->a(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_18

    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_18
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 452
    .line 453
    const-string v5, "Event %s exceeds %d bytes limit. Reducing size by dropping fields."

    .line 454
    .line 455
    iget-object v6, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 456
    .line 457
    const-wide/32 v7, 0x100000

    .line 458
    .line 459
    .line 460
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getOnOversizedEvent()Lio/sentry/SentryOptions$OnOversizedEventCallback;

    .line 472
    .line 473
    .line 474
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 475
    .line 476
    if-eqz v0, :cond_19

    .line 477
    .line 478
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-nez v0, :cond_19

    .line 483
    .line 484
    iput-object v3, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 485
    .line 486
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 491
    .line 492
    const-string v5, "Removed breadcrumbs to reduce size of event %s"

    .line 493
    .line 494
    iget-object v6, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 495
    .line 496
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    :cond_19
    invoke-static {p1, v1}, Lio/sentry/util/EventSizeLimitingUtils;->a(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_1a

    .line 508
    .line 509
    goto :goto_5

    .line 510
    :cond_1a
    invoke-static {p1, v1}, Lio/sentry/util/EventSizeLimitingUtils;->b(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)V

    .line 511
    .line 512
    .line 513
    invoke-static {p1, v1}, Lio/sentry/util/EventSizeLimitingUtils;->a(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-nez v0, :cond_1b

    .line 518
    .line 519
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 524
    .line 525
    const-string v5, "Event %s still exceeds size limit after reducing all fields. Event may be rejected by server."

    .line 526
    .line 527
    iget-object v6, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 528
    .line 529
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-interface {v0, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 534
    .line 535
    .line 536
    goto :goto_5

    .line 537
    :catchall_1
    move-exception v0

    .line 538
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 543
    .line 544
    const-string v6, "An error occurred while limiting event size. Event will be sent as-is."

    .line 545
    .line 546
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    .line 548
    .line 549
    :cond_1b
    :goto_5
    if-nez p1, :cond_1c

    .line 550
    .line 551
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 552
    .line 553
    return-object p0

    .line 554
    :cond_1c
    const/4 v0, 0x1

    .line 555
    if-eqz p2, :cond_1d

    .line 556
    .line 557
    new-instance v4, Lio/sentry/d;

    .line 558
    .line 559
    invoke-direct {v4, v0}, Lio/sentry/d;-><init>(I)V

    .line 560
    .line 561
    .line 562
    invoke-interface {p2, v4}, Lio/sentry/IScope;->u(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    goto :goto_6

    .line 567
    :cond_1d
    move-object v4, v3

    .line 568
    :goto_6
    if-eqz v4, :cond_20

    .line 569
    .line 570
    iget-object v5, v4, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 571
    .line 572
    sget-object v6, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 573
    .line 574
    if-eq v5, v6, :cond_1e

    .line 575
    .line 576
    move v5, v0

    .line 577
    goto :goto_7

    .line 578
    :cond_1e
    move v5, v2

    .line 579
    :goto_7
    if-nez v5, :cond_1f

    .line 580
    .line 581
    goto :goto_8

    .line 582
    :cond_1f
    move-object v9, v3

    .line 583
    goto :goto_a

    .line 584
    :cond_20
    :goto_8
    invoke-static {p3}, Lio/sentry/util/HintUtils;->d(Lio/sentry/Hint;)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_22

    .line 589
    .line 590
    if-eqz p2, :cond_21

    .line 591
    .line 592
    new-instance v5, Lio/sentry/h;

    .line 593
    .line 594
    invoke-direct {v5, p0, p1, p3}, Lio/sentry/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-interface {p2, v5}, Lio/sentry/IScope;->u(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    goto :goto_9

    .line 602
    :cond_21
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 607
    .line 608
    const-string v7, "Scope is null on client.captureEvent"

    .line 609
    .line 610
    new-array v8, v2, [Ljava/lang/Object;

    .line 611
    .line 612
    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    :cond_22
    move-object v5, v3

    .line 616
    :goto_9
    move-object v9, v5

    .line 617
    :goto_a
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    if-nez v5, :cond_23

    .line 622
    .line 623
    move-object v5, v3

    .line 624
    goto :goto_b

    .line 625
    :cond_23
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    :goto_b
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    if-eqz v6, :cond_25

    .line 634
    .line 635
    if-eqz v5, :cond_25

    .line 636
    .line 637
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 642
    .line 643
    .line 644
    move-result-wide v6

    .line 645
    invoke-virtual {v5}, Lio/sentry/util/Random;->c()D

    .line 646
    .line 647
    .line 648
    move-result-wide v10

    .line 649
    cmpg-double v5, v6, v10

    .line 650
    .line 651
    if-ltz v5, :cond_24

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_24
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 659
    .line 660
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 661
    .line 662
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object p1

    .line 666
    const-string v7, "Event %s was dropped due to sampling decision."

    .line 667
    .line 668
    invoke-interface {v5, v6, v7, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    sget-object v5, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    .line 676
    .line 677
    sget-object v6, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 678
    .line 679
    invoke-interface {p1, v5, v6}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 680
    .line 681
    .line 682
    move-object v7, v3

    .line 683
    goto :goto_d

    .line 684
    :cond_25
    :goto_c
    move-object v7, p1

    .line 685
    :goto_d
    if-nez v9, :cond_27

    .line 686
    .line 687
    :cond_26
    move p1, v2

    .line 688
    goto :goto_f

    .line 689
    :cond_27
    if-nez v4, :cond_28

    .line 690
    .line 691
    :goto_e
    move p1, v0

    .line 692
    goto :goto_f

    .line 693
    :cond_28
    iget-object p1, v9, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 694
    .line 695
    sget-object v5, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 696
    .line 697
    if-ne p1, v5, :cond_29

    .line 698
    .line 699
    iget-object p1, v4, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 700
    .line 701
    if-eq p1, v5, :cond_29

    .line 702
    .line 703
    goto :goto_e

    .line 704
    :cond_29
    iget-object p1, v9, Lio/sentry/Session;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 705
    .line 706
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-lez p1, :cond_26

    .line 711
    .line 712
    iget-object p1, v4, Lio/sentry/Session;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 713
    .line 714
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 715
    .line 716
    .line 717
    move-result p1

    .line 718
    if-gtz p1, :cond_26

    .line 719
    .line 720
    goto :goto_e

    .line 721
    :goto_f
    if-nez v7, :cond_2a

    .line 722
    .line 723
    if-nez p1, :cond_2a

    .line 724
    .line 725
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 726
    .line 727
    .line 728
    move-result-object p0

    .line 729
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 730
    .line 731
    const-string p2, "Not sending session update for dropped event as it did not cause the session health to change."

    .line 732
    .line 733
    new-array p3, v2, [Ljava/lang/Object;

    .line 734
    .line 735
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 739
    .line 740
    return-object p0

    .line 741
    :cond_2a
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 742
    .line 743
    if-eqz v7, :cond_2b

    .line 744
    .line 745
    iget-object v4, v7, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 746
    .line 747
    if-eqz v4, :cond_2b

    .line 748
    .line 749
    move-object p1, v4

    .line 750
    :cond_2b
    const-class v4, Lio/sentry/hints/Backfillable;

    .line 751
    .line 752
    const-string v5, "sentry:typeCheckHint"

    .line 753
    .line 754
    invoke-virtual {p3, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v6

    .line 758
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v4

    .line 762
    const-class v6, Lio/sentry/hints/Cached;

    .line 763
    .line 764
    invoke-virtual {p3, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v8

    .line 768
    invoke-virtual {v6, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v6

    .line 772
    if-eqz v6, :cond_2c

    .line 773
    .line 774
    const-class v6, Lio/sentry/hints/ApplyScopeData;

    .line 775
    .line 776
    invoke-virtual {p3, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    invoke-virtual {v6, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v6

    .line 784
    if-nez v6, :cond_2c

    .line 785
    .line 786
    move v6, v0

    .line 787
    goto :goto_10

    .line 788
    :cond_2c
    move v6, v2

    .line 789
    :goto_10
    if-eqz v7, :cond_30

    .line 790
    .line 791
    if-nez v4, :cond_30

    .line 792
    .line 793
    if-nez v6, :cond_30

    .line 794
    .line 795
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->g()Z

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-nez v4, :cond_2e

    .line 800
    .line 801
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->f()Lio/sentry/protocol/SentryException;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    if-eqz v4, :cond_2d

    .line 806
    .line 807
    move v4, v0

    .line 808
    goto :goto_11

    .line 809
    :cond_2d
    move v4, v2

    .line 810
    :goto_11
    if-eqz v4, :cond_30

    .line 811
    .line 812
    :cond_2e
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->f()Lio/sentry/protocol/SentryException;

    .line 824
    .line 825
    .line 826
    move-result-object v6

    .line 827
    if-eqz v6, :cond_2f

    .line 828
    .line 829
    goto :goto_12

    .line 830
    :cond_2f
    move v0, v2

    .line 831
    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-interface {v4, v0}, Lio/sentry/ReplayController;->n(Ljava/lang/Boolean;)V

    .line 836
    .line 837
    .line 838
    :cond_30
    if-eqz v7, :cond_31

    .line 839
    .line 840
    :try_start_2
    iget-object v0, v7, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 841
    .line 842
    goto :goto_13

    .line 843
    :cond_31
    move-object v0, v3

    .line 844
    :goto_13
    invoke-virtual {p0, p2, p3, v7, v0}, Lio/sentry/SentryClient;->r(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;

    .line 845
    .line 846
    .line 847
    move-result-object v10

    .line 848
    if-eqz v7, :cond_32

    .line 849
    .line 850
    invoke-static {p3}, Lio/sentry/SentryClient;->q(Lio/sentry/Hint;)Ljava/util/ArrayList;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    move-object v8, v0

    .line 855
    goto :goto_15

    .line 856
    :catch_0
    move-exception v0

    .line 857
    :goto_14
    move-object p0, v0

    .line 858
    goto :goto_16

    .line 859
    :catch_1
    move-exception v0

    .line 860
    goto :goto_14

    .line 861
    :cond_32
    move-object v8, v3

    .line 862
    :goto_15
    const/4 v11, 0x0

    .line 863
    move-object v6, p0

    .line 864
    invoke-virtual/range {v6 .. v11}, Lio/sentry/SentryClient;->m(Lio/sentry/SentryBaseEvent;Ljava/util/ArrayList;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;

    .line 865
    .line 866
    .line 867
    move-result-object p0

    .line 868
    invoke-virtual {p3}, Lio/sentry/Hint;->a()V

    .line 869
    .line 870
    .line 871
    if-eqz p0, :cond_33

    .line 872
    .line 873
    invoke-virtual {v6, p0, p3}, Lio/sentry/SentryClient;->v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 874
    .line 875
    .line 876
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lio/sentry/exception/SentryEnvelopeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 877
    goto :goto_17

    .line 878
    :goto_16
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 883
    .line 884
    const-string v4, "Capturing event %s failed."

    .line 885
    .line 886
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object p1

    .line 890
    invoke-interface {v0, v1, p0, v4, p1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    .line 892
    .line 893
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 894
    .line 895
    :cond_33
    :goto_17
    if-eqz p2, :cond_35

    .line 896
    .line 897
    invoke-interface {p2}, Lio/sentry/IScope;->k()Lio/sentry/ITransaction;

    .line 898
    .line 899
    .line 900
    move-result-object p0

    .line 901
    if-eqz p0, :cond_35

    .line 902
    .line 903
    const-class p2, Lio/sentry/hints/TransactionEnd;

    .line 904
    .line 905
    invoke-virtual {p3, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result p2

    .line 913
    if-eqz p2, :cond_35

    .line 914
    .line 915
    invoke-virtual {p3, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p2

    .line 919
    instance-of v0, p2, Lio/sentry/hints/DiskFlushNotification;

    .line 920
    .line 921
    if-eqz v0, :cond_34

    .line 922
    .line 923
    check-cast p2, Lio/sentry/hints/DiskFlushNotification;

    .line 924
    .line 925
    invoke-interface {p0}, Lio/sentry/ITransaction;->n()Lio/sentry/protocol/SentryId;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-interface {p2, v0}, Lio/sentry/hints/DiskFlushNotification;->g(Lio/sentry/protocol/SentryId;)V

    .line 930
    .line 931
    .line 932
    sget-object p2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    .line 933
    .line 934
    invoke-interface {p0, p2, v2, p3}, Lio/sentry/ITransaction;->e(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 935
    .line 936
    .line 937
    goto :goto_18

    .line 938
    :cond_34
    sget-object p2, Lio/sentry/SpanStatus;->ABORTED:Lio/sentry/SpanStatus;

    .line 939
    .line 940
    invoke-interface {p0, p2, v2, v3}, Lio/sentry/ITransaction;->e(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 941
    .line 942
    .line 943
    :cond_35
    :goto_18
    return-object p1
.end method

.method public final l(Lio/sentry/SentryBaseEvent;Lio/sentry/IScope;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_b

    .line 2
    .line 3
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lio/sentry/IScope;->d()Lio/sentry/protocol/Request;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {p2}, Lio/sentry/IScope;->x()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .line 64
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    :goto_1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    new-instance p0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-interface {p2}, Lio/sentry/IScope;->r()Ljava/util/Queue;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-interface {p2}, Lio/sentry/IScope;->r()Ljava/util/Queue;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_6

    .line 128
    .line 129
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lio/sentry/SentryClient;->d:Lio/sentry/SentryClient$SortBreadcrumbsByDate;

    .line 133
    .line 134
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_2
    iget-object p0, p1, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 138
    .line 139
    if-nez p0, :cond_7

    .line 140
    .line 141
    new-instance p0, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    invoke-interface {p2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    .line 182
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_8

    .line 193
    .line 194
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    :goto_4
    iget-object p0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 211
    .line 212
    new-instance p1, Lio/sentry/protocol/Contexts;

    .line 213
    .line 214
    invoke-interface {p2}, Lio/sentry/IScope;->B()Lio/sentry/protocol/Contexts;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p1, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-eqz p2, :cond_b

    .line 236
    .line 237
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    check-cast p2, Ljava/util/Map$Entry;

    .line 242
    .line 243
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_a

    .line 252
    .line 253
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Ljava/lang/String;

    .line 258
    .line 259
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p0, p2, v0}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_b
    return-void
.end method

.method public final m(Lio/sentry/SentryBaseEvent;Ljava/util/ArrayList;Lio/sentry/Session;Lio/sentry/TraceContext;Lio/sentry/ProfilingTraceData;)Lio/sentry/SentryEnvelope;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v4, p5

    .line 6
    .line 7
    new-instance v6, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    iget-object v7, v2, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    const-string v3, "ISerializer is required."

    .line 26
    .line 27
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 31
    .line 32
    new-instance v5, Lio/sentry/i;

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    invoke-direct {v5, v2, v0, v9}, Lio/sentry/i;-><init>(Lio/sentry/ISerializer;Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v5}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    .line 40
    .line 41
    new-instance v10, Lio/sentry/SentryEnvelopeItemHeader;

    .line 42
    .line 43
    invoke-static {v0}, Lio/sentry/SentryItemType;->resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    new-instance v12, Lio/sentry/j;

    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    invoke-direct {v12, v2, v3}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v14, 0x0

    .line 54
    const/4 v15, 0x0

    .line 55
    const-string v13, "application/json"

    .line 56
    .line 57
    invoke-direct/range {v10 .. v15}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    .line 61
    .line 62
    new-instance v5, Lio/sentry/j;

    .line 63
    .line 64
    const/16 v9, 0x8

    .line 65
    .line 66
    invoke-direct {v5, v9, v3}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v10, v5}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 76
    .line 77
    move-object v9, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object v9, v8

    .line 80
    :goto_0
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Lio/sentry/SentryEnvelopeItem;->d(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getMaxTraceFileSize()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    iget-object v1, v4, Lio/sentry/ProfilingTraceData;->j:Ljava/io/File;

    .line 106
    .line 107
    new-instance v10, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 108
    .line 109
    new-instance v0, Lio/sentry/k;

    .line 110
    .line 111
    invoke-direct/range {v0 .. v5}, Lio/sentry/k;-><init>(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v10, v0}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Lio/sentry/SentryEnvelopeItemHeader;

    .line 118
    .line 119
    sget-object v12, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    .line 120
    .line 121
    new-instance v13, Lio/sentry/j;

    .line 122
    .line 123
    const/4 v0, 0x4

    .line 124
    invoke-direct {v13, v0, v10}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const-string v14, "application-json"

    .line 134
    .line 135
    invoke-direct/range {v11 .. v16}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lio/sentry/SentryEnvelopeItem;

    .line 139
    .line 140
    new-instance v1, Lio/sentry/j;

    .line 141
    .line 142
    const/4 v2, 0x5

    .line 143
    invoke-direct {v1, v2, v10}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v0, v11, v1}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    if-nez v9, :cond_2

    .line 153
    .line 154
    new-instance v9, Lio/sentry/protocol/SentryId;

    .line 155
    .line 156
    iget-object v0, v4, Lio/sentry/ProfilingTraceData;->F:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v9, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    if-eqz p2, :cond_3

    .line 162
    .line 163
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    move-object v11, v1

    .line 178
    check-cast v11, Lio/sentry/Attachment;

    .line 179
    .line 180
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    .line 189
    .line 190
    .line 191
    move-result-wide v12

    .line 192
    sget-object v1, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 193
    .line 194
    new-instance v1, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 195
    .line 196
    new-instance v10, Lio/sentry/k;

    .line 197
    .line 198
    invoke-direct/range {v10 .. v15}, Lio/sentry/k;-><init>(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v1, v10}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 202
    .line 203
    .line 204
    new-instance v12, Lio/sentry/SentryEnvelopeItemHeader;

    .line 205
    .line 206
    sget-object v13, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 207
    .line 208
    new-instance v14, Lio/sentry/j;

    .line 209
    .line 210
    const/4 v2, 0x2

    .line 211
    invoke-direct {v14, v2, v1}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    iget-object v15, v11, Lio/sentry/Attachment;->e:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v2, v11, Lio/sentry/Attachment;->d:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v3, v11, Lio/sentry/Attachment;->f:Ljava/lang/String;

    .line 219
    .line 220
    move-object/from16 v16, v2

    .line 221
    .line 222
    move-object/from16 v17, v3

    .line 223
    .line 224
    invoke-direct/range {v12 .. v17}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lio/sentry/SentryEnvelopeItem;

    .line 228
    .line 229
    new-instance v3, Lio/sentry/j;

    .line 230
    .line 231
    const/4 v4, 0x3

    .line 232
    invoke-direct {v3, v4, v1}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v12, v3}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_4

    .line 247
    .line 248
    new-instance v0, Lio/sentry/SentryEnvelopeHeader;

    .line 249
    .line 250
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    move-object/from16 v2, p4

    .line 255
    .line 256
    invoke-direct {v0, v9, v1, v2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lio/sentry/SentryEnvelope;

    .line 260
    .line 261
    invoke-direct {v1, v0, v6}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    return-object v1

    .line 265
    :cond_4
    return-object v8
.end method

.method public final n(Lio/sentry/SentryLogEvents;)Lio/sentry/SentryEnvelope;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v2, "ISerializer is required."

    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 20
    .line 21
    new-instance v3, Lio/sentry/i;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    invoke-direct {v3, v1, p1, v4}, Lio/sentry/i;-><init>(Lio/sentry/ISerializer;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lio/sentry/SentryEnvelopeItemHeader;

    .line 31
    .line 32
    sget-object v6, Lio/sentry/SentryItemType;->Log:Lio/sentry/SentryItemType;

    .line 33
    .line 34
    new-instance v7, Lio/sentry/j;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v7, v1, v2}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lio/sentry/SentryLogEvents;->j:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    const-string v8, "application/vnd.sentry.items.log+json"

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    invoke-direct/range {v5 .. v12}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lio/sentry/SentryEnvelopeItem;

    .line 59
    .line 60
    new-instance v1, Lio/sentry/j;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-direct {v1, v3, v2}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v5, v1}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    new-instance p1, Lio/sentry/SentryEnvelopeHeader;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {p1, v1, p0, v1}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 80
    .line 81
    .line 82
    new-instance p0, Lio/sentry/SentryEnvelope;

    .line 83
    .line 84
    invoke-direct {p0, p1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final o(Lio/sentry/SentryMetricsEvents;)Lio/sentry/SentryEnvelope;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    const-string v2, "ISerializer is required."

    .line 15
    .line 16
    invoke-static {v1, v2}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 20
    .line 21
    new-instance v3, Lio/sentry/i;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v3, v1, p1, v4}, Lio/sentry/i;-><init>(Lio/sentry/ISerializer;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lio/sentry/SentryEnvelopeItemHeader;

    .line 31
    .line 32
    sget-object v6, Lio/sentry/SentryItemType;->TraceMetric:Lio/sentry/SentryItemType;

    .line 33
    .line 34
    new-instance v7, Lio/sentry/j;

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    invoke-direct {v7, v1, v2}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lio/sentry/SentryMetricsEvents;->j:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    const-string v8, "application/vnd.sentry.items.trace-metric+json"

    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    invoke-direct/range {v5 .. v12}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lio/sentry/SentryEnvelopeItem;

    .line 59
    .line 60
    new-instance v1, Lio/sentry/j;

    .line 61
    .line 62
    const/16 v3, 0xd

    .line 63
    .line 64
    invoke-direct {v1, v3, v2}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v5, v1}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance p1, Lio/sentry/SentryEnvelopeHeader;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, v1, p0, v1}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lio/sentry/SentryEnvelope;

    .line 84
    .line 85
    invoke-direct {p0, p1, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    return-object p0
.end method

.method public final p(Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Lio/sentry/TraceContext;Z)Lio/sentry/SentryEnvelope;
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p0

    .line 9
    .line 10
    iget-object v8, v0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 11
    .line 12
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    iget-object v4, v2, Lio/sentry/SentryReplayEvent;->y:Ljava/io/File;

    .line 23
    .line 24
    new-instance v9, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 25
    .line 26
    new-instance v0, Lio/sentry/l;

    .line 27
    .line 28
    move-object/from16 v3, p2

    .line 29
    .line 30
    move/from16 v6, p4

    .line 31
    .line 32
    invoke-direct/range {v0 .. v6}, Lio/sentry/l;-><init>(Lio/sentry/ISerializer;Lio/sentry/SentryReplayEvent;Lio/sentry/ReplayRecording;Ljava/io/File;Lio/sentry/ILogger;Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v9, v0}, Lio/sentry/SentryEnvelopeItem$CachedItem;-><init>(Ljava/util/concurrent/Callable;)V

    .line 36
    .line 37
    .line 38
    new-instance v10, Lio/sentry/SentryEnvelopeItemHeader;

    .line 39
    .line 40
    sget-object v11, Lio/sentry/SentryItemType;->ReplayVideo:Lio/sentry/SentryItemType;

    .line 41
    .line 42
    new-instance v12, Lio/sentry/j;

    .line 43
    .line 44
    const/16 v0, 0xb

    .line 45
    .line 46
    invoke-direct {v12, v0, v9}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    invoke-direct/range {v10 .. v15}, Lio/sentry/SentryEnvelopeItemHeader;-><init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lio/sentry/SentryEnvelopeItem;

    .line 56
    .line 57
    new-instance v1, Lio/sentry/j;

    .line 58
    .line 59
    const/16 v3, 0xc

    .line 60
    .line 61
    invoke-direct {v1, v3, v9}, Lio/sentry/j;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v10, v1}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;Ljava/util/concurrent/Callable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 71
    .line 72
    new-instance v1, Lio/sentry/SentryEnvelopeHeader;

    .line 73
    .line 74
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v2, v2, Lio/sentry/SentryReplayOptions;->l:Lio/sentry/protocol/SdkVersion;

    .line 79
    .line 80
    move-object/from16 v3, p3

    .line 81
    .line 82
    invoke-direct {v1, v0, v2, v3}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lio/sentry/SentryEnvelope;

    .line 86
    .line 87
    invoke-direct {v0, v1, v7}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public final r(Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Lio/sentry/TraceContext;
    .locals 3

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-class v0, Lio/sentry/hints/Backfillable;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_4

    .line 17
    .line 18
    if-eqz p3, :cond_6

    .line 19
    .line 20
    new-instance p1, Lio/sentry/Baggage;

    .line 21
    .line 22
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Lio/sentry/Baggage;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object p2, p3, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 29
    .line 30
    invoke-virtual {p2}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, v1, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v1, v0

    .line 44
    :goto_0
    const-string v2, "sentry-trace_id"

    .line 45
    .line 46
    invoke-virtual {p1, v2, v1}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v1, v1, Lio/sentry/Dsn;->b:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "sentry-public_key"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v1}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p3, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "sentry-release"

    .line 63
    .line 64
    invoke-virtual {p1, v2, v1}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p3, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "sentry-environment"

    .line 70
    .line 71
    invoke-virtual {p1, v1, p3}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEffectiveOrgId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p3, "sentry-org_id"

    .line 79
    .line 80
    invoke-virtual {p1, p3, p0}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p0, "sentry-transaction"

    .line 84
    .line 85
    invoke-virtual {p1, p0, p4}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean p0, p1, Lio/sentry/Baggage;->e:Z

    .line 89
    .line 90
    if-eqz p0, :cond_1

    .line 91
    .line 92
    iput-object v0, p1, Lio/sentry/Baggage;->c:Ljava/lang/Double;

    .line 93
    .line 94
    :cond_1
    const-string p0, "sentry-sampled"

    .line 95
    .line 96
    invoke-virtual {p1, p0, v0}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-boolean p0, p1, Lio/sentry/Baggage;->e:Z

    .line 100
    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    iput-object v0, p1, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 104
    .line 105
    :cond_2
    const-string p0, "replay_id"

    .line 106
    .line 107
    invoke-virtual {p2, p0}, Lio/sentry/protocol/Contexts;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    if-eqz p3, :cond_3

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 118
    .line 119
    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    if-nez p4, :cond_3

    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    const-string p4, "sentry-replay_id"

    .line 134
    .line 135
    invoke-virtual {p1, p4, p3}, Lio/sentry/Baggage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p2, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    .line 140
    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_3
    const/4 p0, 0x0

    .line 144
    iput-boolean p0, p1, Lio/sentry/Baggage;->e:Z

    .line 145
    .line 146
    invoke-virtual {p1}, Lio/sentry/Baggage;->e()Lio/sentry/TraceContext;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :cond_4
    if-eqz p1, :cond_6

    .line 152
    .line 153
    invoke-interface {p1}, Lio/sentry/IScope;->k()Lio/sentry/ITransaction;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    if-eqz p2, :cond_5

    .line 158
    .line 159
    invoke-interface {p2}, Lio/sentry/ISpan;->b()Lio/sentry/TraceContext;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :cond_5
    new-instance p2, Ln5;

    .line 165
    .line 166
    const/16 p3, 0xe

    .line 167
    .line 168
    invoke-direct {p2, p3, p1, p0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, p2}, Lio/sentry/IScope;->C(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    iget-object p0, p0, Lio/sentry/PropagationContext;->c:Lio/sentry/Baggage;

    .line 176
    .line 177
    invoke-virtual {p0}, Lio/sentry/Baggage;->e()Lio/sentry/TraceContext;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :cond_6
    return-object v0
.end method

.method public final s(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;
    .locals 6

    .line 1
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lio/sentry/EventProcessor;

    .line 18
    .line 19
    :try_start_0
    instance-of v1, v0, Lio/sentry/BackfillingEventProcessor;

    .line 20
    .line 21
    const-class v2, Lio/sentry/hints/Backfillable;

    .line 22
    .line 23
    const-string v3, "sentry:typeCheckHint"

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 39
    .line 40
    invoke-virtual {v1, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-nez v2, :cond_2

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "An exception occurred while processing event by processor: %s"

    .line 73
    .line 74
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    if-nez p1, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "Event was dropped by a processor: %s"

    .line 98
    .line 99
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 107
    .line 108
    sget-object p3, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 109
    .line 110
    invoke-interface {p0, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-object p1
.end method

.method public final t(Lio/sentry/SentryEvent;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/SentryEvent;
    .locals 6

    .line 1
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lio/sentry/EventProcessor;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "An exception occurred while processing feedback event by processor: %s"

    .line 44
    .line 45
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    if-nez p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "Feedback event was dropped by a processor: %s"

    .line 69
    .line 70
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object p2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 78
    .line 79
    sget-object p3, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 80
    .line 81
    invoke-interface {p0, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-object p1
.end method

.method public final u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;Ljava/util/List;)Lio/sentry/protocol/SentryTransaction;
    .locals 7

    .line 1
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lio/sentry/EventProcessor;

    .line 18
    .line 19
    iget-object v1, p1, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/EventProcessor;->n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "An exception occurred while processing transaction by processor: %s"

    .line 50
    .line 51
    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v2, p1, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    :goto_2
    if-nez p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "Transaction was dropped by a processor: %s"

    .line 85
    .line 86
    invoke-interface {p2, p3, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object p3, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 94
    .line 95
    sget-object v0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 96
    .line 97
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-object p2, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    int-to-long v0, v1

    .line 109
    invoke-interface {p0, p3, p2, v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_2
    if-ge v2, v1, :cond_0

    .line 114
    .line 115
    sub-int/2addr v1, v2

    .line 116
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v4, "%d spans were dropped by a processor: %s"

    .line 139
    .line 140
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sget-object v2, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 148
    .line 149
    sget-object v3, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 150
    .line 151
    int-to-long v4, v1

    .line 152
    invoke-interface {v0, v2, v3, v4, v5}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_3
    :goto_3
    return-object p1
.end method

.method public final v(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lio/sentry/SentryIntegrationPackageStorage;->c(Lio/sentry/ILogger;)Z

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lio/sentry/SentryClient;->c:Lio/sentry/transport/ITransport;

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance p2, Lio/sentry/Hint;

    .line 25
    .line 26
    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p1, p2}, Lio/sentry/transport/ITransport;->N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p0, p1, p2}, Lio/sentry/transport/ITransport;->N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p0, p1, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 37
    .line 38
    iget-object p0, p0, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 44
    .line 45
    return-object p0
.end method

.method public final w(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->d(Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "Event was cached so not applying scope: %s"

    .line 24
    .line 25
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method
