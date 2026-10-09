.class public final Lio/sentry/ManifestVersionDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IVersionDetector;


# instance fields
.field public final a:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/ManifestVersionDetector;->a:Lio/sentry/SentryOptions;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 12

    .line 1
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->c:Lio/sentry/internal/ManifestVersionReader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->d:Lio/sentry/util/AutoClosableReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    sget-object v1, Lio/sentry/internal/ManifestVersionReader;->c:Lio/sentry/internal/ManifestVersionReader;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lio/sentry/internal/ManifestVersionReader;

    .line 16
    .line 17
    invoke-direct {v1}, Lio/sentry/internal/ManifestVersionReader;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lio/sentry/internal/ManifestVersionReader;->c:Lio/sentry/internal/ManifestVersionReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 26
    .line 27
    .line 28
    goto :goto_3

    .line 29
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    throw p0

    .line 38
    :cond_1
    :goto_3
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->c:Lio/sentry/internal/ManifestVersionReader;

    .line 39
    .line 40
    iget-boolean v1, v0, Lio/sentry/internal/ManifestVersionReader;->a:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_2
    const/4 v1, 0x1

    .line 47
    :try_start_2
    iget-object v2, v0, Lio/sentry/internal/ManifestVersionReader;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 48
    .line 49
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 50
    .line 51
    .line 52
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    :try_start_3
    iget-boolean v3, v0, Lio/sentry/internal/ManifestVersionReader;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    .line 59
    .line 60
    :catch_0
    iput-boolean v1, v0, Lio/sentry/internal/ManifestVersionReader;->a:Z

    .line 61
    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :catchall_2
    move-exception p0

    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "META-INF/MANIFEST.MF"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :catch_1
    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 78
    .line 79
    .line 80
    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    :try_start_6
    new-instance v4, Ljava/util/jar/Manifest;

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Ljava/net/URL;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-direct {v4, v5}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    const-string v5, "Sentry-Opentelemetry-SDK-Name"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const-string v6, "Implementation-Version"

    .line 111
    .line 112
    invoke-virtual {v4, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const-string v7, "Sentry-SDK-Name"

    .line 117
    .line 118
    invoke-virtual {v4, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string v8, "Sentry-SDK-Package-Name"

    .line 123
    .line 124
    invoke-virtual {v4, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    if-eqz v5, :cond_9

    .line 129
    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    const-string v9, "Sentry-Opentelemetry-Version-Name"

    .line 133
    .line 134
    invoke-virtual {v4, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    const-string v11, "maven:io.opentelemetry:opentelemetry-sdk"

    .line 145
    .line 146
    invoke-virtual {v10, v11, v9}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    const-string v10, "OpenTelemetry"

    .line 154
    .line 155
    invoke-virtual {v9, v10}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catchall_3
    move-exception v3

    .line 160
    goto :goto_6

    .line 161
    :cond_6
    :goto_5
    const-string v9, "Sentry-Opentelemetry-Javaagent-Version-Name"

    .line 162
    .line 163
    invoke-virtual {v4, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    const-string v10, "maven:io.opentelemetry.javaagent:opentelemetry-javaagent"

    .line 174
    .line 175
    invoke-virtual {v9, v10, v4}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    const-string v9, "OpenTelemetry-Agent"

    .line 183
    .line 184
    invoke-virtual {v4, v9}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    const-string v4, "sentry.java.opentelemetry.agentless"

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_8

    .line 194
    .line 195
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-string v9, "OpenTelemetry-Agentless"

    .line 200
    .line 201
    invoke-virtual {v4, v9}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    const-string v4, "sentry.java.opentelemetry.agentless-spring"

    .line 205
    .line 206
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const-string v5, "OpenTelemetry-Agentless-Spring"

    .line 217
    .line 218
    invoke-virtual {v4, v5}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    if-eqz v7, :cond_5

    .line 222
    .line 223
    if-eqz v6, :cond_5

    .line 224
    .line 225
    if-eqz v8, :cond_5

    .line 226
    .line 227
    const-string v4, "sentry.java"

    .line 228
    .line 229
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-eqz v4, :cond_5

    .line 234
    .line 235
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4, v8, v6}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :goto_6
    :try_start_7
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 245
    .line 246
    .line 247
    goto :goto_7

    .line 248
    :catchall_4
    move-exception v2

    .line 249
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :goto_7
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 253
    :goto_8
    iput-boolean v1, v0, Lio/sentry/internal/ManifestVersionReader;->a:Z

    .line 254
    .line 255
    throw p0

    .line 256
    :goto_9
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object p0, p0, Lio/sentry/ManifestVersionDetector;->a:Lio/sentry/SentryOptions;

    .line 261
    .line 262
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFatalLogger()Lio/sentry/ILogger;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {v0, p0}, Lio/sentry/SentryIntegrationPackageStorage;->c(Lio/sentry/ILogger;)Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    return p0
.end method
