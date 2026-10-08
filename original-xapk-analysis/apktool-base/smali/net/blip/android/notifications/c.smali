.class public final synthetic Lnet/blip/android/notifications/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic l:Lnet/blip/libblip/Peer;

.field public final synthetic m:Lnet/blip/android/notifications/NotificationFactory;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lnet/blip/android/notifications/c;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/notifications/c;->l:Lnet/blip/libblip/Peer;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/android/notifications/c;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/blip/android/notifications/c;->m:Lnet/blip/android/notifications/NotificationFactory;

    .line 12
    .line 13
    iput p4, p0, Lnet/blip/android/notifications/c;->n:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/libblip/Peer;I)V
    .locals 0

    .line 16
    iput p5, p0, Lnet/blip/android/notifications/c;->j:I

    iput-object p1, p0, Lnet/blip/android/notifications/c;->k:Lnet/blip/libblip/frontend/Transfer;

    iput-object p2, p0, Lnet/blip/android/notifications/c;->m:Lnet/blip/android/notifications/NotificationFactory;

    iput p3, p0, Lnet/blip/android/notifications/c;->n:I

    iput-object p4, p0, Lnet/blip/android/notifications/c;->l:Lnet/blip/libblip/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Lnet/blip/android/notifications/NotificationFactory;I)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lnet/blip/android/notifications/c;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/blip/android/notifications/c;->k:Lnet/blip/libblip/frontend/Transfer;

    iput-object p2, p0, Lnet/blip/android/notifications/c;->l:Lnet/blip/libblip/Peer;

    iput-object p3, p0, Lnet/blip/android/notifications/c;->m:Lnet/blip/android/notifications/NotificationFactory;

    iput p4, p0, Lnet/blip/android/notifications/c;->n:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/blip/android/notifications/c;->j:I

    .line 4
    .line 5
    const-string v2, " is offline"

    .line 6
    .line 7
    const-string v3, "Sending to "

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const v5, 0x7f08013b

    .line 11
    .line 12
    .line 13
    const v6, 0x7f08011a

    .line 14
    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    const-string v9, "%.0f%% of %s"

    .line 18
    .line 19
    const-string v10, "<unknown>"

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    iget-object v14, v0, Lnet/blip/android/notifications/c;->l:Lnet/blip/libblip/Peer;

    .line 25
    .line 26
    iget v15, v0, Lnet/blip/android/notifications/c;->n:I

    .line 27
    .line 28
    const/high16 v16, 0x42c80000    # 100.0f

    .line 29
    .line 30
    iget-object v7, v0, Lnet/blip/android/notifications/c;->m:Lnet/blip/android/notifications/NotificationFactory;

    .line 31
    .line 32
    iget-object v0, v0, Lnet/blip/android/notifications/c;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 33
    .line 34
    packed-switch v1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    mul-float v3, v3, v16

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v2, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v7, v15, v2}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 93
    .line 94
    .line 95
    if-eqz v14, :cond_1

    .line 96
    .line 97
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-nez v2, :cond_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move-object v10, v2

    .line 105
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "Connecting to "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, "\u2026"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput v11, v1, Landroidx/core/app/NotificationCompat$Builder;->n:I

    .line 128
    .line 129
    iput v11, v1, Landroidx/core/app/NotificationCompat$Builder;->o:I

    .line 130
    .line 131
    iput-boolean v4, v1, Landroidx/core/app/NotificationCompat$Builder;->p:Z

    .line 132
    .line 133
    sget v2, Lnet/blip/android/notifications/Colors;->a:I

    .line 134
    .line 135
    iput v2, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 141
    .line 142
    sget-object v2, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 143
    .line 144
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 145
    .line 146
    if-ne v0, v2, :cond_2

    .line 147
    .line 148
    iput v6, v1, Landroid/app/Notification;->icon:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    iput v5, v1, Landroid/app/Notification;->icon:I

    .line 152
    .line 153
    :goto_1
    return-object v13

    .line 154
    :pswitch_0
    move-object/from16 v1, p1

    .line 155
    .line 156
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 162
    .line 163
    sget-object v17, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    invoke-virtual {v1, v12}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v12, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v7, v15, v12}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v1, v7}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    mul-float v7, v7, v16

    .line 186
    .line 187
    invoke-static {v7}, Lkotlin/math/MathKt;->b(F)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    const/16 v12, 0x64

    .line 192
    .line 193
    iput v12, v1, Landroidx/core/app/NotificationCompat$Builder;->n:I

    .line 194
    .line 195
    iput v7, v1, Landroidx/core/app/NotificationCompat$Builder;->o:I

    .line 196
    .line 197
    iput-boolean v11, v1, Landroidx/core/app/NotificationCompat$Builder;->p:Z

    .line 198
    .line 199
    sget v7, Lnet/blip/android/notifications/Colors;->a:I

    .line 200
    .line 201
    iput v7, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 204
    .line 205
    .line 206
    iget-object v7, v0, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 207
    .line 208
    sget-object v12, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 209
    .line 210
    if-ne v7, v12, :cond_5

    .line 211
    .line 212
    if-eqz v14, :cond_4

    .line 213
    .line 214
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-nez v3, :cond_3

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_3
    move-object v10, v3

    .line 222
    :cond_4
    :goto_2
    const-string v3, "Receiving from "

    .line 223
    .line 224
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iput v6, v4, Landroid/app/Notification;->icon:I

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_5
    if-eqz v14, :cond_7

    .line 235
    .line 236
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    if-nez v6, :cond_6

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_6
    move-object v10, v6

    .line 244
    :cond_7
    :goto_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 252
    .line 253
    :goto_4
    iget-object v3, v0, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 254
    .line 255
    if-eqz v3, :cond_c

    .line 256
    .line 257
    iget-object v3, v3, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 258
    .line 259
    if-eqz v3, :cond_c

    .line 260
    .line 261
    if-eqz v14, :cond_b

    .line 262
    .line 263
    instance-of v5, v14, Lnet/blip/libblip/Peer$User;

    .line 264
    .line 265
    if-eqz v5, :cond_8

    .line 266
    .line 267
    move-object v5, v14

    .line 268
    check-cast v5, Lnet/blip/libblip/Peer$User;

    .line 269
    .line 270
    iget-object v5, v5, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 271
    .line 272
    iget-object v5, v5, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 273
    .line 274
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Lnet/blip/libblip/Device;

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_8
    instance-of v3, v14, Lnet/blip/libblip/Peer$Device;

    .line 282
    .line 283
    if-eqz v3, :cond_a

    .line 284
    .line 285
    move-object v3, v14

    .line 286
    check-cast v3, Lnet/blip/libblip/Peer$Device;

    .line 287
    .line 288
    iget-object v3, v3, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 289
    .line 290
    :goto_5
    if-eqz v3, :cond_9

    .line 291
    .line 292
    iget-object v3, v3, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 293
    .line 294
    if-eqz v3, :cond_9

    .line 295
    .line 296
    iget-boolean v3, v3, Lnet/blip/libblip/DeviceReach;->m:Z

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_9
    move v3, v11

    .line 300
    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    goto :goto_7

    .line 305
    :cond_a
    invoke-static {}, Lk8;->e()V

    .line 306
    .line 307
    .line 308
    const/4 v12, 0x0

    .line 309
    goto :goto_a

    .line 310
    :cond_b
    const/4 v3, 0x0

    .line 311
    :goto_7
    if-eqz v3, :cond_c

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    :cond_c
    if-nez v11, :cond_e

    .line 318
    .line 319
    if-eqz v14, :cond_d

    .line 320
    .line 321
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->d()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    goto :goto_8

    .line 326
    :cond_d
    const/4 v12, 0x0

    .line 327
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const v0, 0x7f080119

    .line 346
    .line 347
    .line 348
    iput v0, v4, Landroid/app/Notification;->icon:I

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_e
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 352
    .line 353
    .line 354
    move-result-wide v2

    .line 355
    invoke-static {v2, v3}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    mul-float v0, v0, v16

    .line 364
    .line 365
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_9
    move-object v12, v13

    .line 385
    :goto_a
    return-object v12

    .line 386
    :pswitch_1
    move-object/from16 v1, p1

    .line 387
    .line 388
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    if-eqz v14, :cond_18

    .line 394
    .line 395
    instance-of v3, v14, Lnet/blip/libblip/Peer$User;

    .line 396
    .line 397
    if-eqz v3, :cond_13

    .line 398
    .line 399
    move-object v3, v14

    .line 400
    check-cast v3, Lnet/blip/libblip/Peer$User;

    .line 401
    .line 402
    iget-object v3, v3, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    iget-object v3, v3, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 408
    .line 409
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 410
    .line 411
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    :cond_f
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_10

    .line 427
    .line 428
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    check-cast v8, Ljava/util/Map$Entry;

    .line 433
    .line 434
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    check-cast v9, Lnet/blip/libblip/Device;

    .line 439
    .line 440
    iget-object v9, v9, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 441
    .line 442
    if-eqz v9, :cond_f

    .line 443
    .line 444
    iget-boolean v9, v9, Lnet/blip/libblip/DeviceReach;->m:Z

    .line 445
    .line 446
    if-ne v9, v4, :cond_f

    .line 447
    .line 448
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v8

    .line 456
    invoke-virtual {v5, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_10
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    xor-int/2addr v5, v4

    .line 465
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 466
    .line 467
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    :cond_11
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-eqz v8, :cond_12

    .line 483
    .line 484
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v8

    .line 488
    check-cast v8, Ljava/util/Map$Entry;

    .line 489
    .line 490
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v9

    .line 494
    check-cast v9, Lnet/blip/libblip/Device;

    .line 495
    .line 496
    iget-object v9, v9, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 497
    .line 498
    if-eqz v9, :cond_11

    .line 499
    .line 500
    iget-boolean v9, v9, Lnet/blip/libblip/DeviceReach;->n:Z

    .line 501
    .line 502
    if-ne v9, v4, :cond_11

    .line 503
    .line 504
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    invoke-virtual {v6, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_12
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    xor-int/2addr v3, v4

    .line 521
    new-instance v6, Lnet/blip/libblip/DeviceReach;

    .line 522
    .line 523
    const/4 v8, 0x4

    .line 524
    invoke-direct {v6, v8, v5, v3}, Lnet/blip/libblip/DeviceReach;-><init>(IZZ)V

    .line 525
    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_13
    instance-of v3, v14, Lnet/blip/libblip/Peer$Device;

    .line 529
    .line 530
    if-eqz v3, :cond_17

    .line 531
    .line 532
    move-object v3, v14

    .line 533
    check-cast v3, Lnet/blip/libblip/Peer$Device;

    .line 534
    .line 535
    iget-object v3, v3, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 536
    .line 537
    iget-object v6, v3, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 538
    .line 539
    if-nez v6, :cond_14

    .line 540
    .line 541
    new-instance v6, Lnet/blip/libblip/DeviceReach;

    .line 542
    .line 543
    const/4 v3, 0x7

    .line 544
    invoke-direct {v6, v3, v11, v11}, Lnet/blip/libblip/DeviceReach;-><init>(IZZ)V

    .line 545
    .line 546
    .line 547
    :cond_14
    :goto_d
    iget-boolean v3, v6, Lnet/blip/libblip/DeviceReach;->n:Z

    .line 548
    .line 549
    if-nez v3, :cond_15

    .line 550
    .line 551
    iget-boolean v3, v6, Lnet/blip/libblip/DeviceReach;->m:Z

    .line 552
    .line 553
    if-eqz v3, :cond_16

    .line 554
    .line 555
    :cond_15
    move v11, v4

    .line 556
    :cond_16
    xor-int/lit8 v3, v11, 0x1

    .line 557
    .line 558
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 559
    .line 560
    .line 561
    move-result-object v12

    .line 562
    goto :goto_e

    .line 563
    :cond_17
    invoke-static {}, Lk8;->e()V

    .line 564
    .line 565
    .line 566
    const/4 v12, 0x0

    .line 567
    goto :goto_11

    .line 568
    :cond_18
    const/4 v12, 0x0

    .line 569
    :goto_e
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_19

    .line 576
    .line 577
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 578
    .line 579
    .line 580
    move-result-wide v2

    .line 581
    invoke-static {v2, v3}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    goto :goto_f

    .line 586
    :cond_19
    if-eqz v14, :cond_1a

    .line 587
    .line 588
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->d()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    if-nez v3, :cond_1b

    .line 593
    .line 594
    :cond_1a
    move-object v3, v10

    .line 595
    :cond_1b
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    :goto_f
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    sget-object v2, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 603
    .line 604
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    if-eqz v14, :cond_1d

    .line 612
    .line 613
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    if-nez v2, :cond_1c

    .line 618
    .line 619
    goto :goto_10

    .line 620
    :cond_1c
    move-object v10, v2

    .line 621
    :cond_1d
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    const-string v3, "Waiting for "

    .line 624
    .line 625
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v3, " to accept\u2026"

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v7, v15, v0}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 650
    .line 651
    .line 652
    sget v0, Lnet/blip/android/notifications/Colors;->a:I

    .line 653
    .line 654
    iput v0, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 655
    .line 656
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 657
    .line 658
    .line 659
    const v0, 0x7f08013c

    .line 660
    .line 661
    .line 662
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 663
    .line 664
    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 665
    .line 666
    move-object v12, v13

    .line 667
    :goto_11
    return-object v12

    .line 668
    :pswitch_2
    move-object/from16 v1, p1

    .line 669
    .line 670
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 676
    .line 677
    .line 678
    move-result-wide v2

    .line 679
    invoke-static {v2, v3}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    mul-float v3, v3, v16

    .line 688
    .line 689
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    sget-object v2, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 709
    .line 710
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-static {v0, v14}, Lnet/blip/shared/StringsKt;->b(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v2, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v7, v15, v2}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 731
    .line 732
    .line 733
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->d(Lnet/blip/libblip/frontend/Transfer;)Lnet/blip/libblip/frontend/TransferErr;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->t:Lnet/blip/libblip/frontend/TransferErr;

    .line 738
    .line 739
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_1e

    .line 744
    .line 745
    sget-object v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->a:Ljava/lang/String;

    .line 746
    .line 747
    iget-object v0, v7, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 748
    .line 749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    new-instance v3, Landroid/content/Intent;

    .line 753
    .line 754
    const-class v4, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;

    .line 755
    .line 756
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    .line 758
    .line 759
    sget-object v4, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->d:Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    .line 763
    .line 764
    sget-object v4, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 765
    .line 766
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    .line 772
    .line 773
    sget-object v4, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    .line 777
    .line 778
    invoke-static {v0, v3, v2}, Lnet/blip/android/notifications/NotificationFactoryKt;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    .line 783
    .line 784
    const-string v3, "Resume"

    .line 785
    .line 786
    const/4 v4, 0x0

    .line 787
    invoke-direct {v2, v4, v3, v0}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 791
    .line 792
    .line 793
    :cond_1e
    sget v0, Lnet/blip/android/notifications/Colors;->c:I

    .line 794
    .line 795
    iput v0, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 796
    .line 797
    const v0, 0x7f08013d

    .line 798
    .line 799
    .line 800
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 801
    .line 802
    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 803
    .line 804
    return-object v13

    .line 805
    :pswitch_3
    move-object/from16 v1, p1

    .line 806
    .line 807
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 808
    .line 809
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    .line 811
    .line 812
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 813
    .line 814
    const-string v4, "Reconnecting\u2026"

    .line 815
    .line 816
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    sget-object v4, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 820
    .line 821
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    iget-object v4, v0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 829
    .line 830
    invoke-virtual {v7, v15, v4}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 831
    .line 832
    .line 833
    move-result-object v4

    .line 834
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 835
    .line 836
    .line 837
    invoke-static {v0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 838
    .line 839
    .line 840
    move-result-wide v7

    .line 841
    long-to-int v4, v7

    .line 842
    iget-wide v7, v0, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 843
    .line 844
    long-to-int v7, v7

    .line 845
    iput v4, v1, Landroidx/core/app/NotificationCompat$Builder;->n:I

    .line 846
    .line 847
    iput v7, v1, Landroidx/core/app/NotificationCompat$Builder;->o:I

    .line 848
    .line 849
    iput-boolean v11, v1, Landroidx/core/app/NotificationCompat$Builder;->p:Z

    .line 850
    .line 851
    iget-object v0, v0, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 852
    .line 853
    sget-object v4, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 854
    .line 855
    if-ne v0, v4, :cond_21

    .line 856
    .line 857
    if-eqz v14, :cond_20

    .line 858
    .line 859
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    if-nez v0, :cond_1f

    .line 864
    .line 865
    goto :goto_12

    .line 866
    :cond_1f
    move-object v10, v0

    .line 867
    :cond_20
    :goto_12
    const-string v0, "Downloading from "

    .line 868
    .line 869
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    iput v6, v2, Landroid/app/Notification;->icon:I

    .line 877
    .line 878
    goto :goto_14

    .line 879
    :cond_21
    if-eqz v14, :cond_23

    .line 880
    .line 881
    invoke-virtual {v14}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    if-nez v0, :cond_22

    .line 886
    .line 887
    goto :goto_13

    .line 888
    :cond_22
    move-object v10, v0

    .line 889
    :cond_23
    :goto_13
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 897
    .line 898
    :goto_14
    sget v0, Lnet/blip/android/notifications/Colors;->a:I

    .line 899
    .line 900
    iput v0, v1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 901
    .line 902
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 903
    .line 904
    .line 905
    return-object v13

    .line 906
    nop

    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
