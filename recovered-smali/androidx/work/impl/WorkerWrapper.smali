.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;,
        Landroidx/work/impl/WorkerWrapper$Resolution;
    }
.end annotation


# instance fields
.field public final a:Landroidx/work/impl/model/WorkSpec;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public final e:Landroidx/work/Configuration;

.field public final f:Landroidx/work/SystemClock;

.field public final g:Landroidx/work/impl/foreground/ForegroundProcessor;

.field public final h:Landroidx/work/impl/WorkDatabase;

.field public final i:Landroidx/work/impl/model/WorkSpecDao;

.field public final j:Landroidx/work/impl/model/DependencyDao;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/lang/String;

.field public final m:Lkotlinx/coroutines/JobImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->e:Landroidx/work/impl/model/WorkSpec;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->g:Landroid/content/Context;

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->b:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->a:Landroidx/work/Configuration;

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/Configuration;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/work/Configuration;->d:Landroidx/work/SystemClock;

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/SystemClock;

    .line 27
    .line 28
    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->c:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 31
    .line 32
    iget-object v1, p1, Landroidx/work/impl/WorkerWrapper$Builder;->d:Landroidx/work/impl/WorkDatabase;

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/impl/WorkDatabase;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/work/impl/model/DependencyDao;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/DependencyDao;

    .line 47
    .line 48
    iget-object v2, p1, Landroidx/work/impl/WorkerWrapper$Builder;->f:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object v2, p0, Landroidx/work/impl/WorkerWrapper;->k:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "Work [ id="

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", tags={ "

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const/16 v7, 0x3e

    .line 69
    .line 70
    const-string v3, ","

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, " } ]"

    .line 79
    .line 80
    invoke-static {p1, v0, v1}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->l:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->m:Lkotlinx/coroutines/JobImpl;

    .line 91
    .line 92
    return-void
.end method

.method public static final a(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v6, v4, Landroidx/work/impl/WorkerWrapper;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v7, v4, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 8
    .line 9
    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v8, v4, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    iget-object v2, v4, Landroidx/work/impl/WorkerWrapper;->e:Landroidx/work/Configuration;

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 18
    .line 19
    instance-of v9, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 20
    .line 21
    if-eqz v9, :cond_0

    .line 22
    .line 23
    move-object v9, v0

    .line 24
    check-cast v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 25
    .line 26
    iget v10, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->o:I

    .line 27
    .line 28
    const/high16 v11, -0x80000000

    .line 29
    .line 30
    and-int v12, v10, v11

    .line 31
    .line 32
    if-eqz v12, :cond_0

    .line 33
    .line 34
    sub-int/2addr v10, v11

    .line 35
    iput v10, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->o:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    .line 39
    .line 40
    invoke-direct {v9, v4, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->m:Ljava/lang/Object;

    .line 44
    .line 45
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 46
    .line 47
    iget v11, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->o:I

    .line 48
    .line 49
    const/4 v12, 0x1

    .line 50
    const/4 v13, 0x0

    .line 51
    if-eqz v11, :cond_2

    .line 52
    .line 53
    if-ne v11, v12, :cond_1

    .line 54
    .line 55
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v13

    .line 72
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroidx/tracing/Trace;->d()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    move v11, v3

    .line 83
    iget-object v3, v5, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v14, v5, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v15, v5, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v11, :cond_3

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0, v3}, Landroidx/tracing/Trace;->a(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    new-instance v0, Lvi;

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    invoke-direct {v0, v12, v4}, Lvi;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v0}, Landroidx/room/RoomDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 119
    .line 120
    invoke-direct {v0}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_4
    invoke-virtual {v5}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 131
    .line 132
    move-object/from16 v17, v3

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_5
    iget-object v0, v2, Landroidx/work/Configuration;->f:Landroidx/work/NoOpInputMergerFactory;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v0, Landroidx/work/InputMergerKt;->a:Ljava/lang/String;

    .line 145
    .line 146
    :try_start_1
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    check-cast v0, Landroidx/work/InputMerger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    move-object/from16 v17, v3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    sget-object v12, Landroidx/work/InputMergerKt;->a:Ljava/lang/String;

    .line 172
    .line 173
    move-object/from16 v17, v3

    .line 174
    .line 175
    const-string v3, "Trouble instantiating "

    .line 176
    .line 177
    invoke-virtual {v3, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v13, v12, v3, v0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x0

    .line 185
    :goto_1
    if-nez v0, :cond_6

    .line 186
    .line 187
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v2, "Could not create Input Merger "

    .line 194
    .line 195
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 203
    .line 204
    invoke-direct {v10}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_6
    iget-object v0, v5, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 210
    .line 211
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v3, v4, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 216
    .line 217
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 226
    .line 227
    new-instance v5, Lq7;

    .line 228
    .line 229
    const/16 v12, 0x10

    .line 230
    .line 231
    invoke-direct {v5, v1, v12}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    const/4 v12, 0x0

    .line 235
    const/4 v13, 0x1

    .line 236
    invoke-static {v3, v13, v12, v5}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Ljava/util/List;

    .line 241
    .line 242
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v3, Landroidx/work/Data$Builder;

    .line 247
    .line 248
    invoke-direct {v3}, Landroidx/work/Data$Builder;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 252
    .line 253
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_7

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    check-cast v12, Landroidx/work/Data;

    .line 271
    .line 272
    iget-object v12, v12, Landroidx/work/Data;->a:Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-interface {v5, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_7
    invoke-virtual {v3, v5}, Landroidx/work/Data$Builder;->b(Ljava/util/HashMap;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :goto_3
    new-instance v3, Landroidx/work/WorkerParameters;

    .line 293
    .line 294
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    iget-object v5, v4, Landroidx/work/impl/WorkerWrapper;->k:Ljava/util/ArrayList;

    .line 299
    .line 300
    iget-object v12, v2, Landroidx/work/Configuration;->a:Ljava/util/concurrent/ExecutorService;

    .line 301
    .line 302
    iget-object v13, v2, Landroidx/work/Configuration;->b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 303
    .line 304
    new-instance v15, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 305
    .line 306
    new-instance v15, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 307
    .line 308
    move/from16 v16, v11

    .line 309
    .line 310
    iget-object v11, v4, Landroidx/work/impl/WorkerWrapper;->g:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 311
    .line 312
    invoke-direct {v15, v8, v11, v7}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    iput-object v1, v3, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 319
    .line 320
    iput-object v0, v3, Landroidx/work/WorkerParameters;->b:Landroidx/work/Data;

    .line 321
    .line 322
    new-instance v0, Ljava/util/HashSet;

    .line 323
    .line 324
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 325
    .line 326
    .line 327
    iput-object v12, v3, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/ExecutorService;

    .line 328
    .line 329
    iput-object v13, v3, Landroidx/work/WorkerParameters;->d:Lkotlin/coroutines/CoroutineContext;

    .line 330
    .line 331
    iput-object v15, v3, Landroidx/work/WorkerParameters;->e:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 332
    .line 333
    :try_start_2
    iget-object v0, v2, Landroidx/work/Configuration;->e:Landroidx/work/DefaultWorkerFactory;

    .line 334
    .line 335
    iget-object v1, v4, Landroidx/work/impl/WorkerWrapper;->b:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v0, v1, v14, v3}, Landroidx/work/WorkerFactory;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 338
    .line 339
    .line 340
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    const/4 v13, 0x1

    .line 342
    iput-boolean v13, v1, Landroidx/work/ListenableWorker;->d:Z

    .line 343
    .line 344
    iget-object v0, v9, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    sget-object v2, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 350
    .line 351
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    move-object v11, v0

    .line 359
    check-cast v11, Lkotlinx/coroutines/Job;

    .line 360
    .line 361
    new-instance v0, Lw1;

    .line 362
    .line 363
    const/4 v5, 0x1

    .line 364
    move/from16 v2, v16

    .line 365
    .line 366
    move-object/from16 v3, v17

    .line 367
    .line 368
    invoke-direct/range {v0 .. v5}, Lw1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v11, v0}, Lkotlinx/coroutines/Job;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 372
    .line 373
    .line 374
    new-instance v0, Lvi;

    .line 375
    .line 376
    const/4 v13, 0x1

    .line 377
    invoke-direct {v0, v13, v4}, Lvi;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v8, v0}, Landroidx/room/RoomDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    check-cast v0, Ljava/lang/Boolean;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_8

    .line 394
    .line 395
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 396
    .line 397
    invoke-direct {v10}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_7

    .line 401
    .line 402
    :cond_8
    invoke-interface {v11}, Lkotlinx/coroutines/Job;->isCancelled()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_9

    .line 407
    .line 408
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    .line 409
    .line 410
    invoke-direct {v10}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>()V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_7

    .line 414
    .line 415
    :cond_9
    iget-object v0, v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->d:Ljava/util/concurrent/Executor;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->a(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    :try_start_3
    new-instance v2, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    .line 425
    .line 426
    const/4 v3, 0x0

    .line 427
    invoke-direct {v2, v4, v1, v15, v3}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/impl/utils/WorkForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    .line 428
    .line 429
    .line 430
    const/4 v13, 0x1

    .line 431
    iput v13, v9, Landroidx/work/impl/WorkerWrapper$runWorker$1;->o:I

    .line 432
    .line 433
    invoke-static {v0, v2, v9}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-ne v0, v10, :cond_a

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :cond_a
    :goto_4
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 441
    .line 442
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-direct {v10, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    .line 449
    .line 450
    goto :goto_7

    .line 451
    :goto_5
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 452
    .line 453
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v4, " failed because it threw an exception/error"

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v2, v1, v3, v0}, Landroidx/work/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 478
    .line 479
    invoke-direct {v10}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 480
    .line 481
    .line 482
    goto :goto_7

    .line 483
    :goto_6
    sget-object v1, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 484
    .line 485
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v4, " was cancelled"

    .line 498
    .line 499
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    check-cast v2, Landroidx/work/Logger$LogcatLogger;

    .line 507
    .line 508
    iget v2, v2, Landroidx/work/Logger$LogcatLogger;->c:I

    .line 509
    .line 510
    const/4 v4, 0x4

    .line 511
    if-gt v2, v4, :cond_b

    .line 512
    .line 513
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .line 515
    .line 516
    :cond_b
    throw v0

    .line 517
    :catchall_1
    sget-object v0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v3, "Could not create Worker "

    .line 526
    .line 527
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v10, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    .line 541
    .line 542
    invoke-direct {v10}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>()V

    .line 543
    .line 544
    .line 545
    :goto_7
    return-object v10
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 4
    .line 5
    check-cast v1, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/SystemClock;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->e(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 25
    .line 26
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 27
    .line 28
    invoke-virtual {v1, p0, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->d(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->g(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Landroidx/work/SystemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 11
    .line 12
    check-cast v2, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->e(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 28
    .line 29
    new-instance v1, Lq7;

    .line 30
    .line 31
    const/16 v4, 0xe

    .line 32
    .line 33
    invoke-direct {v1, v3, v4}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-static {v0, v4, v5, v1}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Number;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 48
    .line 49
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 50
    .line 51
    invoke-virtual {v2, p0, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->d(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    new-instance v0, Lq7;

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    invoke-direct {v0, v3, v1}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v4, v5, v0}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-wide/16 v0, -0x1

    .line 70
    .line 71
    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->c(JLjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final d(Landroidx/work/ListenableWorker$Result;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->c:Ljava/lang/String;

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->E([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpecDao;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->a(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    sget-object v5, Landroidx/work/WorkInfo$State;->o:Landroidx/work/WorkInfo$State;

    .line 35
    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    .line 38
    sget-object v4, Landroidx/work/WorkInfo$State;->m:Landroidx/work/WorkInfo$State;

    .line 39
    .line 40
    invoke-virtual {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->f(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/impl/model/DependencyDao;

    .line 44
    .line 45
    check-cast v3, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroidx/work/impl/model/DependencyDao_Impl;->a(Ljava/lang/String;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/work/ListenableWorker$Result$Failure;->a:Landroidx/work/Data;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 63
    .line 64
    iget p0, p0, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 65
    .line 66
    check-cast v3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 67
    .line 68
    invoke-virtual {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->d(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object p0, v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 75
    .line 76
    new-instance v1, Lec;

    .line 77
    .line 78
    const/16 v2, 0x1d

    .line 79
    .line 80
    invoke-direct {v1, v2, p1, v0}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-static {p0, p1, v0, v1}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-void
.end method
