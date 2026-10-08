.class final Lnet/blip/android/transferworker/TransferWorker$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.transferworker.TransferWorker$doWork$2"
    f = "TransferWorker.kt"
    l = {
        0x46,
        0x65,
        0x76
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Landroidx/core/app/NotificationManagerCompat;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lnet/blip/android/transferworker/TransferWorker;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->t:Lnet/blip/android/transferworker/TransferWorker;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->t:Lnet/blip/android/transferworker/TransferWorker;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lnet/blip/android/transferworker/TransferWorker$doWork$2;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->t:Lnet/blip/android/transferworker/TransferWorker;

    .line 4
    .line 5
    iget-object v2, v1, Lnet/blip/android/transferworker/TransferWorker;->g:Lkotlinx/coroutines/flow/StateFlow;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 12
    .line 13
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget v6, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->r:I

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x3

    .line 19
    const/4 v9, 0x2

    .line 20
    const/4 v10, 0x1

    .line 21
    const/4 v11, 0x0

    .line 22
    if-eqz v6, :cond_3

    .line 23
    .line 24
    if-eq v6, v10, :cond_2

    .line 25
    .line 26
    if-eq v6, v9, :cond_1

    .line 27
    .line 28
    if-ne v6, v8, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    move-object v12, v0

    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v11

    .line 49
    :cond_1
    iget v4, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->q:I

    .line 50
    .line 51
    iget-object v6, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->p:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v6, Lkotlinx/coroutines/Job;

    .line 54
    .line 55
    iget-object v9, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->o:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v9, Lkotlinx/coroutines/Job;

    .line 58
    .line 59
    iget-object v12, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 60
    .line 61
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    move-object v10, v6

    .line 65
    move v6, v4

    .line 66
    move-object/from16 v4, p1

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    iget v6, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->q:I

    .line 71
    .line 72
    iget-object v12, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 73
    .line 74
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :try_start_3
    new-instance v12, Landroidx/core/app/NotificationManagerCompat;

    .line 83
    .line 84
    invoke-direct {v12, v3}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    sget-object v6, Lnet/blip/android/transferworker/TransferWorker;->k:Lnet/blip/libblip/Logger;

    .line 88
    .line 89
    const-string v13, "doWork()"

    .line 90
    .line 91
    new-array v14, v7, [Lkotlin/Pair;

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v13, v14}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 97
    .line 98
    .line 99
    new-instance v6, Lnet/blip/android/notifications/NotificationFactory;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-direct {v6, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lnet/blip/android/transferworker/TransferWorker;->e()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    invoke-virtual {v6, v13}, Lnet/blip/android/notifications/NotificationFactory;->b(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v14, Lnet/blip/android/notifications/NotificationFactory;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-direct {v14, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lnet/blip/android/transferworker/TransferWorker;->e()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const-string v13, "transferProgress:"

    .line 127
    .line 128
    invoke-virtual {v13, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    sget-object v16, Lnet/blip/android/notifications/NotificationChannels;->e:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 137
    .line 138
    new-instance v13, Lnet/blip/android/notifications/b;

    .line 139
    .line 140
    invoke-direct {v13, v14, v15, v6}, Lnet/blip/android/notifications/b;-><init>(Lnet/blip/android/notifications/NotificationFactory;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/16 v19, 0x4

    .line 144
    .line 145
    const/16 v17, 0x0

    .line 146
    .line 147
    move-object/from16 v18, v13

    .line 148
    .line 149
    invoke-static/range {v14 .. v19}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v13, v6, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v13, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    iget-object v6, v6, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v6, Landroid/app/Notification;

    .line 164
    .line 165
    new-instance v14, Landroidx/work/ForegroundInfo;

    .line 166
    .line 167
    iget v15, v1, Lnet/blip/android/transferworker/TransferWorker;->i:I

    .line 168
    .line 169
    invoke-direct {v14, v13, v6, v15}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 170
    .line 171
    .line 172
    iput-object v4, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v12, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 175
    .line 176
    iput v13, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->q:I

    .line 177
    .line 178
    iput v10, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->r:I

    .line 179
    .line 180
    iget-object v6, v1, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    .line 181
    .line 182
    iget-object v15, v6, Landroidx/work/WorkerParameters;->e:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 183
    .line 184
    iget-object v6, v6, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 185
    .line 186
    iget-object v10, v15, Landroidx/work/impl/utils/WorkForegroundUpdater;->a:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 187
    .line 188
    iget-object v10, v10, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 189
    .line 190
    new-instance v7, Lp1;

    .line 191
    .line 192
    invoke-direct {v7, v15, v6, v14, v3}, Lp1;-><init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v6, Ln5;

    .line 199
    .line 200
    const/4 v14, 0x5

    .line 201
    invoke-direct {v6, v14, v10, v7}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v6}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-static {v6, v0}, Landroidx/concurrent/futures/ListenableFutureKt;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    if-ne v6, v5, :cond_4

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_4
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    :goto_0
    if-ne v6, v5, :cond_5

    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_5
    move v6, v13

    .line 222
    :goto_1
    new-instance v7, Lnet/blip/android/transferworker/TransferWorker$doWork$2$timeoutJob$1;

    .line 223
    .line 224
    invoke-direct {v7, v1, v11}, Lnet/blip/android/transferworker/TransferWorker$doWork$2$timeoutJob$1;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/Continuation;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v4, v11, v11, v7, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    new-instance v10, Lnet/blip/android/transferworker/TransferWorker$doWork$2$notifJob$1;

    .line 232
    .line 233
    invoke-direct {v10, v1, v11}, Lnet/blip/android/transferworker/TransferWorker$doWork$2$notifJob$1;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/Continuation;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v4, v11, v11, v10, v8}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    new-instance v13, Lnet/blip/android/transferworker/TransferWorker$doWork$2$invokeSuspend$$inlined$map$1;

    .line 241
    .line 242
    invoke-direct {v13, v2, v1}, Lnet/blip/android/transferworker/TransferWorker$doWork$2$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lnet/blip/android/transferworker/TransferWorker;)V

    .line 243
    .line 244
    .line 245
    new-instance v14, Lnet/blip/android/transferworker/TransferWorker$doWork$2$invokeSuspend$$inlined$filter$1;

    .line 246
    .line 247
    invoke-direct {v14, v13}, Lnet/blip/android/transferworker/TransferWorker$doWork$2$invokeSuspend$$inlined$filter$1;-><init>(Lnet/blip/android/transferworker/TransferWorker$doWork$2$invokeSuspend$$inlined$map$1;)V

    .line 248
    .line 249
    .line 250
    iput-object v4, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s:Ljava/lang/Object;

    .line 251
    .line 252
    iput-object v12, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 253
    .line 254
    iput-object v7, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->o:Ljava/lang/Object;

    .line 255
    .line 256
    iput-object v10, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->p:Ljava/lang/Object;

    .line 257
    .line 258
    iput v6, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->q:I

    .line 259
    .line 260
    iput v9, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->r:I

    .line 261
    .line 262
    invoke-static {v14, v0}, Lkotlinx/coroutines/flow/FlowKt;->n(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-ne v4, v5, :cond_6

    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_6
    move-object v9, v7

    .line 271
    :goto_2
    check-cast v4, Lnet/blip/libblip/frontend/Transfer;

    .line 272
    .line 273
    invoke-interface {v9, v11}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v10, v11}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 277
    .line 278
    .line 279
    if-nez v4, :cond_7

    .line 280
    .line 281
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    .line 282
    .line 283
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_7
    iget-object v7, v4, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 288
    .line 289
    if-eqz v7, :cond_8

    .line 290
    .line 291
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Lnet/blip/libblip/frontend/State;

    .line 296
    .line 297
    invoke-static {v2}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v2, v7}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    goto :goto_3

    .line 306
    :cond_8
    move-object v2, v11

    .line 307
    :goto_3
    iget-object v7, v4, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    const/16 v9, 0x8

    .line 314
    .line 315
    if-eq v7, v9, :cond_e

    .line 316
    .line 317
    const/16 v0, 0x9

    .line 318
    .line 319
    if-eq v7, v0, :cond_9

    .line 320
    .line 321
    goto/16 :goto_7

    .line 322
    .line 323
    :cond_9
    iget-object v0, v4, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 324
    .line 325
    if-eqz v0, :cond_a

    .line 326
    .line 327
    iget-object v0, v0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_a
    move-object v0, v11

    .line 331
    :goto_4
    iget-object v5, v4, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 332
    .line 333
    if-eqz v5, :cond_b

    .line 334
    .line 335
    iget-object v11, v5, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 336
    .line 337
    :cond_b
    sget-object v5, Lnet/blip/libblip/frontend/TransferErr$Code;->A:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 338
    .line 339
    if-ne v11, v5, :cond_c

    .line 340
    .line 341
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory;

    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 347
    .line 348
    .line 349
    sget-object v3, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 350
    .line 351
    new-instance v6, Lnet/blip/android/notifications/e;

    .line 352
    .line 353
    const/4 v5, 0x0

    .line 354
    invoke-direct {v6, v4, v2, v5}, Lnet/blip/android/notifications/e;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;I)V

    .line 355
    .line 356
    .line 357
    const/4 v7, 0x1

    .line 358
    move-object v4, v3

    .line 359
    const/4 v3, 0x0

    .line 360
    move-object v5, v2

    .line 361
    move-object v2, v0

    .line 362
    invoke-static/range {v2 .. v7}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    iget-object v2, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v2, Ljava/lang/Number;

    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    iget-object v0, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v0, Landroid/app/Notification;

    .line 377
    .line 378
    invoke-static {v12, v2, v0}, Lnet/blip/android/notifications/NotificationFactoryKt;->c(Landroidx/core/app/NotificationManagerCompat;ILandroid/app/Notification;)V

    .line 379
    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_c
    move-object v5, v2

    .line 383
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr$Code;->B:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 384
    .line 385
    if-eq v0, v2, :cond_10

    .line 386
    .line 387
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr$Code;->z:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 388
    .line 389
    if-ne v0, v2, :cond_d

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_d
    new-instance v2, Lnet/blip/android/notifications/NotificationFactory;

    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-direct {v2, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 401
    .line 402
    new-instance v6, Lnet/blip/android/notifications/e;

    .line 403
    .line 404
    const/4 v3, 0x1

    .line 405
    invoke-direct {v6, v4, v5, v3}, Lnet/blip/android/notifications/e;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;I)V

    .line 406
    .line 407
    .line 408
    const/4 v7, 0x1

    .line 409
    const/4 v3, 0x0

    .line 410
    move-object v4, v0

    .line 411
    invoke-static/range {v2 .. v7}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v2, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v2, Ljava/lang/Number;

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    iget-object v0, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Landroid/app/Notification;

    .line 426
    .line 427
    invoke-static {v12, v2, v0}, Lnet/blip/android/notifications/NotificationFactoryKt;->c(Landroidx/core/app/NotificationManagerCompat;ILandroid/app/Notification;)V

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_e
    new-instance v7, Lnet/blip/android/notifications/NotificationFactory;

    .line 432
    .line 433
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-direct {v7, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 437
    .line 438
    .line 439
    iput-object v11, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->s:Ljava/lang/Object;

    .line 440
    .line 441
    iput-object v12, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->n:Landroidx/core/app/NotificationManagerCompat;

    .line 442
    .line 443
    iput-object v11, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->o:Ljava/lang/Object;

    .line 444
    .line 445
    iput-object v11, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->p:Ljava/lang/Object;

    .line 446
    .line 447
    iput v6, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->q:I

    .line 448
    .line 449
    iput v8, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$2;->r:I

    .line 450
    .line 451
    invoke-virtual {v7, v2, v4, v0}, Lnet/blip/android/notifications/NotificationFactory;->e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    if-ne v0, v5, :cond_f

    .line 456
    .line 457
    :goto_5
    return-object v5

    .line 458
    :cond_f
    :goto_6
    check-cast v0, Lkotlin/Pair;

    .line 459
    .line 460
    iget-object v2, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v2, Ljava/lang/Number;

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    iget-object v0, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Landroid/app/Notification;

    .line 471
    .line 472
    invoke-static {v12, v2, v0}, Lnet/blip/android/notifications/NotificationFactoryKt;->c(Landroidx/core/app/NotificationManagerCompat;ILandroid/app/Notification;)V

    .line 473
    .line 474
    .line 475
    :cond_10
    :goto_7
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    .line 476
    .line 477
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 478
    .line 479
    .line 480
    return-object v0

    .line 481
    :goto_8
    sget-object v2, Lnet/blip/android/transferworker/TransferWorker;->k:Lnet/blip/libblip/Logger;

    .line 482
    .line 483
    invoke-virtual {v1}, Lnet/blip/android/transferworker/TransferWorker;->e()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    new-instance v3, Lkotlin/Pair;

    .line 488
    .line 489
    const-string v4, "transferId"

    .line 490
    .line 491
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    new-instance v1, Lkotlin/Pair;

    .line 495
    .line 496
    const-string v4, "err"

    .line 497
    .line 498
    invoke-direct {v1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    filled-new-array {v3, v1}, [Lkotlin/Pair;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    const-string v1, "failed"

    .line 509
    .line 510
    invoke-static {v1, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 511
    .line 512
    .line 513
    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 514
    .line 515
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 516
    .line 517
    .line 518
    return-object v0
.end method
