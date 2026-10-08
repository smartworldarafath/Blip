.class public final Lio/sentry/android/core/cache/AndroidEnvelopeCache;
.super Lio/sentry/cache/EnvelopeCache;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/List;


# instance fields
.field public final t:Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 2
    .line 3
    new-instance v1, Lio/sentry/android/core/cache/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lio/sentry/android/core/cache/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-class v2, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    .line 10
    .line 11
    const-string v3, "ANR"

    .line 12
    .line 13
    const-string v4, "last_anr_report"

    .line 14
    .line 15
    invoke-direct {v0, v2, v3, v4, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 19
    .line 20
    new-instance v2, Lio/sentry/android/core/cache/a;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v3}, Lio/sentry/android/core/cache/a;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const-class v3, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    .line 27
    .line 28
    const-string v4, "Tombstone"

    .line 29
    .line 30
    const-string v5, "last_tombstone_report"

    .line 31
    .line 32
    invoke-direct {v1, v3, v4, v5, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V

    .line 33
    .line 34
    .line 35
    filled-new-array {v0, v1}, [Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->u:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "cacheDirPath must not be null"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxCacheItems()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->j:Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;

    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->t:Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;

    .line 20
    .line 21
    return-void
.end method

.method public static j(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Cache dir path should be set for getting "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "s reported"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-static {v1}, Lio/sentry/util/FileUtils;->c(Ljava/io/File;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    const-string v0, "null"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return-object p0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 70
    .line 71
    const-string v0, "Last "

    .line 72
    .line 73
    const-string v2, " marker does not exist. %s."

    .line 74
    .line 75
    invoke-static {v0, p2, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 96
    .line 97
    const-string v1, "Error reading last "

    .line 98
    .line 99
    const-string v2, " marker"

    .line 100
    .line 101
    invoke-static {v1, p2, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-interface {p0, v0, p2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method


# virtual methods
.method public final q(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 12

    .line 1
    invoke-super {p0, p1, p2}, Lio/sentry/cache/EnvelopeCache;->q(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->j:Lio/sentry/SentryOptions;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    .line 10
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v2, v2, Lio/sentry/android/core/performance/AppStartMetrics;->n:Lio/sentry/android/core/performance/TimeSpan;

    .line 15
    .line 16
    const-string v3, "sentry:typeCheckHint"

    .line 17
    .line 18
    invoke-virtual {p2, v3}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-class v5, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    iget-object v4, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->t:Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    iget-wide v8, v2, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 47
    .line 48
    sub-long/2addr v6, v8

    .line 49
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashDurationThresholdMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    cmp-long v2, v6, v8

    .line 54
    .line 55
    if-gtz v2, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 62
    .line 63
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v7, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk."

    .line 72
    .line 73
    invoke-interface {v2, v4, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v2, "Outbox path is null, the startup crash marker file will not be written"

    .line 87
    .line 88
    new-array v6, v5, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {v0, v4, v2, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 95
    .line 96
    const-string v6, "startup_crash"

    .line 97
    .line 98
    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 111
    .line 112
    const-string v6, "Error writing the startup crash marker file to the disk"

    .line 113
    .line 114
    invoke-interface {v0, v4, v6, v2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->u:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 134
    .line 135
    iget-object v4, v2, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->a:Ljava/lang/Class;

    .line 136
    .line 137
    new-instance v6, Lio/sentry/android/core/cache/b;

    .line 138
    .line 139
    invoke-direct {v6, v2, v1, p0}, Lio/sentry/android/core/cache/b;-><init>(Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/cache/AndroidEnvelopeCache;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v3}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p2, v3}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_2

    .line 155
    .line 156
    if-eqz v2, :cond_2

    .line 157
    .line 158
    iget-object v4, v6, Lio/sentry/android/core/cache/b;->a:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;

    .line 159
    .line 160
    iget-object v7, v4, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->d:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;

    .line 161
    .line 162
    invoke-interface {v7, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;->a(Ljava/lang/Object;)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v7, v6, Lio/sentry/android/core/cache/b;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 167
    .line 168
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 173
    .line 174
    iget-object v9, v4, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->b:Ljava/lang/String;

    .line 175
    .line 176
    filled-new-array {v9, v2}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    const-string v11, "Writing last reported %s marker with timestamp %d"

    .line 181
    .line 182
    invoke-interface {v7, v8, v11, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object v4, v4, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->c:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v6, v6, Lio/sentry/android/core/cache/b;->c:Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    .line 188
    .line 189
    iget-object v6, v6, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->j:Lio/sentry/SentryOptions;

    .line 190
    .line 191
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    if-nez v7, :cond_3

    .line 196
    .line 197
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const-string v4, "Cache dir path is null, the "

    .line 202
    .line 203
    const-string v6, " marker will not be written"

    .line 204
    .line 205
    invoke-static {v4, v9, v6}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    new-array v6, v5, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-interface {v2, v8, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    new-instance v8, Ljava/io/File;

    .line 216
    .line 217
    invoke-direct {v8, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 221
    .line 222
    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    .line 224
    .line 225
    :try_start_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    sget-object v7, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->n:Ljava/nio/charset/Charset;

    .line 230
    .line 231
    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 239
    .line 240
    .line 241
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catchall_1
    move-exception v2

    .line 246
    goto :goto_3

    .line 247
    :catchall_2
    move-exception v2

    .line 248
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :catchall_3
    move-exception v4

    .line 253
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    :goto_2
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    :goto_3
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 262
    .line 263
    const-string v7, "Error writing the "

    .line 264
    .line 265
    const-string v8, " marker to the disk"

    .line 266
    .line 267
    invoke-static {v7, v9, v8}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-interface {v4, v6, v7, v2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_4
    return p1
.end method
