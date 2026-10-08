.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

.field public final c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

.field public final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

.field public final g:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final h:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final i:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/BackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->b:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->c:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->f:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->g:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->h:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->i:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->b:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->e(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 14
    .line 15
    .line 16
    move-wide v7, v1

    .line 17
    :goto_0
    new-instance v1, Lbi;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, p1, v2}, Lbi;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->f:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_a

    .line 38
    .line 39
    new-instance v1, Lbi;

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    invoke-direct {v1, p0, p1, v9}, Lbi;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v1, "Uploader"

    .line 66
    .line 67
    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    .line 68
    .line 69
    invoke-static {v1, v3, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->a()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->i:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    .line 114
    .line 115
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    new-instance v4, Lp;

    .line 119
    .line 120
    const/16 v6, 0x13

    .line 121
    .line 122
    invoke-direct {v4, v6, v3}, Lp;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->a()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iget-object v6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->g:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 136
    .line 137
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    invoke-virtual {v4, v10, v11}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->f(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 142
    .line 143
    .line 144
    iget-object v6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->h:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 145
    .line 146
    invoke-interface {v6}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 147
    .line 148
    .line 149
    move-result-wide v10

    .line 150
    invoke-virtual {v4, v10, v11}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->h(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 151
    .line 152
    .line 153
    const-string v6, "GDT_CLIENT_METRICS"

    .line 154
    .line 155
    invoke-virtual {v4, v6}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 156
    .line 157
    .line 158
    new-instance v6, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 159
    .line 160
    new-instance v10, Lcom/google/android/datatransport/Encoding;

    .line 161
    .line 162
    const-string v11, "proto"

    .line 163
    .line 164
    invoke-direct {v10, v11}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object v11, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;->a:Lcom/google/firebase/encoders/proto/ProtobufEncoder;

    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    .line 176
    .line 177
    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .line 179
    .line 180
    :try_start_0
    invoke-virtual {v11, v3, v12}, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->a(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    :catch_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-direct {v6, v10, v3}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v6}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->b()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-interface {v0, v3}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->b(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :cond_3
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->a()Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->b(Ljava/util/ArrayList;)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3, v1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->c([B)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;->a()Lcom/google/android/datatransport/runtime/backends/BackendRequest;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->a(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    sget-object v4, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->k:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 231
    .line 232
    if-ne v3, v4, :cond_4

    .line 233
    .line 234
    new-instance v3, Lci;

    .line 235
    .line 236
    move-object v4, p0

    .line 237
    move-object v6, p1

    .line 238
    invoke-direct/range {v3 .. v8}, Lci;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    add-int/2addr p2, v9

    .line 245
    iget-object p0, v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    .line 246
    .line 247
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;

    .line 248
    .line 249
    invoke-virtual {p0, v6, p2, v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_4
    move-object v4, p0

    .line 254
    move-object v6, p1

    .line 255
    new-instance p0, Ln5;

    .line 256
    .line 257
    const/16 p1, 0x8

    .line 258
    .line 259
    invoke-direct {p0, p1, v4, v5}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    sget-object p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->j:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 270
    .line 271
    if-ne p0, p1, :cond_6

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->b()J

    .line 274
    .line 275
    .line 276
    move-result-wide p0

    .line 277
    invoke-static {v7, v8, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 278
    .line 279
    .line 280
    move-result-wide p0

    .line 281
    invoke-virtual {v6}, Lcom/google/android/datatransport/runtime/TransportContext;->e()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_5

    .line 286
    .line 287
    new-instance v1, Lp;

    .line 288
    .line 289
    const/16 v3, 0x15

    .line 290
    .line 291
    invoke-direct {v1, v3, v4}, Lp;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    :cond_5
    move-wide v7, p0

    .line 298
    goto :goto_4

    .line 299
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    sget-object p1, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->m:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    .line 304
    .line 305
    if-ne p0, p1, :cond_9

    .line 306
    .line 307
    new-instance p0, Ljava/util/HashMap;

    .line 308
    .line 309
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_8

    .line 321
    .line 322
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->a()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/EventInternal;->i()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_7

    .line 341
    .line 342
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_7
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    check-cast v3, Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    add-int/2addr v3, v9

    .line 361
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_8
    new-instance p1, Ln5;

    .line 370
    .line 371
    const/16 v1, 0x9

    .line 372
    .line 373
    invoke-direct {p1, v1, v4, p0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    :cond_9
    :goto_4
    move-object p0, v4

    .line 380
    move-object p1, v6

    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_a
    move-object v4, p0

    .line 384
    move-object v6, p1

    .line 385
    new-instance p0, Ldi;

    .line 386
    .line 387
    invoke-direct {p0, v4, v6, v7, v8}, Ldi;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    return-void
.end method
