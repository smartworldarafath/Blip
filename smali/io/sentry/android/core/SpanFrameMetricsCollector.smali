.class public Lio/sentry/android/core/SpanFrameMetricsCollector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IPerformanceContinuousCollector;
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    }
.end annotation


# static fields
.field public static final h:Lio/sentry/SentryNanotimeDate;


# instance fields
.field public final a:Z

.field public final b:Lio/sentry/util/AutoClosableReentrantLock;

.field public final c:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public volatile d:Ljava/lang/String;

.field public final e:Ljava/util/TreeSet;

.field public final f:Ljava/util/concurrent/ConcurrentSkipListSet;

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->h:Lio/sentry/SentryNanotimeDate;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 2

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
    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 10
    .line 11
    new-instance v0, Ljava/util/TreeSet;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/android/core/q;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->e:Ljava/util/TreeSet;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 29
    .line 30
    const-wide/32 v0, 0xfe502a

    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->g:J

    .line 34
    .line 35
    iput-object p2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->c:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->a:Z

    .line 53
    .line 54
    return-void
.end method

.method public static g(Lio/sentry/SentryDate;)J
    .locals 4

    .line 1
    instance-of v0, p0, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->h:Lio/sentry/SentryNanotimeDate;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/32 v2, 0xf4240

    .line 17
    .line 18
    .line 19
    mul-long/2addr v0, v2

    .line 20
    invoke-virtual {p0}, Lio/sentry/SentryDate;->d()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v2, v0

    .line 30
    return-wide v2
.end method


# virtual methods
.method public final b(JJJJZZF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0xe10

    .line 10
    .line 11
    if-le v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    move/from16 v4, p11

    .line 20
    .line 21
    float-to-double v4, v4

    .line 22
    div-double/2addr v2, v4

    .line 23
    double-to-long v2, v2

    .line 24
    iput-wide v2, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->g:J

    .line 25
    .line 26
    if-nez p9, :cond_2

    .line 27
    .line 28
    if-eqz p10, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    :goto_1
    new-instance v4, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 33
    .line 34
    move-wide/from16 v5, p1

    .line 35
    .line 36
    move-wide/from16 v7, p3

    .line 37
    .line 38
    move-wide/from16 v9, p5

    .line 39
    .line 40
    move-wide/from16 v11, p7

    .line 41
    .line 42
    move/from16 v13, p9

    .line 43
    .line 44
    move/from16 v14, p10

    .line 45
    .line 46
    move-wide v15, v2

    .line 47
    invoke-direct/range {v4 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->d:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->c:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 12
    .line 13
    iget-object v2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->d:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->e:Ljava/util/TreeSet;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    throw p0
.end method

.method public final e(Lio/sentry/ISpan;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->e:Ljava/util/TreeSet;

    .line 6
    .line 7
    iget-boolean v3, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->a:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v3, v1, Lio/sentry/NoOpSpan;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    instance-of v3, v1, Lio/sentry/NoOpTransaction;

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v3, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 23
    .line 24
    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 32
    if-nez v5, :cond_3

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    iget-object v6, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    :goto_0
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    .line 54
    .line 55
    .line 56
    move-object/from16 v28, v2

    .line 57
    .line 58
    move-object/from16 v29, v3

    .line 59
    .line 60
    move-object/from16 v33, v6

    .line 61
    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :cond_4
    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISpan;->s()Lio/sentry/SentryDate;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-nez v5, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-interface {v1}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v7}, Lio/sentry/android/core/SpanFrameMetricsCollector;->g(Lio/sentry/SentryDate;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    invoke-static {v5}, Lio/sentry/android/core/SpanFrameMetricsCollector;->g(Lio/sentry/SentryDate;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    sub-long v11, v9, v7

    .line 84
    .line 85
    const-wide/16 v13, 0x0

    .line 86
    .line 87
    cmp-long v5, v11, v13

    .line 88
    .line 89
    if-gtz v5, :cond_6

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    new-instance v15, Lio/sentry/android/core/SentryFrameMetrics;

    .line 93
    .line 94
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-wide v13, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->g:J

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const-wide/32 v24, 0x29b92700

    .line 104
    .line 105
    .line 106
    const/16 v26, 0x1

    .line 107
    .line 108
    const/16 v27, 0x0

    .line 109
    .line 110
    if-nez v5, :cond_e

    .line 111
    .line 112
    new-instance v5, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 113
    .line 114
    invoke-direct {v5, v7, v8}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {v5}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v16

    .line 129
    if-eqz v16, :cond_e

    .line 130
    .line 131
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    move-object/from16 v28, v2

    .line 136
    .line 137
    move-object/from16 v2, v16

    .line 138
    .line 139
    check-cast v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .line 141
    move-object/from16 v29, v3

    .line 142
    .line 143
    move-object/from16 v30, v4

    .line 144
    .line 145
    :try_start_3
    iget-wide v3, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    move-wide/from16 v16, v3

    .line 148
    .line 149
    iget-wide v3, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->p:J

    .line 150
    .line 151
    move-wide/from16 v31, v3

    .line 152
    .line 153
    iget-wide v3, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->k:J

    .line 154
    .line 155
    cmp-long v18, v16, v9

    .line 156
    .line 157
    if-lez v18, :cond_7

    .line 158
    .line 159
    goto/16 :goto_6

    .line 160
    .line 161
    :cond_7
    cmp-long v13, v16, v7

    .line 162
    .line 163
    if-ltz v13, :cond_9

    .line 164
    .line 165
    cmp-long v13, v3, v9

    .line 166
    .line 167
    if-gtz v13, :cond_9

    .line 168
    .line 169
    :try_start_4
    iget-wide v3, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->l:J

    .line 170
    .line 171
    iget-wide v13, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->m:J

    .line 172
    .line 173
    move-wide/from16 v16, v3

    .line 174
    .line 175
    iget-boolean v3, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->n:Z

    .line 176
    .line 177
    iget-boolean v2, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->o:Z

    .line 178
    .line 179
    move/from16 v21, v2

    .line 180
    .line 181
    move/from16 v20, v3

    .line 182
    .line 183
    move-wide/from16 v18, v13

    .line 184
    .line 185
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/SentryFrameMetrics;->a(JJZZ)V

    .line 186
    .line 187
    .line 188
    :cond_8
    move-object/from16 v34, v5

    .line 189
    .line 190
    move-object/from16 v33, v6

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    :goto_2
    move-object v1, v0

    .line 195
    goto/16 :goto_f

    .line 196
    .line 197
    :cond_9
    cmp-long v13, v7, v16

    .line 198
    .line 199
    if-lez v13, :cond_a

    .line 200
    .line 201
    cmp-long v13, v7, v3

    .line 202
    .line 203
    if-ltz v13, :cond_b

    .line 204
    .line 205
    :cond_a
    cmp-long v13, v9, v16

    .line 206
    .line 207
    if-lez v13, :cond_8

    .line 208
    .line 209
    cmp-long v13, v9, v3

    .line 210
    .line 211
    if-gez v13, :cond_8

    .line 212
    .line 213
    :cond_b
    sub-long v13, v7, v16

    .line 214
    .line 215
    move-object/from16 v34, v5

    .line 216
    .line 217
    move-object/from16 v33, v6

    .line 218
    .line 219
    const-wide/16 v5, 0x0

    .line 220
    .line 221
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v13

    .line 225
    sub-long v13, v13, v31

    .line 226
    .line 227
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 228
    .line 229
    .line 230
    move-result-wide v13

    .line 231
    iget-wide v5, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->m:J

    .line 232
    .line 233
    sub-long/2addr v5, v13

    .line 234
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 235
    .line 236
    .line 237
    move-result-wide v18

    .line 238
    iget-wide v5, v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->j:J

    .line 239
    .line 240
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 241
    .line 242
    .line 243
    move-result-wide v5

    .line 244
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 245
    .line 246
    .line 247
    move-result-wide v2

    .line 248
    sub-long v16, v2, v5

    .line 249
    .line 250
    cmp-long v2, v16, v31

    .line 251
    .line 252
    if-lez v2, :cond_c

    .line 253
    .line 254
    move/from16 v20, v26

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_c
    move/from16 v20, v27

    .line 258
    .line 259
    :goto_3
    cmp-long v2, v16, v24

    .line 260
    .line 261
    if-lez v2, :cond_d

    .line 262
    .line 263
    move/from16 v21, v26

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_d
    move/from16 v21, v27

    .line 267
    .line 268
    :goto_4
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/SentryFrameMetrics;->a(JJZZ)V

    .line 269
    .line 270
    .line 271
    :goto_5
    move-object/from16 v2, v28

    .line 272
    .line 273
    move-object/from16 v3, v29

    .line 274
    .line 275
    move-object/from16 v4, v30

    .line 276
    .line 277
    move-wide/from16 v13, v31

    .line 278
    .line 279
    move-object/from16 v6, v33

    .line 280
    .line 281
    move-object/from16 v5, v34

    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :catchall_1
    move-exception v0

    .line 286
    move-object/from16 v30, v4

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_e
    move-object/from16 v28, v2

    .line 290
    .line 291
    move-object/from16 v29, v3

    .line 292
    .line 293
    move-object/from16 v30, v4

    .line 294
    .line 295
    :goto_6
    move-object/from16 v33, v6

    .line 296
    .line 297
    iget v2, v15, Lio/sentry/android/core/SentryFrameMetrics;->a:I

    .line 298
    .line 299
    iget v3, v15, Lio/sentry/android/core/SentryFrameMetrics;->b:I

    .line 300
    .line 301
    add-int/2addr v2, v3

    .line 302
    iget-object v3, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->c:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 303
    .line 304
    iget-object v4, v3, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->s:Landroid/view/Choreographer;

    .line 305
    .line 306
    const-wide/16 v5, -0x1

    .line 307
    .line 308
    if-eqz v4, :cond_f

    .line 309
    .line 310
    iget-object v3, v3, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->t:Ljava/lang/reflect/Field;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    .line 312
    if-eqz v3, :cond_f

    .line 313
    .line 314
    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Ljava/lang/Long;

    .line 319
    .line 320
    if-eqz v3, :cond_f

    .line 321
    .line 322
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 323
    .line 324
    .line 325
    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    goto :goto_7

    .line 327
    :catch_0
    :cond_f
    move-wide v3, v5

    .line 328
    :goto_7
    cmp-long v5, v3, v5

    .line 329
    .line 330
    if-eqz v5, :cond_14

    .line 331
    .line 332
    sub-long/2addr v9, v3

    .line 333
    const-wide/16 v5, 0x0

    .line 334
    .line 335
    :try_start_6
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 336
    .line 337
    .line 338
    move-result-wide v16

    .line 339
    cmp-long v3, v16, v13

    .line 340
    .line 341
    if-lez v3, :cond_10

    .line 342
    .line 343
    move/from16 v3, v26

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_10
    move/from16 v3, v27

    .line 347
    .line 348
    :goto_8
    if-eqz v3, :cond_12

    .line 349
    .line 350
    cmp-long v3, v16, v24

    .line 351
    .line 352
    if-lez v3, :cond_11

    .line 353
    .line 354
    move/from16 v21, v26

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_11
    move/from16 v21, v27

    .line 358
    .line 359
    :goto_9
    sub-long v3, v16, v13

    .line 360
    .line 361
    const-wide/16 v5, 0x0

    .line 362
    .line 363
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 364
    .line 365
    .line 366
    move-result-wide v18

    .line 367
    const/16 v20, 0x1

    .line 368
    .line 369
    invoke-virtual/range {v15 .. v21}, Lio/sentry/android/core/SentryFrameMetrics;->a(JJZZ)V

    .line 370
    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_12
    move/from16 v26, v27

    .line 374
    .line 375
    :goto_a
    add-int v2, v2, v26

    .line 376
    .line 377
    iget-wide v3, v15, Lio/sentry/android/core/SentryFrameMetrics;->e:J

    .line 378
    .line 379
    sub-long/2addr v11, v3

    .line 380
    const-wide/16 v22, 0x0

    .line 381
    .line 382
    cmp-long v3, v11, v22

    .line 383
    .line 384
    if-lez v3, :cond_13

    .line 385
    .line 386
    long-to-double v3, v11

    .line 387
    long-to-double v5, v13

    .line 388
    div-double/2addr v3, v5

    .line 389
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v3

    .line 393
    double-to-int v3, v3

    .line 394
    move/from16 v27, v3

    .line 395
    .line 396
    :cond_13
    add-int v2, v2, v27

    .line 397
    .line 398
    :cond_14
    iget-wide v3, v15, Lio/sentry/android/core/SentryFrameMetrics;->c:J

    .line 399
    .line 400
    iget-wide v5, v15, Lio/sentry/android/core/SentryFrameMetrics;->d:J

    .line 401
    .line 402
    add-long/2addr v3, v5

    .line 403
    long-to-double v3, v3

    .line 404
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    div-double/2addr v3, v5

    .line 410
    const-string v5, "frames.total"

    .line 411
    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-interface {v1, v6, v5}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v5, "frames.slow"

    .line 420
    .line 421
    iget v6, v15, Lio/sentry/android/core/SentryFrameMetrics;->a:I

    .line 422
    .line 423
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-interface {v1, v6, v5}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v5, "frames.frozen"

    .line 431
    .line 432
    iget v6, v15, Lio/sentry/android/core/SentryFrameMetrics;->b:I

    .line 433
    .line 434
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-interface {v1, v6, v5}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v5, "frames.delay"

    .line 442
    .line 443
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-interface {v1, v6, v5}, Lio/sentry/ISpan;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    instance-of v5, v1, Lio/sentry/ITransaction;

    .line 451
    .line 452
    if-eqz v5, :cond_15

    .line 453
    .line 454
    const-string v5, "frames_total"

    .line 455
    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-interface {v1, v2, v5}, Lio/sentry/ISpan;->f(Ljava/lang/Number;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const-string v2, "frames_slow"

    .line 464
    .line 465
    iget v5, v15, Lio/sentry/android/core/SentryFrameMetrics;->a:I

    .line 466
    .line 467
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    invoke-interface {v1, v5, v2}, Lio/sentry/ISpan;->f(Ljava/lang/Number;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v2, "frames_frozen"

    .line 475
    .line 476
    iget v5, v15, Lio/sentry/android/core/SentryFrameMetrics;->b:I

    .line 477
    .line 478
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-interface {v1, v5, v2}, Lio/sentry/ISpan;->f(Ljava/lang/Number;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const-string v2, "frames_delay"

    .line 486
    .line 487
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-interface {v1, v3, v2}, Lio/sentry/ISpan;->f(Ljava/lang/Number;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 492
    .line 493
    .line 494
    :cond_15
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V

    .line 495
    .line 496
    .line 497
    :goto_b
    invoke-virtual/range {v29 .. v29}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_16

    .line 506
    .line 507
    invoke-virtual {v0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->d()V

    .line 508
    .line 509
    .line 510
    goto :goto_c

    .line 511
    :catchall_2
    move-exception v0

    .line 512
    move-object v2, v0

    .line 513
    goto :goto_d

    .line 514
    :cond_16
    invoke-virtual/range {v28 .. v28}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Lio/sentry/ISpan;

    .line 519
    .line 520
    new-instance v2, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 521
    .line 522
    invoke-interface {v0}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->g(Lio/sentry/SentryDate;)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    invoke-direct {v2, v3, v4}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v0, v33

    .line 534
    .line 535
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 540
    .line 541
    .line 542
    :goto_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :goto_d
    :try_start_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 547
    .line 548
    .line 549
    goto :goto_e

    .line 550
    :catchall_3
    move-exception v0

    .line 551
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 552
    .line 553
    .line 554
    :goto_e
    throw v2

    .line 555
    :goto_f
    :try_start_9
    invoke-interface/range {v30 .. v30}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 556
    .line 557
    .line 558
    goto :goto_10

    .line 559
    :catchall_4
    move-exception v0

    .line 560
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    :goto_10
    throw v1

    .line 564
    :catchall_5
    move-exception v0

    .line 565
    move-object v1, v0

    .line 566
    :try_start_a
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 567
    .line 568
    .line 569
    goto :goto_11

    .line 570
    :catchall_6
    move-exception v0

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    :goto_11
    throw v1
.end method

.method public final f(Lio/sentry/ISpan;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->e:Ljava/util/TreeSet;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->d:Ljava/lang/String;

    .line 28
    .line 29
    if-nez p1, :cond_4

    .line 30
    .line 31
    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->c:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 32
    .line 33
    iget-boolean v1, p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->p:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-static {}, Lio/sentry/SentryUUID;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->b()V

    .line 49
    .line 50
    .line 51
    move-object p1, v1

    .line 52
    :goto_1
    iput-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_3
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_4
    throw p0
.end method
