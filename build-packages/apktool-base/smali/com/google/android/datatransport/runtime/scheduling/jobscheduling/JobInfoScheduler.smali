.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

.field public final c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/runtime/TransportContext;IZ)V
    .locals 11

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "jobscheduler"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 17
    .line 18
    new-instance v3, Ljava/util/zip/Adler32;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/zip/Adler32;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v4, "UTF-8"

    .line 28
    .line 29
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v4}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->a(Lcom/google/android/datatransport/Priority;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v3, v2}, Ljava/util/zip/Adler32;->update([B)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    long-to-int v2, v2

    .line 97
    const-string v3, "JobInfoScheduler"

    .line 98
    .line 99
    const-string v4, "attemptNumber"

    .line 100
    .line 101
    if-nez p3, :cond_2

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Landroid/app/job/JobInfo;

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getId()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-ne v5, v2, :cond_1

    .line 136
    .line 137
    if-lt v6, p2, :cond_2

    .line 138
    .line 139
    const-string p0, "Upload for context %s is already scheduled. Returning..."

    .line 140
    .line 141
    invoke-static {v3, p0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_2
    iget-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 146
    .line 147
    check-cast p3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 148
    .line 149
    invoke-virtual {p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h()Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->a(Lcom/google/android/datatransport/Priority;)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const-string v6, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 174
    .line 175
    invoke-virtual {p3, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    const/4 v6, 0x0

    .line 184
    if-eqz v5, :cond_3

    .line 185
    .line 186
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v7

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    goto :goto_0

    .line 195
    :cond_3
    const-wide/16 v7, 0x0

    .line 196
    .line 197
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    new-instance p3, Landroid/app/job/JobInfo$Builder;

    .line 209
    .line 210
    invoke-direct {p3, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 218
    .line 219
    invoke-virtual {p0, v0, v7, v8, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->b(Lcom/google/android/datatransport/Priority;JI)J

    .line 220
    .line 221
    .line 222
    move-result-wide v9

    .line 223
    invoke-virtual {p3, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 224
    .line 225
    .line 226
    move-object v9, p0

    .line 227
    check-cast v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;

    .line 228
    .line 229
    iget-object v9, v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig;->b:Ljava/util/Map;

    .line 230
    .line 231
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue;

    .line 236
    .line 237
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;->c:Ljava/util/Set;

    .line 240
    .line 241
    sget-object v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->j:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 242
    .line 243
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    const/4 v10, 0x1

    .line 248
    if-eqz v9, :cond_4

    .line 249
    .line 250
    const/4 v9, 0x2

    .line 251
    invoke-virtual {p3, v9}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_4
    invoke-virtual {p3, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 256
    .line 257
    .line 258
    :goto_1
    sget-object v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->l:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 259
    .line 260
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_5

    .line 265
    .line 266
    invoke-virtual {p3, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 267
    .line 268
    .line 269
    :cond_5
    sget-object v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;->k:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;

    .line 270
    .line 271
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_6

    .line 276
    .line 277
    invoke-virtual {p3, v10}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 278
    .line 279
    .line 280
    :cond_6
    new-instance v0, Landroid/os/PersistableBundle;

    .line 281
    .line 282
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    const-string v4, "backendName"

    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v0, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-static {v4}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->a(Lcom/google/android/datatransport/Priority;)I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    const-string v9, "priority"

    .line 306
    .line 307
    invoke-virtual {v0, v9, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-eqz v4, :cond_7

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    const-string v6, "extras"

    .line 325
    .line 326
    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_7
    invoke-virtual {p3, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 330
    .line 331
    .line 332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {p0, v2, v7, v8, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->b(Lcom/google/android/datatransport/Priority;JI)J

    .line 341
    .line 342
    .line 343
    move-result-wide v6

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    filled-new-array {p1, v0, p0, v5, p2}, [Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    const-string p1, "TRuntime."

    .line 357
    .line 358
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const/4 p2, 0x3

    .line 363
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-eqz p2, :cond_8

    .line 368
    .line 369
    const-string p2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 370
    .line 371
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_8
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :catchall_0
    move-exception p0

    .line 387
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 388
    .line 389
    .line 390
    throw p0
.end method
