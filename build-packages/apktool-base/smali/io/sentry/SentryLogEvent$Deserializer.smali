.class public final Lio/sentry/SentryLogEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryLogEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 10

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
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 17
    .line 18
    if-ne v7, v8, :cond_8

    .line 19
    .line 20
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, -0x1

    .line 32
    sparse-switch v8, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :sswitch_0
    const-string v8, "trace_id"

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v9, 0x6

    .line 46
    goto :goto_1

    .line 47
    :sswitch_1
    const-string v8, "attributes"

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-nez v8, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v9, 0x5

    .line 57
    goto :goto_1

    .line 58
    :sswitch_2
    const-string v8, "level"

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v9, 0x4

    .line 68
    goto :goto_1

    .line 69
    :sswitch_3
    const-string v8, "timestamp"

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v9, 0x3

    .line 79
    goto :goto_1

    .line 80
    :sswitch_4
    const-string v8, "body"

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v9, 0x2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_5
    const-string v8, "severity_number"

    .line 92
    .line 93
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const/4 v9, 0x1

    .line 101
    goto :goto_1

    .line 102
    :sswitch_6
    const-string v8, "span_id"

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const/4 v9, 0x0

    .line 112
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    if-nez v2, :cond_7

    .line 116
    .line 117
    new-instance v2, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-interface {p1, p2, v2, v7}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_0
    new-instance p0, Lio/sentry/protocol/SentryId$Deserializer;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, p2, p0}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lio/sentry/protocol/SentryId;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v4, Lio/sentry/SentryLogEventAttributeValue$Deserializer;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, p2, v4}, Lio/sentry/ObjectReader;->Q(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/HashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_2
    new-instance v3, Lio/sentry/SentryLogLevel$Deserializer;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lio/sentry/SentryLogLevel;

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_6
    new-instance v6, Lio/sentry/SpanId$Deserializer;

    .line 181
    .line 182
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Lio/sentry/SpanId;

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 194
    .line 195
    .line 196
    if-eqz p0, :cond_c

    .line 197
    .line 198
    if-eqz v0, :cond_b

    .line 199
    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    if-eqz v3, :cond_9

    .line 203
    .line 204
    new-instance p1, Lio/sentry/SentryLogEvent;

    .line 205
    .line 206
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    iput-object p0, p1, Lio/sentry/SentryLogEvent;->j:Lio/sentry/protocol/SentryId;

    .line 210
    .line 211
    iput-object v0, p1, Lio/sentry/SentryLogEvent;->l:Ljava/lang/Double;

    .line 212
    .line 213
    iput-object v1, p1, Lio/sentry/SentryLogEvent;->m:Ljava/lang/String;

    .line 214
    .line 215
    iput-object v3, p1, Lio/sentry/SentryLogEvent;->n:Lio/sentry/SentryLogLevel;

    .line 216
    .line 217
    iput-object v4, p1, Lio/sentry/SentryLogEvent;->p:Ljava/util/Map;

    .line 218
    .line 219
    iput-object v5, p1, Lio/sentry/SentryLogEvent;->o:Ljava/lang/Integer;

    .line 220
    .line 221
    iput-object v6, p1, Lio/sentry/SentryLogEvent;->k:Lio/sentry/SpanId;

    .line 222
    .line 223
    iput-object v2, p1, Lio/sentry/SentryLogEvent;->q:Ljava/util/HashMap;

    .line 224
    .line 225
    return-object p1

    .line 226
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    const-string p1, "Missing required field \"level\""

    .line 229
    .line 230
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 234
    .line 235
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 240
    .line 241
    const-string p1, "Missing required field \"body\""

    .line 242
    .line 243
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 247
    .line 248
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 253
    .line 254
    const-string p1, "Missing required field \"timestamp\""

    .line 255
    .line 256
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 260
    .line 261
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 266
    .line 267
    const-string p1, "Missing required field \"trace_id\""

    .line 268
    .line 269
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 273
    .line 274
    invoke-interface {p2, v0, p1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    nop

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_6
        -0x60432135 -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x182da957 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
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
