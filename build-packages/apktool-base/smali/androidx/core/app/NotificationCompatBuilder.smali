.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatBuilder$Api29Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api31Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api36Impl;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Landroidx/core/app/NotificationCompat$Builder;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 14
    .line 15
    iput-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->c:Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    .line 17
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->d:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->x:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Landroid/app/Notification$Builder;

    .line 26
    .line 27
    invoke-direct {v5, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 31
    .line 32
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 33
    .line 34
    iget-wide v6, v4, Landroid/app/Notification;->when:J

    .line 35
    .line 36
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget v7, v4, Landroid/app/Notification;->icon:I

    .line 41
    .line 42
    iget v8, v4, Landroid/app/Notification;->iconLevel:I

    .line 43
    .line 44
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget-object v7, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iget-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, v4, Landroid/app/Notification;->vibrate:[J

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget v7, v4, Landroid/app/Notification;->ledARGB:I

    .line 68
    .line 69
    iget v9, v4, Landroid/app/Notification;->ledOnMS:I

    .line 70
    .line 71
    iget v10, v4, Landroid/app/Notification;->ledOffMS:I

    .line 72
    .line 73
    invoke-virtual {v6, v7, v9, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget v7, v4, Landroid/app/Notification;->flags:I

    .line 78
    .line 79
    and-int/lit8 v7, v7, 0x2

    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    const/4 v10, 0x0

    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    move v7, v9

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move v7, v10

    .line 88
    :goto_0
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget v7, v4, Landroid/app/Notification;->flags:I

    .line 93
    .line 94
    and-int/lit8 v7, v7, 0x8

    .line 95
    .line 96
    if-eqz v7, :cond_1

    .line 97
    .line 98
    move v7, v9

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move v7, v10

    .line 101
    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget v7, v4, Landroid/app/Notification;->flags:I

    .line 106
    .line 107
    and-int/lit8 v7, v7, 0x10

    .line 108
    .line 109
    if-eqz v7, :cond_2

    .line 110
    .line 111
    move v7, v9

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    move v7, v10

    .line 114
    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget v7, v4, Landroid/app/Notification;->defaults:I

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    iget-object v7, v1, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v7, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-object v7, v1, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v7, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iget v7, v4, Landroid/app/Notification;->flags:I

    .line 153
    .line 154
    and-int/lit16 v7, v7, 0x80

    .line 155
    .line 156
    if-eqz v7, :cond_3

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_3
    move v9, v10

    .line 160
    :goto_3
    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget v7, v1, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    iget v7, v1, Landroidx/core/app/NotificationCompat$Builder;->n:I

    .line 171
    .line 172
    iget v9, v1, Landroidx/core/app/NotificationCompat$Builder;->o:I

    .line 173
    .line 174
    iget-boolean v11, v1, Landroidx/core/app/NotificationCompat$Builder;->p:Z

    .line 175
    .line 176
    invoke-virtual {v6, v7, v9, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 177
    .line 178
    .line 179
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 180
    .line 181
    if-nez v6, :cond_4

    .line 182
    .line 183
    move-object v2, v8

    .line 184
    goto :goto_4

    .line 185
    :cond_4
    invoke-virtual {v6, v2}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    :goto_4
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 190
    .line 191
    .line 192
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->m:Ljava/lang/CharSequence;

    .line 193
    .line 194
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->j:I

    .line 203
    .line 204
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 205
    .line 206
    .line 207
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    const/16 v6, 0x1f

    .line 218
    .line 219
    const/16 v7, 0x1d

    .line 220
    .line 221
    const-string v9, "android.support.allowGeneratedReplies"

    .line 222
    .line 223
    const-string v11, ""

    .line 224
    .line 225
    if-eqz v5, :cond_a

    .line 226
    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    .line 232
    .line 233
    iget-object v12, v5, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 234
    .line 235
    if-nez v12, :cond_5

    .line 236
    .line 237
    iget v12, v5, Landroidx/core/app/NotificationCompat$Action;->e:I

    .line 238
    .line 239
    if-eqz v12, :cond_5

    .line 240
    .line 241
    invoke-static {v8, v11, v12}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    iput-object v11, v5, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 246
    .line 247
    :cond_5
    iget-object v11, v5, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 248
    .line 249
    iget-boolean v12, v5, Landroidx/core/app/NotificationCompat$Action;->c:Z

    .line 250
    .line 251
    iget-object v13, v5, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 252
    .line 253
    new-instance v14, Landroid/app/Notification$Action$Builder;

    .line 254
    .line 255
    if-eqz v11, :cond_6

    .line 256
    .line 257
    invoke-virtual {v11, v8}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    goto :goto_6

    .line 262
    :cond_6
    move-object v11, v8

    .line 263
    :goto_6
    iget-object v15, v5, Landroidx/core/app/NotificationCompat$Action;->f:Ljava/lang/CharSequence;

    .line 264
    .line 265
    iget-object v8, v5, Landroidx/core/app/NotificationCompat$Action;->g:Landroid/app/PendingIntent;

    .line 266
    .line 267
    invoke-direct {v14, v11, v15, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 268
    .line 269
    .line 270
    if-eqz v13, :cond_7

    .line 271
    .line 272
    new-instance v8, Landroid/os/Bundle;

    .line 273
    .line 274
    invoke-direct {v8, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_7
    new-instance v8, Landroid/os/Bundle;

    .line 279
    .line 280
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 281
    .line 282
    .line 283
    :goto_7
    invoke-virtual {v8, v9, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v14, v12}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 287
    .line 288
    .line 289
    const-string v9, "android.support.action.semanticAction"

    .line 290
    .line 291
    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14, v10}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 295
    .line 296
    .line 297
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 298
    .line 299
    if-lt v9, v7, :cond_8

    .line 300
    .line 301
    invoke-static {v14}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->c(Landroid/app/Notification$Action$Builder;)V

    .line 302
    .line 303
    .line 304
    :cond_8
    if-lt v9, v6, :cond_9

    .line 305
    .line 306
    invoke-static {v14}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->a(Landroid/app/Notification$Action$Builder;)V

    .line 307
    .line 308
    .line 309
    :cond_9
    const-string v6, "android.support.action.showsUserInterface"

    .line 310
    .line 311
    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 312
    .line 313
    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 317
    .line 318
    .line 319
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 320
    .line 321
    invoke-virtual {v14}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 326
    .line 327
    .line 328
    const/4 v8, 0x0

    .line 329
    goto :goto_5

    .line 330
    :cond_a
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 331
    .line 332
    if-eqz v2, :cond_b

    .line 333
    .line 334
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 335
    .line 336
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    :cond_b
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 340
    .line 341
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->k:Z

    .line 342
    .line 343
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 347
    .line 348
    iget-boolean v5, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Z

    .line 349
    .line 350
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 351
    .line 352
    .line 353
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 354
    .line 355
    const/4 v5, 0x0

    .line 356
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 357
    .line 358
    .line 359
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 360
    .line 361
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 365
    .line 366
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 367
    .line 368
    .line 369
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 370
    .line 371
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->t:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 374
    .line 375
    .line 376
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 377
    .line 378
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 379
    .line 380
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 381
    .line 382
    .line 383
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 384
    .line 385
    iget v5, v1, Landroidx/core/app/NotificationCompat$Builder;->w:I

    .line 386
    .line 387
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 388
    .line 389
    .line 390
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 394
    .line 395
    .line 396
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 397
    .line 398
    iget-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 399
    .line 400
    iget-object v4, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 401
    .line 402
    invoke-virtual {v2, v5, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 403
    .line 404
    .line 405
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/util/ArrayList;

    .line 406
    .line 407
    if-eqz v2, :cond_c

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-nez v4, :cond_c

    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-eqz v4, :cond_c

    .line 424
    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    check-cast v4, Ljava/lang/String;

    .line 430
    .line 431
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 432
    .line 433
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-lez v2, :cond_14

    .line 442
    .line 443
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 444
    .line 445
    if-nez v2, :cond_d

    .line 446
    .line 447
    new-instance v2, Landroid/os/Bundle;

    .line 448
    .line 449
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 450
    .line 451
    .line 452
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 453
    .line 454
    :cond_d
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 455
    .line 456
    const-string v4, "android.car.EXTENSIONS"

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    if-nez v2, :cond_e

    .line 463
    .line 464
    new-instance v2, Landroid/os/Bundle;

    .line 465
    .line 466
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 467
    .line 468
    .line 469
    :cond_e
    new-instance v5, Landroid/os/Bundle;

    .line 470
    .line 471
    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 472
    .line 473
    .line 474
    new-instance v8, Landroid/os/Bundle;

    .line 475
    .line 476
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 477
    .line 478
    .line 479
    move v12, v10

    .line 480
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-ge v12, v13, :cond_12

    .line 485
    .line 486
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v13

    .line 490
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    check-cast v14, Landroidx/core/app/NotificationCompat$Action;

    .line 495
    .line 496
    new-instance v15, Landroid/os/Bundle;

    .line 497
    .line 498
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 499
    .line 500
    .line 501
    iget-object v6, v14, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 502
    .line 503
    if-nez v6, :cond_f

    .line 504
    .line 505
    iget v6, v14, Landroidx/core/app/NotificationCompat$Action;->e:I

    .line 506
    .line 507
    if-eqz v6, :cond_f

    .line 508
    .line 509
    const/4 v7, 0x0

    .line 510
    invoke-static {v7, v11, v6}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    iput-object v6, v14, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 515
    .line 516
    :cond_f
    iget-object v6, v14, Landroidx/core/app/NotificationCompat$Action;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 517
    .line 518
    iget-object v7, v14, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 519
    .line 520
    if-eqz v6, :cond_10

    .line 521
    .line 522
    invoke-virtual {v6}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    goto :goto_a

    .line 527
    :cond_10
    move v6, v10

    .line 528
    :goto_a
    const-string v10, "icon"

    .line 529
    .line 530
    invoke-virtual {v15, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 531
    .line 532
    .line 533
    const-string v6, "title"

    .line 534
    .line 535
    iget-object v10, v14, Landroidx/core/app/NotificationCompat$Action;->f:Ljava/lang/CharSequence;

    .line 536
    .line 537
    invoke-virtual {v15, v6, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 538
    .line 539
    .line 540
    const-string v6, "actionIntent"

    .line 541
    .line 542
    iget-object v10, v14, Landroidx/core/app/NotificationCompat$Action;->g:Landroid/app/PendingIntent;

    .line 543
    .line 544
    invoke-virtual {v15, v6, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    .line 546
    .line 547
    if-eqz v7, :cond_11

    .line 548
    .line 549
    new-instance v6, Landroid/os/Bundle;

    .line 550
    .line 551
    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 552
    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_11
    new-instance v6, Landroid/os/Bundle;

    .line 556
    .line 557
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 558
    .line 559
    .line 560
    :goto_b
    iget-boolean v7, v14, Landroidx/core/app/NotificationCompat$Action;->c:Z

    .line 561
    .line 562
    invoke-virtual {v6, v9, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    .line 564
    .line 565
    const-string v7, "extras"

    .line 566
    .line 567
    invoke-virtual {v15, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 568
    .line 569
    .line 570
    const-string v6, "remoteInputs"

    .line 571
    .line 572
    const/4 v7, 0x0

    .line 573
    invoke-virtual {v15, v6, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 574
    .line 575
    .line 576
    const-string v6, "showsUserInterface"

    .line 577
    .line 578
    iget-boolean v7, v14, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 579
    .line 580
    invoke-virtual {v15, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    .line 582
    .line 583
    const-string v6, "semanticAction"

    .line 584
    .line 585
    const/4 v7, 0x0

    .line 586
    invoke-virtual {v15, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v8, v13, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 590
    .line 591
    .line 592
    add-int/lit8 v12, v12, 0x1

    .line 593
    .line 594
    const/16 v6, 0x1f

    .line 595
    .line 596
    const/16 v7, 0x1d

    .line 597
    .line 598
    const/4 v10, 0x0

    .line 599
    goto :goto_9

    .line 600
    :cond_12
    const-string v3, "invisible_actions"

    .line 601
    .line 602
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v5, v3, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 606
    .line 607
    .line 608
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 609
    .line 610
    if-nez v3, :cond_13

    .line 611
    .line 612
    new-instance v3, Landroid/os/Bundle;

    .line 613
    .line 614
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 615
    .line 616
    .line 617
    iput-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 618
    .line 619
    :cond_13
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 620
    .line 621
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 622
    .line 623
    .line 624
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 625
    .line 626
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 627
    .line 628
    .line 629
    :cond_14
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 630
    .line 631
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/os/Bundle;

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 634
    .line 635
    .line 636
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 637
    .line 638
    const/4 v5, 0x0

    .line 639
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 640
    .line 641
    .line 642
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 643
    .line 644
    const/4 v7, 0x0

    .line 645
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    .line 646
    .line 647
    .line 648
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 649
    .line 650
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 651
    .line 652
    .line 653
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 654
    .line 655
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 656
    .line 657
    .line 658
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 659
    .line 660
    const-wide/16 v3, 0x0

    .line 661
    .line 662
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 663
    .line 664
    .line 665
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 666
    .line 667
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 668
    .line 669
    .line 670
    iget-boolean v2, v1, Landroidx/core/app/NotificationCompat$Builder;->s:Z

    .line 671
    .line 672
    if-eqz v2, :cond_15

    .line 673
    .line 674
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 675
    .line 676
    iget-boolean v3, v1, Landroidx/core/app/NotificationCompat$Builder;->r:Z

    .line 677
    .line 678
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 679
    .line 680
    .line 681
    :cond_15
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->x:Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-nez v2, :cond_16

    .line 688
    .line 689
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 690
    .line 691
    const/4 v5, 0x0

    .line 692
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    const/4 v7, 0x0

    .line 697
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-virtual {v2, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 706
    .line 707
    .line 708
    :cond_16
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->c:Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-eqz v3, :cond_17

    .line 719
    .line 720
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    check-cast v3, Landroidx/core/app/Person;

    .line 725
    .line 726
    iget-object v4, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 727
    .line 728
    invoke-virtual {v3}, Landroidx/core/app/Person;->a()Landroid/app/Person;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 733
    .line 734
    .line 735
    goto :goto_c

    .line 736
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 737
    .line 738
    const/16 v3, 0x1d

    .line 739
    .line 740
    if-lt v2, v3, :cond_18

    .line 741
    .line 742
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 743
    .line 744
    iget-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->z:Z

    .line 745
    .line 746
    invoke-static {v3, v4}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->a(Landroid/app/Notification$Builder;Z)V

    .line 747
    .line 748
    .line 749
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 750
    .line 751
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->b(Landroid/app/Notification$Builder;)V

    .line 752
    .line 753
    .line 754
    :cond_18
    const/16 v3, 0x1f

    .line 755
    .line 756
    if-lt v2, v3, :cond_19

    .line 757
    .line 758
    iget v1, v1, Landroidx/core/app/NotificationCompat$Builder;->y:I

    .line 759
    .line 760
    if-eqz v1, :cond_19

    .line 761
    .line 762
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 763
    .line 764
    invoke-static {v3, v1}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->b(Landroid/app/Notification$Builder;I)V

    .line 765
    .line 766
    .line 767
    :cond_19
    const/16 v1, 0x24

    .line 768
    .line 769
    if-lt v2, v1, :cond_1a

    .line 770
    .line 771
    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 772
    .line 773
    invoke-static {v0}, Landroidx/core/app/NotificationCompatBuilder$Api36Impl;->a(Landroid/app/Notification$Builder;)V

    .line 774
    .line 775
    .line 776
    :cond_1a
    return-void
.end method
