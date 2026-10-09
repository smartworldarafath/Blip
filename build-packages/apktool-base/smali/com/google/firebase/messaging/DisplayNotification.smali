.class Lcom/google/firebase/messaging/DisplayNotification;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/google/firebase/messaging/FirebaseMessagingService;

.field public final c:Lcom/google/firebase/messaging/NotificationParams;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessagingService;Lcom/google/firebase/messaging/NotificationParams;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/messaging/DisplayNotification;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/messaging/DisplayNotification;->b:Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/firebase/messaging/DisplayNotification;->c:Lcom/google/firebase/messaging/NotificationParams;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/firebase/messaging/DisplayNotification;->c:Lcom/google/firebase/messaging/NotificationParams;

    .line 4
    .line 5
    const-string v2, "gcm.n.noui"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v0, v1, Lcom/google/firebase/messaging/DisplayNotification;->b:Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 16
    .line 17
    const-string v3, "keyguard"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/app/KeyguardManager;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const-string v5, "activity"

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/ActivityManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    .line 67
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 68
    .line 69
    if-ne v6, v3, :cond_2

    .line 70
    .line 71
    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 72
    .line 73
    const/16 v3, 0x64

    .line 74
    .line 75
    if-ne v0, v3, :cond_3

    .line 76
    .line 77
    return v4

    .line 78
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/google/firebase/messaging/DisplayNotification;->c:Lcom/google/firebase/messaging/NotificationParams;

    .line 79
    .line 80
    const-string v3, "gcm.n.image"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const-string v6, "FirebaseMessaging"

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    :goto_1
    const/4 v3, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    :try_start_0
    new-instance v3, Lcom/google/firebase/messaging/ImageDownload;

    .line 97
    .line 98
    new-instance v7, Ljava/net/URL;

    .line 99
    .line 100
    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v3, v7}, Lcom/google/firebase/messaging/ImageDownload;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v7, "Not downloading image, bad URL: "

    .line 110
    .line 111
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :goto_2
    if-eqz v3, :cond_5

    .line 126
    .line 127
    iget-object v0, v1, Lcom/google/firebase/messaging/DisplayNotification;->a:Ljava/util/concurrent/ExecutorService;

    .line 128
    .line 129
    new-instance v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 130
    .line 131
    invoke-direct {v7}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v8, Lf3;

    .line 135
    .line 136
    const/4 v9, 0x7

    .line 137
    invoke-direct {v8, v9, v3, v7}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, v3, Lcom/google/firebase/messaging/ImageDownload;->k:Ljava/util/concurrent/Future;

    .line 145
    .line 146
    iget-object v0, v7, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 147
    .line 148
    iput-object v0, v3, Lcom/google/firebase/messaging/ImageDownload;->l:Lcom/google/android/gms/tasks/Task;

    .line 149
    .line 150
    :cond_5
    iget-object v7, v1, Lcom/google/firebase/messaging/DisplayNotification;->b:Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 151
    .line 152
    iget-object v8, v1, Lcom/google/firebase/messaging/DisplayNotification;->c:Lcom/google/firebase/messaging/NotificationParams;

    .line 153
    .line 154
    sget-object v0, Lcom/google/firebase/messaging/CommonNotificationBuilder;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    .line 156
    const-string v9, "Couldn\'t get own application info: "

    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    const/16 v11, 0x80

    .line 167
    .line 168
    :try_start_1
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    :goto_3
    move-object v10, v0

    .line 179
    goto :goto_4

    .line 180
    :catch_1
    move-exception v0

    .line 181
    new-instance v10, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :cond_6
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :goto_4
    const-string v0, "gcm.n.android_channel_id"

    .line 200
    .line 201
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const/4 v11, 0x3

    .line 206
    :try_start_2
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-virtual {v12, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    .line 220
    const/16 v13, 0x1a

    .line 221
    .line 222
    if-ge v12, v13, :cond_7

    .line 223
    .line 224
    :catch_2
    const/4 v0, 0x0

    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_7
    const-class v12, Landroid/app/NotificationManager;

    .line 228
    .line 229
    invoke-virtual {v7, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    check-cast v12, Landroid/app/NotificationManager;

    .line 234
    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-nez v13, :cond_9

    .line 240
    .line 241
    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    if-eqz v13, :cond_8

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v14, "Notification Channel requested ("

    .line 251
    .line 252
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, ") has not been created by the app. Manifest configuration, or default, value will be used."

    .line 259
    .line 260
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    :cond_9
    const-string v0, "com.google.firebase.messaging.default_notification_channel_id"

    .line 271
    .line 272
    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    if-nez v13, :cond_b

    .line 281
    .line 282
    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    if-eqz v13, :cond_a

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_a
    const-string v0, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    .line 290
    .line 291
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_b
    const-string v0, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    .line 296
    .line 297
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :goto_5
    const-string v0, "fcm_fallback_notification_channel"

    .line 301
    .line 302
    invoke-virtual {v12, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    if-nez v13, :cond_d

    .line 307
    .line 308
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    const-string v14, "string"

    .line 313
    .line 314
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    const-string v5, "fcm_fallback_notification_channel_label"

    .line 319
    .line 320
    invoke-virtual {v13, v5, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-nez v5, :cond_c

    .line 325
    .line 326
    const-string v5, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    .line 327
    .line 328
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    const-string v5, "Misc"

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_c
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    :goto_6
    new-instance v13, Landroid/app/NotificationChannel;

    .line 339
    .line 340
    invoke-direct {v13, v0, v5, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 344
    .line 345
    .line 346
    :cond_d
    :goto_7
    sget-object v5, Lcom/google/firebase/messaging/CommonNotificationBuilder;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 347
    .line 348
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    new-instance v15, Landroidx/core/app/NotificationCompat$Builder;

    .line 361
    .line 362
    invoke-direct {v15, v7, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-string v0, "gcm.n.title"

    .line 366
    .line 367
    invoke-virtual {v8, v13, v12, v0}, Lcom/google/firebase/messaging/NotificationParams;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v16

    .line 375
    if-nez v16, :cond_e

    .line 376
    .line 377
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_e
    const-string v0, "gcm.n.body"

    .line 381
    .line 382
    invoke-virtual {v8, v13, v12, v0}, Lcom/google/firebase/messaging/NotificationParams;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v16

    .line 390
    if-nez v16, :cond_f

    .line 391
    .line 392
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    new-instance v11, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 396
    .line 397
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, v11, Landroidx/core/app/NotificationCompat$BigTextStyle;->b:Ljava/lang/CharSequence;

    .line 405
    .line 406
    invoke-virtual {v15, v11}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    .line 407
    .line 408
    .line 409
    :cond_f
    const-string v0, "gcm.n.icon"

    .line 410
    .line 411
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 416
    .line 417
    .line 418
    move-result v11

    .line 419
    if-nez v11, :cond_12

    .line 420
    .line 421
    const-string v11, "drawable"

    .line 422
    .line 423
    invoke-virtual {v13, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .line 425
    .line 426
    move-result v11

    .line 427
    if-eqz v11, :cond_10

    .line 428
    .line 429
    :goto_8
    move/from16 v17, v2

    .line 430
    .line 431
    goto :goto_b

    .line 432
    :cond_10
    const-string v11, "mipmap"

    .line 433
    .line 434
    invoke-virtual {v13, v0, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    if-eqz v11, :cond_11

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    move/from16 v17, v2

    .line 444
    .line 445
    const-string v2, "Icon resource "

    .line 446
    .line 447
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v0, " not found. Notification will use default icon."

    .line 454
    .line 455
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_12
    move/from16 v17, v2

    .line 467
    .line 468
    :goto_9
    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    .line 469
    .line 470
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_13

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_13
    :try_start_3
    invoke-virtual {v14, v12, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :catch_3
    move-exception v0

    .line 485
    new-instance v11, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    :goto_a
    if-eqz v2, :cond_14

    .line 501
    .line 502
    move v11, v2

    .line 503
    goto :goto_b

    .line 504
    :cond_14
    const v0, 0x1080093

    .line 505
    .line 506
    .line 507
    move v11, v0

    .line 508
    :goto_b
    iget-object v0, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 509
    .line 510
    iput v11, v0, Landroid/app/Notification;->icon:I

    .line 511
    .line 512
    const-string v0, "gcm.n.sound2"

    .line 513
    .line 514
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-eqz v2, :cond_15

    .line 523
    .line 524
    const-string v0, "gcm.n.sound"

    .line 525
    .line 526
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    const/4 v9, 0x2

    .line 535
    if-eqz v2, :cond_16

    .line 536
    .line 537
    const/4 v0, 0x0

    .line 538
    goto :goto_c

    .line 539
    :cond_16
    const-string v2, "default"

    .line 540
    .line 541
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-nez v2, :cond_17

    .line 546
    .line 547
    const-string v2, "raw"

    .line 548
    .line 549
    invoke-virtual {v13, v0, v2, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-eqz v2, :cond_17

    .line 554
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    const-string v11, "android.resource://"

    .line 558
    .line 559
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v11, "/raw/"

    .line 566
    .line 567
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    goto :goto_c

    .line 582
    :cond_17
    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    :goto_c
    const/4 v2, -0x1

    .line 587
    const/4 v11, 0x4

    .line 588
    if-eqz v0, :cond_18

    .line 589
    .line 590
    iget-object v13, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 591
    .line 592
    iput-object v0, v13, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 593
    .line 594
    iput v2, v13, Landroid/app/Notification;->audioStreamType:I

    .line 595
    .line 596
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 597
    .line 598
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    move/from16 v18, v11

    .line 606
    .line 607
    const/4 v11, 0x5

    .line 608
    invoke-virtual {v0, v11}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    iput-object v0, v13, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_18
    move/from16 v18, v11

    .line 620
    .line 621
    :goto_d
    const-string v0, "gcm.n.click_action"

    .line 622
    .line 623
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    if-nez v11, :cond_19

    .line 632
    .line 633
    new-instance v11, Landroid/content/Intent;

    .line 634
    .line 635
    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    .line 640
    .line 641
    const/high16 v0, 0x10000000

    .line 642
    .line 643
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 644
    .line 645
    .line 646
    goto :goto_f

    .line 647
    :cond_19
    const-string v0, "gcm.n.link_android"

    .line 648
    .line 649
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 654
    .line 655
    .line 656
    move-result v11

    .line 657
    if-eqz v11, :cond_1a

    .line 658
    .line 659
    const-string v0, "gcm.n.link"

    .line 660
    .line 661
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    if-nez v11, :cond_1b

    .line 670
    .line 671
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    goto :goto_e

    .line 676
    :cond_1b
    const/4 v0, 0x0

    .line 677
    :goto_e
    if-eqz v0, :cond_1c

    .line 678
    .line 679
    new-instance v11, Landroid/content/Intent;

    .line 680
    .line 681
    const-string v13, "android.intent.action.VIEW"

    .line 682
    .line 683
    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 690
    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_1c
    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    if-nez v11, :cond_1d

    .line 698
    .line 699
    const-string v0, "No activity found to launch app"

    .line 700
    .line 701
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .line 703
    .line 704
    :cond_1d
    :goto_f
    const/high16 v0, 0x44000000    # 512.0f

    .line 705
    .line 706
    const-string v12, "google.c.a.e"

    .line 707
    .line 708
    if-nez v11, :cond_1e

    .line 709
    .line 710
    const/4 v2, 0x0

    .line 711
    goto :goto_11

    .line 712
    :cond_1e
    const/high16 v13, 0x4000000

    .line 713
    .line 714
    invoke-virtual {v11, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    .line 716
    .line 717
    new-instance v13, Landroid/os/Bundle;

    .line 718
    .line 719
    iget-object v14, v8, Lcom/google/firebase/messaging/NotificationParams;->a:Landroid/os/Bundle;

    .line 720
    .line 721
    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v14}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 725
    .line 726
    .line 727
    move-result-object v14

    .line 728
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 729
    .line 730
    .line 731
    move-result-object v14

    .line 732
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 733
    .line 734
    .line 735
    move-result v19

    .line 736
    if-eqz v19, :cond_21

    .line 737
    .line 738
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v19

    .line 742
    move-object/from16 v2, v19

    .line 743
    .line 744
    check-cast v2, Ljava/lang/String;

    .line 745
    .line 746
    const-string v9, "google.c."

    .line 747
    .line 748
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    move-result v9

    .line 752
    if-nez v9, :cond_1f

    .line 753
    .line 754
    const-string v9, "gcm.n."

    .line 755
    .line 756
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 757
    .line 758
    .line 759
    move-result v9

    .line 760
    if-nez v9, :cond_1f

    .line 761
    .line 762
    const-string v9, "gcm.notification."

    .line 763
    .line 764
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 765
    .line 766
    .line 767
    move-result v9

    .line 768
    if-eqz v9, :cond_20

    .line 769
    .line 770
    :cond_1f
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :cond_20
    const/4 v2, -0x1

    .line 774
    const/4 v9, 0x2

    .line 775
    goto :goto_10

    .line 776
    :cond_21
    invoke-virtual {v11, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v8, v12}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    if-eqz v2, :cond_22

    .line 784
    .line 785
    const-string v2, "gcm.n.analytics_data"

    .line 786
    .line 787
    invoke-virtual {v8}, Lcom/google/firebase/messaging/NotificationParams;->g()Landroid/os/Bundle;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 792
    .line 793
    .line 794
    :cond_22
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    invoke-static {v7, v2, v11, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    :goto_11
    iput-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 803
    .line 804
    invoke-virtual {v8, v12}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    if-nez v2, :cond_23

    .line 809
    .line 810
    const/4 v0, 0x0

    .line 811
    goto :goto_12

    .line 812
    :cond_23
    new-instance v2, Landroid/content/Intent;

    .line 813
    .line 814
    const-string v9, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 815
    .line 816
    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v8}, Lcom/google/firebase/messaging/NotificationParams;->g()Landroid/os/Bundle;

    .line 820
    .line 821
    .line 822
    move-result-object v9

    .line 823
    invoke-virtual {v2, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 828
    .line 829
    .line 830
    move-result v5

    .line 831
    new-instance v9, Landroid/content/Intent;

    .line 832
    .line 833
    const-string v11, "com.google.android.c2dm.intent.RECEIVE"

    .line 834
    .line 835
    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v11

    .line 842
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    .line 844
    .line 845
    move-result-object v9

    .line 846
    const-string v11, "wrapped_intent"

    .line 847
    .line 848
    invoke-virtual {v9, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-static {v7, v5, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    :goto_12
    if-eqz v0, :cond_24

    .line 857
    .line 858
    iget-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 859
    .line 860
    iput-object v0, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 861
    .line 862
    :cond_24
    const-string v0, "gcm.n.color"

    .line 863
    .line 864
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    if-nez v2, :cond_25

    .line 873
    .line 874
    :try_start_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 879
    .line 880
    .line 881
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 882
    goto :goto_13

    .line 883
    :catch_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    const-string v5, "Color is invalid: "

    .line 886
    .line 887
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v0, ". Notification will use default color."

    .line 894
    .line 895
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .line 904
    .line 905
    :cond_25
    const-string v0, "com.google.firebase.messaging.default_notification_color"

    .line 906
    .line 907
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-eqz v0, :cond_26

    .line 912
    .line 913
    :try_start_5
    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 918
    .line 919
    .line 920
    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 921
    goto :goto_13

    .line 922
    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    .line 923
    .line 924
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .line 926
    .line 927
    :cond_26
    const/4 v0, 0x0

    .line 928
    :goto_13
    if-eqz v0, :cond_27

    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 931
    .line 932
    .line 933
    move-result v0

    .line 934
    iput v0, v15, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 935
    .line 936
    :cond_27
    const-string v0, "gcm.n.sticky"

    .line 937
    .line 938
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 939
    .line 940
    .line 941
    move-result v0

    .line 942
    xor-int/lit8 v0, v0, 0x1

    .line 943
    .line 944
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 945
    .line 946
    .line 947
    const-string v0, "gcm.n.local_only"

    .line 948
    .line 949
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 950
    .line 951
    .line 952
    move-result v0

    .line 953
    iput-boolean v0, v15, Landroidx/core/app/NotificationCompat$Builder;->q:Z

    .line 954
    .line 955
    const-string v0, "gcm.n.ticker"

    .line 956
    .line 957
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    if-eqz v0, :cond_28

    .line 962
    .line 963
    iget-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 964
    .line 965
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 970
    .line 971
    :cond_28
    const-string v0, "gcm.n.notification_priority"

    .line 972
    .line 973
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    const/4 v2, -0x2

    .line 978
    if-nez v0, :cond_29

    .line 979
    .line 980
    :goto_14
    const/4 v0, 0x0

    .line 981
    goto :goto_15

    .line 982
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 983
    .line 984
    .line 985
    move-result v5

    .line 986
    if-lt v5, v2, :cond_2a

    .line 987
    .line 988
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 989
    .line 990
    .line 991
    move-result v5

    .line 992
    const/4 v7, 0x2

    .line 993
    if-le v5, v7, :cond_2b

    .line 994
    .line 995
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    const-string v7, "notificationPriority is invalid "

    .line 998
    .line 999
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    const-string v0, ". Skipping setting notificationPriority."

    .line 1006
    .line 1007
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .line 1016
    .line 1017
    goto :goto_14

    .line 1018
    :cond_2b
    :goto_15
    if-eqz v0, :cond_2c

    .line 1019
    .line 1020
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    iput v0, v15, Landroidx/core/app/NotificationCompat$Builder;->j:I

    .line 1025
    .line 1026
    :cond_2c
    const-string v0, "gcm.n.visibility"

    .line 1027
    .line 1028
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    const-string v5, "NotificationParams"

    .line 1033
    .line 1034
    if-nez v0, :cond_2d

    .line 1035
    .line 1036
    :goto_16
    const/4 v0, 0x0

    .line 1037
    goto :goto_17

    .line 1038
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1039
    .line 1040
    .line 1041
    move-result v7

    .line 1042
    const/4 v9, -0x1

    .line 1043
    if-lt v7, v9, :cond_2e

    .line 1044
    .line 1045
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    move/from16 v9, v17

    .line 1050
    .line 1051
    if-le v7, v9, :cond_2f

    .line 1052
    .line 1053
    :cond_2e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    const-string v9, "visibility is invalid: "

    .line 1056
    .line 1057
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    const-string v0, ". Skipping setting visibility."

    .line 1064
    .line 1065
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .line 1074
    .line 1075
    goto :goto_16

    .line 1076
    :cond_2f
    :goto_17
    if-eqz v0, :cond_30

    .line 1077
    .line 1078
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    iput v0, v15, Landroidx/core/app/NotificationCompat$Builder;->w:I

    .line 1083
    .line 1084
    :cond_30
    const-string v0, "gcm.n.notification_count"

    .line 1085
    .line 1086
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    if-nez v0, :cond_31

    .line 1091
    .line 1092
    :goto_18
    const/4 v0, 0x0

    .line 1093
    goto :goto_19

    .line 1094
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1095
    .line 1096
    .line 1097
    move-result v7

    .line 1098
    if-gez v7, :cond_32

    .line 1099
    .line 1100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    const-string v9, "notificationCount is invalid: "

    .line 1103
    .line 1104
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    const-string v0, ". Skipping setting notificationCount."

    .line 1111
    .line 1112
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .line 1121
    .line 1122
    goto :goto_18

    .line 1123
    :cond_32
    :goto_19
    if-eqz v0, :cond_33

    .line 1124
    .line 1125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    iput v0, v15, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 1130
    .line 1131
    :cond_33
    const-string v0, "gcm.n.event_time"

    .line 1132
    .line 1133
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v7

    .line 1137
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v9

    .line 1141
    if-nez v9, :cond_34

    .line 1142
    .line 1143
    :try_start_6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1144
    .line 1145
    .line 1146
    move-result-wide v9

    .line 1147
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1151
    goto :goto_1a

    .line 1152
    :catch_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    const-string v10, "Couldn\'t parse value of "

    .line 1155
    .line 1156
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v0}, Lcom/google/firebase/messaging/NotificationParams;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v0, "("

    .line 1167
    .line 1168
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    const-string v0, ") into a long"

    .line 1175
    .line 1176
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    .line 1185
    .line 1186
    :cond_34
    const/4 v0, 0x0

    .line 1187
    :goto_1a
    if-eqz v0, :cond_35

    .line 1188
    .line 1189
    const/4 v9, 0x1

    .line 1190
    iput-boolean v9, v15, Landroidx/core/app/NotificationCompat$Builder;->k:Z

    .line 1191
    .line 1192
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1193
    .line 1194
    .line 1195
    move-result-wide v9

    .line 1196
    iget-object v0, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 1197
    .line 1198
    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1199
    .line 1200
    :cond_35
    const-string v0, "gcm.n.vibrate_timings"

    .line 1201
    .line 1202
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v0

    .line 1206
    if-nez v0, :cond_36

    .line 1207
    .line 1208
    :goto_1b
    const/4 v9, 0x0

    .line 1209
    goto :goto_1d

    .line 1210
    :cond_36
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 1211
    .line 1212
    .line 1213
    move-result v7

    .line 1214
    const/4 v9, 0x1

    .line 1215
    if-le v7, v9, :cond_37

    .line 1216
    .line 1217
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 1218
    .line 1219
    .line 1220
    move-result v7

    .line 1221
    new-array v9, v7, [J

    .line 1222
    .line 1223
    move v10, v4

    .line 1224
    :goto_1c
    if-ge v10, v7, :cond_38

    .line 1225
    .line 1226
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optLong(I)J

    .line 1227
    .line 1228
    .line 1229
    move-result-wide v11

    .line 1230
    aput-wide v11, v9, v10

    .line 1231
    .line 1232
    add-int/lit8 v10, v10, 0x1

    .line 1233
    .line 1234
    goto :goto_1c

    .line 1235
    :cond_37
    new-instance v7, Lorg/json/JSONException;

    .line 1236
    .line 1237
    const-string v9, "vibrateTimings have invalid length"

    .line 1238
    .line 1239
    invoke-direct {v7, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    throw v7
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1243
    :catch_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    const-string v9, "User defined vibrateTimings is invalid: "

    .line 1246
    .line 1247
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    .line 1253
    const-string v0, ". Skipping setting vibrateTimings."

    .line 1254
    .line 1255
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .line 1264
    .line 1265
    goto :goto_1b

    .line 1266
    :cond_38
    :goto_1d
    if-eqz v9, :cond_39

    .line 1267
    .line 1268
    iget-object v0, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 1269
    .line 1270
    iput-object v9, v0, Landroid/app/Notification;->vibrate:[J

    .line 1271
    .line 1272
    :cond_39
    const-string v7, ". Skipping setting LightSettings"

    .line 1273
    .line 1274
    const-string v9, "LightSettings is invalid: "

    .line 1275
    .line 1276
    const-string v0, "gcm.n.light_settings"

    .line 1277
    .line 1278
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v10

    .line 1282
    if-nez v10, :cond_3a

    .line 1283
    .line 1284
    :goto_1e
    const/4 v0, 0x0

    .line 1285
    goto :goto_20

    .line 1286
    :cond_3a
    const/4 v11, 0x3

    .line 1287
    new-array v0, v11, [I

    .line 1288
    .line 1289
    :try_start_8
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 1290
    .line 1291
    .line 1292
    move-result v12

    .line 1293
    if-ne v12, v11, :cond_3c

    .line 1294
    .line 1295
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v11

    .line 1299
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 1300
    .line 1301
    .line 1302
    move-result v11

    .line 1303
    const/high16 v12, -0x1000000

    .line 1304
    .line 1305
    if-eq v11, v12, :cond_3b

    .line 1306
    .line 1307
    aput v11, v0, v4

    .line 1308
    .line 1309
    const/4 v11, 0x1

    .line 1310
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optInt(I)I

    .line 1311
    .line 1312
    .line 1313
    move-result v12

    .line 1314
    aput v12, v0, v11

    .line 1315
    .line 1316
    const/4 v11, 0x2

    .line 1317
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optInt(I)I

    .line 1318
    .line 1319
    .line 1320
    move-result v12

    .line 1321
    aput v12, v0, v11

    .line 1322
    .line 1323
    goto :goto_20

    .line 1324
    :catch_8
    move-exception v0

    .line 1325
    goto :goto_1f

    .line 1326
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1327
    .line 1328
    const-string v11, "Transparent color is invalid"

    .line 1329
    .line 1330
    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    throw v0

    .line 1334
    :cond_3c
    new-instance v0, Lorg/json/JSONException;

    .line 1335
    .line 1336
    const-string v11, "lightSettings don\'t have all three fields"

    .line 1337
    .line 1338
    invoke-direct {v0, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1342
    :goto_1f
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    const-string v9, ". "

    .line 1351
    .line 1352
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v0

    .line 1359
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    .line 1371
    .line 1372
    goto :goto_1e

    .line 1373
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v0

    .line 1388
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    .line 1390
    .line 1391
    goto :goto_1e

    .line 1392
    :goto_20
    if-eqz v0, :cond_3e

    .line 1393
    .line 1394
    aget v5, v0, v4

    .line 1395
    .line 1396
    const/16 v17, 0x1

    .line 1397
    .line 1398
    aget v7, v0, v17

    .line 1399
    .line 1400
    const/16 v19, 0x2

    .line 1401
    .line 1402
    aget v0, v0, v19

    .line 1403
    .line 1404
    iget-object v9, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 1405
    .line 1406
    iput v5, v9, Landroid/app/Notification;->ledARGB:I

    .line 1407
    .line 1408
    iput v7, v9, Landroid/app/Notification;->ledOnMS:I

    .line 1409
    .line 1410
    iput v0, v9, Landroid/app/Notification;->ledOffMS:I

    .line 1411
    .line 1412
    if-eqz v7, :cond_3d

    .line 1413
    .line 1414
    if-eqz v0, :cond_3d

    .line 1415
    .line 1416
    const/4 v0, 0x1

    .line 1417
    goto :goto_21

    .line 1418
    :cond_3d
    move v0, v4

    .line 1419
    :goto_21
    iget v5, v9, Landroid/app/Notification;->flags:I

    .line 1420
    .line 1421
    and-int/2addr v2, v5

    .line 1422
    or-int/2addr v0, v2

    .line 1423
    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 1424
    .line 1425
    :cond_3e
    const-string v0, "gcm.n.default_sound"

    .line 1426
    .line 1427
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 1428
    .line 1429
    .line 1430
    move-result v0

    .line 1431
    const-string v2, "gcm.n.default_vibrate_timings"

    .line 1432
    .line 1433
    invoke-virtual {v8, v2}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v2

    .line 1437
    if-eqz v2, :cond_3f

    .line 1438
    .line 1439
    or-int/lit8 v0, v0, 0x2

    .line 1440
    .line 1441
    :cond_3f
    const-string v2, "gcm.n.default_light_settings"

    .line 1442
    .line 1443
    invoke-virtual {v8, v2}, Lcom/google/firebase/messaging/NotificationParams;->a(Ljava/lang/String;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v2

    .line 1447
    if-eqz v2, :cond_40

    .line 1448
    .line 1449
    or-int/lit8 v0, v0, 0x4

    .line 1450
    .line 1451
    :cond_40
    iget-object v2, v15, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 1452
    .line 1453
    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 1454
    .line 1455
    and-int/lit8 v0, v0, 0x4

    .line 1456
    .line 1457
    if-eqz v0, :cond_41

    .line 1458
    .line 1459
    iget v0, v2, Landroid/app/Notification;->flags:I

    .line 1460
    .line 1461
    const/16 v17, 0x1

    .line 1462
    .line 1463
    or-int/lit8 v0, v0, 0x1

    .line 1464
    .line 1465
    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1466
    .line 1467
    :cond_41
    new-instance v2, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;

    .line 1468
    .line 1469
    const-string v0, "gcm.n.tag"

    .line 1470
    .line 1471
    invoke-virtual {v8, v0}, Lcom/google/firebase/messaging/NotificationParams;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v0

    .line 1475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result v5

    .line 1479
    if-nez v5, :cond_42

    .line 1480
    .line 1481
    goto :goto_22

    .line 1482
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    const-string v5, "FCM-Notification:"

    .line 1485
    .line 1486
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1490
    .line 1491
    .line 1492
    move-result-wide v7

    .line 1493
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    :goto_22
    invoke-direct {v2, v15, v0}, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;-><init>(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    if-nez v3, :cond_43

    .line 1504
    .line 1505
    goto :goto_25

    .line 1506
    :cond_43
    :try_start_9
    iget-object v0, v3, Lcom/google/firebase/messaging/ImageDownload;->l:Lcom/google/android/gms/tasks/Task;

    .line 1507
    .line 1508
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 1509
    .line 1510
    .line 1511
    const-wide/16 v7, 0x5

    .line 1512
    .line 1513
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/tasks/Tasks;->b(Lcom/google/android/gms/tasks/Task;J)Ljava/lang/Object;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1518
    .line 1519
    if-nez v0, :cond_44

    .line 1520
    .line 1521
    const/4 v5, 0x0

    .line 1522
    goto :goto_23

    .line 1523
    :cond_44
    new-instance v5, Landroidx/core/graphics/drawable/IconCompat;

    .line 1524
    .line 1525
    const/4 v9, 0x1

    .line 1526
    invoke-direct {v5, v9}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1527
    .line 1528
    .line 1529
    iput-object v0, v5, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 1530
    .line 1531
    :goto_23
    iput-object v5, v15, Landroidx/core/app/NotificationCompat$Builder;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 1532
    .line 1533
    new-instance v5, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1534
    .line 1535
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1536
    .line 1537
    .line 1538
    if-nez v0, :cond_45

    .line 1539
    .line 1540
    const/4 v7, 0x0

    .line 1541
    const/4 v9, 0x1

    .line 1542
    goto :goto_24

    .line 1543
    :cond_45
    new-instance v7, Landroidx/core/graphics/drawable/IconCompat;

    .line 1544
    .line 1545
    const/4 v9, 0x1

    .line 1546
    invoke-direct {v7, v9}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1547
    .line 1548
    .line 1549
    iput-object v0, v7, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 1550
    .line 1551
    :goto_24
    iput-object v7, v5, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1552
    .line 1553
    const/4 v7, 0x0

    .line 1554
    iput-object v7, v5, Landroidx/core/app/NotificationCompat$BigPictureStyle;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 1555
    .line 1556
    iput-boolean v9, v5, Landroidx/core/app/NotificationCompat$BigPictureStyle;->d:Z

    .line 1557
    .line 1558
    invoke-virtual {v15, v5}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_b

    .line 1559
    .line 1560
    .line 1561
    :goto_25
    const/4 v11, 0x3

    .line 1562
    goto :goto_27

    .line 1563
    :catch_a
    move-exception v0

    .line 1564
    goto :goto_26

    .line 1565
    :catch_b
    const-string v0, "Failed to download image in time, showing notification without it"

    .line 1566
    .line 1567
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v3}, Lcom/google/firebase/messaging/ImageDownload;->close()V

    .line 1571
    .line 1572
    .line 1573
    goto :goto_25

    .line 1574
    :catch_c
    const-string v0, "Interrupted while downloading image, showing notification without it"

    .line 1575
    .line 1576
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v3}, Lcom/google/firebase/messaging/ImageDownload;->close()V

    .line 1580
    .line 1581
    .line 1582
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1587
    .line 1588
    .line 1589
    goto :goto_25

    .line 1590
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1591
    .line 1592
    const-string v5, "Failed to download image: "

    .line 1593
    .line 1594
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    .line 1610
    .line 1611
    goto :goto_25

    .line 1612
    :goto_27
    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v0

    .line 1616
    if-eqz v0, :cond_46

    .line 1617
    .line 1618
    const-string v0, "Showing notification"

    .line 1619
    .line 1620
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .line 1622
    .line 1623
    :cond_46
    iget-object v0, v1, Lcom/google/firebase/messaging/DisplayNotification;->b:Lcom/google/firebase/messaging/FirebaseMessagingService;

    .line 1624
    .line 1625
    const-string v1, "notification"

    .line 1626
    .line 1627
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    check-cast v0, Landroid/app/NotificationManager;

    .line 1632
    .line 1633
    iget-object v1, v2, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->b:Ljava/lang/String;

    .line 1634
    .line 1635
    iget-object v2, v2, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 1636
    .line 1637
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v2

    .line 1641
    invoke-virtual {v0, v1, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1642
    .line 1643
    .line 1644
    const/16 v17, 0x1

    .line 1645
    .line 1646
    return v17
.end method
