.class final Lio/sentry/android/core/PerformanceAndroidEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field public final j:Lio/sentry/android/core/ActivityFramesTracker;

.field public final k:Lio/sentry/android/core/SentryAndroidOptions;

.field public final l:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->l:Lio/sentry/util/AutoClosableReentrantLock;

    .line 10
    .line 11
    const-string v0, "SentryAndroidOptions is required"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    iput-object p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->j:Lio/sentry/android/core/ActivityFramesTracker;

    .line 19
    .line 20
    return-void
.end method

.method public static b(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->j:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 9
    .line 10
    iget-object p1, p1, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, v0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lio/sentry/protocol/SentrySpan;

    .line 36
    .line 37
    iget-object v3, v2, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "app.start.cold"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v1, v2, Lio/sentry/protocol/SentrySpan;->m:Lio/sentry/SpanId;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v1, 0x0

    .line 51
    :goto_1
    new-instance v2, Lio/sentry/android/core/performance/TimeSpan;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lio/sentry/android/core/performance/AppStartMetrics;->m:Lio/sentry/android/core/performance/TimeSpan;

    .line 57
    .line 58
    iget-wide v4, v3, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 59
    .line 60
    iget-wide v6, v3, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 61
    .line 62
    sget-wide v8, Lio/sentry/android/core/performance/AppStartMetrics;->y:J

    .line 63
    .line 64
    const-string v3, "Process Initialization"

    .line 65
    .line 66
    iput-object v3, v2, Lio/sentry/android/core/performance/TimeSpan;->j:Ljava/lang/String;

    .line 67
    .line 68
    iput-wide v4, v2, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 69
    .line 70
    iput-wide v6, v2, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 71
    .line 72
    iput-wide v8, v2, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 73
    .line 74
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    const-wide/16 v5, 0x2710

    .line 89
    .line 90
    cmp-long v3, v3, v5

    .line 91
    .line 92
    if-gtz v3, :cond_4

    .line 93
    .line 94
    const-string v3, "process.load"

    .line 95
    .line 96
    invoke-static {v2, v1, v0, v3}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->e(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 104
    .line 105
    iget-object v3, p0, Lio/sentry/android/core/performance/AppStartMetrics;->p:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_5

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lio/sentry/android/core/performance/TimeSpan;

    .line 138
    .line 139
    const-string v4, "contentprovider.load"

    .line 140
    .line 141
    invoke-static {v3, v1, v0, v4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->e(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->o:Lio/sentry/android/core/performance/TimeSpan;

    .line 150
    .line 151
    iget-wide v2, p0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 152
    .line 153
    const-wide/16 v4, 0x0

    .line 154
    .line 155
    cmp-long v2, v2, v4

    .line 156
    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    const-string v2, "application.load"

    .line 160
    .line 161
    invoke-static {p0, v1, v0, v2}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->e(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
.end method

.method public static c(Lio/sentry/protocol/SentryTransaction;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "app.start.warm"

    .line 12
    .line 13
    const-string v3, "app.start.cold"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/sentry/protocol/SentrySpan;

    .line 22
    .line 23
    iget-object v4, v1, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-object v1, v1, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 41
    .line 42
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public static d(Lio/sentry/protocol/SentryTransaction;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lio/sentry/protocol/SentrySpan;

    .line 20
    .line 21
    const-string v4, "ui.load.initial_display"

    .line 22
    .line 23
    iget-object v5, v3, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    move-object v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v4, "ui.load.full_display"

    .line 34
    .line 35
    iget-object v5, v3, Lio/sentry/protocol/SentrySpan;->o:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    move-object v2, v3

    .line 44
    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :cond_3
    if-nez v1, :cond_4

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_10

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lio/sentry/protocol/SentrySpan;

    .line 69
    .line 70
    if-eq v0, v1, :cond_5

    .line 71
    .line 72
    if-ne v0, v2, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    iget-object v3, v0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 76
    .line 77
    iget-object v4, v0, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    if-eqz v3, :cond_8

    .line 82
    .line 83
    const-string v7, "thread.name"

    .line 84
    .line 85
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_8

    .line 90
    .line 91
    const-string v7, "main"

    .line 92
    .line 93
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_7
    move v3, v5

    .line 101
    goto :goto_3

    .line 102
    :cond_8
    :goto_2
    move v3, v6

    .line 103
    :goto_3
    if-eqz v1, :cond_a

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    iget-object v9, v1, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    cmpl-double v9, v7, v9

    .line 116
    .line 117
    if-ltz v9, :cond_a

    .line 118
    .line 119
    iget-object v9, v1, Lio/sentry/protocol/SentrySpan;->k:Ljava/lang/Double;

    .line 120
    .line 121
    if-eqz v9, :cond_9

    .line 122
    .line 123
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 124
    .line 125
    .line 126
    move-result-wide v9

    .line 127
    cmpg-double v7, v7, v9

    .line 128
    .line 129
    if-gtz v7, :cond_a

    .line 130
    .line 131
    :cond_9
    if-eqz v3, :cond_a

    .line 132
    .line 133
    move v3, v6

    .line 134
    goto :goto_4

    .line 135
    :cond_a
    move v3, v5

    .line 136
    :goto_4
    if-eqz v2, :cond_c

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    iget-object v4, v2, Lio/sentry/protocol/SentrySpan;->j:Ljava/lang/Double;

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 145
    .line 146
    .line 147
    move-result-wide v9

    .line 148
    cmpl-double v4, v7, v9

    .line 149
    .line 150
    if-ltz v4, :cond_c

    .line 151
    .line 152
    iget-object v4, v2, Lio/sentry/protocol/SentrySpan;->k:Ljava/lang/Double;

    .line 153
    .line 154
    if-eqz v4, :cond_b

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 157
    .line 158
    .line 159
    move-result-wide v9

    .line 160
    cmpg-double v4, v7, v9

    .line 161
    .line 162
    if-gtz v4, :cond_c

    .line 163
    .line 164
    :cond_b
    move v5, v6

    .line 165
    :cond_c
    if-nez v3, :cond_d

    .line 166
    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    :cond_d
    iget-object v4, v0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 170
    .line 171
    if-nez v4, :cond_e

    .line 172
    .line 173
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 174
    .line 175
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v4, v0, Lio/sentry/protocol/SentrySpan;->t:Ljava/util/Map;

    .line 179
    .line 180
    :cond_e
    if-eqz v3, :cond_f

    .line 181
    .line 182
    const-string v0, "ui.contributes_to_ttid"

    .line 183
    .line 184
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_f
    if-eqz v5, :cond_5

    .line 190
    .line 191
    const-string v0, "ui.contributes_to_ttfd"

    .line 192
    .line 193
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_10
    :goto_5
    return-void
.end method

.method public static e(Lio/sentry/android/core/performance/TimeSpan;Lio/sentry/SpanId;Lio/sentry/protocol/SentryId;Ljava/lang/String;)Lio/sentry/protocol/SentrySpan;
    .locals 13

    .line 1
    new-instance v12, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-wide v0, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->b:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "thread.id"

    .line 14
    .line 15
    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v0, "thread.name"

    .line 19
    .line 20
    const-string v1, "main"

    .line 21
    .line 22
    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    const-string v1, "ui.contributes_to_ttid"

    .line 28
    .line 29
    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const-string v1, "ui.contributes_to_ttfd"

    .line 33
    .line 34
    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lio/sentry/protocol/SentrySpan;

    .line 38
    .line 39
    iget-wide v1, p0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 40
    .line 41
    long-to-double v1, v1

    .line 42
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    div-double/2addr v1, v3

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-wide v5, p0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 59
    .line 60
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->a()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    add-long/2addr v7, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    :goto_0
    long-to-double v5, v7

    .line 69
    div-double/2addr v5, v3

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v4, Lio/sentry/SpanId;

    .line 75
    .line 76
    invoke-direct {v4}, Lio/sentry/SpanId;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v7, p0, Lio/sentry/android/core/performance/TimeSpan;->j:Ljava/lang/String;

    .line 80
    .line 81
    sget-object v8, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 82
    .line 83
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v9, "auto.ui"

    .line 94
    .line 95
    move-object v5, p1

    .line 96
    move-object v3, p2

    .line 97
    move-object/from16 v6, p3

    .line 98
    .line 99
    invoke-direct/range {v0 .. v12}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 100
    .line 101
    .line 102
    return-object v0
.end method


# virtual methods
.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 9

    .line 1
    iget-object p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->l:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->c(Lio/sentry/protocol/SentryTransaction;)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    iget-object v3, p1, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 28
    .line 29
    iget-object v4, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 30
    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    :try_start_2
    iget-boolean v2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->v:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->k:Lio/sentry/util/LazyEvaluator;

    .line 38
    .line 39
    invoke-virtual {v2}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Lio/sentry/android/core/performance/AppStartMetrics;->b(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->a()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    cmp-long p2, v5, v7

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    new-instance p2, Lio/sentry/protocol/MeasurementValue;

    .line 66
    .line 67
    long-to-float v2, v5

    .line 68
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget-object v5, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    .line 73
    .line 74
    invoke-virtual {v5}, Lio/sentry/MeasurementUnit$Duration;->apiName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {p2, v2, v5}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->j:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 82
    .line 83
    sget-object v5, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 84
    .line 85
    if-ne v2, v5, :cond_1

    .line 86
    .line 87
    const-string v2, "app_start_cold"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_1
    const-string v2, "app_start_warm"

    .line 94
    .line 95
    :goto_0
    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->b(Lio/sentry/android/core/performance/AppStartMetrics;Lio/sentry/protocol/SentryTransaction;)V

    .line 99
    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    iput-boolean p2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->v:Z

    .line 103
    .line 104
    iget-object p2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->p:Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 107
    .line 108
    .line 109
    iget-object p2, v1, Lio/sentry/android/core/performance/AppStartMetrics;->q:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {v4}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-nez p2, :cond_3

    .line 119
    .line 120
    new-instance p2, Lio/sentry/protocol/App;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, p2}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v1, v1, Lio/sentry/android/core/performance/AppStartMetrics;->j:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 129
    .line 130
    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 131
    .line 132
    if-ne v1, v2, :cond_4

    .line 133
    .line 134
    const-string v1, "cold"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    const-string v1, "warm"

    .line 138
    .line 139
    :goto_1
    iput-object v1, p2, Lio/sentry/protocol/App;->s:Ljava/lang/String;

    .line 140
    .line 141
    :cond_5
    invoke-static {p1}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->d(Lio/sentry/protocol/SentryTransaction;)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 145
    .line 146
    invoke-virtual {v4}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz p2, :cond_7

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    iget-object v1, v1, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 155
    .line 156
    const-string v2, "ui.load"

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    iget-object p0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->j:Lio/sentry/android/core/ActivityFramesTracker;

    .line 165
    .line 166
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    .line 168
    iget-object v2, p0, Lio/sentry/android/core/ActivityFramesTracker;->f:Lio/sentry/util/AutoClosableReentrantLock;

    .line 169
    .line 170
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 171
    .line 172
    .line 173
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :try_start_3
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->c()Z

    .line 175
    .line 176
    .line 177
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    if-nez p0, :cond_6

    .line 179
    .line 180
    :try_start_4
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    .line 183
    const/4 p0, 0x0

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    :try_start_5
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    check-cast p0, Ljava/util/Map;

    .line 190
    .line 191
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 192
    .line 193
    .line 194
    :try_start_6
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 195
    .line 196
    .line 197
    :goto_2
    if-eqz p0, :cond_7

    .line 198
    .line 199
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    :try_start_7
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catchall_2
    move-exception p1

    .line 209
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 214
    .line 215
    .line 216
    return-object p1

    .line 217
    :goto_5
    :try_start_9
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :catchall_3
    move-exception p1

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    :goto_6
    throw p0
.end method
