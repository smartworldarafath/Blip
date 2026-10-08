.class public final Lio/sentry/transport/AsyncHttpTransport;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/transport/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;,
        Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;
    }
.end annotation


# instance fields
.field public final j:Lio/sentry/transport/QueuedThreadPoolExecutor;

.field public final k:Lio/sentry/cache/IEnvelopeCache;

.field public final l:Lio/sentry/SentryOptions;

.field public final m:Lio/sentry/transport/RateLimiter;

.field public final n:Lio/sentry/transport/ITransportGate;

.field public final o:Lio/sentry/transport/HttpConnection;

.field public volatile p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/RequestDetails;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    new-instance v3, Lio/sentry/transport/a;

    .line 18
    .line 19
    invoke-direct {v3, v0, v4}, Lio/sentry/transport/a;-><init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 23
    .line 24
    new-instance v2, Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, Lio/sentry/transport/QueuedThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Lio/sentry/transport/a;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lio/sentry/transport/HttpConnection;

    .line 33
    .line 34
    invoke-direct {v1, p1, p4, p2}, Lio/sentry/transport/HttpConnection;-><init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 p4, 0x0

    .line 41
    iput-object p4, p0, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 42
    .line 43
    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    const-string v0, "envelopeCache is required"

    .line 50
    .line 51
    invoke-static {p4, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p4, p0, Lio/sentry/transport/AsyncHttpTransport;->k:Lio/sentry/cache/IEnvelopeCache;

    .line 55
    .line 56
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 57
    .line 58
    iput-object p2, p0, Lio/sentry/transport/AsyncHttpTransport;->m:Lio/sentry/transport/RateLimiter;

    .line 59
    .line 60
    const-string p1, "transportGate is required"

    .line 61
    .line 62
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport;->n:Lio/sentry/transport/ITransportGate;

    .line 66
    .line 67
    iput-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->o:Lio/sentry/transport/HttpConnection;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 8
    .line 9
    const-class v4, Lio/sentry/hints/Cached;

    .line 10
    .line 11
    invoke-static {v2, v4}, Lio/sentry/util/HintUtils;->b(Lio/sentry/Hint;Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget-object v6, v0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 16
    .line 17
    iget-object v7, v0, Lio/sentry/transport/AsyncHttpTransport;->k:Lio/sentry/cache/IEnvelopeCache;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v10, "Captured Envelope is already cached"

    .line 29
    .line 30
    new-array v11, v8, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v4, v9, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lio/sentry/transport/NoOpEnvelopeCache;->j:Lio/sentry/transport/NoOpEnvelopeCache;

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v4, v7

    .line 40
    move v9, v8

    .line 41
    :goto_0
    iget-object v10, v0, Lio/sentry/transport/AsyncHttpTransport;->m:Lio/sentry/transport/RateLimiter;

    .line 42
    .line 43
    iget-object v11, v10, Lio/sentry/transport/RateLimiter;->k:Lio/sentry/SentryOptions;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    const/4 v14, 0x0

    .line 50
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    if-eqz v15, :cond_10

    .line 55
    .line 56
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    check-cast v15, Lio/sentry/SentryEnvelopeItem;

    .line 61
    .line 62
    iget-object v5, v15, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 63
    .line 64
    iget-object v5, v5, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 65
    .line 66
    invoke-virtual {v5}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v16

    .line 77
    const/16 v17, -0x1

    .line 78
    .line 79
    sparse-switch v16, :sswitch_data_0

    .line 80
    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :sswitch_0
    const-string v13, "transaction"

    .line 85
    .line 86
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_2

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_2
    const/16 v17, 0xb

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_1
    const-string v13, "session"

    .line 99
    .line 100
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_3
    const/16 v17, 0xa

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :sswitch_2
    const-string v13, "check_in"

    .line 113
    .line 114
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_4

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_4
    const/16 v17, 0x9

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :sswitch_3
    const-string v13, "trace_metric"

    .line 127
    .line 128
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_5

    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_5
    const/16 v17, 0x8

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :sswitch_4
    const-string v13, "event"

    .line 141
    .line 142
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const/16 v17, 0x7

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :sswitch_5
    const-string v13, "span"

    .line 153
    .line 154
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_7

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    const/16 v17, 0x6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :sswitch_6
    const-string v13, "log"

    .line 165
    .line 166
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-nez v5, :cond_8

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    const/16 v17, 0x5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :sswitch_7
    const-string v13, "feedback"

    .line 177
    .line 178
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_9

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_9
    const/16 v17, 0x4

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :sswitch_8
    const-string v13, "profile"

    .line 189
    .line 190
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_a

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_a
    const/16 v17, 0x3

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :sswitch_9
    const-string v13, "profile_chunk"

    .line 201
    .line 202
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-nez v5, :cond_b

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_b
    const/16 v17, 0x2

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :sswitch_a
    const-string v13, "replay_video"

    .line 213
    .line 214
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-nez v5, :cond_c

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_c
    const/16 v17, 0x1

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :sswitch_b
    const-string v13, "attachment"

    .line 225
    .line 226
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_d

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_d
    move/from16 v17, v8

    .line 234
    .line 235
    :goto_2
    packed-switch v17, :pswitch_data_0

    .line 236
    .line 237
    .line 238
    sget-object v5, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 239
    .line 240
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    goto :goto_3

    .line 245
    :pswitch_0
    sget-object v5, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 246
    .line 247
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    goto :goto_3

    .line 252
    :pswitch_1
    sget-object v5, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    .line 253
    .line 254
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    goto :goto_3

    .line 259
    :pswitch_2
    sget-object v5, Lio/sentry/DataCategory;->Monitor:Lio/sentry/DataCategory;

    .line 260
    .line 261
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    goto :goto_3

    .line 266
    :pswitch_3
    sget-object v5, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    .line 267
    .line 268
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    goto :goto_3

    .line 273
    :pswitch_4
    sget-object v5, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 274
    .line 275
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    goto :goto_3

    .line 280
    :pswitch_5
    sget-object v5, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 281
    .line 282
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    goto :goto_3

    .line 287
    :pswitch_6
    sget-object v5, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    .line 288
    .line 289
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    goto :goto_3

    .line 294
    :pswitch_7
    sget-object v5, Lio/sentry/DataCategory;->Feedback:Lio/sentry/DataCategory;

    .line 295
    .line 296
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    goto :goto_3

    .line 301
    :pswitch_8
    sget-object v5, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 302
    .line 303
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    goto :goto_3

    .line 308
    :pswitch_9
    sget-object v5, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 309
    .line 310
    sget-object v13, Lio/sentry/DataCategory;->ProfileChunk:Lio/sentry/DataCategory;

    .line 311
    .line 312
    filled-new-array {v5, v13}, [Lio/sentry/DataCategory;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    goto :goto_3

    .line 321
    :pswitch_a
    sget-object v5, Lio/sentry/DataCategory;->Replay:Lio/sentry/DataCategory;

    .line 322
    .line 323
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    goto :goto_3

    .line 328
    :pswitch_b
    sget-object v5, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    .line 329
    .line 330
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    if-eqz v13, :cond_1

    .line 343
    .line 344
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    check-cast v13, Lio/sentry/DataCategory;

    .line 349
    .line 350
    invoke-virtual {v10, v13}, Lio/sentry/transport/RateLimiter;->h(Lio/sentry/DataCategory;)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-eqz v13, :cond_e

    .line 355
    .line 356
    if-nez v14, :cond_f

    .line 357
    .line 358
    new-instance v5, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    move-object v14, v5

    .line 364
    :cond_f
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    sget-object v13, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    .line 372
    .line 373
    invoke-interface {v5, v13, v15}, Lio/sentry/clientreport/IClientReportRecorder;->e(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :cond_10
    const-string v5, "sentry:typeCheckHint"

    .line 379
    .line 380
    if-eqz v14, :cond_17

    .line 381
    .line 382
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    sget-object v12, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 387
    .line 388
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result v13

    .line 392
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v13

    .line 396
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    const-string v15, "%d envelope items will be dropped due rate limiting."

    .line 401
    .line 402
    invoke-interface {v10, v12, v15, v13}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    new-instance v10, Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    :cond_11
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    if-eqz v12, :cond_12

    .line 419
    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    check-cast v12, Lio/sentry/SentryEnvelopeItem;

    .line 425
    .line 426
    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    if-nez v13, :cond_11

    .line 431
    .line 432
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_16

    .line 441
    .line 442
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    sget-object v10, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 447
    .line 448
    const-string v12, "Envelope discarded due all items rate limited."

    .line 449
    .line 450
    new-array v13, v8, [Ljava/lang/Object;

    .line 451
    .line 452
    invoke-interface {v3, v10, v12, v13}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    const-class v12, Lio/sentry/hints/SubmissionResult;

    .line 464
    .line 465
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v10

    .line 469
    if-eqz v10, :cond_13

    .line 470
    .line 471
    if-eqz v3, :cond_13

    .line 472
    .line 473
    check-cast v3, Lio/sentry/hints/SubmissionResult;

    .line 474
    .line 475
    invoke-interface {v3, v8}, Lio/sentry/hints/SubmissionResult;->b(Z)V

    .line 476
    .line 477
    .line 478
    :cond_13
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    const-class v12, Lio/sentry/hints/Retryable;

    .line 487
    .line 488
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v10

    .line 492
    if-eqz v10, :cond_14

    .line 493
    .line 494
    if-eqz v3, :cond_14

    .line 495
    .line 496
    check-cast v3, Lio/sentry/hints/Retryable;

    .line 497
    .line 498
    invoke-interface {v3, v8}, Lio/sentry/hints/Retryable;->c(Z)V

    .line 499
    .line 500
    .line 501
    :cond_14
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    const-class v12, Lio/sentry/hints/DiskFlushNotification;

    .line 510
    .line 511
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v10

    .line 515
    if-eqz v10, :cond_15

    .line 516
    .line 517
    if-eqz v3, :cond_15

    .line 518
    .line 519
    check-cast v3, Lio/sentry/hints/DiskFlushNotification;

    .line 520
    .line 521
    check-cast v3, Lio/sentry/hints/BlockingFlushHint;

    .line 522
    .line 523
    iget-object v3, v3, Lio/sentry/hints/BlockingFlushHint;->a:Ljava/util/concurrent/CountDownLatch;

    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v11}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 533
    .line 534
    const-string v11, "Disk flush envelope fired due to rate limit"

    .line 535
    .line 536
    new-array v12, v8, [Ljava/lang/Object;

    .line 537
    .line 538
    invoke-interface {v3, v10, v11, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    :cond_15
    const/4 v13, 0x0

    .line 542
    goto :goto_5

    .line 543
    :cond_16
    new-instance v13, Lio/sentry/SentryEnvelope;

    .line 544
    .line 545
    iget-object v3, v1, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 546
    .line 547
    invoke-direct {v13, v3, v10}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 548
    .line 549
    .line 550
    goto :goto_5

    .line 551
    :cond_17
    move-object v13, v1

    .line 552
    :goto_5
    if-nez v13, :cond_18

    .line 553
    .line 554
    if-eqz v9, :cond_1b

    .line 555
    .line 556
    invoke-interface {v7, v1}, Lio/sentry/cache/IEnvelopeCache;->a(Lio/sentry/SentryEnvelope;)V

    .line 557
    .line 558
    .line 559
    return-void

    .line 560
    :cond_18
    const-class v1, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    .line 561
    .line 562
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    if-eqz v1, :cond_19

    .line 571
    .line 572
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-interface {v1, v13}, Lio/sentry/clientreport/IClientReportRecorder;->d(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    .line 577
    .line 578
    .line 579
    move-result-object v13

    .line 580
    :cond_19
    new-instance v1, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    .line 581
    .line 582
    invoke-direct {v1, v0, v13, v2, v4}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;-><init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, v0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 586
    .line 587
    invoke-virtual {v0, v1}, Lio/sentry/transport/QueuedThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    if-eqz v0, :cond_1a

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eqz v0, :cond_1a

    .line 598
    .line 599
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    sget-object v1, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 604
    .line 605
    invoke-interface {v0, v1, v13}, Lio/sentry/clientreport/IClientReportRecorder;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :cond_1a
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {v2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    const-class v2, Lio/sentry/hints/Enqueable;

    .line 618
    .line 619
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-eqz v1, :cond_1b

    .line 624
    .line 625
    if-eqz v0, :cond_1b

    .line 626
    .line 627
    check-cast v0, Lio/sentry/hints/Enqueable;

    .line 628
    .line 629
    invoke-interface {v0}, Lio/sentry/hints/Enqueable;->d()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 637
    .line 638
    const-string v2, "Envelope enqueued"

    .line 639
    .line 640
    new-array v3, v8, [Ljava/lang/Object;

    .line 641
    .line 642
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    :cond_1b
    return-void

    .line 646
    nop

    .line 647
    :sswitch_data_0
    .sparse-switch
        -0x7508a6dd -> :sswitch_b
        -0x61b909dd -> :sswitch_a
        -0x2b7e93a9 -> :sswitch_9
        -0x12717657 -> :sswitch_8
        -0xb6a147b -> :sswitch_7
        0x1a344 -> :sswitch_6
        0x35f74a -> :sswitch_5
        0x5c6729a -> :sswitch_4
        0xdadf9ea -> :sswitch_3
        0x5b9b0fbc -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 6

    .line 1
    const-string v0, "Failed to shutdown the async connection async sender  within "

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->m:Lio/sentry/transport/RateLimiter;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/transport/RateLimiter;->close()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v5, "Shutting down"

    .line 25
    .line 26
    invoke-interface {v1, v2, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 38
    .line 39
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 48
    .line 49
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " ms. Trying to force it now."

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-array v1, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-interface {p1, v4, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->p:Ljava/lang/Runnable;

    .line 93
    .line 94
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->l:Lio/sentry/SentryOptions;

    .line 101
    .line 102
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 107
    .line 108
    const-string v0, "Thread interrupted while closing the connection."

    .line 109
    .line 110
    new-array v1, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    .line 121
    .line 122
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->n:Lio/sentry/transport/ReusableCountLatch;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iget-object v0, v0, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->tryAcquireSharedNanos(IJ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->l:Lio/sentry/ILogger;

    .line 23
    .line 24
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const-string v0, "Failed to wait till idle"

    .line 27
    .line 28
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/transport/AsyncHttpTransport;->b(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->m:Lio/sentry/transport/RateLimiter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->m:Lio/sentry/transport/RateLimiter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    iget-object v2, v0, Lio/sentry/transport/RateLimiter;->j:Lio/sentry/transport/CurrentDateProvider;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lio/sentry/transport/RateLimiter;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lio/sentry/DataCategory;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Date;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    move v0, v5

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v0, v4

    .line 61
    :goto_0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->j:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 62
    .line 63
    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->k:Lio/sentry/SentryDate;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    :cond_2
    move p0, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object p0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->m:Lio/sentry/SentryDateProvider;

    .line 70
    .line 71
    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v1}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    const-wide/32 v6, 0x77359400

    .line 80
    .line 81
    .line 82
    cmp-long p0, v1, v6

    .line 83
    .line 84
    if-gez p0, :cond_2

    .line 85
    .line 86
    move p0, v5

    .line 87
    :goto_1
    if-nez v0, :cond_4

    .line 88
    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    return v5

    .line 92
    :cond_4
    return v4
.end method
