.class public final synthetic Lio/sentry/m;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lio/sentry/ProfileChunk;

.field public final synthetic c:Lio/sentry/IProfileConverter;

.field public final synthetic d:Lio/sentry/ISerializer;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lio/sentry/ProfileChunk;Lio/sentry/IProfileConverter;Lio/sentry/ISerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/m;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/m;->b:Lio/sentry/ProfileChunk;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/m;->c:Lio/sentry/IProfileConverter;

    .line 9
    .line 10
    iput-object p4, p0, Lio/sentry/m;->d:Lio/sentry/ISerializer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/m;->d:Lio/sentry/ISerializer;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    const-string v1, "Failed to serialize profile chunk\n"

    .line 6
    .line 7
    iget-object v2, p0, Lio/sentry/m;->a:Ljava/io/File;

    .line 8
    .line 9
    iget-object v3, p0, Lio/sentry/m;->b:Lio/sentry/ProfileChunk;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    const-string v4, "java"

    .line 20
    .line 21
    iget-object v5, v3, Lio/sentry/ProfileChunk;->o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    sget-object v4, Lio/sentry/NoOpProfileConverter;->a:Lio/sentry/NoOpProfileConverter;

    .line 30
    .line 31
    iget-object p0, p0, Lio/sentry/m;->c:Lio/sentry/IProfileConverter;

    .line 32
    .line 33
    if-eq v4, p0, :cond_0

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    check-cast p0, Lio/sentry/NoOpProfileConverter;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance p0, Lio/sentry/protocol/profiling/SentryProfile;

    .line 44
    .line 45
    invoke-direct {p0}, Lio/sentry/protocol/profiling/SentryProfile;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p0, v3, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 53
    .line 54
    const-string v1, "Profile conversion failed"

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_0
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    .line 61
    .line 62
    const-string v0, "No ProfileConverter available, dropping chunk."

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-wide/32 v4, 0x3200000

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v5, p0}, Lio/sentry/util/FileUtils;->b(JLjava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {p0}, Lio/sentry/vendor/Base64;->a([B)[B

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v5, "US-ASCII"

    .line 86
    .line 87
    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_2

    .line 95
    .line 96
    iput-object v4, v3, Lio/sentry/ProfileChunk;->u:Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    .line 100
    .line 101
    const-string v0, "Profiling trace file is empty"

    .line 102
    .line 103
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :catch_1
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/AssertionError;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_3
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "Dropping profile chunk, because the file \'"

    .line 121
    .line 122
    const-string v2, "\' doesn\'t exists"

    .line 123
    .line 124
    invoke-static {v1, v0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_4
    :goto_0
    :try_start_2
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    .line 137
    :try_start_3
    new-instance v4, Ljava/io/BufferedWriter;

    .line 138
    .line 139
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 140
    .line 141
    sget-object v6, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 142
    .line 143
    invoke-direct {v5, p0, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    :try_start_4
    invoke-interface {v0, v3, v4}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 153
    .line 154
    .line 155
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 156
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    .line 158
    .line 159
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    .line 161
    .line 162
    if-eqz v2, :cond_5

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 165
    .line 166
    .line 167
    :cond_5
    return-object v0

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_5

    .line 170
    :catch_2
    move-exception p0

    .line 171
    goto :goto_4

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    goto :goto_2

    .line 174
    :catchall_2
    move-exception v0

    .line 175
    :try_start_7
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catchall_3
    move-exception v3

    .line 180
    :try_start_8
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    :goto_1
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 184
    :goto_2
    :try_start_9
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catchall_4
    move-exception p0

    .line 189
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 193
    :goto_4
    :try_start_b
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 215
    :goto_5
    if-eqz v2, :cond_6

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 218
    .line 219
    .line 220
    :cond_6
    throw p0
.end method
