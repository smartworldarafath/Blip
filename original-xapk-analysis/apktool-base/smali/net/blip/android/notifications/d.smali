.class public final synthetic Lnet/blip/android/notifications/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic k:Lnet/blip/libblip/Peer;

.field public final synthetic l:Landroid/net/Uri;

.field public final synthetic m:Lnet/blip/android/notifications/NotificationFactory;

.field public final synthetic n:I

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Landroid/net/Uri;Lnet/blip/android/notifications/NotificationFactory;ILjava/util/List;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/notifications/d;->j:Lnet/blip/libblip/frontend/Transfer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/notifications/d;->k:Lnet/blip/libblip/Peer;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/notifications/d;->l:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/notifications/d;->m:Lnet/blip/android/notifications/NotificationFactory;

    .line 11
    .line 12
    iput p5, p0, Lnet/blip/android/notifications/d;->n:I

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/notifications/d;->o:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/notifications/d;->p:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/d;->m:Lnet/blip/android/notifications/NotificationFactory;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 4
    .line 5
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lnet/blip/android/notifications/d;->j:Lnet/blip/libblip/frontend/Transfer;

    .line 11
    .line 12
    invoke-static {v1}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, v1, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v3}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v1, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 35
    .line 36
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 37
    .line 38
    iget-object v3, p0, Lnet/blip/android/notifications/d;->k:Lnet/blip/libblip/Peer;

    .line 39
    .line 40
    const-string v5, "<unknown>"

    .line 41
    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v5, v1

    .line 54
    :cond_1
    :goto_0
    const-string v1, "Received from "

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lnet/blip/android/notifications/d;->l:Landroid/net/Uri;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    new-instance v2, Landroid/content/Intent;

    .line 68
    .line 69
    const-string v3, "android.intent.action.VIEW"

    .line 70
    .line 71
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    sget-object v1, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v2, Landroid/content/Intent;

    .line 84
    .line 85
    const-class v1, Lnet/blip/android/MainActivity;

    .line 86
    .line 87
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    sget-object v1, Lnet/blip/android/MainActivity;->I:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    :goto_1
    const/16 v1, 0x8

    .line 101
    .line 102
    iget v3, p0, Lnet/blip/android/notifications/d;->n:I

    .line 103
    .line 104
    invoke-static {v0, v2, v3, v1}, Lnet/blip/android/notifications/NotificationFactoryKt;->b(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/PendingIntent;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 109
    .line 110
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    .line 111
    .line 112
    const v5, 0x7f08013a

    .line 113
    .line 114
    .line 115
    const-string v6, "Open"

    .line 116
    .line 117
    invoke-direct {v2, v5, v1, v6}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lnet/blip/android/notifications/d;->o:Ljava/util/List;

    .line 124
    .line 125
    invoke-static {v0, v1}, Lnet/blip/android/ui/util/TransferClipboardKt;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    sget-object v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance v1, Landroid/content/Intent;

    .line 137
    .line 138
    const-class v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;

    .line 139
    .line 140
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->e:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1, v4}, Lnet/blip/android/notifications/NotificationFactoryKt;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    .line 167
    .line 168
    const v2, 0x7f080118

    .line 169
    .line 170
    .line 171
    const-string v3, "Copy"

    .line 172
    .line 173
    invoke-direct {v1, v2, v0, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-virtual {v3}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-nez v0, :cond_4

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    move-object v5, v0

    .line 190
    :cond_5
    :goto_2
    const-string v0, "Sent to "

    .line 191
    .line 192
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 201
    .line 202
    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 203
    iget-object p0, p0, Lnet/blip/android/notifications/d;->p:Landroid/graphics/Bitmap;

    .line 204
    .line 205
    if-eqz p0, :cond_7

    .line 206
    .line 207
    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    .line 208
    .line 209
    invoke-direct {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 210
    .line 211
    .line 212
    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 215
    .line 216
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 219
    .line 220
    .line 221
    new-instance v2, Landroidx/core/graphics/drawable/IconCompat;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 224
    .line 225
    .line 226
    iput-object p0, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 234
    .line 235
    .line 236
    sget p0, Lnet/blip/android/notifications/Colors;->d:I

    .line 237
    .line 238
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 239
    .line 240
    const p0, 0x7f080117

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 244
    .line 245
    iput p0, p1, Landroid/app/Notification;->icon:I

    .line 246
    .line 247
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 248
    .line 249
    return-object p0
.end method
