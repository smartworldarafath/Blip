.class public Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/TombstoneIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TombstonePolicy"
.end annotation


# instance fields
.field public final a:Lio/sentry/android/core/SentryAndroidOptions;

.field public final b:Lio/sentry/android/core/NativeEventCollector;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    .line 6
    new-instance v0, Lio/sentry/android/core/NativeEventCollector;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lio/sentry/android/core/NativeEventCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->b:Lio/sentry/android/core/NativeEventCollector;

    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->c:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .line 1
    const-string v0, "last_tombstone_report"

    .line 2
    .line 3
    const-string v1, "Tombstone"

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->j(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Tombstone"

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalTombstones()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    .locals 12

    .line 1
    iget-object v1, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Lqi;->c(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    const-string v0, "No tombstone InputStream available for ApplicationExitInfo from %s"

    .line 17
    .line 18
    sget-object v3, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 19
    .line 20
    invoke-static {p1}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {p0, p2, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    new-instance v3, Lio/sentry/android/core/internal/tombstone/TombstoneParser;

    .line 44
    .line 45
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, p0, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->c:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v3, v0, v4, v5, v6}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;-><init>(Ljava/io/InputStream;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-virtual {v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->a()Lio/sentry/SentryEvent;

    .line 65
    .line 66
    .line 67
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    :try_start_2
    invoke-virtual {v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v9

    .line 75
    invoke-static {v9, v10}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, v4, Lio/sentry/SentryEvent;->y:Ljava/util/Date;

    .line 80
    .line 81
    new-instance v5, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    .line 82
    .line 83
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    move v11, p2

    .line 92
    invoke-direct/range {v5 .. v11}, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;-><init>(JLio/sentry/ILogger;JZ)V

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :try_start_3
    invoke-virtual {p0, v9, v10, v4, p1}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->f(JLio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    .line 100
    .line 101
    .line 102
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    if-eqz p0, :cond_1

    .line 104
    .line 105
    move-object v4, p0

    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object p0, v0

    .line 109
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string v1, "Failed to merge native event with tombstone, continuing without merge: %s"

    .line 124
    .line 125
    invoke-interface {p2, v0, v1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    :goto_0
    new-instance p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    .line 129
    .line 130
    invoke-direct {p0, v4, p1, v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;-><init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :catchall_2
    move-exception v0

    .line 135
    move-object p0, v0

    .line 136
    :try_start_4
    invoke-virtual {v3}, Lio/sentry/android/core/internal/tombstone/TombstoneParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_3
    move-exception v0

    .line 141
    move-object p2, v0

    .line 142
    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    :goto_2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 151
    .line 152
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 153
    .line 154
    invoke-static {p1}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v1, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    const-string p1, "Failed to parse tombstone from %s: %s"

    .line 175
    .line 176
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-object v2
.end method

.method public final f(JLio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    iget-object v3, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->b:Lio/sentry/android/core/NativeEventCollector;

    .line 6
    .line 7
    iget-object v4, v3, Lio/sentry/android/core/NativeEventCollector;->b:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v5, v3, Lio/sentry/android/core/NativeEventCollector;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    .line 11
    iget-boolean v0, v3, Lio/sentry/android/core/NativeEventCollector;->c:Z

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :goto_0
    const/16 v16, 0x0

    .line 17
    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    const/4 v8, 0x1

    .line 21
    iput-boolean v8, v3, Lio/sentry/android/core/NativeEventCollector;->c:Z

    .line 22
    .line 23
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 34
    .line 35
    const-string v8, "Outbox path is null, skipping native event collection."

    .line 36
    .line 37
    new-array v9, v7, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v0, v3, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v9, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    if-nez v9, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 59
    .line 60
    const-string v9, "Outbox path is not a directory or an I/O error occurred: %s"

    .line 61
    .line 62
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v3, v8, v9, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    array-length v0, v9

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 78
    .line 79
    const-string v8, "No envelope files found in outbox."

    .line 80
    .line 81
    new-array v9, v7, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-interface {v0, v3, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 92
    .line 93
    array-length v11, v9

    .line 94
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    const-string v12, "Scanning %d files in outbox for native events."

    .line 103
    .line 104
    invoke-interface {v0, v10, v12, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    array-length v10, v9

    .line 108
    move v11, v7

    .line 109
    :goto_1
    if-ge v11, v10, :cond_15

    .line 110
    .line 111
    aget-object v12, v9, v11

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_13

    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_13

    .line 124
    .line 125
    const-string v13, "session"

    .line 126
    .line 127
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-nez v13, :cond_13

    .line 132
    .line 133
    const-string v13, "previous_session"

    .line 134
    .line 135
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-nez v13, :cond_13

    .line 140
    .line 141
    const-string v13, "startup_crash"

    .line 142
    .line 143
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_13

    .line 148
    .line 149
    :try_start_0
    new-instance v13, Ljava/io/BufferedInputStream;

    .line 150
    .line 151
    new-instance v0, Ljava/io/FileInputStream;

    .line 152
    .line 153
    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 157
    .line 158
    .line 159
    move v0, v7

    .line 160
    :cond_4
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    .line 161
    .line 162
    .line 163
    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 164
    const/16 v15, 0xa

    .line 165
    .line 166
    const/16 v16, 0x0

    .line 167
    .line 168
    const/4 v6, -0x1

    .line 169
    if-eq v14, v6, :cond_5

    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    if-ne v14, v15, :cond_4

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    if-lez v0, :cond_6

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    move v0, v6

    .line 180
    :goto_2
    if-gez v0, :cond_7

    .line 181
    .line 182
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .line 184
    .line 185
    move/from16 v18, v8

    .line 186
    .line 187
    move-object/from16 v17, v9

    .line 188
    .line 189
    :goto_3
    move-object/from16 v0, v16

    .line 190
    .line 191
    goto/16 :goto_d

    .line 192
    .line 193
    :catchall_0
    move-exception v0

    .line 194
    move/from16 v18, v8

    .line 195
    .line 196
    move-object/from16 v17, v9

    .line 197
    .line 198
    goto/16 :goto_c

    .line 199
    .line 200
    :cond_7
    move v14, v8

    .line 201
    move-object/from16 v17, v9

    .line 202
    .line 203
    int-to-long v8, v0

    .line 204
    :goto_4
    const-wide/32 v18, 0xc800000

    .line 205
    .line 206
    .line 207
    cmp-long v0, v8, v18

    .line 208
    .line 209
    if-gez v0, :cond_11

    .line 210
    .line 211
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 214
    .line 215
    .line 216
    move/from16 v18, v14

    .line 217
    .line 218
    :goto_5
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    .line 219
    .line 220
    .line 221
    move-result v14

    .line 222
    if-eq v14, v6, :cond_9

    .line 223
    .line 224
    if-ne v14, v15, :cond_8

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    goto :goto_6

    .line 231
    :cond_8
    int-to-char v14, v14

    .line 232
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    if-lez v14, :cond_a

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    goto :goto_6

    .line 247
    :cond_a
    move-object/from16 v0, v16

    .line 248
    .line 249
    :goto_6
    if-eqz v0, :cond_12

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    if-eqz v14, :cond_b

    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    add-int/lit8 v14, v14, 0x1

    .line 263
    .line 264
    move-wide/from16 v20, v8

    .line 265
    .line 266
    int-to-long v7, v14

    .line 267
    add-long v8, v20, v7

    .line 268
    .line 269
    invoke-virtual {v3, v0}, Lio/sentry/android/core/NativeEventCollector;->b(Ljava/lang/String;)Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-nez v0, :cond_c

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_c
    iget v7, v0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->b:I

    .line 277
    .line 278
    const-string v14, "event"

    .line 279
    .line 280
    iget-object v0, v0, Lio/sentry/android/core/NativeEventCollector$ItemHeaderInfo;->a:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_e

    .line 287
    .line 288
    invoke-virtual {v3, v13, v7, v12}, Lio/sentry/android/core/NativeEventCollector;->a(Ljava/io/BufferedInputStream;ILjava/io/File;)Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    .line 289
    .line 290
    .line 291
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 292
    if-eqz v0, :cond_d

    .line 293
    .line 294
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 295
    .line 296
    .line 297
    goto :goto_d

    .line 298
    :catchall_1
    move-exception v0

    .line 299
    goto :goto_c

    .line 300
    :cond_d
    move-wide/from16 v20, v8

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :catchall_2
    move-exception v0

    .line 304
    :goto_7
    move-object v6, v0

    .line 305
    goto :goto_a

    .line 306
    :cond_e
    move-wide/from16 v20, v8

    .line 307
    .line 308
    int-to-long v8, v7

    .line 309
    :try_start_6
    invoke-static {v13, v8, v9}, Lio/sentry/android/core/NativeEventCollector;->c(Ljava/io/BufferedInputStream;J)V

    .line 310
    .line 311
    .line 312
    :goto_8
    int-to-long v7, v7

    .line 313
    add-long v8, v20, v7

    .line 314
    .line 315
    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    .line 316
    .line 317
    .line 318
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 319
    if-ne v0, v6, :cond_f

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_f
    const-wide/16 v20, 0x1

    .line 323
    .line 324
    add-long v8, v8, v20

    .line 325
    .line 326
    if-eq v0, v15, :cond_10

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_10
    move/from16 v14, v18

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :catchall_3
    move-exception v0

    .line 335
    move/from16 v18, v14

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_11
    move/from16 v18, v14

    .line 339
    .line 340
    :cond_12
    :goto_9
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 341
    .line 342
    .line 343
    goto/16 :goto_3

    .line 344
    .line 345
    :catchall_4
    move-exception v0

    .line 346
    move/from16 v18, v8

    .line 347
    .line 348
    move-object/from16 v17, v9

    .line 349
    .line 350
    const/16 v16, 0x0

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :goto_a
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 354
    .line 355
    .line 356
    goto :goto_b

    .line 357
    :catchall_5
    move-exception v0

    .line 358
    :try_start_9
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :goto_b
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 362
    :catchall_6
    move-exception v0

    .line 363
    move/from16 v18, v8

    .line 364
    .line 365
    move-object/from16 v17, v9

    .line 366
    .line 367
    const/16 v16, 0x0

    .line 368
    .line 369
    :goto_c
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 374
    .line 375
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    const-string v9, "Error extracting metadata from envelope file: %s"

    .line 384
    .line 385
    invoke-interface {v6, v7, v0, v9, v8}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :goto_d
    if-eqz v0, :cond_14

    .line 391
    .line 392
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 400
    .line 401
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    iget-wide v12, v0, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->b:J

    .line 406
    .line 407
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    filled-new-array {v8, v0}, [Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const-string v8, "Found native event in outbox: %s (timestamp: %d)"

    .line 416
    .line 417
    invoke-interface {v6, v7, v8, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_e

    .line 421
    :cond_13
    move/from16 v18, v8

    .line 422
    .line 423
    move-object/from16 v17, v9

    .line 424
    .line 425
    const/16 v16, 0x0

    .line 426
    .line 427
    :cond_14
    :goto_e
    add-int/lit8 v11, v11, 0x1

    .line 428
    .line 429
    move-object/from16 v9, v17

    .line 430
    .line 431
    move/from16 v8, v18

    .line 432
    .line 433
    const/4 v7, 0x0

    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :cond_15
    const/16 v16, 0x0

    .line 437
    .line 438
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 443
    .line 444
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result v6

    .line 448
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    const-string v7, "Collected %d native events from outbox."

    .line 457
    .line 458
    invoke-interface {v0, v3, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-eqz v3, :cond_1b

    .line 470
    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    check-cast v3, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;

    .line 476
    .line 477
    iget-wide v6, v3, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->b:J

    .line 478
    .line 479
    sub-long v6, p1, v6

    .line 480
    .line 481
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 482
    .line 483
    .line 484
    move-result-wide v6

    .line 485
    const-wide/16 v8, 0x1388

    .line 486
    .line 487
    cmp-long v8, v6, v8

    .line 488
    .line 489
    if-gtz v8, :cond_16

    .line 490
    .line 491
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 496
    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    const-string v7, "Matched native event by timestamp (diff: %d ms)"

    .line 506
    .line 507
    invoke-interface {v0, v8, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    iget-object v3, v3, Lio/sentry/android/core/NativeEventCollector$NativeEnvelopeMetadata;->a:Ljava/io/File;

    .line 514
    .line 515
    :try_start_a
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 516
    .line 517
    new-instance v0, Ljava/io/FileInputStream;

    .line 518
    .line 519
    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 520
    .line 521
    .line 522
    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 523
    .line 524
    .line 525
    :try_start_b
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-interface {v0, v4}, Lio/sentry/IEnvelopeReader;->a(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;

    .line 530
    .line 531
    .line 532
    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 533
    if-nez v0, :cond_18

    .line 534
    .line 535
    :cond_17
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 536
    .line 537
    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :catchall_7
    move-exception v0

    .line 541
    goto/16 :goto_15

    .line 542
    .line 543
    :cond_18
    :try_start_d
    iget-object v6, v0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 544
    .line 545
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    if-eqz v7, :cond_17

    .line 554
    .line 555
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    check-cast v7, Lio/sentry/SentryEnvelopeItem;

    .line 560
    .line 561
    sget-object v8, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 562
    .line 563
    iget-object v9, v7, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 564
    .line 565
    iget-object v9, v9, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 566
    .line 567
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v8

    .line 571
    if-nez v8, :cond_19

    .line 572
    .line 573
    goto :goto_10

    .line 574
    :cond_19
    new-instance v8, Ljava/io/BufferedReader;

    .line 575
    .line 576
    new-instance v9, Ljava/io/InputStreamReader;

    .line 577
    .line 578
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .line 579
    .line 580
    invoke-virtual {v7}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    invoke-direct {v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 585
    .line 586
    .line 587
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 588
    .line 589
    invoke-direct {v9, v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 590
    .line 591
    .line 592
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 593
    .line 594
    .line 595
    :try_start_e
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    const-class v9, Lio/sentry/SentryEvent;

    .line 600
    .line 601
    invoke-interface {v7, v8, v9}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    check-cast v7, Lio/sentry/SentryEvent;

    .line 606
    .line 607
    if-eqz v7, :cond_1a

    .line 608
    .line 609
    const-string v9, "native"

    .line 610
    .line 611
    iget-object v10, v7, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    if-eqz v9, :cond_1a

    .line 618
    .line 619
    new-instance v6, Lio/sentry/android/core/NativeEventCollector$NativeEventData;

    .line 620
    .line 621
    invoke-direct {v6, v7, v3, v0}, Lio/sentry/android/core/NativeEventCollector$NativeEventData;-><init>(Lio/sentry/SentryEvent;Ljava/io/File;Lio/sentry/SentryEnvelope;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 622
    .line 623
    .line 624
    :try_start_f
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 625
    .line 626
    .line 627
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 628
    .line 629
    .line 630
    goto :goto_17

    .line 631
    :catchall_8
    move-exception v0

    .line 632
    move-object v6, v0

    .line 633
    goto :goto_13

    .line 634
    :catchall_9
    move-exception v0

    .line 635
    move-object v6, v0

    .line 636
    goto :goto_11

    .line 637
    :cond_1a
    :try_start_11
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 638
    .line 639
    .line 640
    goto :goto_10

    .line 641
    :goto_11
    :try_start_12
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 642
    .line 643
    .line 644
    goto :goto_12

    .line 645
    :catchall_a
    move-exception v0

    .line 646
    :try_start_13
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 647
    .line 648
    .line 649
    :goto_12
    throw v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 650
    :goto_13
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 651
    .line 652
    .line 653
    goto :goto_14

    .line 654
    :catchall_b
    move-exception v0

    .line 655
    :try_start_15
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    :goto_14
    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 659
    :goto_15
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 664
    .line 665
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    const-string v7, "Error loading envelope file: %s"

    .line 674
    .line 675
    invoke-interface {v4, v6, v0, v7, v3}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    :cond_1b
    :goto_16
    move-object/from16 v6, v16

    .line 679
    .line 680
    :goto_17
    iget-object v1, v1, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 681
    .line 682
    if-nez v6, :cond_1c

    .line 683
    .line 684
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 689
    .line 690
    const-string v2, "No matching native event found for tombstone."

    .line 691
    .line 692
    const/4 v3, 0x0

    .line 693
    new-array v3, v3, [Ljava/lang/Object;

    .line 694
    .line 695
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    return-object v16

    .line 699
    :cond_1c
    iget-object v3, v6, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->b:Ljava/io/File;

    .line 700
    .line 701
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 706
    .line 707
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v7

    .line 711
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    const-string v8, "Found matching native event for tombstone, removing from outbox: %s"

    .line 716
    .line 717
    invoke-interface {v0, v4, v8, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    :try_start_16
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_24

    .line 725
    .line 726
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    const-string v7, "Deleted native event file from outbox: %s"

    .line 731
    .line 732
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v8

    .line 736
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    invoke-interface {v0, v4, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 741
    .line 742
    .line 743
    iget-object v3, v6, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->a:Lio/sentry/SentryEvent;

    .line 744
    .line 745
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    iget-object v4, v2, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 750
    .line 751
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 752
    .line 753
    .line 754
    move-result-object v5

    .line 755
    if-eqz v0, :cond_20

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 758
    .line 759
    .line 760
    move-result v7

    .line 761
    if-nez v7, :cond_20

    .line 762
    .line 763
    if-eqz v4, :cond_20

    .line 764
    .line 765
    if-eqz v5, :cond_20

    .line 766
    .line 767
    const/4 v7, 0x0

    .line 768
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v7

    .line 772
    check-cast v7, Lio/sentry/protocol/SentryException;

    .line 773
    .line 774
    iget-object v7, v7, Lio/sentry/protocol/SentryException;->o:Lio/sentry/protocol/Mechanism;

    .line 775
    .line 776
    if-eqz v7, :cond_1d

    .line 777
    .line 778
    sget-object v8, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->TOMBSTONE_MERGED:Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;

    .line 779
    .line 780
    invoke-virtual {v8}, Lio/sentry/android/core/internal/tombstone/NativeExceptionMechanism;->getValue()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    iput-object v8, v7, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 785
    .line 786
    :cond_1d
    iget-object v7, v3, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 787
    .line 788
    if-eqz v7, :cond_1e

    .line 789
    .line 790
    iget-object v7, v7, Lio/sentry/protocol/Message;->k:Ljava/lang/String;

    .line 791
    .line 792
    if-eqz v7, :cond_1e

    .line 793
    .line 794
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 795
    .line 796
    .line 797
    move-result v7

    .line 798
    if-eqz v7, :cond_1f

    .line 799
    .line 800
    :cond_1e
    iget-object v2, v2, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 801
    .line 802
    iput-object v2, v3, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 803
    .line 804
    :cond_1f
    invoke-virtual {v3, v0}, Lio/sentry/SentryEvent;->h(Ljava/util/ArrayList;)V

    .line 805
    .line 806
    .line 807
    iput-object v4, v3, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 808
    .line 809
    invoke-virtual {v3, v5}, Lio/sentry/SentryEvent;->j(Ljava/util/List;)V

    .line 810
    .line 811
    .line 812
    :cond_20
    iget-object v0, v6, Lio/sentry/android/core/NativeEventCollector$NativeEventData;->c:Lio/sentry/SentryEnvelope;

    .line 813
    .line 814
    iget-object v0, v0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 815
    .line 816
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-eqz v0, :cond_23

    .line 825
    .line 826
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 831
    .line 832
    :try_start_17
    iget-object v4, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 833
    .line 834
    iget-object v5, v4, Lio/sentry/SentryEnvelopeItemHeader;->l:Ljava/lang/String;

    .line 835
    .line 836
    iget-object v4, v4, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 837
    .line 838
    sget-object v6, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 839
    .line 840
    if-ne v4, v6, :cond_21

    .line 841
    .line 842
    if-nez v5, :cond_22

    .line 843
    .line 844
    :cond_21
    move-object/from16 v5, p4

    .line 845
    .line 846
    goto :goto_18

    .line 847
    :cond_22
    new-instance v4, Lio/sentry/Attachment;

    .line 848
    .line 849
    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 850
    .line 851
    .line 852
    move-result-object v6

    .line 853
    iget-object v0, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 854
    .line 855
    iget-object v7, v0, Lio/sentry/SentryEnvelopeItemHeader;->j:Ljava/lang/String;

    .line 856
    .line 857
    iget-object v0, v0, Lio/sentry/SentryEnvelopeItemHeader;->q:Ljava/lang/String;

    .line 858
    .line 859
    invoke-direct {v4, v5, v7, v0, v6}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 860
    .line 861
    .line 862
    move-object/from16 v5, p4

    .line 863
    .line 864
    :try_start_18
    iget-object v0, v5, Lio/sentry/Hint;->b:Ljava/util/ArrayList;

    .line 865
    .line 866
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 867
    .line 868
    .line 869
    goto :goto_18

    .line 870
    :catchall_c
    move-exception v0

    .line 871
    goto :goto_19

    .line 872
    :catchall_d
    move-exception v0

    .line 873
    move-object/from16 v5, p4

    .line 874
    .line 875
    :goto_19
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 880
    .line 881
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    const-string v7, "Failed to process envelope item: %s"

    .line 890
    .line 891
    invoke-interface {v4, v6, v7, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    .line 893
    .line 894
    goto :goto_18

    .line 895
    :cond_23
    return-object v3

    .line 896
    :catchall_e
    move-exception v0

    .line 897
    goto :goto_1a

    .line 898
    :cond_24
    :try_start_19
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 903
    .line 904
    const-string v2, "Failed to delete native event file: %s"

    .line 905
    .line 906
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 915
    .line 916
    .line 917
    goto :goto_1b

    .line 918
    :goto_1a
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 923
    .line 924
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    const-string v4, "Error deleting native event file: %s"

    .line 933
    .line 934
    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    :goto_1b
    return-object v16
.end method
