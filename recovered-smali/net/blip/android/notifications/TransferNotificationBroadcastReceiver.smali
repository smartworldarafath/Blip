.class public final Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$Companion;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".ACTION_ACCEPT_TRANSFER"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, ".ACTION_DECLINE_TRANSFER"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, ".ACTION_CANCEL_TRANSFER"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->c:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, ".ACTION_RESUME_TRANSFER"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->d:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, ".ACTION_COPY_TRANSFER"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->e:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, ".KEY_FROM_NOTIFICATION_ID"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, ".KEY_SENDER_ID"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->g:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, ".KEY_TRANSFER_ID"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sput-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, ".KEY_EXPECTED_STUB"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->i:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 2
    .line 3
    new-instance v1, Lkotlin/Pair;

    .line 4
    .line 5
    const-string v2, "intent"

    .line 6
    .line 7
    invoke-direct {v1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v6, Lnet/blip/libblip/Logger;

    .line 18
    .line 19
    iget-object v0, v0, Lnet/blip/libblip/Logger;->a:Ljava/util/List;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-static {v8, v1}, Lnet/blip/libblip/Logger;->a(Ljava/lang/String;[Lkotlin/Pair;)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v6, v0}, Lnet/blip/libblip/Logger;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v0, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    const-string v2, "onReceive"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    sget-object v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    sget-object v2, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v2, v3, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 73
    .line 74
    invoke-virtual {v2, v8, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    const/4 p0, 0x1

    .line 90
    :try_start_0
    invoke-static {p0, p2}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiverKt;->a(ZLandroid/content/Intent;)Lnet/blip/libblip/event/TransferRespondFromNotification;

    .line 91
    .line 92
    .line 93
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    sget-object p2, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p2, p2, Lnet/blip/libblip/Core;->b:Lc;

    .line 101
    .line 102
    invoke-virtual {p2, p0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string p0, "Transfer Accepted"

    .line 106
    .line 107
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    new-array p1, v1, [Lkotlin/Pair;

    .line 118
    .line 119
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    :try_start_1
    invoke-static {v1, p2}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiverKt;->a(ZLandroid/content/Intent;)Lnet/blip/libblip/event/TransferRespondFromNotification;

    .line 132
    .line 133
    .line 134
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    sget-object p2, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object p2, p2, Lnet/blip/libblip/Core;->b:Lc;

    .line 142
    .line 143
    invoke-virtual {p2, p0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string p0, "Transfer Declined"

    .line 147
    .line 148
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catch_1
    move-exception v0

    .line 157
    move-object p0, v0

    .line 158
    new-array p1, v1, [Lkotlin/Pair;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->f(Ljava/lang/Exception;[Lkotlin/Pair;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->c:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    sget-object v3, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-nez p0, :cond_5

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    sget-object p2, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iget-object p2, p2, Lnet/blip/libblip/Core;->b:Lc;

    .line 188
    .line 189
    new-instance v0, Lnet/blip/libblip/event/TransferCancellationRequested;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lnet/blip/libblip/event/TransferCancellationRequested;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string p0, "Transfer Cancelled"

    .line 198
    .line 199
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_6
    sget-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->d:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_8

    .line 214
    .line 215
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-nez p0, :cond_7

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_7
    sget-object p1, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 223
    .line 224
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Lnet/blip/libblip/Core;->b:Lc;

    .line 229
    .line 230
    new-instance p2, Lnet/blip/libblip/event/TransferResume;

    .line 231
    .line 232
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 233
    .line 234
    invoke-direct {p2, p0, v0}, Lnet/blip/libblip/event/TransferResume;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_8
    sget-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->e:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v3, :cond_9

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 261
    .line 262
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 263
    .line 264
    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    new-instance v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;

    .line 269
    .line 270
    const/4 v7, 0x0

    .line 271
    move-object v5, p1

    .line 272
    invoke-direct/range {v2 .. v7}, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$onReceive$2;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Lnet/blip/libblip/Logger;Lkotlin/coroutines/Continuation;)V

    .line 273
    .line 274
    .line 275
    const/4 p1, 0x3

    .line 276
    invoke-static {p0, v8, v8, v2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 277
    .line 278
    .line 279
    :cond_a
    :goto_0
    return-void
.end method
