.class public abstract Lnet/blip/android/notifications/NotificationChannels;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/android/notifications/NotificationChannels$Config;
    }
.end annotation


# static fields
.field public static final a:Lnet/blip/android/notifications/NotificationChannels$Config;

.field public static final b:Lnet/blip/android/notifications/NotificationChannels$Config;

.field public static final c:Lnet/blip/android/notifications/NotificationChannels$Config;

.field public static final d:Lnet/blip/android/notifications/NotificationChannels$Config;

.field public static final e:Lnet/blip/android/notifications/NotificationChannels$Config;

.field public static final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v6, Lkotlin/Pair;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v7, Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 8
    .line 9
    const/16 v0, 0x1d

    .line 10
    .line 11
    new-array v12, v0, [J

    .line 12
    .line 13
    fill-array-data v12, :array_0

    .line 14
    .line 15
    .line 16
    new-instance v13, Lkotlin/Pair;

    .line 17
    .line 18
    sget-object v0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "android.resource://"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "/2131755011"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 52
    .line 53
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v13, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-string v8, "transfer_invites"

    .line 69
    .line 70
    const-string v9, "Incoming files"

    .line 71
    .line 72
    const-string v10, "Notifications to accept or decline when someone wants to send you a file"

    .line 73
    .line 74
    const/4 v11, 0x4

    .line 75
    invoke-direct/range {v7 .. v13}, Lnet/blip/android/notifications/NotificationChannels$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[JLkotlin/Pair;)V

    .line 76
    .line 77
    .line 78
    sput-object v7, Lnet/blip/android/notifications/NotificationChannels;->a:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 79
    .line 80
    new-instance v8, Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 81
    .line 82
    new-instance v14, Lkotlin/Pair;

    .line 83
    .line 84
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, "/2131755009"

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 114
    .line 115
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v14, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    const-string v9, "transfer_cancellation"

    .line 131
    .line 132
    const-string v10, "Cancelled transfers"

    .line 133
    .line 134
    const-string v11, "Notifications that tell you when a transfer has been cancelled"

    .line 135
    .line 136
    const/4 v12, 0x3

    .line 137
    invoke-direct/range {v8 .. v14}, Lnet/blip/android/notifications/NotificationChannels$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[JLkotlin/Pair;)V

    .line 138
    .line 139
    .line 140
    sput-object v8, Lnet/blip/android/notifications/NotificationChannels;->b:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 141
    .line 142
    new-instance v9, Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 143
    .line 144
    new-instance v15, Lkotlin/Pair;

    .line 145
    .line 146
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, "/2131755008"

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 176
    .line 177
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-direct {v15, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    const/4 v14, 0x0

    .line 192
    const-string v10, "transfer_completion_incoming"

    .line 193
    .line 194
    const-string v11, "Completed transfers (incoming)"

    .line 195
    .line 196
    const-string v12, "Notifications that tell you when an incoming transfer has completed"

    .line 197
    .line 198
    const/4 v13, 0x4

    .line 199
    invoke-direct/range {v9 .. v15}, Lnet/blip/android/notifications/NotificationChannels$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[JLkotlin/Pair;)V

    .line 200
    .line 201
    .line 202
    sput-object v9, Lnet/blip/android/notifications/NotificationChannels;->c:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 203
    .line 204
    new-instance v10, Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 205
    .line 206
    new-instance v1, Lkotlin/Pair;

    .line 207
    .line 208
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 236
    .line 237
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    const/4 v15, 0x0

    .line 252
    const-string v11, "transfer_completion_outgoing"

    .line 253
    .line 254
    const-string v12, "Completed transfers (outgoing)"

    .line 255
    .line 256
    const-string v13, "Notifications that tell you when an outgoing transfer has completed"

    .line 257
    .line 258
    const/4 v14, 0x3

    .line 259
    move-object/from16 v16, v1

    .line 260
    .line 261
    invoke-direct/range {v10 .. v16}, Lnet/blip/android/notifications/NotificationChannels$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[JLkotlin/Pair;)V

    .line 262
    .line 263
    .line 264
    sput-object v10, Lnet/blip/android/notifications/NotificationChannels;->d:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 265
    .line 266
    new-instance v0, Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 267
    .line 268
    const/4 v4, 0x4

    .line 269
    const/4 v5, 0x0

    .line 270
    const-string v1, "transfer_worker"

    .line 271
    .line 272
    const-string v2, "In-progress file transfers"

    .line 273
    .line 274
    const-string v3, "Notifications that display transfer progress and allow transfers to work in the background"

    .line 275
    .line 276
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/notifications/NotificationChannels$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[JLkotlin/Pair;)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Lnet/blip/android/notifications/NotificationChannels;->e:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 280
    .line 281
    filled-new-array {v7, v8, v9, v10, v0}, [Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/util/Set;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    sput-object v0, Lnet/blip/android/notifications/NotificationChannels;->f:Ljava/util/Set;

    .line 290
    .line 291
    return-void

    .line 292
    nop

    .line 293
    :array_0
    .array-data 8
        0x0
        0x12c
        0xaf
        0x4b
        0x4b
        0x4b
        0x12c
        0x12c
        0xaf
        0x4b
        0x4b
        0x4b
        0x12c
        0xaf
        0x7d0
        0x12c
        0xaf
        0x4b
        0x4b
        0x4b
        0x12c
        0x12c
        0xaf
        0x4b
        0x4b
        0x4b
        0x12c
        0xaf
        0x7d0
    .end array-data
.end method
