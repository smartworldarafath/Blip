.class public abstract Lio/sentry/config/PropertiesProviderFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a()Lio/sentry/config/PropertiesProvider;
    .locals 8

    .line 1
    new-instance v0, Lio/sentry/SystemOutLogger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lio/sentry/config/SystemPropertyPropertiesProvider;

    .line 12
    .line 13
    const-string v3, "sentry."

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v2, v3, v4}, Lio/sentry/config/AbstractPropertiesProvider;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v2, Lio/sentry/config/EnvironmentVariablePropertiesProvider;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const-string v2, "sentry.properties.file"

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    new-instance v4, Lio/sentry/config/FilesystemPropertiesLoader;

    .line 43
    .line 44
    invoke-direct {v4, v2, v0, v3}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/SystemOutLogger;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lio/sentry/config/FilesystemPropertiesLoader;->a()Ljava/util/Properties;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    new-instance v4, Lio/sentry/config/SimplePropertiesProvider;

    .line 54
    .line 55
    invoke-direct {v4, v2}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    const-string v2, "SENTRY_PROPERTIES_FILE"

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    new-instance v4, Lio/sentry/config/FilesystemPropertiesLoader;

    .line 70
    .line 71
    invoke-direct {v4, v2, v0, v3}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/SystemOutLogger;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lio/sentry/config/FilesystemPropertiesLoader;->a()Ljava/util/Properties;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    new-instance v3, Lio/sentry/config/SimplePropertiesProvider;

    .line 81
    .line 82
    invoke-direct {v3, v2}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    new-instance v2, Lio/sentry/config/ClasspathPropertiesLoader;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lio/sentry/config/ClasspathPropertiesLoader;-><init>(Lio/sentry/SystemOutLogger;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v2, Lio/sentry/config/ClasspathPropertiesLoader;->a:Ljava/lang/String;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    :try_start_0
    iget-object v5, v2, Lio/sentry/config/ClasspathPropertiesLoader;->b:Ljava/lang/ClassLoader;

    .line 97
    .line 98
    invoke-virtual {v5, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 105
    .line 106
    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_2
    new-instance v7, Ljava/util/Properties;

    .line 110
    .line 111
    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    .line 116
    .line 117
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    .line 119
    .line 120
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    .line 122
    .line 123
    move-object v4, v7

    .line 124
    goto :goto_4

    .line 125
    :catch_0
    move-exception v5

    .line 126
    goto :goto_3

    .line 127
    :catchall_0
    move-exception v6

    .line 128
    goto :goto_1

    .line 129
    :catchall_1
    move-exception v7

    .line 130
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_2
    move-exception v6

    .line 135
    :try_start_6
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    :goto_1
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catchall_3
    move-exception v5

    .line 144
    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    throw v6

    .line 148
    :cond_2
    if-eqz v5, :cond_3

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :goto_3
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 155
    .line 156
    const-string v7, "Failed to load Sentry configuration from classpath resource: %s"

    .line 157
    .line 158
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    iget-object v2, v2, Lio/sentry/config/ClasspathPropertiesLoader;->c:Lio/sentry/SystemOutLogger;

    .line 163
    .line 164
    invoke-virtual {v2, v6, v5, v7, v3}, Lio/sentry/SystemOutLogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 168
    .line 169
    new-instance v2, Lio/sentry/config/SimplePropertiesProvider;

    .line 170
    .line 171
    invoke-direct {v2, v4}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_4
    new-instance v2, Lio/sentry/config/FilesystemPropertiesLoader;

    .line 178
    .line 179
    const-string v3, "sentry.properties"

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    invoke-direct {v2, v3, v0, v4}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/SystemOutLogger;Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lio/sentry/config/FilesystemPropertiesLoader;->a()Ljava/util/Properties;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_5

    .line 190
    .line 191
    new-instance v2, Lio/sentry/config/SimplePropertiesProvider;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_5
    new-instance v0, Lio/sentry/config/CompositePropertiesProvider;

    .line 200
    .line 201
    invoke-direct {v0, v1}, Lio/sentry/config/CompositePropertiesProvider;-><init>(Ljava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    return-object v0
.end method
