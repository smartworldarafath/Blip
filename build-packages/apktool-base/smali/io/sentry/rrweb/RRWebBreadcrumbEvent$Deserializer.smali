.class public final Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebBreadcrumbEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebBreadcrumbEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .locals 10

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 16
    .line 17
    if-ne v3, v4, :cond_11

    .line 18
    .line 19
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v4, "data"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_2

    .line 33
    .line 34
    invoke-static {v0, v3, p0, p1}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->a(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p0, p1, v2, v3}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 52
    .line 53
    .line 54
    move-object v3, v1

    .line 55
    :goto_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 60
    .line 61
    if-ne v5, v6, :cond_10

    .line 62
    .line 63
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v6, "payload"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_6

    .line 77
    .line 78
    const-string v6, "tag"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-interface {p0, p1, v3, v5}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    if-nez v5, :cond_5

    .line 102
    .line 103
    const-string v5, ""

    .line 104
    .line 105
    :cond_5
    iput-object v5, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->l:Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 109
    .line 110
    .line 111
    move-object v5, v1

    .line 112
    :cond_7
    :goto_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 117
    .line 118
    if-ne v6, v7, :cond_f

    .line 119
    .line 120
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, -0x1

    .line 133
    sparse-switch v7, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :sswitch_0
    const-string v7, "message"

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-nez v7, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    const/4 v9, 0x5

    .line 147
    goto :goto_3

    .line 148
    :sswitch_1
    const-string v7, "level"

    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_9

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_9
    const/4 v9, 0x4

    .line 158
    goto :goto_3

    .line 159
    :sswitch_2
    const-string v7, "timestamp"

    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_a

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_a
    const/4 v9, 0x3

    .line 169
    goto :goto_3

    .line 170
    :sswitch_3
    const-string v7, "category"

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-nez v7, :cond_b

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_b
    const/4 v9, 0x2

    .line 180
    goto :goto_3

    .line 181
    :sswitch_4
    const-string v7, "type"

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_c

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_c
    const/4 v9, 0x1

    .line 191
    goto :goto_3

    .line 192
    :sswitch_5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_d

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_d
    move v9, v8

    .line 200
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 201
    .line 202
    .line 203
    if-nez v5, :cond_e

    .line 204
    .line 205
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    .line 207
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    :cond_e
    invoke-interface {p0, p1, v5, v6}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :pswitch_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    iput-object v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->p:Ljava/lang/String;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_1
    :try_start_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-static {v6}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iput-object v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->q:Lio/sentry/SentryLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catch_0
    move-exception v6

    .line 239
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 240
    .line 241
    const-string v9, "Error when deserializing SentryLevel"

    .line 242
    .line 243
    new-array v8, v8, [Ljava/lang/Object;

    .line 244
    .line 245
    invoke-interface {p1, v7, v6, v9, v8}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextDouble()D

    .line 251
    .line 252
    .line 253
    move-result-wide v6

    .line 254
    iput-wide v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->m:D

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    iput-object v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->o:Ljava/lang/String;

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    iput-object v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->n:Ljava/lang/String;

    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :pswitch_5
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Ljava/util/Map;

    .line 279
    .line 280
    invoke-static {v6}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    if-eqz v6, :cond_7

    .line 285
    .line 286
    iput-object v6, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_f
    iput-object v5, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    .line 292
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_10
    iput-object v3, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 298
    .line 299
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_11
    iput-object v2, v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->s:Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 307
    .line 308
    .line 309
    return-object v0

    .line 310
    nop

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-static {p1, p2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
