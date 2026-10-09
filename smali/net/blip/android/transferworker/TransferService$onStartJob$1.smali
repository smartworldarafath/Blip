.class final Lnet/blip/android/transferworker/TransferService$onStartJob$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.transferworker.TransferService$onStartJob$1"
    f = "TransferService.kt"
    l = {
        0x40,
        0x47
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/lang/Object;

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lnet/blip/android/transferworker/TransferService;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->r:Lnet/blip/android/transferworker/TransferService;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->s:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->t:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->s:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->t:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->r:Lnet/blip/android/transferworker/TransferService;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/blip/android/transferworker/TransferService$onStartJob$1;-><init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->q:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->p:I

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    iget-object v6, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->t:Landroid/app/job/JobParameters;

    .line 14
    .line 15
    iget-object v7, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->s:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->r:Lnet/blip/android/transferworker/TransferService;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    if-eq v3, v5, :cond_1

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v9

    .line 37
    :cond_1
    iget v1, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->o:I

    .line 38
    .line 39
    iget-object v3, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->n:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 42
    .line 43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move v10, v1

    .line 47
    move-object/from16 v1, p1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lnet/blip/android/notifications/NotificationFactory;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v10}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v7}, Lnet/blip/android/notifications/NotificationFactory;->b(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v11, Lnet/blip/android/notifications/NotificationFactory;

    .line 69
    .line 70
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-direct {v11, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const-string v3, "transferProgress:"

    .line 81
    .line 82
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    sget-object v13, Lnet/blip/android/notifications/NotificationChannels;->e:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 91
    .line 92
    new-instance v15, Lnet/blip/android/notifications/b;

    .line 93
    .line 94
    invoke-direct {v15, v11, v12, v7}, Lnet/blip/android/notifications/b;-><init>(Lnet/blip/android/notifications/NotificationFactory;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v16, 0x4

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static/range {v11 .. v16}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v10, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v10, Ljava/lang/Number;

    .line 107
    .line 108
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    iget-object v3, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v3, Landroid/app/Notification;

    .line 115
    .line 116
    invoke-static {v8, v6, v10, v3}, Lac;->r(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    .line 117
    .line 118
    .line 119
    new-instance v3, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;

    .line 120
    .line 121
    invoke-direct {v3, v8, v7, v6, v9}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;-><init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    .line 122
    .line 123
    .line 124
    const/4 v11, 0x3

    .line 125
    invoke-static {v1, v9, v9, v3, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v1, v8, Lnet/blip/android/transferworker/TransferService;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 130
    .line 131
    new-instance v11, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$map$1;

    .line 132
    .line 133
    invoke-direct {v11, v1, v7}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;

    .line 137
    .line 138
    invoke-direct {v1, v11}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;-><init>(Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$map$1;)V

    .line 139
    .line 140
    .line 141
    iput-object v9, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->q:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v3, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->n:Ljava/lang/Object;

    .line 144
    .line 145
    iput v10, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->o:I

    .line 146
    .line 147
    iput v5, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->p:I

    .line 148
    .line 149
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->n(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-ne v1, v2, :cond_3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    :goto_0
    check-cast v1, Lnet/blip/libblip/frontend/Transfer;

    .line 157
    .line 158
    invoke-interface {v3, v9}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 159
    .line 160
    .line 161
    if-eqz v1, :cond_4

    .line 162
    .line 163
    iput-object v9, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->q:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v9, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->n:Ljava/lang/Object;

    .line 166
    .line 167
    iput v10, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->o:I

    .line 168
    .line 169
    iput v4, v0, Lnet/blip/android/transferworker/TransferService$onStartJob$1;->p:I

    .line 170
    .line 171
    invoke-virtual {v8, v6, v1, v0}, Lnet/blip/android/transferworker/TransferService;->a(Landroid/app/job/JobParameters;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-ne v0, v2, :cond_4

    .line 176
    .line 177
    :goto_1
    return-object v2

    .line 178
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 179
    invoke-virtual {v8, v6, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lnet/blip/android/transferworker/TransferService;->k:Lnet/blip/libblip/Logger;

    .line 183
    .line 184
    new-instance v1, Lkotlin/Pair;

    .line 185
    .line 186
    const-string v2, "transferId"

    .line 187
    .line 188
    invoke-direct {v1, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Lkotlin/Pair;

    .line 192
    .line 193
    const-string v3, "params"

    .line 194
    .line 195
    invoke-direct {v2, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    filled-new-array {v1, v2}, [Lkotlin/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v0, "finished job"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    return-object v0
.end method
