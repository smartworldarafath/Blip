.class Lio/sentry/DefaultCompositePerformanceCollector$2;
.super Ljava/util/TimerTask;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Lio/sentry/DefaultCompositePerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/DefaultCompositePerformanceCollector;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->k:Lio/sentry/DefaultCompositePerformanceCollector;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->j:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->k:Lio/sentry/DefaultCompositePerformanceCollector;

    .line 6
    .line 7
    iget-wide v3, v2, Lio/sentry/DefaultCompositePerformanceCollector;->i:J

    .line 8
    .line 9
    sub-long v3, v0, v3

    .line 10
    .line 11
    const-wide/16 v5, 0xa

    .line 12
    .line 13
    cmp-long v3, v3, v5

    .line 14
    .line 15
    if-gtz v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lio/sentry/DefaultCompositePerformanceCollector$2;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iput-wide v0, v2, Lio/sentry/DefaultCompositePerformanceCollector;->i:J

    .line 25
    .line 26
    new-instance v0, Lio/sentry/PerformanceCollectionData;

    .line 27
    .line 28
    iget-object v1, v2, Lio/sentry/DefaultCompositePerformanceCollector;->g:Lio/sentry/SentryOptions;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lio/sentry/SentryDate;->d()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-direct {v0, v3, v4}, Lio/sentry/PerformanceCollectionData;-><init>(J)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v2, Lio/sentry/DefaultCompositePerformanceCollector;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lio/sentry/IPerformanceSnapshotCollector;

    .line 62
    .line 63
    invoke-interface {v3, v0}, Lio/sentry/IPerformanceSnapshotCollector;->a(Lio/sentry/PerformanceCollectionData;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, v2, Lio/sentry/DefaultCompositePerformanceCollector;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;

    .line 88
    .line 89
    iget-object v4, v3, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->a:Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-object v5, v3, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->b:Lio/sentry/ITransaction;

    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    iget-object v4, v3, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->d:Lio/sentry/DefaultCompositePerformanceCollector;

    .line 99
    .line 100
    iget-object v4, v4, Lio/sentry/DefaultCompositePerformanceCollector;->g:Lio/sentry/SentryOptions;

    .line 101
    .line 102
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v4}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lio/sentry/SentryDate;->d()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    iget-wide v3, v3, Lio/sentry/DefaultCompositePerformanceCollector$CompositeData;->c:J

    .line 115
    .line 116
    const-wide v8, 0x6fc23ac00L

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    add-long/2addr v3, v8

    .line 122
    cmp-long v3, v6, v3

    .line 123
    .line 124
    if-lez v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lio/sentry/ITransaction;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lio/sentry/DefaultCompositePerformanceCollector;->f(Lio/sentry/ITransaction;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    :goto_3
    return-void
.end method
