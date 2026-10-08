.class final Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Landroidx/work/impl/constraints/ConstraintsState;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1"
    f = "WorkConstraintsTracker.kt"
    l = {
        0xbf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/work/Constraints;

.field public final synthetic q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;


# direct methods
.method public constructor <init>(Landroidx/work/Constraints;Landroidx/work/impl/constraints/NetworkRequestConstraintController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->p:Landroidx/work/Constraints;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->p:Landroidx/work/Constraints;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;-><init>(Landroidx/work/Constraints;Landroidx/work/impl/constraints/NetworkRequestConstraintController;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->p:Landroidx/work/Constraints;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/work/Constraints;->a()Landroid/net/NetworkRequest;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x3

    .line 37
    const/4 v6, 0x0

    .line 38
    const/16 v7, 0x1e

    .line 39
    .line 40
    if-nez v1, :cond_7

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->p:Landroidx/work/Constraints;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v8, Landroidx/work/NetworkType;->j:Landroidx/work/NetworkType;

    .line 50
    .line 51
    if-ne v1, v8, :cond_2

    .line 52
    .line 53
    move-object v1, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    .line 56
    .line 57
    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v9, 0xc

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const/16 v9, 0x10

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const/16 v9, 0xf

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const/16 v9, 0xd

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    if-lt v9, v7, :cond_3

    .line 87
    .line 88
    sget-object v9, Landroidx/work/NetworkType;->o:Landroidx/work/NetworkType;

    .line 89
    .line 90
    if-ne v1, v9, :cond_3

    .line 91
    .line 92
    const/16 v1, 0x19

    .line 93
    .line 94
    invoke-virtual {v8, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v9, 0x2

    .line 108
    if-eq v1, v9, :cond_6

    .line 109
    .line 110
    if-eq v1, v5, :cond_5

    .line 111
    .line 112
    if-eq v1, v4, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v8, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    const/16 v1, 0x12

    .line 121
    .line 122
    invoke-virtual {v8, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    const/16 v1, 0xb

    .line 128
    .line 129
    invoke-virtual {v8, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    :goto_0
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    check-cast p1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 143
    .line 144
    iget-object p0, p1, Lkotlinx/coroutines/channels/ChannelCoroutine;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 145
    .line 146
    invoke-virtual {p0, v3, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->o(Ljava/lang/Throwable;Z)Z

    .line 147
    .line 148
    .line 149
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0

    .line 152
    :cond_8
    new-instance v8, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$timeoutJob$1;

    .line 153
    .line 154
    iget-object v9, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 155
    .line 156
    invoke-direct {v8, v9, p1, v3}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1$timeoutJob$1;-><init>(Landroidx/work/impl/constraints/NetworkRequestConstraintController;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v3, v3, v8, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v8, Lec;

    .line 164
    .line 165
    invoke-direct {v8, v6, v3, p1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    .line 170
    const/4 v9, 0x7

    .line 171
    if-lt v3, v7, :cond_d

    .line 172
    .line 173
    sget-object v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->a:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 174
    .line 175
    iget-object v5, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 176
    .line 177
    iget-object v5, v5, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->a:Landroid/net/ConnectivityManager;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget-object v7, Landroidx/work/impl/constraints/SharedNetworkCallback;->b:Ljava/lang/Object;

    .line 183
    .line 184
    monitor-enter v7

    .line 185
    :try_start_0
    sget-object v10, Landroidx/work/impl/constraints/SharedNetworkCallback;->c:Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    invoke-interface {v10, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    if-eqz v11, :cond_9

    .line 195
    .line 196
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v6, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 201
    .line 202
    const-string v9, "NetworkRequestConstraintController register shared callback"

    .line 203
    .line 204
    invoke-virtual {v1, v6, v9}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catchall_0
    move-exception p0

    .line 212
    goto :goto_4

    .line 213
    :cond_9
    sget-boolean v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->e:Z

    .line 214
    .line 215
    if-eqz v3, :cond_c

    .line 216
    .line 217
    sget-object v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->f:Ljava/lang/Boolean;

    .line 218
    .line 219
    if-eqz v3, :cond_c

    .line 220
    .line 221
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    sget-object v10, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 226
    .line 227
    const-string v11, "NetworkRequestConstraintController send initial capabilities"

    .line 228
    .line 229
    invoke-virtual {v3, v10, v11}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    sget-object v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->d:Landroid/net/NetworkCapabilities;

    .line 233
    .line 234
    sget-object v10, Landroidx/work/impl/constraints/SharedNetworkCallback;->f:Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-nez v10, :cond_a

    .line 244
    .line 245
    invoke-static {v1, v3}, Lj;->y(Landroid/net/NetworkRequest;Landroid/net/NetworkCapabilities;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_a

    .line 250
    .line 251
    move v6, v2

    .line 252
    :cond_a
    if-eqz v6, :cond_b

    .line 253
    .line 254
    sget-object v1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->a:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_b
    new-instance v1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 258
    .line 259
    invoke-direct {v1, v9}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 260
    .line 261
    .line 262
    :goto_2
    invoke-virtual {v8, v1}, Lec;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .line 264
    .line 265
    :cond_c
    :goto_3
    monitor-exit v7

    .line 266
    new-instance v1, Landroidx/work/impl/constraints/b;

    .line 267
    .line 268
    invoke-direct {v1, v8, v5}, Landroidx/work/impl/constraints/b;-><init>(Lec;Landroid/net/ConnectivityManager;)V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :goto_4
    monitor-exit v7

    .line 273
    throw p0

    .line 274
    :cond_d
    sget v3, Landroidx/work/impl/constraints/IndividualNetworkCallback;->b:I

    .line 275
    .line 276
    iget-object v3, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->q:Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 277
    .line 278
    iget-object v3, v3, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->a:Landroid/net/ConnectivityManager;

    .line 279
    .line 280
    new-instance v7, Landroidx/work/impl/constraints/IndividualNetworkCallback;

    .line 281
    .line 282
    invoke-direct {v7, v8}, Landroidx/work/impl/constraints/IndividualNetworkCallback;-><init>(Lec;)V

    .line 283
    .line 284
    .line 285
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 286
    .line 287
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 288
    .line 289
    .line 290
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    sget-object v12, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 295
    .line 296
    const-string v13, "NetworkRequestConstraintController register callback"

    .line 297
    .line 298
    invoke-virtual {v11, v12, v13}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v1, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 302
    .line 303
    .line 304
    iput-boolean v2, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    const-string v12, "TooManyRequestsException"

    .line 317
    .line 318
    invoke-static {v11, v12, v6}, Lkotlin/text/StringsKt;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-eqz v6, :cond_10

    .line 323
    .line 324
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    sget-object v11, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a:Ljava/lang/String;

    .line 329
    .line 330
    const-string v12, "NetworkRequestConstraintController couldn\'t register callback"

    .line 331
    .line 332
    check-cast v6, Landroidx/work/Logger$LogcatLogger;

    .line 333
    .line 334
    iget v6, v6, Landroidx/work/Logger$LogcatLogger;->c:I

    .line 335
    .line 336
    if-gt v6, v5, :cond_e

    .line 337
    .line 338
    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .line 340
    .line 341
    :cond_e
    new-instance v1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 342
    .line 343
    invoke-direct {v1, v9}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v1}, Lec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    :goto_5
    new-instance v1, Landroidx/work/impl/constraints/a;

    .line 350
    .line 351
    invoke-direct {v1, v10, v3, v7}, Landroidx/work/impl/constraints/a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Landroidx/work/impl/constraints/IndividualNetworkCallback;)V

    .line 352
    .line 353
    .line 354
    :goto_6
    new-instance v3, Ls;

    .line 355
    .line 356
    invoke-direct {v3, v4, v1}, Ls;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 357
    .line 358
    .line 359
    iput v2, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->n:I

    .line 360
    .line 361
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    if-ne p0, v0, :cond_f

    .line 366
    .line 367
    return-object v0

    .line 368
    :cond_f
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 369
    .line 370
    return-object p0

    .line 371
    :cond_10
    throw v1
.end method
