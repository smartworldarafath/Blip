.class public final Lnet/blip/android/transferworker/TransferService;
.super Landroid/app/job/JobService;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final k:Lnet/blip/libblip/Logger;


# instance fields
.field public final j:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "TransferService"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lnet/blip/libblip/Logger;->m(Ljava/lang/String;[Lkotlin/Pair;)Lnet/blip/libblip/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lnet/blip/android/transferworker/TransferService;->k:Lnet/blip/libblip/Logger;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 11
    .line 12
    iput-object v0, p0, Lnet/blip/android/transferworker/TransferService;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;-><init>(Lnet/blip/android/transferworker/TransferService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->m:Landroid/app/job/JobParameters;

    .line 38
    .line 39
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p2, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 54
    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    iget-object v2, p0, Lnet/blip/android/transferworker/TransferService;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 58
    .line 59
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lnet/blip/libblip/frontend/State;

    .line 64
    .line 65
    invoke-static {v2}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, p3}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    move-object v8, p3

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v8, v4

    .line 76
    :goto_1
    iget-object p3, p2, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    if-eq p3, v2, :cond_9

    .line 85
    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    if-eq p3, v0, :cond_4

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_4
    iget-object p3, p2, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 93
    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    iget-object p3, p3, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-object p3, v4

    .line 100
    :goto_2
    iget-object v0, p2, Lnet/blip/libblip/frontend/Transfer;->u:Lnet/blip/libblip/frontend/TransferErr;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget-object v4, v0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 105
    .line 106
    :cond_6
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->A:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 107
    .line 108
    if-ne v4, v0, :cond_7

    .line 109
    .line 110
    new-instance v5, Lnet/blip/android/notifications/NotificationFactory;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-direct {v5, p3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    sget-object v7, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 123
    .line 124
    new-instance v9, Lnet/blip/android/notifications/e;

    .line 125
    .line 126
    const/4 p3, 0x0

    .line 127
    invoke-direct {v9, p2, v8, p3}, Lnet/blip/android/notifications/e;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;I)V

    .line 128
    .line 129
    .line 130
    const/4 v10, 0x1

    .line 131
    const/4 v6, 0x0

    .line 132
    invoke-static/range {v5 .. v10}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    iget-object p3, p2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p3, Ljava/lang/Number;

    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    iget-object p2, p2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, Landroid/app/Notification;

    .line 147
    .line 148
    invoke-static {p0, p1, p3, p2}, Lac;->n(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->B:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 153
    .line 154
    if-eq p3, v0, :cond_b

    .line 155
    .line 156
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->z:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 157
    .line 158
    if-ne p3, v0, :cond_8

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    new-instance v5, Lnet/blip/android/notifications/NotificationFactory;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-direct {v5, p3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    sget-object v7, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 174
    .line 175
    new-instance v9, Lnet/blip/android/notifications/e;

    .line 176
    .line 177
    invoke-direct {v9, p2, v8, v3}, Lnet/blip/android/notifications/e;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;I)V

    .line 178
    .line 179
    .line 180
    const/4 v10, 0x1

    .line 181
    const/4 v6, 0x0

    .line 182
    invoke-static/range {v5 .. v10}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget-object p3, p2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p3, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    iget-object p2, p2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p2, Landroid/app/Notification;

    .line 197
    .line 198
    invoke-static {p0, p1, p3, p2}, Lac;->n(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_9
    new-instance p3, Lnet/blip/android/notifications/NotificationFactory;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-direct {p3, v2}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    iput-object p1, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->m:Landroid/app/job/JobParameters;

    .line 215
    .line 216
    iput v3, v0, Lnet/blip/android/transferworker/TransferService$handleFinalTransfer$1;->p:I

    .line 217
    .line 218
    invoke-virtual {p3, v8, p2, v0}, Lnet/blip/android/notifications/NotificationFactory;->e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    if-ne p3, v1, :cond_a

    .line 223
    .line 224
    return-object v1

    .line 225
    :cond_a
    :goto_3
    check-cast p3, Lkotlin/Pair;

    .line 226
    .line 227
    iget-object p2, p3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p2, Ljava/lang/Number;

    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    iget-object p3, p3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p3, Landroid/app/Notification;

    .line 238
    .line 239
    invoke-static {p0, p1, p2, p3}, Lac;->n(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 243
    .line 244
    return-object p0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "transfer_id"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "params"

    .line 15
    .line 16
    sget-object v2, Lnet/blip/android/transferworker/TransferService;->k:Lnet/blip/libblip/Logger;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance p0, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-direct {p0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    filled-new-array {p0}, [Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string p1, "starting job: transferId is null"

    .line 33
    .line 34
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_0
    new-instance v3, Lkotlin/Pair;

    .line 40
    .line 41
    const-string v4, "transferId"

    .line 42
    .line 43
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-direct {v4, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    filled-new-array {v3, v4}, [Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v2, "started job"

    .line 59
    .line 60
    invoke-static {v2, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 64
    .line 65
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 66
    .line 67
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lnet/blip/android/transferworker/TransferService$onStartJob$1;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v2, p0, v0, p1, v3}, Lnet/blip/android/transferworker/TransferService$onStartJob$1;-><init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x3

    .line 78
    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "transfer_id"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lkotlin/Pair;

    .line 19
    .line 20
    const-string v1, "transferId"

    .line 21
    .line 22
    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Lkotlin/Pair;

    .line 26
    .line 27
    const-string v1, "params"

    .line 28
    .line 29
    invoke-direct {p0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    filled-new-array {v0, p0}, [Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lnet/blip/android/transferworker/TransferService;->k:Lnet/blip/libblip/Logger;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string p1, "stopped job"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return p0
.end method
