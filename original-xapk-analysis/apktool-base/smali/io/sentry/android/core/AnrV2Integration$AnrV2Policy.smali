.class final Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnrV2Policy"
.end annotation


# instance fields
.field public final a:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x6

    .line 2
    return p0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .line 1
    const-string v0, "last_anr_report"

    .line 2
    .line 3
    const-string v1, "ANR"

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->a:Lio/sentry/android/core/SentryAndroidOptions;

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
    const-string p0, "ANR"

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isReportHistoricalAnrs()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    .locals 10

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Policy;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    invoke-static {p1}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    invoke-static {p1}, Lqi;->a(Landroid/app/ApplicationExitInfo;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    move v7, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v7, v2

    .line 20
    :goto_0
    :try_start_0
    invoke-static {p1}, Lqi;->c(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    :try_start_1
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    .line 27
    .line 28
    sget-object v2, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 29
    .line 30
    invoke-direct {v0, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_1
    move-object v8, v0

    .line 39
    goto/16 :goto_d

    .line 40
    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_c

    .line 43
    .line 44
    :catchall_1
    move-exception v0

    .line 45
    move-object v2, v0

    .line 46
    goto/16 :goto_a

    .line 47
    .line 48
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    .line 52
    .line 53
    const/16 v0, 0x400

    .line 54
    .line 55
    :try_start_4
    new-array v6, v0, [B

    .line 56
    .line 57
    :goto_2
    invoke-virtual {v1, v6, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const/4 v9, -0x1

    .line 62
    if-eq v8, v9, :cond_3

    .line 63
    .line 64
    invoke-virtual {v3, v6, v2, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_2
    move-exception v0

    .line 69
    move-object v2, v0

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    .line 83
    .line 84
    new-instance v0, Ljava/io/InputStreamReader;

    .line 85
    .line 86
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 87
    .line 88
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 95
    .line 96
    .line 97
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    new-instance v6, Lio/sentry/android/core/internal/threaddump/Line;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v3, v6, Lio/sentry/android/core/internal/threaddump/Line;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    new-instance v3, Lio/sentry/android/core/internal/threaddump/Lines;

    .line 120
    .line 121
    invoke-direct {v3, v0}, Lio/sentry/android/core/internal/threaddump/Lines;-><init>(Ljava/util/ArrayList;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;

    .line 125
    .line 126
    invoke-direct {v0, p0, v7}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;-><init>(Lio/sentry/SentryOptions;Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->d(Lio/sentry/android/core/internal/threaddump/Lines;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->e:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v6, Ljava/util/ArrayList;

    .line 135
    .line 136
    iget-object v0, v0, Lio/sentry/android/core/internal/threaddump/ThreadDumpParser;->d:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    .line 152
    .line 153
    sget-object v3, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 154
    .line 155
    invoke-direct {v0, v3}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 156
    .line 157
    .line 158
    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catchall_3
    move-exception v0

    .line 163
    goto :goto_7

    .line 164
    :catchall_4
    move-exception v0

    .line 165
    move-object v3, v0

    .line 166
    goto :goto_5

    .line 167
    :cond_5
    :try_start_a
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    .line 168
    .line 169
    sget-object v8, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 170
    .line 171
    invoke-direct {v0, v8, v2, v3, v6}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[BLjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :catchall_5
    move-exception v0

    .line 180
    :try_start_c
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    :goto_6
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 184
    :goto_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 189
    .line 190
    const-string v6, "Failed to parse ANR thread dump"

    .line 191
    .line 192
    invoke-interface {v1, v3, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    .line 196
    .line 197
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 198
    .line 199
    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;[B)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :goto_8
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 205
    .line 206
    .line 207
    goto :goto_9

    .line 208
    :catchall_6
    move-exception v0

    .line 209
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    :goto_9
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 213
    :goto_a
    if-eqz v1, :cond_6

    .line 214
    .line 215
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 216
    .line 217
    .line 218
    goto :goto_b

    .line 219
    :catchall_7
    move-exception v0

    .line 220
    :try_start_10
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_b
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 224
    :goto_c
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 229
    .line 230
    const-string v3, "Failed to read ANR thread dump"

    .line 231
    .line 232
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$ParseResult;

    .line 236
    .line 237
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 238
    .line 239
    invoke-direct {v0, v1}, Lio/sentry/android/core/AnrV2Integration$ParseResult;-><init>(Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :goto_d
    sget-object v0, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->NO_DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 245
    .line 246
    iget-object v9, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->a:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 247
    .line 248
    if-ne v9, v0, :cond_7

    .line 249
    .line 250
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 255
    .line 256
    invoke-static {p1}, Lqi;->d(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "Not reporting ANR event as there was no thread dump for the ANR %s"

    .line 265
    .line 266
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    const/4 p0, 0x0

    .line 270
    return-object p0

    .line 271
    :cond_7
    new-instance v0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    .line 272
    .line 273
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 274
    .line 275
    .line 276
    move-result-wide v1

    .line 277
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    move v6, p2

    .line 282
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;-><init>(JLio/sentry/ILogger;JZZ)V

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    new-instance p2, Lio/sentry/SentryEvent;

    .line 290
    .line 291
    invoke-direct {p2}, Lio/sentry/SentryEvent;-><init>()V

    .line 292
    .line 293
    .line 294
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->ERROR:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 295
    .line 296
    if-ne v9, v1, :cond_8

    .line 297
    .line 298
    new-instance v1, Lio/sentry/protocol/Message;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v2, "Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub."

    .line 304
    .line 305
    iput-object v2, v1, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 306
    .line 307
    iput-object v1, p2, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 308
    .line 309
    goto :goto_e

    .line 310
    :cond_8
    sget-object v1, Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;->DUMP:Lio/sentry/android/core/AnrV2Integration$ParseResult$Type;

    .line 311
    .line 312
    if-ne v9, v1, :cond_9

    .line 313
    .line 314
    iget-object v1, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->c:Ljava/util/List;

    .line 315
    .line 316
    invoke-virtual {p2, v1}, Lio/sentry/SentryEvent;->j(Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->d:Ljava/util/ArrayList;

    .line 320
    .line 321
    if-eqz v1, :cond_9

    .line 322
    .line 323
    new-instance v2, Lio/sentry/protocol/DebugMeta;

    .line 324
    .line 325
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v3, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    .line 332
    .line 333
    iput-object v3, v2, Lio/sentry/protocol/DebugMeta;->k:Ljava/util/List;

    .line 334
    .line 335
    iput-object v2, p2, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 336
    .line 337
    :cond_9
    :goto_e
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 338
    .line 339
    iput-object v1, p2, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 340
    .line 341
    invoke-static {v4, v5}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iput-object v1, p2, Lio/sentry/SentryEvent;->y:Ljava/util/Date;

    .line 346
    .line 347
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-eqz p0, :cond_a

    .line 352
    .line 353
    iget-object p0, v8, Lio/sentry/android/core/AnrV2Integration$ParseResult;->b:[B

    .line 354
    .line 355
    if-eqz p0, :cond_a

    .line 356
    .line 357
    new-instance v1, Lio/sentry/Attachment;

    .line 358
    .line 359
    const-string v2, "text/plain"

    .line 360
    .line 361
    const-string v3, "event.attachment"

    .line 362
    .line 363
    const-string v4, "thread-dump.txt"

    .line 364
    .line 365
    invoke-direct {v1, v4, v2, v3, p0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 366
    .line 367
    .line 368
    iput-object v1, p1, Lio/sentry/Hint;->f:Lio/sentry/Attachment;

    .line 369
    .line 370
    :cond_a
    new-instance p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    .line 371
    .line 372
    invoke-direct {p0, p2, p1, v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;-><init>(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/hints/BlockingFlushHint;)V

    .line 373
    .line 374
    .line 375
    return-object p0
.end method
