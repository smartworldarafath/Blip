.class public final synthetic Lnet/blip/android/notifications/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/squareup/wire/Message;

.field public final synthetic l:Lnet/blip/libblip/Peer;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Lbsarchive/Metadata;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/blip/android/notifications/e;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/notifications/e;->l:Lnet/blip/libblip/Peer;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/android/notifications/e;->k:Lcom/squareup/wire/Message;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;I)V
    .locals 0

    .line 12
    iput p3, p0, Lnet/blip/android/notifications/e;->j:I

    iput-object p1, p0, Lnet/blip/android/notifications/e;->k:Lcom/squareup/wire/Message;

    iput-object p2, p0, Lnet/blip/android/notifications/e;->l:Lnet/blip/libblip/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lnet/blip/android/notifications/e;->j:I

    .line 2
    .line 3
    const-string v1, "<unknown>"

    .line 4
    .line 5
    const-string v2, "missed_call"

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const v5, 0x7f080139

    .line 11
    .line 12
    .line 13
    iget-object v6, p0, Lnet/blip/android/notifications/e;->k:Lcom/squareup/wire/Message;

    .line 14
    .line 15
    iget-object p0, p0, Lnet/blip/android/notifications/e;->l:Lnet/blip/libblip/Peer;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v6, Lbsarchive/Metadata;

    .line 21
    .line 22
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iput-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->t:Ljava/lang/String;

    .line 28
    .line 29
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move-object v0, p0

    .line 34
    check-cast v0, Lnet/blip/libblip/Peer$User;

    .line 35
    .line 36
    iget-object v0, v0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 37
    .line 38
    iget-object v0, v0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-static {v6}, Lnet/blip/libblip/Metadata_DerivedKt;->d(Lbsarchive/Metadata;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-wide/16 v7, 0x0

    .line 49
    .line 50
    :goto_0
    invoke-static {v7, v8}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v0, v6, Lbsarchive/Metadata;->m:Ljava/util/Map;

    .line 62
    .line 63
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const-string v0, "Transfer"

    .line 69
    .line 70
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-nez p0, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move-object v1, p0

    .line 83
    :cond_4
    :goto_3
    const-string p0, "Cancelled by "

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 93
    .line 94
    iput v5, p0, Landroid/app/Notification;->icon:I

    .line 95
    .line 96
    sget p0, Lnet/blip/android/notifications/Colors;->b:I

    .line 97
    .line 98
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 101
    .line 102
    .line 103
    return-object v3

    .line 104
    :pswitch_0
    check-cast v6, Lnet/blip/libblip/frontend/Transfer;

    .line 105
    .line 106
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-string v0, "err"

    .line 112
    .line 113
    iput-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->t:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v6}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v6}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v6, p0}, Lnet/blip/shared/StringsKt;->b(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 143
    .line 144
    iput v5, p0, Landroid/app/Notification;->icon:I

    .line 145
    .line 146
    sget p0, Lnet/blip/android/notifications/Colors;->b:I

    .line 147
    .line 148
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 149
    .line 150
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 151
    .line 152
    .line 153
    return-object v3

    .line 154
    :pswitch_1
    check-cast v6, Lnet/blip/libblip/frontend/Transfer;

    .line 155
    .line 156
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iput-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->t:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v6}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    invoke-static {v7, v8}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v6}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    if-eqz p0, :cond_6

    .line 184
    .line 185
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-nez p0, :cond_5

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move-object v1, p0

    .line 193
    :cond_6
    :goto_4
    const-string p0, " declined"

    .line 194
    .line 195
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 203
    .line 204
    iput v5, p0, Landroid/app/Notification;->icon:I

    .line 205
    .line 206
    sget p0, Lnet/blip/android/notifications/Colors;->b:I

    .line 207
    .line 208
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 211
    .line 212
    .line 213
    return-object v3

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
