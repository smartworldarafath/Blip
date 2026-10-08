.class public final Lio/sentry/SpanContext$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SpanContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SpanContext;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;
    .locals 13

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    move-object v2, v1

    .line 7
    move-object v3, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v5, v4

    .line 10
    move-object v6, v5

    .line 11
    move-object v7, v6

    .line 12
    move-object v8, v7

    .line 13
    move-object v9, v8

    .line 14
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 15
    .line 16
    .line 17
    move-result-object v10

    .line 18
    sget-object v11, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 19
    .line 20
    if-ne v10, v11, :cond_a

    .line 21
    .line 22
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    const/4 v12, -0x1

    .line 34
    sparse-switch v11, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_0
    const-string v11, "trace_id"

    .line 40
    .line 41
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    if-nez v11, :cond_0

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    const/16 v12, 0x8

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_1
    const-string v11, "tags"

    .line 54
    .line 55
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    if-nez v11, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v12, 0x7

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v11, "data"

    .line 65
    .line 66
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-nez v11, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v12, 0x6

    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    const-string v11, "op"

    .line 76
    .line 77
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-nez v11, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v12, 0x5

    .line 85
    goto :goto_1

    .line 86
    :sswitch_4
    const-string v11, "status"

    .line 87
    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 v12, 0x4

    .line 96
    goto :goto_1

    .line 97
    :sswitch_5
    const-string v11, "origin"

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-nez v11, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v12, 0x3

    .line 107
    goto :goto_1

    .line 108
    :sswitch_6
    const-string v11, "description"

    .line 109
    .line 110
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    const/4 v12, 0x2

    .line 118
    goto :goto_1

    .line 119
    :sswitch_7
    const-string v11, "parent_span_id"

    .line 120
    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-nez v11, :cond_7

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    const/4 v12, 0x1

    .line 129
    goto :goto_1

    .line 130
    :sswitch_8
    const-string v11, "span_id"

    .line 131
    .line 132
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-nez v11, :cond_8

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_8
    const/4 v12, 0x0

    .line 140
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 141
    .line 142
    .line 143
    if-nez v3, :cond_9

    .line 144
    .line 145
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    :cond_9
    invoke-interface {p0, p1, v3, v10}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_0
    invoke-static {p0}, Lio/sentry/protocol/SentryId$Deserializer;->b(Lio/sentry/ObjectReader;)Lio/sentry/protocol/SentryId;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    check-cast v8, Ljava/util/Map;

    .line 166
    .line 167
    invoke-static {v8}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Ljava/util/Map;

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_4
    new-instance v6, Lio/sentry/SpanStatus$Deserializer;

    .line 188
    .line 189
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, p1, v6}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lio/sentry/SpanStatus;

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_5
    invoke-interface {p0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_7
    new-instance v4, Lio/sentry/SpanId$Deserializer;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-interface {p0, p1, v4}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    check-cast v4, Lio/sentry/SpanId;

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_8
    new-instance v1, Lio/sentry/SpanId;

    .line 226
    .line 227
    invoke-interface {p0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-direct {v1, v10}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_a
    if-eqz v0, :cond_f

    .line 237
    .line 238
    if-eqz v1, :cond_e

    .line 239
    .line 240
    if-nez v2, :cond_b

    .line 241
    .line 242
    const-string v2, ""

    .line 243
    .line 244
    :cond_b
    new-instance p1, Lio/sentry/SpanContext;

    .line 245
    .line 246
    invoke-direct {p1, v0, v1, v2, v4}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 247
    .line 248
    .line 249
    iput-object v5, p1, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 250
    .line 251
    iput-object v6, p1, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 252
    .line 253
    iput-object v7, p1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v8, :cond_c

    .line 256
    .line 257
    iput-object v8, p1, Lio/sentry/SpanContext;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 258
    .line 259
    :cond_c
    if-eqz v9, :cond_d

    .line 260
    .line 261
    iput-object v9, p1, Lio/sentry/SpanContext;->s:Ljava/util/Map;

    .line 262
    .line 263
    :cond_d
    iput-object v3, p1, Lio/sentry/SpanContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    .line 265
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 266
    .line 267
    .line 268
    return-object p1

    .line 269
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 270
    .line 271
    const-string v0, "Missing required field \"span_id\""

    .line 272
    .line 273
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 277
    .line 278
    invoke-interface {p1, v1, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw p0

    .line 282
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 283
    .line 284
    const-string v0, "Missing required field \"trace_id\""

    .line 285
    .line 286
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 290
    .line 291
    invoke-interface {p1, v1, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    throw p0

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_8
        -0x68c5dc65 -> :sswitch_7
        -0x66ca7c04 -> :sswitch_6
        -0x3c1e50da -> :sswitch_5
        -0x3532300e -> :sswitch_4
        0xde1 -> :sswitch_3
        0x2eefaa -> :sswitch_2
        0x363419 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
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
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/SpanContext$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
