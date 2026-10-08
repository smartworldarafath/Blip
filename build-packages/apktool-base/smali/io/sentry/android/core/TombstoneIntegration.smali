.class public Lio/sentry/android/core/TombstoneIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;,
        Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
    }
.end annotation


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lio/sentry/transport/CurrentDateProvider;

.field public l:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_0
    iput-object p1, p0, Lio/sentry/android/core/TombstoneIntegration;->j:Landroid/content/Context;

    .line 12
    .line 13
    sget-object p1, Lio/sentry/transport/CurrentDateProvider;->j:Lio/sentry/transport/CurrentDateProvider;

    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/android/core/TombstoneIntegration;->k:Lio/sentry/transport/CurrentDateProvider;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 22
    .line 23
    iget-object v2, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "TombstoneIntegration enabled: %s"

    .line 38
    .line 39
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 51
    .line 52
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object p0, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 60
    .line 61
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    const-string v0, "Cache dir is not set, unable to process Tombstones"

    .line 68
    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v2, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;

    .line 80
    .line 81
    iget-object v3, p0, Lio/sentry/android/core/TombstoneIntegration;->j:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v4, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 84
    .line 85
    iget-object p0, p0, Lio/sentry/android/core/TombstoneIntegration;->k:Lio/sentry/transport/CurrentDateProvider;

    .line 86
    .line 87
    new-instance v5, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;

    .line 88
    .line 89
    invoke-direct {v5, v3, v4}, Lio/sentry/android/core/TombstoneIntegration$TombstonePolicy;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v3, v4, p0, v5}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/CurrentDateProvider;Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 105
    .line 106
    const-string v3, "Failed to start tombstone processor."

    .line 107
    .line 108
    invoke-interface {v0, v2, v3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 116
    .line 117
    const-string v0, "TombstoneIntegration installed."

    .line 118
    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-string p0, "Tombstone"

    .line 125
    .line 126
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/TombstoneIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v2, "TombstoneIntegration removed."

    .line 15
    .line 16
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
