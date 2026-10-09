.class public final Lio/sentry/android/core/NdkIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# instance fields
.field public final j:Ljava/lang/Class;

.field public k:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/NdkIntegration;->j:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "NdkIntegration enabled: %s"

    .line 38
    .line 39
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->j:Ljava/lang/Class;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    .line 50
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v3, 0x0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 64
    .line 65
    const-string v1, "No cache dir path is defined in options."

    .line 66
    .line 67
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    .line 74
    invoke-static {p0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    :try_start_0
    const-string v0, "init"

    .line 79
    .line 80
    const-class v4, Lio/sentry/android/core/SentryAndroidOptions;

    .line 81
    .line 82
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 91
    .line 92
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 100
    .line 101
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "NdkIntegration installed."

    .line 106
    .line 107
    new-array v1, v3, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-interface {p1, v2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const-string p1, "Ndk"

    .line 113
    .line 114
    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception p1

    .line 121
    goto :goto_2

    .line 122
    :goto_1
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 123
    .line 124
    invoke-static {v0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 128
    .line 129
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 134
    .line 135
    const-string v1, "Failed to initialize SentryNdk."

    .line 136
    .line 137
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_2
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 142
    .line 143
    invoke-static {v0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 147
    .line 148
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 153
    .line 154
    const-string v1, "Failed to invoke the SentryNdk.init method."

    .line 155
    .line 156
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    return-void

    .line 160
    :cond_2
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 161
    .line 162
    invoke-static {p0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->j:Ljava/lang/Class;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v1, "close"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 32
    .line 33
    const-string v2, "NdkIntegration removed."

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 42
    .line 43
    invoke-static {p0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :goto_0
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    .line 53
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 58
    .line 59
    const-string v3, "Failed to close SentryNdk."

    .line 60
    .line 61
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 65
    .line 66
    invoke-static {p0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :goto_2
    :try_start_2
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    .line 74
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 79
    .line 80
    const-string v3, "Failed to invoke the SentryNdk.close method."

    .line 81
    .line 82
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    iget-object p0, p0, Lio/sentry/android/core/NdkIntegration;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 87
    .line 88
    invoke-static {p0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_0
    :goto_4
    return-void
.end method
