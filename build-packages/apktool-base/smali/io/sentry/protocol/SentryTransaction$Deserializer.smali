.class public final Lio/sentry/protocol/SentryTransaction$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryTransaction;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lio/sentry/protocol/SentryTransaction;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lio/sentry/protocol/TransactionInfo;

    .line 17
    .line 18
    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 19
    .line 20
    invoke-virtual {v3}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/protocol/SentryTransaction;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;Lio/sentry/protocol/TransactionInfo;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    move-object v1, v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 37
    .line 38
    if-ne v2, v3, :cond_c

    .line 39
    .line 40
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, -0x1

    .line 52
    sparse-switch v3, :sswitch_data_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :sswitch_0
    const-string v3, "transaction"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v4, 0x6

    .line 66
    goto :goto_1

    .line 67
    :sswitch_1
    const-string v3, "transaction_info"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v4, 0x5

    .line 77
    goto :goto_1

    .line 78
    :sswitch_2
    const-string v3, "spans"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v4, 0x4

    .line 88
    goto :goto_1

    .line 89
    :sswitch_3
    const-string v3, "timestamp"

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/4 v4, 0x3

    .line 99
    goto :goto_1

    .line 100
    :sswitch_4
    const-string v3, "type"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const/4 v4, 0x2

    .line 110
    goto :goto_1

    .line 111
    :sswitch_5
    const-string v3, "measurements"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    const/4 v4, 0x1

    .line 121
    goto :goto_1

    .line 122
    :sswitch_6
    const-string v3, "start_timestamp"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_7

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    const/4 v4, 0x0

    .line 132
    :goto_1
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    packed-switch v4, :pswitch_data_0

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v2, p1, p2}, Lio/sentry/SentryBaseEvent$Deserializer;->a(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_0

    .line 145
    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->y:Ljava/lang/String;

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 166
    .line 167
    .line 168
    move-object v2, v0

    .line 169
    move-object v3, v2

    .line 170
    :goto_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 175
    .line 176
    if-ne v4, v5, :cond_b

    .line 177
    .line 178
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    const-string v5, "source"

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-nez v5, :cond_a

    .line 192
    .line 193
    if-nez v3, :cond_9

    .line 194
    .line 195
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 198
    .line 199
    .line 200
    :cond_9
    invoke-interface {p1, p2, v3, v4}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    goto :goto_2

    .line 209
    :cond_b
    new-instance v4, Lio/sentry/protocol/TransactionInfo;

    .line 210
    .line 211
    invoke-direct {v4, v2}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iput-object v3, v4, Lio/sentry/protocol/TransactionInfo;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    .line 216
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 217
    .line 218
    .line 219
    iput-object v4, p0, Lio/sentry/protocol/SentryTransaction;->D:Lio/sentry/protocol/TransactionInfo;

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :pswitch_2
    new-instance v2, Lio/sentry/protocol/SentrySpan$Deserializer;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_0

    .line 233
    .line 234
    iget-object v3, p0, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_3
    :try_start_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_0

    .line 246
    .line 247
    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :catch_0
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_0

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    long-to-double v2, v2

    .line 262
    div-double/2addr v2, v5

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :pswitch_5
    new-instance v2, Lio/sentry/protocol/MeasurementValue$Deserializer;

    .line 277
    .line 278
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectReader;->Q(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/HashMap;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    if-eqz v2, :cond_0

    .line 286
    .line 287
    iget-object v3, p0, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :pswitch_6
    :try_start_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-eqz v2, :cond_0

    .line 299
    .line 300
    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->z:Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :catch_1
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    if-eqz v2, :cond_0

    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 311
    .line 312
    .line 313
    move-result-wide v2

    .line 314
    long-to-double v2, v2

    .line 315
    div-double/2addr v2, v5

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    iput-object v2, p0, Lio/sentry/protocol/SentryTransaction;->z:Ljava/lang/Double;

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_c
    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->E:Ljava/util/concurrent/ConcurrentHashMap;

    .line 325
    .line 326
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 327
    .line 328
    .line 329
    return-object p0

    .line 330
    nop

    .line 331
    :sswitch_data_0
    .sparse-switch
        -0x5b03aa87 -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x688f269 -> :sswitch_2
        0x1e52656f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
