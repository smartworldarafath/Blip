.class public final Lio/sentry/TraceContext$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/TraceContext;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 1
    const-string v0, "Missing required field \""

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    invoke-interface {p1, v1, p0, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->H0()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v3, v1

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
    move-object v10, v9

    .line 15
    move-object v11, v10

    .line 16
    move-object v12, v11

    .line 17
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v13, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 22
    .line 23
    const-string v14, "public_key"

    .line 24
    .line 25
    const-string v15, "trace_id"

    .line 26
    .line 27
    if-ne v2, v13, :cond_b

    .line 28
    .line 29
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v13

    .line 40
    const/16 v16, -0x1

    .line 41
    .line 42
    sparse-switch v13, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :sswitch_0
    const-string v13, "transaction"

    .line 48
    .line 49
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-nez v13, :cond_0

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    const/16 v16, 0x9

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_1
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_1
    const/16 v16, 0x8

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_2
    const-string v13, "sampled"

    .line 74
    .line 75
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-nez v13, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/16 v16, 0x7

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :sswitch_3
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    if-nez v13, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/16 v16, 0x6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :sswitch_4
    const-string v13, "release"

    .line 96
    .line 97
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-nez v13, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/16 v16, 0x5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :sswitch_5
    const-string v13, "sample_rate"

    .line 108
    .line 109
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-nez v13, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/16 v16, 0x4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :sswitch_6
    const-string v13, "sample_rand"

    .line 120
    .line 121
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-nez v13, :cond_6

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    const/16 v16, 0x3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_7
    const-string v13, "environment"

    .line 132
    .line 133
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-nez v13, :cond_7

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const/16 v16, 0x2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :sswitch_8
    const-string v13, "user_id"

    .line 144
    .line 145
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-nez v13, :cond_8

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_8
    const/16 v16, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_9
    const-string v13, "replay_id"

    .line 156
    .line 157
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-nez v13, :cond_9

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_9
    const/16 v16, 0x0

    .line 165
    .line 166
    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 167
    .line 168
    .line 169
    if-nez v1, :cond_a

    .line 170
    .line 171
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 174
    .line 175
    .line 176
    :cond_a
    move-object/from16 v13, p1

    .line 177
    .line 178
    invoke-interface {v13, v0, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :pswitch_0
    move-object/from16 v13, p1

    .line 184
    .line 185
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object v8, v2

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_1
    move-object/from16 v13, p1

    .line 193
    .line 194
    invoke-interface {v13}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    move-object v4, v2

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_2
    move-object/from16 v13, p1

    .line 202
    .line 203
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object v10, v2

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_3
    move-object/from16 v13, p1

    .line 211
    .line 212
    invoke-static {v13}, Lio/sentry/protocol/SentryId$Deserializer;->b(Lio/sentry/ObjectReader;)Lio/sentry/protocol/SentryId;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    move-object v3, v2

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_4
    move-object/from16 v13, p1

    .line 220
    .line 221
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    move-object v5, v2

    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_5
    move-object/from16 v13, p1

    .line 229
    .line 230
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    move-object v9, v2

    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_6
    move-object/from16 v13, p1

    .line 238
    .line 239
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    move-object v12, v2

    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_7
    move-object/from16 v13, p1

    .line 247
    .line 248
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    move-object v6, v2

    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_8
    move-object/from16 v13, p1

    .line 256
    .line 257
    invoke-interface {v13}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    move-object v7, v2

    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_9
    move-object/from16 v13, p1

    .line 265
    .line 266
    invoke-static {v13}, Lio/sentry/protocol/SentryId$Deserializer;->b(Lio/sentry/ObjectReader;)Lio/sentry/protocol/SentryId;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    move-object v11, v2

    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_b
    move-object/from16 v13, p1

    .line 274
    .line 275
    if-eqz v3, :cond_d

    .line 276
    .line 277
    if-eqz v4, :cond_c

    .line 278
    .line 279
    new-instance v2, Lio/sentry/TraceContext;

    .line 280
    .line 281
    invoke-direct/range {v2 .. v12}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iput-object v1, v2, Lio/sentry/TraceContext;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    .line 286
    invoke-interface {v13}, Lio/sentry/ObjectReader;->i0()V

    .line 287
    .line 288
    .line 289
    return-object v2

    .line 290
    :cond_c
    invoke-static {v14, v0}, Lio/sentry/TraceContext$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    throw v0

    .line 295
    :cond_d
    invoke-static {v15, v0}, Lio/sentry/TraceContext$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    throw v0

    .line 300
    nop

    .line 301
    :sswitch_data_0
    .sparse-switch
        -0x1b1b338d -> :sswitch_9
        -0x8c511f1 -> :sswitch_8
        -0x51ecded -> :sswitch_7
        0x921899a -> :sswitch_6
        0x9218a55 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6f273ffa -> :sswitch_2
        0x71892389 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

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
