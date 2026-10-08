.class final Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/AsyncHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EnvelopeSender"
.end annotation


# instance fields
.field public final j:Lio/sentry/SentryEnvelope;

.field public final k:Lio/sentry/Hint;

.field public final l:Lio/sentry/cache/IEnvelopeCache;

.field public final m:Lio/sentry/transport/TransportResult;

.field public final synthetic n:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method public constructor <init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 5
    .line 6
    new-instance p1, Lio/sentry/transport/TransportResult$ErrorTransportResult;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    invoke-direct {p1, v0}, Lio/sentry/transport/TransportResult$ErrorTransportResult;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->m:Lio/sentry/transport/TransportResult;

    .line 13
    .line 14
    const-string p1, "Envelope is required."

    .line 15
    .line 16
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->j:Lio/sentry/SentryEnvelope;

    .line 20
    .line 21
    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->k:Lio/sentry/Hint;

    .line 22
    .line 23
    const-string p1, "EnvelopeCache is required."

    .line 24
    .line 25
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->l:Lio/sentry/cache/IEnvelopeCache;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

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
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Marking envelope submission result: %s"

    .line 24
    .line 25
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->b()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-interface {p2, p0}, Lio/sentry/hints/SubmissionResult;->b(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final b()Lio/sentry/transport/TransportResult;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "The transport failed to send the envelope with response code "

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->j:Lio/sentry/SentryEnvelope;

    .line 6
    .line 7
    iget-object v3, v2, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v3, Lio/sentry/SentryEnvelopeHeader;->m:Ljava/util/Date;

    .line 11
    .line 12
    iget-object v3, v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->l:Lio/sentry/cache/IEnvelopeCache;

    .line 13
    .line 14
    iget-object v4, v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->k:Lio/sentry/Hint;

    .line 15
    .line 16
    invoke-interface {v3, v2, v4}, Lio/sentry/cache/IEnvelopeCache;->q(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const-string v6, "sentry:typeCheckHint"

    .line 21
    .line 22
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-class v9, Lio/sentry/hints/DiskFlushNotification;

    .line 31
    .line 32
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    iget-object v9, v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    check-cast v7, Lio/sentry/hints/DiskFlushNotification;

    .line 44
    .line 45
    iget-object v8, v9, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 46
    .line 47
    iget-object v11, v2, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 48
    .line 49
    iget-object v11, v11, Lio/sentry/SentryEnvelopeHeader;->j:Lio/sentry/protocol/SentryId;

    .line 50
    .line 51
    invoke-interface {v7, v11}, Lio/sentry/hints/DiskFlushNotification;->d(Lio/sentry/protocol/SentryId;)Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    if-eqz v11, :cond_0

    .line 56
    .line 57
    check-cast v7, Lio/sentry/hints/BlockingFlushHint;

    .line 58
    .line 59
    iget-object v7, v7, Lio/sentry/hints/BlockingFlushHint;->a:Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 69
    .line 70
    const-string v11, "Disk flush envelope fired"

    .line 71
    .line 72
    new-array v12, v10, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-interface {v7, v8, v11, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 83
    .line 84
    const-string v11, "Not firing envelope flush as there\'s an ongoing transaction"

    .line 85
    .line 86
    new-array v12, v10, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-interface {v7, v8, v11, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    iget-object v7, v9, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 92
    .line 93
    iget-object v8, v9, Lio/sentry/transport/AsyncHttpTransport;->n:Lio/sentry/transport/ITransportGate;

    .line 94
    .line 95
    invoke-interface {v8}, Lio/sentry/transport/ITransportGate;->a()Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    const/4 v11, 0x1

    .line 100
    const-class v12, Lio/sentry/hints/Retryable;

    .line 101
    .line 102
    if-eqz v8, :cond_7

    .line 103
    .line 104
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0, v2}, Lio/sentry/clientreport/IClientReportRecorder;->d(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    :try_start_0
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v13, v8, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/sentry/SentryDate;->d()J

    .line 123
    .line 124
    .line 125
    move-result-wide v14

    .line 126
    long-to-double v14, v14

    .line 127
    const-wide v16, 0x412e848000000000L    # 1000000.0

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    div-double v14, v14, v16

    .line 133
    .line 134
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v14

    .line 142
    invoke-static {v14, v15}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, v13, Lio/sentry/SentryEnvelopeHeader;->m:Ljava/util/Date;

    .line 147
    .line 148
    iget-object v0, v9, Lio/sentry/transport/AsyncHttpTransport;->o:Lio/sentry/transport/HttpConnection;

    .line 149
    .line 150
    invoke-virtual {v0, v8}, Lio/sentry/transport/HttpConnection;->d(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->b()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_2

    .line 159
    .line 160
    invoke-interface {v3, v2}, Lio/sentry/cache/IEnvelopeCache;->a(Lio/sentry/SentryEnvelope;)V

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->a()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    sget-object v13, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 187
    .line 188
    new-array v10, v10, [Ljava/lang/Object;

    .line 189
    .line 190
    invoke-interface {v9, v13, v1, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->a()I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    const/16 v10, 0x190

    .line 198
    .line 199
    if-lt v9, v10, :cond_3

    .line 200
    .line 201
    invoke-interface {v3, v2}, Lio/sentry/cache/IEnvelopeCache;->a(Lio/sentry/SentryEnvelope;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lio/sentry/transport/TransportResult;->a()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    const/16 v2, 0x1ad

    .line 209
    .line 210
    if-eq v0, v2, :cond_3

    .line 211
    .line 212
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v2, Lio/sentry/clientreport/DiscardReason;->SEND_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 217
    .line 218
    invoke-interface {v0, v2, v8}, Lio/sentry/clientreport/IClientReportRecorder;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 219
    .line 220
    .line 221
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 222
    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v12, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_5

    .line 240
    .line 241
    if-nez v1, :cond_4

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_4
    check-cast v1, Lio/sentry/hints/Retryable;

    .line 245
    .line 246
    invoke-interface {v1, v11}, Lio/sentry/hints/Retryable;->c(Z)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    :goto_2
    if-nez v5, :cond_6

    .line 251
    .line 252
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v12, v1, v2}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    sget-object v2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 264
    .line 265
    invoke-interface {v1, v2, v8}, Lio/sentry/clientreport/IClientReportRecorder;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 266
    .line 267
    .line 268
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 269
    .line 270
    const-string v2, "Sending the event failed."

    .line 271
    .line 272
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    throw v1

    .line 276
    :cond_7
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v4, v6}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v12, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    iget-object v0, v0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->m:Lio/sentry/transport/TransportResult;

    .line 289
    .line 290
    if-eqz v3, :cond_8

    .line 291
    .line 292
    if-eqz v1, :cond_8

    .line 293
    .line 294
    check-cast v1, Lio/sentry/hints/Retryable;

    .line 295
    .line 296
    invoke-interface {v1, v11}, Lio/sentry/hints/Retryable;->c(Z)V

    .line 297
    .line 298
    .line 299
    return-object v0

    .line 300
    :cond_8
    if-nez v5, :cond_9

    .line 301
    .line 302
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-static {v12, v1, v3}, Lio/sentry/util/LogUtils;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    sget-object v3, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 314
    .line 315
    invoke-interface {v1, v3, v2}, Lio/sentry/clientreport/IClientReportRecorder;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 316
    .line 317
    .line 318
    :cond_9
    return-object v0
.end method

.method public final run()V
    .locals 9

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    const-class v1, Lio/sentry/hints/SubmissionResult;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 6
    .line 7
    iput-object p0, v2, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 8
    .line 9
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->m:Lio/sentry/transport/TransportResult;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->b()Lio/sentry/transport/TransportResult;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 18
    .line 19
    iget-object v5, v5, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 20
    .line 21
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 26
    .line 27
    const-string v7, "Envelope flushed"

    .line 28
    .line 29
    new-array v8, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {v5, v6, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->k:Lio/sentry/Hint;

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    check-cast v5, Lio/sentry/hints/SubmissionResult;

    .line 53
    .line 54
    invoke-static {p0, v2, v5}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->a(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 58
    .line 59
    iput-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v5

    .line 63
    :try_start_1
    iget-object v6, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 64
    .line 65
    iget-object v6, v6, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 66
    .line 67
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 72
    .line 73
    const-string v8, "Envelope submission failed"

    .line 74
    .line 75
    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {v6, v7, v5, v8, v4}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :catchall_1
    move-exception v4

    .line 82
    iget-object v5, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->k:Lio/sentry/Hint;

    .line 83
    .line 84
    invoke-virtual {v5, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    if-eqz v6, :cond_1

    .line 99
    .line 100
    check-cast v6, Lio/sentry/hints/SubmissionResult;

    .line 101
    .line 102
    invoke-static {p0, v2, v6}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->a(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->n:Lio/sentry/transport/AsyncHttpTransport;

    .line 106
    .line 107
    iput-object v3, p0, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 108
    .line 109
    throw v4
.end method
