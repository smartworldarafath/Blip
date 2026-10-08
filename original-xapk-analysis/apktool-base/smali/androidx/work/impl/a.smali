.class public final synthetic Landroidx/work/impl/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/work/impl/WorkLauncherImpl;

.field public final synthetic k:Landroidx/work/impl/StartStopToken;

.field public final synthetic l:Landroidx/work/WorkerParameters$RuntimeExtras;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkLauncherImpl;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/a;->j:Landroidx/work/impl/WorkLauncherImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/a;->k:Landroidx/work/impl/StartStopToken;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/a;->l:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/work/impl/a;->j:Landroidx/work/impl/WorkLauncherImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/impl/a;->k:Landroidx/work/impl/StartStopToken;

    .line 4
    .line 5
    iget-object v5, v0, Landroidx/work/impl/WorkLauncherImpl;->a:Landroidx/work/impl/Processor;

    .line 6
    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "Work "

    .line 11
    .line 12
    iget-object v9, p0, Landroidx/work/impl/StartStopToken;->a:Landroidx/work/impl/model/WorkGenerationalId;

    .line 13
    .line 14
    iget-object v10, v9, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v8, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v5, Landroidx/work/impl/Processor;->e:Landroidx/work/impl/WorkDatabase;

    .line 22
    .line 23
    new-instance v2, Lxd;

    .line 24
    .line 25
    invoke-direct {v2, v5, v8, v10}, Lxd;-><init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v7, v1

    .line 33
    check-cast v7, Landroidx/work/impl/model/WorkSpec;

    .line 34
    .line 35
    const/16 v1, 0x11

    .line 36
    .line 37
    if-nez v7, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object v0, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "Didn\'t find WorkSpec for id "

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v0, v2}, Landroidx/work/Logger;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v5, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->d:Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    new-instance v0, Lf3;

    .line 67
    .line 68
    invoke-direct {v0, v1, v5, v9}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    iget-object v11, v5, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v11

    .line 78
    :try_start_0
    iget-object v2, v5, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-virtual {v5, v10}, Landroidx/work/impl/Processor;->c(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v3, 0x0

    .line 90
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    :try_start_2
    iget-object v2, v5, Landroidx/work/impl/Processor;->h:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/util/Set;

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Landroidx/work/impl/StartStopToken;

    .line 110
    .line 111
    iget-object v3, v3, Landroidx/work/impl/StartStopToken;->a:Landroidx/work/impl/model/WorkGenerationalId;

    .line 112
    .line 113
    iget v3, v3, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 114
    .line 115
    iget v4, v9, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 116
    .line 117
    if-ne v3, v4, :cond_2

    .line 118
    .line 119
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    sget-object v1, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " is already enqueued for processing"

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v1, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    move-object p0, v0

    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_2
    iget-object p0, v5, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 154
    .line 155
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->d:Ljava/util/concurrent/Executor;

    .line 156
    .line 157
    new-instance v0, Lf3;

    .line 158
    .line 159
    invoke-direct {v0, v1, v5, v9}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    monitor-exit v11

    .line 166
    return-void

    .line 167
    :cond_3
    iget v0, v7, Landroidx/work/impl/model/WorkSpec;->t:I

    .line 168
    .line 169
    iget v2, v9, Landroidx/work/impl/model/WorkGenerationalId;->b:I

    .line 170
    .line 171
    if-eq v0, v2, :cond_4

    .line 172
    .line 173
    iget-object p0, v5, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 174
    .line 175
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->d:Ljava/util/concurrent/Executor;

    .line 176
    .line 177
    new-instance v0, Lf3;

    .line 178
    .line 179
    invoke-direct {v0, v1, v5, v9}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 183
    .line 184
    .line 185
    monitor-exit v11

    .line 186
    return-void

    .line 187
    :cond_4
    new-instance v1, Landroidx/work/impl/WorkerWrapper$Builder;

    .line 188
    .line 189
    iget-object v2, v5, Landroidx/work/impl/Processor;->b:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v3, v5, Landroidx/work/impl/Processor;->c:Landroidx/work/Configuration;

    .line 192
    .line 193
    iget-object v4, v5, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 194
    .line 195
    iget-object v6, v5, Landroidx/work/impl/Processor;->e:Landroidx/work/impl/WorkDatabase;

    .line 196
    .line 197
    invoke-direct/range {v1 .. v8}, Landroidx/work/impl/WorkerWrapper$Builder;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/ArrayList;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Landroidx/work/impl/WorkerWrapper;

    .line 201
    .line 202
    invoke-direct {v0, v1}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$Builder;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Landroidx/work/impl/WorkerWrapper;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 206
    .line 207
    iget-object v1, v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 208
    .line 209
    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v2}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v2, Landroidx/work/impl/WorkerWrapper$launch$1;

    .line 221
    .line 222
    const/4 v3, 0x0

    .line 223
    invoke-direct {v2, v0, v3}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v2}, Landroidx/work/ListenableFutureKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Ls3;

    .line 231
    .line 232
    const/4 v3, 0x6

    .line 233
    invoke-direct {v2, v5, v1, v0, v3}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    iget-object v3, v5, Landroidx/work/impl/Processor;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 237
    .line 238
    iget-object v3, v3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->d:Ljava/util/concurrent/Executor;

    .line 239
    .line 240
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v5, Landroidx/work/impl/Processor;->g:Ljava/util/HashMap;

    .line 244
    .line 245
    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    new-instance v0, Ljava/util/HashSet;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    iget-object p0, v5, Landroidx/work/impl/Processor;->h:Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-virtual {p0, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    sget-object v0, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 267
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, ": processing "

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :catchall_1
    move-exception v0

    .line 301
    move-object p0, v0

    .line 302
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    :try_start_4
    throw p0

    .line 304
    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 305
    throw p0
.end method
