.class public final Lio/sentry/protocol/Request$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Request;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lio/sentry/protocol/Request;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 15
    .line 16
    if-ne v1, v2, :cond_d

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    sparse-switch v2, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string v2, "api_target"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    const/16 v3, 0xa

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v2, "query_string"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_2
    const/16 v3, 0x9

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_2
    const-string v2, "body_size"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_3
    const/16 v3, 0x8

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_3
    const-string v2, "cookies"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v3, 0x7

    .line 87
    goto :goto_1

    .line 88
    :sswitch_4
    const-string v2, "headers"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v3, 0x6

    .line 98
    goto :goto_1

    .line 99
    :sswitch_5
    const-string v2, "other"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    const/4 v3, 0x5

    .line 109
    goto :goto_1

    .line 110
    :sswitch_6
    const-string v2, "data"

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v3, 0x4

    .line 120
    goto :goto_1

    .line 121
    :sswitch_7
    const-string v2, "url"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_8

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    const/4 v3, 0x3

    .line 131
    goto :goto_1

    .line 132
    :sswitch_8
    const-string v2, "env"

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_9

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    const/4 v3, 0x2

    .line 142
    goto :goto_1

    .line 143
    :sswitch_9
    const-string v2, "method"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_a

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_a
    const/4 v3, 0x1

    .line 153
    goto :goto_1

    .line 154
    :sswitch_a
    const-string v2, "fragment"

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_b

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_b
    const/4 v3, 0x0

    .line 164
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 165
    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    :cond_c
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iput-object v1, p0, Lio/sentry/protocol/Request;->t:Ljava/lang/String;

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iput-object v1, p0, Lio/sentry/protocol/Request;->l:Ljava/lang/String;

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, p0, Lio/sentry/protocol/Request;->q:Ljava/lang/Long;

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, p0, Lio/sentry/protocol/Request;->n:Ljava/lang/String;

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Ljava/util/Map;

    .line 216
    .line 217
    if-eqz v1, :cond_0

    .line 218
    .line 219
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, p0, Lio/sentry/protocol/Request;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Ljava/util/Map;

    .line 232
    .line 233
    if-eqz v1, :cond_0

    .line 234
    .line 235
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iput-object v1, p0, Lio/sentry/protocol/Request;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iput-object v1, p0, Lio/sentry/protocol/Request;->m:Ljava/lang/Object;

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iput-object v1, p0, Lio/sentry/protocol/Request;->j:Ljava/lang/String;

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Ljava/util/Map;

    .line 264
    .line 265
    if-eqz v1, :cond_0

    .line 266
    .line 267
    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iput-object v1, p0, Lio/sentry/protocol/Request;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, p0, Lio/sentry/protocol/Request;->k:Ljava/lang/String;

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    iput-object v1, p0, Lio/sentry/protocol/Request;->s:Ljava/lang/String;

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_d
    iput-object v0, p0, Lio/sentry/protocol/Request;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 292
    .line 293
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 294
    .line 295
    .line 296
    return-object p0

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x625d1db0 -> :sswitch_a
        -0x403a2f1f -> :sswitch_9
        0x188ed -> :sswitch_8
        0x1c56f -> :sswitch_7
        0x2eefaa -> :sswitch_6
        0x6527f10 -> :sswitch_5
        0x2f676f86 -> :sswitch_4
        0x38c1428f -> :sswitch_3
        0x4aaf147e -> :sswitch_2
        0x5f165368 -> :sswitch_1
        0x760e4356 -> :sswitch_0
    .end sparse-switch

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
