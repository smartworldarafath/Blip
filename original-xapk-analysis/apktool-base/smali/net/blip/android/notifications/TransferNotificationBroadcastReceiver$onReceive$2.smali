.class final Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;
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
    c = "net.blip.android.notifications.TransferNotificationBroadcastReceiver$onReceive$2"
    f = "TransferNotificationBroadcastReceiver.kt"
    l = {
        0x51
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Landroid/content/BroadcastReceiver$PendingResult;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Lnet/blip/libblip/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Lnet/blip/libblip/Logger;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->p:Landroid/content/BroadcastReceiver$PendingResult;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->q:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->r:Lnet/blip/libblip/Logger;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;

    .line 2
    .line 3
    iget-object v3, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->q:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v4, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->r:Lnet/blip/libblip/Logger;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->p:Landroid/content/BroadcastReceiver$PendingResult;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Lnet/blip/libblip/Logger;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "Copied "

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->n:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->p:Landroid/content/BroadcastReceiver$PendingResult;

    .line 9
    .line 10
    iget-object v5, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->q:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v6, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lkotlin/Result;

    .line 21
    .line 22
    iget-object p0, p1, Lkotlin/Result;->j:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    sget-object p1, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 44
    .line 45
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 50
    .line 51
    iget-object p1, p1, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 52
    .line 53
    iget-object v2, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->o:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    sget-object v2, Lnet/blip/android/App;->o:Lnet/blip/android/App;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lnet/blip/android/FlavorAndroid;

    .line 72
    .line 73
    iget-object v2, v2, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 74
    .line 75
    iput v6, p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;->n:I

    .line 76
    .line 77
    invoke-static {v5, p1, v2, p0}, Lnet/blip/android/ui/util/TransferClipboardKt;->b(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-ne p0, v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_2
    const-string p0, "shared"

    .line 85
    .line 86
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v3

    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p1, "Transfer not found"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lkotlin/Result$Failure;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    move-object p0, p1

    .line 103
    :cond_4
    :goto_0
    nop

    .line 104
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 105
    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v1, 0x20

    .line 111
    .line 112
    if-gt p1, v1, :cond_8

    .line 113
    .line 114
    :cond_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    move-object p1, p0

    .line 121
    check-cast p1, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-ne p1, v6, :cond_6

    .line 128
    .line 129
    const-string v1, "item"

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const-string v1, "items"

    .line 133
    .line 134
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, " "

    .line 143
    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    const-string p1, "Couldn\'t copy transfer"

    .line 156
    .line 157
    :goto_2
    new-instance v0, Landroid/os/Handler;

    .line 158
    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lf3;

    .line 167
    .line 168
    const/16 v2, 0x16

    .line 169
    .line 170
    invoke-direct {v1, v2, v5, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    if-eqz p0, :cond_9

    .line 181
    .line 182
    new-instance p1, Ljava/lang/Exception;

    .line 183
    .line 184
    const-string v0, "Copy transfer failed"

    .line 185
    .line 186
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    const/4 p0, 0x0

    .line 190
    new-array p0, p0, [Lkotlin/Pair;

    .line 191
    .line 192
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    .line 195
    :cond_9
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 196
    .line 197
    .line 198
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p0

    .line 201
    :goto_3
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 202
    .line 203
    .line 204
    throw p0
.end method
