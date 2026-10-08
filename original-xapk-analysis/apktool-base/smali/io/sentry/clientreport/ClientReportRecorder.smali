.class public final Lio/sentry/clientreport/ClientReportRecorder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/clientreport/IClientReportRecorder;


# instance fields
.field public final a:Lio/sentry/clientreport/IClientReportStorage;

.field public final b:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 5
    .line 6
    new-instance p1, Lio/sentry/clientreport/AtomicClientReportStorage;

    .line 7
    .line 8
    invoke-direct {p1}, Lio/sentry/clientreport/AtomicClientReportStorage;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/clientreport/ClientReportRecorder;->a:Lio/sentry/clientreport/IClientReportStorage;

    .line 12
    .line 13
    return-void
.end method

.method public static f(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    sget-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lio/sentry/DataCategory;->UserReport:Lio/sentry/DataCategory;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    sget-object v0, Lio/sentry/SentryItemType;->Feedback:Lio/sentry/SentryItemType;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    sget-object p0, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    sget-object v0, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    sget-object p0, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_5
    sget-object v0, Lio/sentry/SentryItemType;->ProfileChunk:Lio/sentry/SentryItemType;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object p0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_6
    sget-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    sget-object p0, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_7
    sget-object v0, Lio/sentry/SentryItemType;->CheckIn:Lio/sentry/SentryItemType;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    sget-object p0, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_8
    sget-object v0, Lio/sentry/SentryItemType;->ReplayVideo:Lio/sentry/SentryItemType;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    sget-object p0, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_9
    sget-object v0, Lio/sentry/SentryItemType;->Log:Lio/sentry/SentryItemType;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    sget-object p0, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_a
    sget-object v0, Lio/sentry/SentryItemType;->Span:Lio/sentry/SentryItemType;

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    sget-object p0, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_b
    sget-object v0, Lio/sentry/SentryItemType;->TraceMetric:Lio/sentry/SentryItemType;

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_c

    .line 140
    .line 141
    sget-object p0, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    .line 142
    .line 143
    return-object p0

    .line 144
    :cond_c
    sget-object p0, Lio/sentry/DataCategory;->Default:Lio/sentry/DataCategory;

    .line 145
    .line 146
    return-object p0
.end method


# virtual methods
.method public final a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/clientreport/ClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget-object p2, p2, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lio/sentry/clientreport/ClientReportRecorder;->e(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_1
    return-void

    .line 29
    :goto_2
    iget-object p0, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v1, "Unable to record lost envelope."

    .line 41
    .line 42
    invoke-interface {p0, p2, p1, v1, v0}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    iget-object p0, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    new-array p3, p3, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string p4, "Unable to record lost event."

    .line 33
    .line 34
    invoke-interface {p0, p2, p1, p4, p3}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final d(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Lio/sentry/clientreport/ClientReportRecorder;->a:Lio/sentry/clientreport/IClientReportStorage;

    .line 8
    .line 9
    check-cast p0, Lio/sentry/clientreport/AtomicClientReportStorage;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->a:Lio/sentry/util/LazyEvaluator;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    cmp-long v5, v7, v5

    .line 64
    .line 65
    if-lez v5, :cond_0

    .line 66
    .line 67
    new-instance v5, Lio/sentry/clientreport/DiscardedEvent;

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lio/sentry/clientreport/ClientReportKey;

    .line 74
    .line 75
    iget-object v6, v6, Lio/sentry/clientreport/ClientReportKey;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lio/sentry/clientreport/ClientReportKey;

    .line 82
    .line 83
    iget-object v3, v3, Lio/sentry/clientreport/ClientReportKey;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v5, v6, v3, v4}, Lio/sentry/clientreport/DiscardedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-instance p0, Lio/sentry/clientreport/ClientReport;

    .line 101
    .line 102
    invoke-direct {p0, v1, v2}, Lio/sentry/clientreport/ClientReport;-><init>(Ljava/util/Date;Ljava/util/ArrayList;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    if-nez p0, :cond_3

    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_3
    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 114
    .line 115
    const-string v4, "Attaching client report to envelope."

    .line 116
    .line 117
    new-array v5, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v3, p1, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Lio/sentry/SentryEnvelopeItem;

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-static {v3, p0}, Lio/sentry/SentryEnvelopeItem;->b(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)Lio/sentry/SentryEnvelopeItem;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance p0, Lio/sentry/SentryEnvelope;

    .line 163
    .line 164
    iget-object v3, p1, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 165
    .line 166
    invoke-direct {p0, v3, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :goto_3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 175
    .line 176
    const-string v3, "Unable to attach client report to envelope."

    .line 177
    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-interface {v0, v2, p0, v3, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-object p1
.end method

.method public final e(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/4 v4, 0x0

    .line 14
    :try_start_0
    iget-object v5, p2, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 15
    .line 16
    iget-object v5, v5, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 17
    .line 18
    sget-object v6, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    .line 19
    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Lio/sentry/SentryEnvelopeItem;->e(Lio/sentry/ISerializer;)Lio/sentry/clientreport/ClientReport;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lio/sentry/clientreport/ClientReportRecorder;->i(Lio/sentry/clientreport/ClientReport;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 47
    .line 48
    const-string p2, "Unable to restore counts from previous client report."

    .line 49
    .line 50
    new-array v0, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    invoke-static {v5}, Lio/sentry/clientreport/ClientReportRecorder;->f(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sget-object v6, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {p2, v6}, Lio/sentry/SentryEnvelopeItem;->i(Lio/sentry/ISerializer;)Lio/sentry/protocol/SentryTransaction;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    iget-object p2, p2, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    sget-object v7, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 86
    .line 87
    invoke-virtual {v7}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    int-to-long v8, v8

    .line 96
    add-long/2addr v8, v0

    .line 97
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v6, v7, v0}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v5}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p0, p1, p2, v2}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_3
    sget-object v0, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    .line 127
    .line 128
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p2, v0}, Lio/sentry/SentryEnvelopeItem;->g(Lio/sentry/ISerializer;)Lio/sentry/SentryLogEvents;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object v0, v0, Lio/sentry/SentryLogEvents;->j:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    int-to-long v0, v0

    .line 151
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v5}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v2, v5, v0}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    array-length p2, p2

    .line 171
    int-to-long v0, p2

    .line 172
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sget-object p2, Lio/sentry/DataCategory;->LogByte:Lio/sentry/DataCategory;

    .line 177
    .line 178
    invoke-virtual {p2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 198
    .line 199
    const-string p2, "Unable to parse lost logs envelope item."

    .line 200
    .line 201
    new-array v0, v4, [Ljava/lang/Object;

    .line 202
    .line 203
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    sget-object v0, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    .line 208
    .line 209
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {p2, v0}, Lio/sentry/SentryEnvelopeItem;->h(Lio/sentry/ISerializer;)Lio/sentry/SentryMetricsEvents;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    if-eqz p2, :cond_6

    .line 224
    .line 225
    iget-object p2, p2, Lio/sentry/SentryMetricsEvents;->j:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    int-to-long v0, p2

    .line 232
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v5}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V

    .line 248
    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_6
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 256
    .line 257
    const-string p2, "Unable to parse lost metrics envelope item."

    .line 258
    .line 259
    new-array v0, v4, [Ljava/lang/Object;

    .line 260
    .line 261
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_7
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v5}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p0, p1, p2, v2}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lio/sentry/clientreport/ClientReportRecorder;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :goto_0
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 285
    .line 286
    const-string v0, "Unable to record lost envelope item."

    .line 287
    .line 288
    new-array v1, v4, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-interface {p1, p2, p0, v0, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/clientreport/ClientReportRecorder;->b:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOnDiscard()Lio/sentry/SentryOptions$OnDiscardCallback;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/clientreport/ClientReportKey;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/sentry/clientreport/ClientReportKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/clientreport/ClientReportRecorder;->a:Lio/sentry/clientreport/IClientReportStorage;

    .line 7
    .line 8
    check-cast p0, Lio/sentry/clientreport/AtomicClientReportStorage;

    .line 9
    .line 10
    iget-object p0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->a:Lio/sentry/util/LazyEvaluator;

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final i(Lio/sentry/clientreport/ClientReport;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p1, Lio/sentry/clientreport/ClientReport;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lio/sentry/clientreport/DiscardedEvent;

    .line 21
    .line 22
    iget-object v1, v0, Lio/sentry/clientreport/DiscardedEvent;->j:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, v0, Lio/sentry/clientreport/DiscardedEvent;->k:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lio/sentry/clientreport/DiscardedEvent;->l:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lio/sentry/clientreport/ClientReportRecorder;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-void
.end method
