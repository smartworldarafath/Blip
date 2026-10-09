.class public final synthetic Lio/sentry/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;


# instance fields
.field public final synthetic a:Lio/sentry/ILogger;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/sentry/DirectoryProcessor;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/DirectoryProcessor;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/e;->a:Lio/sentry/ILogger;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/e;->c:Lio/sentry/DirectoryProcessor;

    .line 9
    .line 10
    iput-object p4, p0, Lio/sentry/e;->d:Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/e;->d:Ljava/io/File;

    .line 4
    .line 5
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    const-string v3, "Started processing cached files from %s"

    .line 8
    .line 9
    iget-object v4, v0, Lio/sentry/e;->b:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-object v6, v0, Lio/sentry/e;->a:Lio/sentry/ILogger;

    .line 16
    .line 17
    invoke-interface {v6, v2, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lio/sentry/e;->c:Lio/sentry/DirectoryProcessor;

    .line 21
    .line 22
    iget-object v12, v0, Lio/sentry/DirectoryProcessor;->d:Ljava/util/Queue;

    .line 23
    .line 24
    iget-object v3, v0, Lio/sentry/DirectoryProcessor;->b:Lio/sentry/ILogger;

    .line 25
    .line 26
    :try_start_0
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v7, "Processing dir. %s"

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-interface {v3, v5, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lio/sentry/a;

    .line 42
    .line 43
    invoke-direct {v7, v0}, Lio/sentry/a;-><init>(Lio/sentry/DirectoryProcessor;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    if-nez v13, :cond_0

    .line 51
    .line 52
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 53
    .line 54
    const-string v5, "Cache dir %s is null or is not a directory."

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-interface {v3, v0, v5, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_0
    const-string v7, "Processing %d items from cache dir %s"

    .line 73
    .line 74
    array-length v8, v13

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-interface {v3, v5, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    array-length v5, v13

    .line 91
    const/4 v14, 0x0

    .line 92
    move v15, v14

    .line 93
    :goto_0
    if-ge v15, v5, :cond_4

    .line 94
    .line 95
    aget-object v7, v13, v15

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_1

    .line 102
    .line 103
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 104
    .line 105
    const-string v9, "File %s is not a File."

    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-interface {v3, v8, v9, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    move-object v8, v12

    .line 124
    check-cast v8, Lio/sentry/SynchronizedCollection;

    .line 125
    .line 126
    invoke-virtual {v8, v11}, Lio/sentry/SynchronizedCollection;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_2

    .line 131
    .line 132
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 133
    .line 134
    const-string v8, "File \'%s\' has already been processed so it will not be processed again."

    .line 135
    .line 136
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    invoke-interface {v3, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iget-object v8, v0, Lio/sentry/DirectoryProcessor;->a:Lio/sentry/IScopes;

    .line 145
    .line 146
    invoke-interface {v8}, Lio/sentry/IScopes;->d()Lio/sentry/transport/RateLimiter;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v8, :cond_3

    .line 151
    .line 152
    sget-object v9, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 153
    .line 154
    invoke-virtual {v8, v9}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_3

    .line 159
    .line 160
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 161
    .line 162
    const-string v5, "DirectoryProcessor, rate limiting active."

    .line 163
    .line 164
    new-array v7, v14, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {v3, v0, v5, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 171
    .line 172
    const-string v9, "Processing file: %s"

    .line 173
    .line 174
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-interface {v3, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    move-object v8, v7

    .line 182
    new-instance v7, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;

    .line 183
    .line 184
    move-object v10, v8

    .line 185
    iget-wide v8, v0, Lio/sentry/DirectoryProcessor;->c:J

    .line 186
    .line 187
    move-object/from16 v16, v10

    .line 188
    .line 189
    iget-object v10, v0, Lio/sentry/DirectoryProcessor;->b:Lio/sentry/ILogger;

    .line 190
    .line 191
    move-object/from16 v14, v16

    .line 192
    .line 193
    invoke-direct/range {v7 .. v12}, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;-><init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v7}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v0, v14, v7}, Lio/sentry/DirectoryProcessor;->b(Ljava/io/File;Lio/sentry/Hint;)V

    .line 201
    .line 202
    .line 203
    const-wide/16 v7, 0x64

    .line 204
    .line 205
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .line 207
    .line 208
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 209
    .line 210
    const/4 v14, 0x0

    .line 211
    goto :goto_0

    .line 212
    :goto_2
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v7, "Failed processing \'%s\'"

    .line 223
    .line 224
    invoke-interface {v3, v5, v0, v7, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    :goto_3
    const-string v0, "Finished processing cached files from %s"

    .line 228
    .line 229
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-interface {v6, v2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method
