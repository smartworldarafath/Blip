.class public final Lnet/blip/android/notifications/NotificationFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 15
    .line 16
    if-eqz p5, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/blip/android/notifications/NotificationFactory;->c(ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 2

    .line 1
    sget-object v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    sget-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    sget-object p1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, p2}, Lnet/blip/android/notifications/NotificationFactoryKt;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance p1, Landroidx/core/app/NotificationCompat$Action;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    const-string v0, "Cancel"

    .line 45
    .line 46
    invoke-direct {p1, p2, v0, p0}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "transferInvite:"

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    .line 15
    .line 16
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->b:Landroid/app/NotificationManager;

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c(ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2}, Lnet/blip/android/notifications/NotificationChannels$Config;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    new-instance p0, Landroidx/core/app/Person$Builder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, p0, Landroidx/core/app/Person$Builder;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/core/app/Person$Builder;->a()Landroidx/core/app/Person;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object p3, v0, Landroidx/core/app/NotificationCompat$Builder;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-object p3, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    new-instance v0, Lkotlin/Pair;

    .line 54
    .line 55
    const-string v1, "id"

    .line 56
    .line 57
    invoke-direct {v0, v1, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p4, Lkotlin/Pair;

    .line 61
    .line 62
    const-string v1, "channel"

    .line 63
    .line 64
    invoke-direct {p4, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lkotlin/Pair;

    .line 68
    .line 69
    const-string v1, "notif"

    .line 70
    .line 71
    invoke-direct {p2, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    filled-new-array {v0, p4, p2}, [Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-string p3, "built notification"

    .line 82
    .line 83
    invoke-static {p3, p2}, Lnet/blip/libblip/Logger;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lkotlin/Pair;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-object p2
.end method

.method public final e(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

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
    iput v4, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;-><init>(Lnet/blip/android/notifications/NotificationFactory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->r:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x1

    .line 40
    iget-object v9, v1, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-eq v5, v8, :cond_3

    .line 46
    .line 47
    if-eq v5, v7, :cond_2

    .line 48
    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    iget v4, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->q:I

    .line 52
    .line 53
    iget-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->p:Landroid/net/Uri;

    .line 54
    .line 55
    iget-object v6, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->o:Ljava/util/List;

    .line 56
    .line 57
    iget-object v7, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 58
    .line 59
    iget-object v3, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto/16 :goto_c

    .line 68
    .line 69
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v10

    .line 75
    :cond_2
    iget v0, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->q:I

    .line 76
    .line 77
    iget-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->p:Landroid/net/Uri;

    .line 78
    .line 79
    check-cast v5, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->o:Ljava/util/List;

    .line 82
    .line 83
    iget-object v11, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 84
    .line 85
    iget-object v12, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 86
    .line 87
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    iget-object v0, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 93
    .line 94
    iget-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v2, v0, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 104
    .line 105
    sget-object v5, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 106
    .line 107
    if-ne v2, v5, :cond_5

    .line 108
    .line 109
    iget-object v2, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lnet/blip/android/notifications/NotificationFactory;->b(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-object/from16 v5, p1

    .line 126
    .line 127
    iput-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 128
    .line 129
    iput-object v0, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 130
    .line 131
    iput v8, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 132
    .line 133
    invoke-static {v0, v2, v3}, Lnet/blip/libblip/Transfer_DerivedKt;->e(Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-ne v2, v4, :cond_6

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_6
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 142
    .line 143
    new-instance v11, Ljava/util/Random;

    .line 144
    .line 145
    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-ne v12, v8, :cond_7

    .line 160
    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    goto :goto_2

    .line 167
    :cond_7
    move-object v12, v10

    .line 168
    :goto_2
    check-cast v12, Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v12, :cond_9

    .line 171
    .line 172
    invoke-static {v12}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    iput-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 177
    .line 178
    iput-object v0, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 179
    .line 180
    iput-object v2, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->o:Ljava/util/List;

    .line 181
    .line 182
    iput-object v10, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->p:Landroid/net/Uri;

    .line 183
    .line 184
    iput v11, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->q:I

    .line 185
    .line 186
    iput v7, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 187
    .line 188
    invoke-static {v9, v12, v3}, Lnet/blip/android/internetshortcut/InternetShortcutKt;->a(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    if-ne v12, v4, :cond_8

    .line 193
    .line 194
    goto/16 :goto_6

    .line 195
    .line 196
    :cond_8
    move/from16 v16, v11

    .line 197
    .line 198
    move-object v11, v0

    .line 199
    move/from16 v0, v16

    .line 200
    .line 201
    move-object/from16 v16, v5

    .line 202
    .line 203
    move-object v5, v2

    .line 204
    move-object v2, v12

    .line 205
    move-object/from16 v12, v16

    .line 206
    .line 207
    :goto_3
    check-cast v2, Landroid/net/Uri;

    .line 208
    .line 209
    move-object v13, v5

    .line 210
    move-object v5, v2

    .line 211
    move-object v2, v13

    .line 212
    move-object v13, v11

    .line 213
    move v11, v0

    .line 214
    goto :goto_4

    .line 215
    :cond_9
    move-object v13, v0

    .line 216
    move-object v12, v5

    .line 217
    move-object v5, v10

    .line 218
    :goto_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    if-eqz v14, :cond_a

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    move-object v15, v14

    .line 233
    check-cast v15, Ljava/lang/String;

    .line 234
    .line 235
    sget-object v10, Lnet/blip/libblip/FileType;->j:Lnet/blip/libblip/FileType$Companion;

    .line 236
    .line 237
    invoke-static {v15}, Lnet/blip/android/UriUtilKt;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-static {v10, v9, v15}, Lnet/blip/android/filetypes/FileType_UriKt;->a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-eq v10, v8, :cond_b

    .line 250
    .line 251
    if-eq v10, v7, :cond_b

    .line 252
    .line 253
    const/4 v15, 0x4

    .line 254
    if-eq v10, v15, :cond_b

    .line 255
    .line 256
    const/4 v10, 0x0

    .line 257
    goto :goto_5

    .line 258
    :cond_a
    const/4 v14, 0x0

    .line 259
    :cond_b
    check-cast v14, Ljava/lang/String;

    .line 260
    .line 261
    if-eqz v14, :cond_10

    .line 262
    .line 263
    :try_start_1
    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    .line 264
    .line 265
    invoke-direct {v0, v9}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    iput-object v14, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 269
    .line 270
    const/16 v7, 0x400

    .line 271
    .line 272
    invoke-static {v7, v7}, Lcoil3/size/SizeKt;->a(II)Lcoil3/size/Size;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    new-instance v8, Lcoil3/size/RealSizeResolver;

    .line 277
    .line 278
    invoke-direct {v8, v7}, Lcoil3/size/RealSizeResolver;-><init>(Lcoil3/size/Size;)V

    .line 279
    .line 280
    .line 281
    iput-object v8, v0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v9}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    iput-object v12, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->m:Lnet/blip/libblip/Peer;

    .line 292
    .line 293
    iput-object v13, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 294
    .line 295
    iput-object v2, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->o:Ljava/util/List;

    .line 296
    .line 297
    iput-object v5, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->p:Landroid/net/Uri;

    .line 298
    .line 299
    iput v11, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->q:I

    .line 300
    .line 301
    iput v6, v3, Lnet/blip/android/notifications/NotificationFactory$transferComplete$1;->t:I

    .line 302
    .line 303
    check-cast v7, Lcoil3/RealImageLoader;

    .line 304
    .line 305
    invoke-virtual {v7, v0, v3}, Lcoil3/RealImageLoader;->c(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    if-ne v0, v4, :cond_c

    .line 310
    .line 311
    :goto_6
    return-object v4

    .line 312
    :cond_c
    move-object v6, v2

    .line 313
    move v4, v11

    .line 314
    move-object v3, v12

    .line 315
    move-object v7, v13

    .line 316
    move-object v2, v0

    .line 317
    :goto_7
    :try_start_2
    check-cast v2, Lcoil3/request/ImageResult;

    .line 318
    .line 319
    invoke-interface {v2}, Lcoil3/request/ImageResult;->e()Lcoil3/Image;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-static {v0, v2}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    goto :goto_8

    .line 337
    :cond_d
    const/4 v0, 0x0

    .line 338
    :goto_8
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 339
    .line 340
    if-eqz v2, :cond_e

    .line 341
    .line 342
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_e
    const/4 v0, 0x0

    .line 346
    :goto_9
    if-eqz v0, :cond_f

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 349
    .line 350
    .line 351
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 352
    :goto_a
    move-object v12, v3

    .line 353
    move v11, v4

    .line 354
    move-object v2, v6

    .line 355
    move-object v13, v7

    .line 356
    goto :goto_d

    .line 357
    :goto_b
    move-object v6, v2

    .line 358
    move v4, v11

    .line 359
    move-object v3, v12

    .line 360
    move-object v7, v13

    .line 361
    goto :goto_c

    .line 362
    :catch_1
    move-exception v0

    .line 363
    goto :goto_b

    .line 364
    :goto_c
    sget-object v2, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 365
    .line 366
    new-instance v8, Lkotlin/Pair;

    .line 367
    .line 368
    const-string v9, "exception"

    .line 369
    .line 370
    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    filled-new-array {v8}, [Lkotlin/Pair;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    const-string v2, "loading bitmap with coil"

    .line 381
    .line 382
    invoke-static {v2, v0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 383
    .line 384
    .line 385
    :cond_f
    const/4 v10, 0x0

    .line 386
    goto :goto_a

    .line 387
    :goto_d
    move-object v7, v10

    .line 388
    :goto_e
    move-object v6, v2

    .line 389
    move-object v3, v5

    .line 390
    move v2, v11

    .line 391
    goto :goto_f

    .line 392
    :cond_10
    const/4 v7, 0x0

    .line 393
    goto :goto_e

    .line 394
    :goto_f
    iget-object v0, v13, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 395
    .line 396
    sget-object v4, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 397
    .line 398
    if-ne v0, v4, :cond_11

    .line 399
    .line 400
    sget-object v0, Lnet/blip/android/notifications/NotificationChannels;->c:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 401
    .line 402
    :goto_10
    move-object v8, v0

    .line 403
    goto :goto_11

    .line 404
    :cond_11
    sget-object v0, Lnet/blip/android/notifications/NotificationChannels;->d:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 405
    .line 406
    goto :goto_10

    .line 407
    :goto_11
    new-instance v0, Lnet/blip/android/notifications/d;

    .line 408
    .line 409
    move-object v4, v1

    .line 410
    move v5, v2

    .line 411
    move-object v2, v12

    .line 412
    move-object v1, v13

    .line 413
    invoke-direct/range {v0 .. v7}, Lnet/blip/android/notifications/d;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Landroid/net/Uri;Lnet/blip/android/notifications/NotificationFactory;ILjava/util/List;Landroid/graphics/Bitmap;)V

    .line 414
    .line 415
    .line 416
    move v2, v5

    .line 417
    const/4 v6, 0x4

    .line 418
    const/4 v4, 0x0

    .line 419
    move-object/from16 v1, p0

    .line 420
    .line 421
    move-object v5, v0

    .line 422
    move-object v3, v8

    .line 423
    invoke-static/range {v1 .. v6}, Lnet/blip/android/notifications/NotificationFactory;->d(Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;I)Lkotlin/Pair;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    return-object v0
.end method

.method public final f(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, p2, p0, v1}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
