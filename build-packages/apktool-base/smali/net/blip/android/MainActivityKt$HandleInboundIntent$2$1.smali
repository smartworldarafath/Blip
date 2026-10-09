.class final Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;
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
    c = "net.blip.android.MainActivityKt$HandleInboundIntent$2$1"
    f = "MainActivity.kt"
    l = {
        0xe8,
        0xf7,
        0x10d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Lnet/blip/libblip/PeerId;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroid/content/Intent;

.field public final synthetic r:Landroid/app/Activity;

.field public final synthetic s:Lnet/blip/libblip/frontend/State;

.field public final synthetic t:Landroidx/navigation/NavController;

.field public final synthetic u:Lnet/blip/libblip/Flavor;

.field public final synthetic v:Lkotlin/jvm/functions/Function1;

.field public final synthetic w:Lnet/blip/android/ui/util/SuspendingPermissionState;

.field public final synthetic x:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->q:Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->r:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->s:Lnet/blip/libblip/frontend/State;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->t:Landroidx/navigation/NavController;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->u:Lnet/blip/libblip/Flavor;

    .line 10
    .line 11
    iput-object p6, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->v:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p7, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->w:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 14
    .line 15
    iput-object p8, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->x:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    new-instance v0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;

    .line 2
    .line 3
    iget-object v7, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->w:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 4
    .line 5
    iget-object v8, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->x:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->q:Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->r:Landroid/app/Activity;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->s:Lnet/blip/libblip/frontend/State;

    .line 12
    .line 13
    iget-object v4, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->t:Landroidx/navigation/NavController;

    .line 14
    .line 15
    iget-object v5, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->u:Lnet/blip/libblip/Flavor;

    .line 16
    .line 17
    iget-object v6, p0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->v:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    move-object v9, p2

    .line 20
    invoke-direct/range {v0 .. v9}, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;-><init>(Landroid/content/Intent;Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->p:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const-string v0, "inbound open gallery transfer not found: "

    .line 4
    .line 5
    const-string v1, "Selected "

    .line 6
    .line 7
    iget-object v2, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->p:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 10
    .line 11
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget v3, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->o:I

    .line 14
    .line 15
    const-string v11, "intent_action"

    .line 16
    .line 17
    sget-object v12, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    iget-object v7, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->r:Landroid/app/Activity;

    .line 24
    .line 25
    iget-object v14, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->q:Landroid/content/Intent;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    if-eq v3, v6, :cond_3

    .line 31
    .line 32
    if-eq v3, v5, :cond_1

    .line 33
    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_b

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    move-object v1, v7

    .line 43
    goto/16 :goto_a

    .line 44
    .line 45
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v8

    .line 51
    :cond_1
    iget-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->n:Lnet/blip/libblip/PeerId;

    .line 52
    .line 53
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    move-object/from16 v1, p1

    .line 57
    .line 58
    :cond_2
    move-object v4, v0

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_3
    iget-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->n:Lnet/blip/libblip/PeerId;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_2
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v15, Lnet/blip/android/MainActivity;->H:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v15
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    iget-object v4, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->t:Landroidx/navigation/NavController;

    .line 80
    .line 81
    iget-object v5, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->s:Lnet/blip/libblip/frontend/State;

    .line 82
    .line 83
    if-eqz v15, :cond_9

    .line 84
    .line 85
    :try_start_3
    sget-object v0, Lnet/blip/android/MainActivity;->J:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->a(Ljava/lang/String;)Lnet/blip/libblip/PeerId;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v7}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    invoke-static {v5}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2, v0}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    move v6, v13

    .line 123
    :goto_1
    if-eqz v6, :cond_6

    .line 124
    .line 125
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "peer/"

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v4, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_b

    .line 139
    .line 140
    :cond_6
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->c(Lnet/blip/libblip/PeerId;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    const-string v0, "person"

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    const-string v0, "device"

    .line 150
    .line 151
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, " not found"

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v7, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_b

    .line 176
    .line 177
    :cond_8
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 178
    .line 179
    const-string v1, "missing KEY_PEER_ID for ACTION_OPEN_PEER"

    .line 180
    .line 181
    new-array v2, v13, [Lkotlin/Pair;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v2}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 187
    .line 188
    .line 189
    throw v8

    .line 190
    :cond_9
    sget-object v1, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    iget-object v15, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->u:Lnet/blip/libblip/Flavor;

    .line 197
    .line 198
    if-eqz v1, :cond_c

    .line 199
    .line 200
    :try_start_4
    sget-object v1, Lnet/blip/android/MainActivity;->I:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-eqz v1, :cond_b

    .line 207
    .line 208
    iget-object v2, v5, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lnet/blip/libblip/frontend/Transfer;

    .line 215
    .line 216
    if-nez v2, :cond_a

    .line 217
    .line 218
    sget-object v2, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-array v1, v13, [Lkotlin/Pair;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_b

    .line 233
    .line 234
    :cond_a
    iput-object v8, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->p:Ljava/lang/Object;

    .line 235
    .line 236
    iput-object v8, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->n:Lnet/blip/libblip/PeerId;

    .line 237
    .line 238
    iput v6, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->o:I

    .line 239
    .line 240
    invoke-static {v7, v4, v2, v15, v9}, Lnet/blip/android/ui/home/TransferGridKt;->b(Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-ne v0, v10, :cond_17

    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_b
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 249
    .line 250
    const-string v1, "missing KEY_TRANSFER_ID for ACTION_OPEN_GALLERY"

    .line 251
    .line 252
    new-array v2, v13, [Lkotlin/Pair;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v2}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 258
    .line 259
    .line 260
    throw v8

    .line 261
    :cond_c
    const-string v0, "android.intent.action.SEND"

    .line 262
    .line 263
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_d

    .line 268
    .line 269
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 270
    .line 271
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_17

    .line 276
    .line 277
    :cond_d
    const-string v0, "android.intent.extra.shortcut.ID"

    .line 278
    .line 279
    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_e

    .line 284
    .line 285
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->a(Ljava/lang/String;)Lnet/blip/libblip/PeerId;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    goto :goto_3

    .line 290
    :cond_e
    move-object v0, v8

    .line 291
    :goto_3
    if-eqz v0, :cond_f

    .line 292
    .line 293
    invoke-static {v7}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v0}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_f

    .line 306
    .line 307
    const-string v0, "This person or device is no longer available"

    .line 308
    .line 309
    invoke-static {v7, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    .line 315
    .line 316
    return-object v12

    .line 317
    :cond_f
    new-instance v1, Lnet/blip/shared/ScratchFileWriter;

    .line 318
    .line 319
    check-cast v15, Lnet/blip/android/FlavorAndroid;

    .line 320
    .line 321
    iget-object v3, v15, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 322
    .line 323
    const-string v4, "scratch"

    .line 324
    .line 325
    filled-new-array {v4}, [Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-direct {v1, v3}, Lnet/blip/shared/ScratchFileWriter;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iput-object v2, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->p:Ljava/lang/Object;

    .line 337
    .line 338
    iput-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->n:Lnet/blip/libblip/PeerId;

    .line 339
    .line 340
    const/4 v2, 0x2

    .line 341
    iput v2, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->o:I

    .line 342
    .line 343
    invoke-static {v14, v1, v9}, Lnet/blip/android/MainActivityKt;->b(Landroid/content/Intent;Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    if-ne v1, v10, :cond_2

    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :goto_4
    check-cast v1, Ljava/util/List;

    .line 352
    .line 353
    invoke-static {v7, v14, v1}, Lnet/blip/android/MainActivityKt;->d(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/List;)Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-instance v5, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_13

    .line 371
    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Landroid/net/Uri;

    .line 377
    .line 378
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    const-string v15, "file"

    .line 383
    .line 384
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-eqz v3, :cond_11

    .line 389
    .line 390
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    if-nez v2, :cond_12

    .line 395
    .line 396
    sget-object v2, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 397
    .line 398
    const-string v3, "inbound shared file missing path"

    .line 399
    .line 400
    new-array v15, v13, [Lkotlin/Pair;

    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-static {v3, v15}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 406
    .line 407
    .line 408
    move-object v2, v8

    .line 409
    goto :goto_6

    .line 410
    :cond_11
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :cond_12
    :goto_6
    if-eqz v2, :cond_10

    .line 415
    .line 416
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_13
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 421
    .line 422
    const-string v2, "received inbound share from intent"

    .line 423
    .line 424
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    new-instance v15, Lkotlin/Pair;

    .line 429
    .line 430
    invoke-direct {v15, v11, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    const-string v3, "intent_type"

    .line 434
    .line 435
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    new-instance v8, Lkotlin/Pair;

    .line 440
    .line 441
    invoke-direct {v8, v3, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    const-string v3, "result_count"

    .line 445
    .line 446
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    new-instance v6, Ljava/lang/Integer;

    .line 451
    .line 452
    invoke-direct {v6, v13}, Ljava/lang/Integer;-><init>(I)V

    .line 453
    .line 454
    .line 455
    new-instance v13, Lkotlin/Pair;

    .line 456
    .line 457
    invoke-direct {v13, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    const-string v3, "location_types"

    .line 461
    .line 462
    new-instance v6, Ljava/util/ArrayList;

    .line 463
    .line 464
    move-object/from16 p1, v0

    .line 465
    .line 466
    const/16 v0, 0xa

    .line 467
    .line 468
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v16

    .line 483
    if-eqz v16, :cond_16

    .line 484
    .line 485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v16

    .line 489
    move-object/from16 v17, v0

    .line 490
    .line 491
    move-object/from16 v0, v16

    .line 492
    .line 493
    check-cast v0, Ljava/lang/String;

    .line 494
    .line 495
    move-object/from16 v16, v1

    .line 496
    .line 497
    const-string v1, "content://"

    .line 498
    .line 499
    move-object/from16 v18, v4

    .line 500
    .line 501
    const/4 v4, 0x1

    .line 502
    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-eqz v1, :cond_14

    .line 507
    .line 508
    const-string v0, "content_uri"

    .line 509
    .line 510
    const/4 v4, 0x1

    .line 511
    goto :goto_8

    .line 512
    :cond_14
    const-string v1, "file://"

    .line 513
    .line 514
    const/4 v4, 0x1

    .line 515
    invoke-static {v0, v1, v4}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-eqz v0, :cond_15

    .line 520
    .line 521
    const-string v0, "file_uri"

    .line 522
    .line 523
    goto :goto_8

    .line 524
    :cond_15
    const-string v0, "path"

    .line 525
    .line 526
    :goto_8
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-object/from16 v1, v16

    .line 530
    .line 531
    move-object/from16 v0, v17

    .line 532
    .line 533
    move-object/from16 v4, v18

    .line 534
    .line 535
    goto :goto_7

    .line 536
    :cond_16
    move-object/from16 v16, v1

    .line 537
    .line 538
    move-object/from16 v18, v4

    .line 539
    .line 540
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Iterable;)Ljava/util/List;

    .line 549
    .line 550
    .line 551
    move-result-object v19

    .line 552
    const-string v20, ","

    .line 553
    .line 554
    const/16 v23, 0x0

    .line 555
    .line 556
    const/16 v24, 0x3e

    .line 557
    .line 558
    const/16 v21, 0x0

    .line 559
    .line 560
    const/16 v22, 0x0

    .line 561
    .line 562
    invoke-static/range {v19 .. v24}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    new-instance v1, Lkotlin/Pair;

    .line 567
    .line 568
    invoke-direct {v1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    filled-new-array {v15, v8, v13, v1}, [Lkotlin/Pair;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 579
    .line 580
    .line 581
    iget-object v2, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->s:Lnet/blip/libblip/frontend/State;

    .line 582
    .line 583
    iget-object v3, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->v:Lkotlin/jvm/functions/Function1;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 584
    .line 585
    move-object v1, v7

    .line 586
    :try_start_5
    iget-object v7, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->w:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 587
    .line 588
    iget-object v8, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->t:Landroidx/navigation/NavController;

    .line 589
    .line 590
    const/4 v0, 0x0

    .line 591
    iput-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->p:Ljava/lang/Object;

    .line 592
    .line 593
    iput-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->n:Lnet/blip/libblip/PeerId;

    .line 594
    .line 595
    const/4 v0, 0x3

    .line 596
    iput v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->o:I

    .line 597
    .line 598
    move-object/from16 v6, p1

    .line 599
    .line 600
    move-object/from16 v4, v18

    .line 601
    .line 602
    invoke-static/range {v1 .. v9}, Lnet/blip/android/MainActivityKt;->c(Landroid/app/Activity;Lnet/blip/libblip/frontend/State;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/blip/android/ui/util/SuspendingPermissionState;Landroidx/navigation/NavController;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 606
    if-ne v0, v10, :cond_17

    .line 607
    .line 608
    :goto_9
    return-object v10

    .line 609
    :catch_1
    move-exception v0

    .line 610
    :goto_a
    sget-object v2, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 611
    .line 612
    new-instance v3, Lkotlin/Pair;

    .line 613
    .line 614
    const-string v4, "origin"

    .line 615
    .line 616
    const-string v5, "inbound_intent"

    .line 617
    .line 618
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    new-instance v5, Lkotlin/Pair;

    .line 626
    .line 627
    invoke-direct {v5, v11, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    filled-new-array {v3, v5}, [Lkotlin/Pair;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    invoke-static {v0, v3}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 638
    .line 639
    .line 640
    const-string v0, "Unable to share this content"

    .line 641
    .line 642
    const/4 v2, 0x0

    .line 643
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 648
    .line 649
    .line 650
    :cond_17
    :goto_b
    iget-object v0, v9, Lnet/blip/android/MainActivityKt$HandleInboundIntent$2$1;->x:Lkotlin/jvm/functions/Function0;

    .line 651
    .line 652
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    return-object v12

    .line 656
    :catch_2
    move-exception v0

    .line 657
    throw v0
.end method
