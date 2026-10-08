.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/EnhancedIntentService;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final q:Ljava/util/ArrayDeque;


# instance fields
.field public p:Lcom/google/android/gms/cloudmessaging/Rpc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->q:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/EnhancedIntentService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "FirebaseMessaging"

    .line 12
    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v3, "token"

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->d(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string p0, "com.google.firebase.messaging.FCM_REGISTERED"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string p0, "com.google.firebase.messaging.FCM_UNREGISTERED"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Unknown intent action: "

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    :goto_0
    const-string v0, "google.message_id"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v5, 0x3

    .line 100
    const-string v6, "message_id"

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessagingService;->q:Ljava/util/ArrayDeque;

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_12

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v7, "Received duplicate message: "

    .line 122
    .line 123
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    const/16 v8, 0xa

    .line 143
    .line 144
    if-lt v7, v8, :cond_7

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_1
    const-string v1, "message_type"

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v3, "gcm"

    .line 159
    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    move-object v1, v3

    .line 163
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    const/4 v8, -0x1

    .line 168
    sparse-switch v7, :sswitch_data_0

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :sswitch_0
    const-string v3, "send_event"

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-nez v3, :cond_9

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    move v8, v5

    .line 182
    goto :goto_2

    .line 183
    :sswitch_1
    const-string v3, "send_error"

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_a

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_a
    const/4 v8, 0x2

    .line 193
    goto :goto_2

    .line 194
    :sswitch_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_b

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_b
    const/4 v8, 0x1

    .line 202
    goto :goto_2

    .line 203
    :sswitch_3
    const-string v3, "deleted_messages"

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_c

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_c
    move v8, v4

    .line 213
    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    const-string v3, "Received message with unknown type: "

    .line 217
    .line 218
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    goto/16 :goto_4

    .line 226
    .line 227
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-nez v1, :cond_d

    .line 237
    .line 238
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    :cond_d
    new-instance v1, Lcom/google/firebase/messaging/SendException;

    .line 242
    .line 243
    const-string v2, "error"

    .line 244
    .line 245
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    if-nez v2, :cond_e

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :pswitch_2
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->b(Landroid/content/Intent;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-nez v1, :cond_f

    .line 273
    .line 274
    new-instance v1, Landroid/os/Bundle;

    .line 275
    .line 276
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    .line 278
    .line 279
    :cond_f
    const-string v2, "androidx.content.wakelockid"

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v1}, Lcom/google/firebase/messaging/NotificationParams;->f(Landroid/os/Bundle;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_11

    .line 289
    .line 290
    new-instance v2, Lcom/google/firebase/messaging/NotificationParams;

    .line 291
    .line 292
    invoke-direct {v2, v1}, Lcom/google/firebase/messaging/NotificationParams;-><init>(Landroid/os/Bundle;)V

    .line 293
    .line 294
    .line 295
    new-instance v3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 296
    .line 297
    const-string v7, "Firebase-Messaging-Network-Io"

    .line 298
    .line 299
    invoke-direct {v3, v7}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    new-instance v7, Lcom/google/firebase/messaging/DisplayNotification;

    .line 307
    .line 308
    invoke-direct {v7, p0, v2, v3}, Lcom/google/firebase/messaging/DisplayNotification;-><init>(Lcom/google/firebase/messaging/FirebaseMessagingService;Lcom/google/firebase/messaging/NotificationParams;Ljava/util/concurrent/ExecutorService;)V

    .line 309
    .line 310
    .line 311
    :try_start_0
    invoke-virtual {v7}, Lcom/google/firebase/messaging/DisplayNotification;->a()Z

    .line 312
    .line 313
    .line 314
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    if-eqz v2, :cond_10

    .line 316
    .line 317
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->d(Landroid/content/Intent;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_11

    .line 329
    .line 330
    const-string v2, "_nf"

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/MessagingAnalytics;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    goto :goto_3

    .line 340
    :catchall_0
    move-exception p0

    .line 341
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 342
    .line 343
    .line 344
    throw p0

    .line 345
    :cond_11
    :goto_3
    new-instance v2, Lcom/google/firebase/messaging/RemoteMessage;

    .line 346
    .line 347
    invoke-direct {v2, v1}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->c(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 351
    .line 352
    .line 353
    :cond_12
    :goto_4
    :pswitch_3
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->p:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 354
    .line 355
    if-nez v1, :cond_13

    .line 356
    .line 357
    new-instance v1, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-direct {v1, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;-><init>(Landroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    iput-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->p:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 367
    .line 368
    :cond_13
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->p:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->c:Lcom/google/android/gms/cloudmessaging/zzw;

    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/google/android/gms/cloudmessaging/zzw;->b()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    const v2, 0xdedfaa0

    .line 377
    .line 378
    .line 379
    if-lt v1, v2, :cond_17

    .line 380
    .line 381
    new-instance v1, Landroid/os/Bundle;

    .line 382
    .line 383
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    if-nez v2, :cond_14

    .line 391
    .line 392
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    :cond_14
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const-string v0, "google.product_id"

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_15

    .line 406
    .line 407
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    goto :goto_5

    .line 416
    :cond_15
    const/4 p1, 0x0

    .line 417
    :goto_5
    if-eqz p1, :cond_16

    .line 418
    .line 419
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 424
    .line 425
    .line 426
    :cond_16
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->b:Landroid/content/Context;

    .line 427
    .line 428
    invoke-static {p0}, Lcom/google/android/gms/cloudmessaging/zzv;->a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzv;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/cloudmessaging/zzv;->b(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :cond_17
    new-instance p0, Ljava/io/IOException;

    .line 437
    .line 438
    const-string p1, "SERVICE_NOT_AVAILABLE"

    .line 439
    .line 440
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
