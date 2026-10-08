.class final Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;
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
    c = "net.blip.android.notifications.FirebaseNotificationService$onMessageReceived$1"
    f = "FirebaseNotificationService.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/android/notifications/FirebaseNotificationService;

.field public final synthetic p:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method public constructor <init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lcom/google/firebase/messaging/RemoteMessage;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->o:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->p:Lcom/google/firebase/messaging/RemoteMessage;

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
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->o:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->p:Lcom/google/firebase/messaging/RemoteMessage;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lcom/google/firebase/messaging/RemoteMessage;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->n:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v4

    .line 19
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->o:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 29
    .line 30
    iget-object v6, v2, Lnet/blip/android/notifications/FirebaseNotificationService;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 31
    .line 32
    iput v5, v0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->n:I

    .line 33
    .line 34
    const-string v7, "exception"

    .line 35
    .line 36
    iget-object v8, v2, Lnet/blip/android/notifications/FirebaseNotificationService;->u:Lnet/blip/libblip/Logger;

    .line 37
    .line 38
    iget-object v9, v0, Lnet/blip/android/notifications/FirebaseNotificationService$onMessageReceived$1;->p:Lcom/google/firebase/messaging/RemoteMessage;

    .line 39
    .line 40
    iget-object v10, v9, Lcom/google/firebase/messaging/RemoteMessage;->k:Landroidx/collection/ArrayMap;

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    if-nez v10, :cond_4

    .line 44
    .line 45
    iget-object v10, v9, Lcom/google/firebase/messaging/RemoteMessage;->j:Landroid/os/Bundle;

    .line 46
    .line 47
    new-instance v12, Landroidx/collection/ArrayMap;

    .line 48
    .line 49
    invoke-direct {v12, v11}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-eqz v14, :cond_3

    .line 65
    .line 66
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    check-cast v14, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v10, v14}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    instance-of v3, v15, Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    check-cast v15, Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "google."

    .line 83
    .line 84
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    const-string v3, "gcm."

    .line 91
    .line 92
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    const-string v3, "from"

    .line 99
    .line 100
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    const-string v3, "message_type"

    .line 107
    .line 108
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_2

    .line 113
    .line 114
    const-string v3, "collapse_key"

    .line 115
    .line 116
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_2

    .line 121
    .line 122
    invoke-virtual {v12, v14, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_2
    const/4 v3, 0x0

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iput-object v12, v9, Lcom/google/firebase/messaging/RemoteMessage;->k:Landroidx/collection/ArrayMap;

    .line 128
    .line 129
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    .line 130
    .line 131
    iget-object v10, v9, Lcom/google/firebase/messaging/RemoteMessage;->k:Landroidx/collection/ArrayMap;

    .line 132
    .line 133
    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    const-string v10, "data"

    .line 137
    .line 138
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .line 144
    if-nez v3, :cond_5

    .line 145
    .line 146
    new-array v0, v11, [Lkotlin/Pair;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string v2, "remote message data is null"

    .line 152
    .line 153
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    move-object v0, v4

    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :cond_5
    :try_start_0
    sget-object v10, Lnet/blip/libblip/messaging/MessageFromServer;->q:Lnet/blip/libblip/messaging/MessageFromServer$Companion$ADAPTER$1;

    .line 160
    .line 161
    invoke-static {v3, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    array-length v12, v3

    .line 172
    new-instance v13, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 173
    .line 174
    invoke-direct {v13, v12, v3}, Lcom/squareup/wire/ByteArrayProtoReader32;-><init>(I[B)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v13}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lnet/blip/libblip/messaging/MessageFromServer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    iget-object v7, v3, Lnet/blip/libblip/messaging/MessageFromServer;->m:Lcom/squareup/wire/AnyMessage;

    .line 184
    .line 185
    iget-object v10, v3, Lnet/blip/libblip/messaging/MessageFromServer;->n:Lnet/blip/libblip/PeerId;

    .line 186
    .line 187
    if-nez v7, :cond_6

    .line 188
    .line 189
    new-array v0, v11, [Lkotlin/Pair;

    .line 190
    .line 191
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    const-string v2, "message missing body"

    .line 195
    .line 196
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_6
    iget-object v12, v7, Lcom/squareup/wire/AnyMessage;->m:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v3, v3, Lnet/blip/libblip/messaging/MessageFromServer;->o:Lnet/blip/libblip/User;

    .line 203
    .line 204
    if-nez v3, :cond_7

    .line 205
    .line 206
    new-array v0, v11, [Lkotlin/Pair;

    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    const-string v2, "message missing sender_user"

    .line 212
    .line 213
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_7
    iget-object v13, v3, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 218
    .line 219
    if-eqz v10, :cond_8

    .line 220
    .line 221
    iget-object v14, v10, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    const/4 v14, 0x0

    .line 225
    :goto_2
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    check-cast v13, Lnet/blip/libblip/Device;

    .line 230
    .line 231
    if-nez v13, :cond_9

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v2, "senderUser missing device. sender_peer_id: "

    .line 236
    .line 237
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    new-array v2, v11, [Lkotlin/Pair;

    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v2}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_9
    iget-boolean v10, v3, Lnet/blip/libblip/User;->s:Z

    .line 257
    .line 258
    if-eqz v10, :cond_a

    .line 259
    .line 260
    new-instance v10, Lnet/blip/libblip/Peer$Device;

    .line 261
    .line 262
    iget-object v3, v3, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 263
    .line 264
    invoke-direct {v10, v13, v3}, Lnet/blip/libblip/Peer$Device;-><init>(Lnet/blip/libblip/Device;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_a
    new-instance v10, Lnet/blip/libblip/Peer$User;

    .line 269
    .line 270
    invoke-direct {v10, v3}, Lnet/blip/libblip/Peer$User;-><init>(Lnet/blip/libblip/User;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    invoke-virtual {v9}, Lcom/google/firebase/messaging/RemoteMessage;->a()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eq v3, v5, :cond_b

    .line 278
    .line 279
    invoke-virtual {v9}, Lcom/google/firebase/messaging/RemoteMessage;->a()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    new-instance v9, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v3, Lkotlin/Pair;

    .line 289
    .line 290
    const-string v13, "priority"

    .line 291
    .line 292
    invoke-direct {v3, v13, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    filled-new-array {v3}, [Lkotlin/Pair;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    const-string v9, "handling notification without high priority"

    .line 303
    .line 304
    invoke-static {v9, v3}, Lnet/blip/libblip/Logger;->l(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 305
    .line 306
    .line 307
    :cond_b
    new-instance v3, Lkotlin/Pair;

    .line 308
    .line 309
    const-string v9, "typeUrl"

    .line 310
    .line 311
    invoke-direct {v3, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    filled-new-array {v3}, [Lkotlin/Pair;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    const-string v8, "handling notification body"

    .line 322
    .line 323
    invoke-static {v8, v3}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 324
    .line 325
    .line 326
    sget-object v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->o:Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite$Companion$ADAPTER$1;

    .line 327
    .line 328
    iget-object v8, v3, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_c

    .line 335
    .line 336
    invoke-virtual {v7, v3}, Lcom/squareup/wire/AnyMessage;->b(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 341
    .line 342
    invoke-virtual {v2, v10, v3, v0}, Lnet/blip/android/notifications/FirebaseNotificationService;->e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    goto/16 :goto_6

    .line 347
    .line 348
    :cond_c
    sget-object v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferAcceptedElsewhere;->n:Lnet/blip/libblip/frontend/PeerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1;

    .line 349
    .line 350
    iget-object v8, v3, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    const-string v13, "transferInvite:"

    .line 357
    .line 358
    if-eqz v8, :cond_d

    .line 359
    .line 360
    invoke-virtual {v7, v3}, Lcom/squareup/wire/AnyMessage;->b(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lnet/blip/libblip/frontend/PeerMessageBody$TransferAcceptedElsewhere;

    .line 365
    .line 366
    iget-object v0, v0, Lnet/blip/libblip/frontend/PeerMessageBody$TransferAcceptedElsewhere;->m:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    .line 383
    .line 384
    invoke-direct {v3, v2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 385
    .line 386
    .line 387
    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 388
    .line 389
    const/4 v5, 0x0

    .line 390
    invoke-virtual {v3, v5, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Landroid/os/Handler;

    .line 394
    .line 395
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    .line 405
    .line 406
    new-instance v3, Ln8;

    .line 407
    .line 408
    invoke-direct {v3, v2, v10, v11}, Ln8;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lnet/blip/libblip/Peer;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    .line 413
    .line 414
    goto/16 :goto_1

    .line 415
    .line 416
    :cond_d
    sget-object v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferDeclinedElsewhere;->n:Lnet/blip/libblip/frontend/PeerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1;

    .line 417
    .line 418
    iget-object v8, v3, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_e

    .line 425
    .line 426
    invoke-virtual {v7, v3}, Lcom/squareup/wire/AnyMessage;->b(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Lnet/blip/libblip/frontend/PeerMessageBody$TransferDeclinedElsewhere;

    .line 431
    .line 432
    iget-object v0, v0, Lnet/blip/libblip/frontend/PeerMessageBody$TransferDeclinedElsewhere;->m:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    .line 449
    .line 450
    invoke-direct {v3, v2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 451
    .line 452
    .line 453
    iget-object v3, v3, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 454
    .line 455
    const/4 v6, 0x0

    .line 456
    invoke-virtual {v3, v6, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    new-instance v0, Landroid/os/Handler;

    .line 460
    .line 461
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    .line 471
    .line 472
    new-instance v3, Ln8;

    .line 473
    .line 474
    invoke-direct {v3, v2, v10, v5}, Ln8;-><init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lnet/blip/libblip/Peer;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    .line 479
    .line 480
    goto/16 :goto_1

    .line 481
    .line 482
    :cond_e
    sget-object v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferRevokeInvite;->n:Lnet/blip/libblip/frontend/PeerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1;

    .line 483
    .line 484
    iget-object v5, v3, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 485
    .line 486
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-eqz v5, :cond_f

    .line 491
    .line 492
    invoke-virtual {v7, v3}, Lcom/squareup/wire/AnyMessage;->b(Lcom/squareup/wire/ProtoAdapter;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    check-cast v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferRevokeInvite;

    .line 497
    .line 498
    iget-object v3, v3, Lnet/blip/libblip/frontend/PeerMessageBody$TransferRevokeInvite;->m:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v2, v10, v3, v0}, Lnet/blip/android/notifications/FirebaseNotificationService;->f(Lnet/blip/libblip/Peer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    goto :goto_6

    .line 505
    :cond_f
    new-instance v0, Lkotlin/Pair;

    .line 506
    .line 507
    invoke-direct {v0, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    filled-new-array {v0}, [Lkotlin/Pair;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string v2, "unsupported notification body"

    .line 515
    .line 516
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :catch_0
    move-exception v0

    .line 522
    goto :goto_4

    .line 523
    :catch_1
    move-exception v0

    .line 524
    goto :goto_5

    .line 525
    :goto_4
    new-instance v2, Lkotlin/Pair;

    .line 526
    .line 527
    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 535
    .line 536
    .line 537
    const-string v2, "parsing protobuf"

    .line 538
    .line 539
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_1

    .line 543
    .line 544
    :goto_5
    new-instance v2, Lkotlin/Pair;

    .line 545
    .line 546
    invoke-direct {v2, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    const-string v2, "decoding base64"

    .line 557
    .line 558
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_1

    .line 562
    .line 563
    :goto_6
    if-ne v0, v1, :cond_10

    .line 564
    .line 565
    return-object v1

    .line 566
    :cond_10
    return-object v4
.end method
