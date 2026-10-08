.class public final Lio/sentry/SentryMetricsEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryMetricsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryMetricsEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, v0

    .line 7
    move-object v2, v1

    .line 8
    move-object v3, v2

    .line 9
    move-object v4, v3

    .line 10
    move-object v5, v4

    .line 11
    move-object v6, v5

    .line 12
    move-object v7, v6

    .line 13
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    sget-object v9, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 18
    .line 19
    if-ne v8, v9, :cond_9

    .line 20
    .line 21
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const/4 v10, -0x1

    .line 33
    sparse-switch v9, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :sswitch_0
    const-string v9, "trace_id"

    .line 39
    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v10, 0x7

    .line 48
    goto :goto_1

    .line 49
    :sswitch_1
    const-string v9, "attributes"

    .line 50
    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v10, 0x6

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v9, "value"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const/4 v10, 0x5

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string v9, "timestamp"

    .line 72
    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-nez v9, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/4 v10, 0x4

    .line 81
    goto :goto_1

    .line 82
    :sswitch_4
    const-string v9, "unit"

    .line 83
    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-nez v9, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 v10, 0x3

    .line 92
    goto :goto_1

    .line 93
    :sswitch_5
    const-string v9, "type"

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    const/4 v10, 0x2

    .line 103
    goto :goto_1

    .line 104
    :sswitch_6
    const-string v9, "name"

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-nez v9, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    const/4 v10, 0x1

    .line 114
    goto :goto_1

    .line 115
    :sswitch_7
    const-string v9, "span_id"

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-nez v9, :cond_7

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    const/4 v10, 0x0

    .line 125
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 126
    .line 127
    .line 128
    if-nez v2, :cond_8

    .line 129
    .line 130
    new-instance v2, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_8
    invoke-interface {p1, p2, v2, v8}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :pswitch_0
    new-instance p0, Lio/sentry/protocol/SentryId$Deserializer;

    .line 140
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, p2, p0}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lio/sentry/protocol/SentryId;

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_1
    new-instance v5, Lio/sentry/SentryLogEventAttributeValue$Deserializer;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, p2, v5}, Lio/sentry/ObjectReader;->Q(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/HashMap;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_7
    new-instance v6, Lio/sentry/SpanId$Deserializer;

    .line 194
    .line 195
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Lio/sentry/SpanId;

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 207
    .line 208
    .line 209
    if-eqz p0, :cond_e

    .line 210
    .line 211
    if-eqz v0, :cond_d

    .line 212
    .line 213
    if-eqz v1, :cond_c

    .line 214
    .line 215
    if-eqz v3, :cond_b

    .line 216
    .line 217
    if-eqz v4, :cond_a

    .line 218
    .line 219
    new-instance p1, Lio/sentry/SentryMetricsEvent;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object p0, p1, Lio/sentry/SentryMetricsEvent;->j:Lio/sentry/protocol/SentryId;

    .line 225
    .line 226
    iput-object v0, p1, Lio/sentry/SentryMetricsEvent;->l:Ljava/lang/Double;

    .line 227
    .line 228
    iput-object v3, p1, Lio/sentry/SentryMetricsEvent;->m:Ljava/lang/String;

    .line 229
    .line 230
    iput-object v1, p1, Lio/sentry/SentryMetricsEvent;->o:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v4, p1, Lio/sentry/SentryMetricsEvent;->p:Ljava/lang/Double;

    .line 233
    .line 234
    iput-object v5, p1, Lio/sentry/SentryMetricsEvent;->q:Ljava/util/Map;

    .line 235
    .line 236
    iput-object v6, p1, Lio/sentry/SentryMetricsEvent;->k:Lio/sentry/SpanId;

    .line 237
    .line 238
    iput-object v7, p1, Lio/sentry/SentryMetricsEvent;->n:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v2, p1, Lio/sentry/SentryMetricsEvent;->r:Ljava/util/HashMap;

    .line 241
    .line 242
    return-object p1

    .line 243
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 244
    .line 245
    const-string p1, "Missing required field \"value\""

    .line 246
    .line 247
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 251
    .line 252
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    throw p0

    .line 256
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string p1, "Missing required field \"name\""

    .line 259
    .line 260
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 264
    .line 265
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw p0

    .line 269
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 270
    .line 271
    const-string p1, "Missing required field \"type\""

    .line 272
    .line 273
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 277
    .line 278
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    const-string p1, "Missing required field \"timestamp\""

    .line 285
    .line 286
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 290
    .line 291
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p0

    .line 295
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 296
    .line 297
    const-string p1, "Missing required field \"trace_id\""

    .line 298
    .line 299
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 303
    .line 304
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    .line 306
    .line 307
    throw p0

    .line 308
    nop

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36d984 -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x6ac9171 -> :sswitch_2
        0x182da957 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
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
    :pswitch_data_0
    .packed-switch 0x0
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
