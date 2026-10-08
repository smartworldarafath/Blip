.class public final Lnet/blip/android/notifications/FirebaseNotificationService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic v:I


# instance fields
.field public final r:Lnet/blip/android/notifications/NotificationFactory;

.field public final s:Lkotlin/Lazy;

.field public final t:Lkotlin/Lazy;

.field public final u:Lnet/blip/libblip/Logger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 10
    .line 11
    new-instance v0, Lnet/blip/android/notifications/a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lnet/blip/android/notifications/a;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->s:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance v0, Lr1;

    .line 23
    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->t:Lkotlin/Lazy;

    .line 34
    .line 35
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Lkotlin/Pair;

    .line 39
    .line 40
    const-string v2, "FirebaseNotificationService"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lnet/blip/libblip/Logger;->m(Ljava/lang/String;[Lkotlin/Pair;)Lnet/blip/libblip/Logger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->u:Lnet/blip/libblip/Logger;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    iget-object v1, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->u:Lnet/blip/libblip/Logger;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string v1, "onMessageReceived"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, p0, p1, v2}, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lcom/google/firebase/messaging/RemoteMessage;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "new token: "

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [Lkotlin/Pair;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->u:Lnet/blip/libblip/Logger;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 28
    .line 29
    invoke-static {p1, p0}, Lnet/blip/libblip/Dispatcher_androidKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->r:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->r:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->p:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->r:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x1

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-ne v5, v8, :cond_1

    .line 43
    .line 44
    iget v1, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->o:I

    .line 45
    .line 46
    iget-object v4, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->n:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 47
    .line 48
    iget-object v3, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move v2, v1

    .line 54
    move-object v10, v3

    .line 55
    move-object v1, v4

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v6

    .line 63
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lnet/blip/android/notifications/FirebaseNotificationService;->t:Lkotlin/Lazy;

    .line 67
    .line 68
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lnet/blip/libblip/frontend/State;

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    iget-object v5, v2, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    iget-object v5, v5, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v5, v6

    .line 84
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    iget-object v9, v9, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    invoke-static {v2}, Lnet/blip/libblip/State_DerivedKt;->a(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Config;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-boolean v2, v2, Lnet/blip/libblip/frontend/Config;->m:Z

    .line 101
    .line 102
    if-nez v2, :cond_4

    .line 103
    .line 104
    move v2, v8

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move v2, v7

    .line 107
    :goto_2
    iget-object v5, v0, Lnet/blip/android/notifications/FirebaseNotificationService;->s:Lkotlin/Lazy;

    .line 108
    .line 109
    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 114
    .line 115
    iget-object v9, v1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->m:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v10, p1

    .line 118
    .line 119
    iput-object v10, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 120
    .line 121
    iput-object v1, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->n:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 122
    .line 123
    iput v2, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->o:I

    .line 124
    .line 125
    iput v8, v3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferInvite$1;->r:I

    .line 126
    .line 127
    invoke-virtual {v5, v9, v1, v3}, Lnet/blip/android/notifications/ShortTermDiskCache;->b(Ljava/lang/String;Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    if-ne v3, v4, :cond_5

    .line 132
    .line 133
    return-object v4

    .line 134
    :cond_5
    :goto_3
    iget-object v14, v1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->m:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v1, v1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->n:Lbsarchive/Metadata;

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    new-instance v1, Lbsarchive/Metadata;

    .line 141
    .line 142
    invoke-direct {v1}, Lbsarchive/Metadata;-><init>()V

    .line 143
    .line 144
    .line 145
    :cond_6
    move-object v15, v1

    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_7
    move v8, v7

    .line 150
    :goto_4
    iget-object v1, v0, Lnet/blip/android/notifications/FirebaseNotificationService;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v11, v1, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const-string v2, "transferInvite:"

    .line 164
    .line 165
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    new-instance v2, Landroid/content/Intent;

    .line 174
    .line 175
    const-class v3, Lnet/blip/android/MainActivity;

    .line 176
    .line 177
    invoke-direct {v2, v11, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .line 179
    .line 180
    const/high16 v3, 0x24000000

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    const/4 v3, 0x4

    .line 186
    invoke-static {v11, v2, v7, v3}, Lnet/blip/android/notifications/NotificationFactoryKt;->b(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/PendingIntent;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    sget-object v3, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v10}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 193
    .line 194
    .line 195
    move-result-object v16

    .line 196
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v12, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static/range {v11 .. v16}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$Companion;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lbsarchive/Metadata;Lnet/blip/libblip/PeerId;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v11, v3, v14}, Lnet/blip/android/notifications/NotificationFactoryKt;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    new-instance v4, Landroidx/core/app/NotificationCompat$Action;

    .line 210
    .line 211
    sget v5, Lnet/blip/android/notifications/Colors;->a:I

    .line 212
    .line 213
    new-instance v9, Landroid/text/SpannableString;

    .line 214
    .line 215
    const-string v12, "Accept"

    .line 216
    .line 217
    invoke-direct {v9, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    .line 221
    .line 222
    invoke-direct {v12, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-virtual {v9, v12, v7, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v4, v6, v9, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 236
    .line 237
    .line 238
    move-result-object v16

    .line 239
    sget-object v12, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->b:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static/range {v11 .. v16}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$Companion;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lbsarchive/Metadata;Lnet/blip/libblip/PeerId;)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    move v5, v13

    .line 246
    invoke-static {v11, v3, v14}, Lnet/blip/android/notifications/NotificationFactoryKt;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    new-instance v14, Landroidx/core/app/NotificationCompat$Action;

    .line 251
    .line 252
    sget v9, Lnet/blip/android/notifications/Colors;->b:I

    .line 253
    .line 254
    new-instance v11, Landroid/text/SpannableString;

    .line 255
    .line 256
    const-string v12, "Decline"

    .line 257
    .line 258
    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    .line 262
    .line 263
    invoke-direct {v12, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    invoke-virtual {v11, v12, v7, v9, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v14, v6, v11, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 274
    .line 275
    .line 276
    sget-object v6, Lnet/blip/android/notifications/NotificationChannels;->a:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 277
    .line 278
    new-instance v9, Lnet/blip/android/notifications/f;

    .line 279
    .line 280
    move-object/from16 v16, v2

    .line 281
    .line 282
    move-object v13, v4

    .line 283
    move v12, v8

    .line 284
    move-object v11, v15

    .line 285
    move-object v15, v3

    .line 286
    invoke-direct/range {v9 .. v16}, Lnet/blip/android/notifications/f;-><init>(Lnet/blip/libblip/Peer;Lbsarchive/Metadata;ZLandroidx/core/app/NotificationCompat$Action;Landroidx/core/app/NotificationCompat$Action;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v5, v6, v10, v9}, Lnet/blip/android/notifications/NotificationFactory;->c(ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iget-object v2, v1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v2, Ljava/lang/Number;

    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    iget-object v1, v1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v1, Landroid/app/Notification;

    .line 304
    .line 305
    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    .line 306
    .line 307
    invoke-direct {v3, v0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v3, v2, v1}, Lnet/blip/android/notifications/NotificationFactoryKt;->c(Landroidx/core/app/NotificationManagerCompat;ILandroid/app/Notification;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    return-object v0
.end method

.method public final f(Lnet/blip/libblip/Peer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

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
    iput v1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 30
    .line 31
    iget-object v3, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->s:Lkotlin/Lazy;

    .line 32
    .line 33
    iget-object v4, p0, Lnet/blip/android/notifications/FirebaseNotificationService;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v6, :cond_2

    .line 41
    .line 42
    if-ne v2, v5, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->o:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 45
    .line 46
    iget-object p2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 47
    .line 48
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v7

    .line 58
    :cond_2
    iget-object p2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->n:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 61
    .line 62
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string p3, "transferInvite:"

    .line 76
    .line 77
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    new-instance v2, Landroidx/core/app/NotificationManagerCompat;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v2, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 91
    .line 92
    invoke-virtual {v2, v7, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 100
    .line 101
    iput-object p1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 102
    .line 103
    iput-object p2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->n:Ljava/lang/String;

    .line 104
    .line 105
    iput v6, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 111
    .line 112
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 113
    .line 114
    new-instance v6, Lnet/blip/android/notifications/ShortTermDiskCache$load$2;

    .line 115
    .line 116
    invoke-direct {v6, p3, p2, v7}, Lnet/blip/android/notifications/ShortTermDiskCache$load$2;-><init>(Lnet/blip/android/notifications/ShortTermDiskCache;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v6, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    if-ne p3, v1, :cond_4

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    :goto_1
    check-cast p3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 127
    .line 128
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lnet/blip/android/notifications/ShortTermDiskCache;

    .line 133
    .line 134
    iput-object p1, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->m:Lnet/blip/libblip/Peer;

    .line 135
    .line 136
    iput-object v7, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->n:Ljava/lang/String;

    .line 137
    .line 138
    iput-object p3, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->o:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 139
    .line 140
    iput v5, v0, Lnet/blip/android/notifications/FirebaseNotificationService$handleTransferRevokeInvite$1;->r:I

    .line 141
    .line 142
    invoke-virtual {v2, p2, v7, v0}, Lnet/blip/android/notifications/ShortTermDiskCache;->b(Ljava/lang/String;Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-ne p2, v1, :cond_5

    .line 147
    .line 148
    :goto_2
    return-object v1

    .line 149
    :cond_5
    move-object p2, p1

    .line 150
    move-object p1, p3

    .line 151
    :goto_3
    if-eqz p1, :cond_6

    .line 152
    .line 153
    iget-object v7, p1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->n:Lbsarchive/Metadata;

    .line 154
    .line 155
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v6, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 159
    .line 160
    new-instance v8, Lnet/blip/android/notifications/e;

    .line 161
    .line 162
    invoke-direct {v8, p2, v7}, Lnet/blip/android/notifications/e;-><init>(Lnet/blip/libblip/Peer;Lbsarchive/Metadata;)V

    .line 163
    .line 164
    .line 165
    const/4 v9, 0x1

    .line 166
    const/4 v5, 0x0

    .line 167
    move-object v7, p2

    .line 168
    invoke-static/range {v4 .. v9}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p2, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p2, Ljava/lang/Number;

    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Landroid/app/Notification;

    .line 183
    .line 184
    new-instance p3, Landroidx/core/app/NotificationManagerCompat;

    .line 185
    .line 186
    invoke-direct {p3, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p3, p2, p1}, Lnet/blip/android/notifications/NotificationFactoryKt;->c(Landroidx/core/app/NotificationManagerCompat;ILandroid/app/Notification;)V

    .line 190
    .line 191
    .line 192
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    return-object p0
.end method
