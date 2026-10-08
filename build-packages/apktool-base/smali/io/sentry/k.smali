.class public final synthetic Lio/sentry/k;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lio/sentry/ISerializer;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Attachment;JLio/sentry/ISerializer;Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/sentry/k;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/k;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lio/sentry/k;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lio/sentry/k;->c:Lio/sentry/ISerializer;

    .line 12
    .line 13
    iput-object p5, p0, Lio/sentry/k;->e:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lio/sentry/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/k;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lio/sentry/k;->b:J

    iput-object p4, p0, Lio/sentry/k;->e:Ljava/lang/Object;

    iput-object p5, p0, Lio/sentry/k;->c:Lio/sentry/ISerializer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lio/sentry/k;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/k;->c:Lio/sentry/ISerializer;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/k;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-wide v3, p0, Lio/sentry/k;->b:J

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/k;->d:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/io/File;

    .line 15
    .line 16
    check-cast v2, Lio/sentry/ProfilingTraceData;

    .line 17
    .line 18
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    const-string v0, "Failed to serialize profiling trace data\n"

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v3, v4, v5}, Lio/sentry/util/FileUtils;->b(JLjava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Lio/sentry/vendor/Base64;->a([B)[B

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v5, "US-ASCII"

    .line 43
    .line 44
    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    .line 53
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->K:Ljava/lang/String;

    .line 54
    .line 55
    :try_start_1
    iget-object v3, v2, Lio/sentry/ProfilingTraceData;->k:Ljava/util/concurrent/Callable;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/List;

    .line 62
    .line 63
    iput-object v3, v2, Lio/sentry/ProfilingTraceData;->u:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    :catchall_0
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_3
    new-instance v4, Ljava/io/BufferedWriter;

    .line 71
    .line 72
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 73
    .line 74
    sget-object v6, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    .line 81
    .line 82
    :try_start_4
    invoke-interface {v1, v2, v4}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 86
    .line 87
    .line 88
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 89
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 90
    .line 91
    .line 92
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 96
    .line 97
    .line 98
    return-object v1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto :goto_4

    .line 101
    :catch_0
    move-exception v1

    .line 102
    goto :goto_3

    .line 103
    :catchall_2
    move-exception v1

    .line 104
    goto :goto_1

    .line 105
    :catchall_3
    move-exception v1

    .line 106
    :try_start_7
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_4
    move-exception v2

    .line 111
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 115
    :goto_1
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_5
    move-exception v2

    .line 120
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 124
    :goto_3
    :try_start_b
    new-instance v2, Lio/sentry/exception/SentryEnvelopeException;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 146
    :goto_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_0
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    .line 151
    .line 152
    const-string v0, "Profiling trace file is empty"

    .line 153
    .line 154
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :catch_1
    move-exception p0

    .line 159
    new-instance v0, Ljava/lang/AssertionError;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_1
    new-instance v0, Lio/sentry/exception/SentryEnvelopeException;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string v1, "Dropping profiling trace data, because the file \'"

    .line 172
    .line 173
    const-string v2, "\' doesn\'t exists"

    .line 174
    .line 175
    invoke-static {v1, p0, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :pswitch_0
    check-cast p0, Lio/sentry/Attachment;

    .line 184
    .line 185
    check-cast v2, Lio/sentry/ILogger;

    .line 186
    .line 187
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 188
    .line 189
    iget-object v0, p0, Lio/sentry/Attachment;->a:[B

    .line 190
    .line 191
    iget-object v5, p0, Lio/sentry/Attachment;->d:Ljava/lang/String;

    .line 192
    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    array-length p0, v0

    .line 196
    int-to-long v1, p0

    .line 197
    invoke-static {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItem;->a(JJLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_2
    iget-object v0, p0, Lio/sentry/Attachment;->b:Lio/sentry/protocol/ViewHierarchy;

    .line 202
    .line 203
    if-eqz v0, :cond_3

    .line 204
    .line 205
    sget-object p0, Lio/sentry/util/JsonSerializationUtils;->a:Ljava/nio/charset/Charset;

    .line 206
    .line 207
    :try_start_c
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 208
    .line 209
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 210
    .line 211
    .line 212
    :try_start_d
    new-instance v6, Ljava/io/BufferedWriter;

    .line 213
    .line 214
    new-instance v7, Ljava/io/OutputStreamWriter;

    .line 215
    .line 216
    sget-object v8, Lio/sentry/util/JsonSerializationUtils;->a:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    invoke-direct {v7, p0, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 222
    .line 223
    .line 224
    :try_start_e
    invoke-interface {v1, v0, v6}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 228
    .line 229
    .line 230
    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 231
    :try_start_f
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 232
    .line 233
    .line 234
    :try_start_10
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 235
    .line 236
    .line 237
    goto :goto_9

    .line 238
    :catchall_6
    move-exception p0

    .line 239
    goto :goto_8

    .line 240
    :catchall_7
    move-exception v0

    .line 241
    goto :goto_6

    .line 242
    :catchall_8
    move-exception v0

    .line 243
    :try_start_11
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :catchall_9
    move-exception v1

    .line 248
    :try_start_12
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_5
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 252
    :goto_6
    :try_start_13
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :catchall_a
    move-exception p0

    .line 257
    :try_start_14
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :goto_7
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 261
    :goto_8
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 262
    .line 263
    const-string v1, "Could not serialize serializable"

    .line 264
    .line 265
    invoke-interface {v2, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    const/4 p0, 0x0

    .line 269
    move-object v0, p0

    .line 270
    :goto_9
    if-eqz v0, :cond_4

    .line 271
    .line 272
    array-length p0, v0

    .line 273
    int-to-long v1, p0

    .line 274
    invoke-static {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItem;->a(JJLjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_3
    iget-object p0, p0, Lio/sentry/Attachment;->c:Lio/sentry/android/core/k;

    .line 279
    .line 280
    if-eqz p0, :cond_4

    .line 281
    .line 282
    invoke-virtual {p0}, Lio/sentry/android/core/k;->call()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    move-object v0, p0

    .line 287
    check-cast v0, [B

    .line 288
    .line 289
    if-eqz v0, :cond_4

    .line 290
    .line 291
    array-length p0, v0

    .line 292
    int-to-long v1, p0

    .line 293
    invoke-static {v1, v2, v3, v4, v5}, Lio/sentry/SentryEnvelopeItem;->a(JJLjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_a
    return-object v0

    .line 297
    :cond_4
    new-instance p0, Lio/sentry/exception/SentryEnvelopeException;

    .line 298
    .line 299
    const-string v0, "Couldn\'t attach the attachment "

    .line 300
    .line 301
    const-string v1, ".\nPlease check that either bytes, serializable, path or provider is set."

    .line 302
    .line 303
    invoke-static {v0, v5, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
