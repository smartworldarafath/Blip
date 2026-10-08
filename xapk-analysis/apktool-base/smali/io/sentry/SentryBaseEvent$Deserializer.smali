.class public abstract Lio/sentry/SentryBaseEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public static a(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :sswitch_0
    const-string v0, "platform"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    const/16 v3, 0xd

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_1
    const-string v0, "request"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    const/16 v3, 0xc

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :sswitch_2
    const-string v0, "release"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_2
    const/16 v3, 0xb

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :sswitch_3
    const-string v0, "event_id"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_3
    const/16 v3, 0xa

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :sswitch_4
    const-string v0, "extra"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_4
    const/16 v3, 0x9

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_5
    const-string v0, "user"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_5
    const/16 v3, 0x8

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :sswitch_6
    const-string v0, "tags"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    const/4 v3, 0x7

    .line 107
    goto :goto_0

    .line 108
    :sswitch_7
    const-string v0, "dist"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const/4 v3, 0x6

    .line 118
    goto :goto_0

    .line 119
    :sswitch_8
    const-string v0, "sdk"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    const/4 v3, 0x5

    .line 129
    goto :goto_0

    .line 130
    :sswitch_9
    const-string v0, "breadcrumbs"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const/4 v3, 0x4

    .line 140
    goto :goto_0

    .line 141
    :sswitch_a
    const-string v0, "environment"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_a

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_a
    const/4 v3, 0x3

    .line 151
    goto :goto_0

    .line 152
    :sswitch_b
    const-string v0, "contexts"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_b
    const/4 v3, 0x2

    .line 162
    goto :goto_0

    .line 163
    :sswitch_c
    const-string v0, "server_name"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_c

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_c
    move v3, v2

    .line 173
    goto :goto_0

    .line 174
    :sswitch_d
    const-string v0, "debug_meta"

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_d

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_d
    move v3, v1

    .line 184
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    return v1

    .line 188
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 193
    .line 194
    return v2

    .line 195
    :pswitch_1
    new-instance p1, Lio/sentry/protocol/Request$Deserializer;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lio/sentry/protocol/Request;

    .line 205
    .line 206
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 207
    .line 208
    return v2

    .line 209
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 214
    .line 215
    return v2

    .line 216
    :pswitch_3
    new-instance p1, Lio/sentry/protocol/SentryId$Deserializer;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lio/sentry/protocol/SentryId;

    .line 226
    .line 227
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 228
    .line 229
    return v2

    .line 230
    :pswitch_4
    invoke-interface {p2}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Ljava/util/Map;

    .line 235
    .line 236
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 241
    .line 242
    return v2

    .line 243
    :pswitch_5
    new-instance p1, Lio/sentry/protocol/User$Deserializer;

    .line 244
    .line 245
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Lio/sentry/protocol/User;

    .line 253
    .line 254
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 255
    .line 256
    return v2

    .line 257
    :pswitch_6
    invoke-interface {p2}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Ljava/util/Map;

    .line 262
    .line 263
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 268
    .line 269
    return v2

    .line 270
    :pswitch_7
    invoke-interface {p2}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 275
    .line 276
    return v2

    .line 277
    :pswitch_8
    new-instance p1, Lio/sentry/protocol/SdkVersion$Deserializer;

    .line 278
    .line 279
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Lio/sentry/protocol/SdkVersion;

    .line 287
    .line 288
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 289
    .line 290
    return v2

    .line 291
    :pswitch_9
    new-instance p1, Lio/sentry/Breadcrumb$Deserializer;

    .line 292
    .line 293
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 301
    .line 302
    return v2

    .line 303
    :pswitch_a
    invoke-interface {p2}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 308
    .line 309
    return v2

    .line 310
    :pswitch_b
    invoke-static {p2, p3}, Lio/sentry/protocol/Contexts$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object p0, p0, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 315
    .line 316
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->l(Lio/sentry/protocol/Contexts;)V

    .line 317
    .line 318
    .line 319
    return v2

    .line 320
    :pswitch_c
    invoke-interface {p2}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 325
    .line 326
    return v2

    .line 327
    :pswitch_d
    new-instance p1, Lio/sentry/protocol/DebugMeta$Deserializer;

    .line 328
    .line 329
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-interface {p2, p3, p1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Lio/sentry/protocol/DebugMeta;

    .line 337
    .line 338
    iput-object p1, p0, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 339
    .line 340
    return v2

    .line 341
    :sswitch_data_0
    .sparse-switch
        -0x6db2cb8f -> :sswitch_d
        -0x2d39e9f9 -> :sswitch_c
        -0x21d07f5c -> :sswitch_b
        -0x51ecded -> :sswitch_a
        -0x3112f30 -> :sswitch_9
        0x1bc3a -> :sswitch_8
        0x2f0da6 -> :sswitch_7
        0x363419 -> :sswitch_6
        0x36ebcb -> :sswitch_5
        0x5c79410 -> :sswitch_4
        0x1093c0e0 -> :sswitch_3
        0x41012807 -> :sswitch_2
        0x414ef28f -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
