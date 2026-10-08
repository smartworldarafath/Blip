.class public final Lio/sentry/SentryReplayEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryReplayEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryReplayEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance p0, Lio/sentry/SentryReplayEvent;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/SentryReplayEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move-object v1, v0

    .line 11
    move-object v2, v1

    .line 12
    move-object v3, v2

    .line 13
    move-object v4, v3

    .line 14
    move-object v5, v4

    .line 15
    move-object v6, v5

    .line 16
    move-object v7, v6

    .line 17
    move-object v8, v7

    .line 18
    move-object v9, v8

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    sget-object v11, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 24
    .line 25
    if-ne v10, v11, :cond_b

    .line 26
    .line 27
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    const/4 v12, -0x1

    .line 39
    sparse-switch v11, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :sswitch_0
    const-string v11, "segment_id"

    .line 45
    .line 46
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    const/16 v12, 0x8

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :sswitch_1
    const-string v11, "replay_type"

    .line 59
    .line 60
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-nez v11, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v12, 0x7

    .line 68
    goto :goto_1

    .line 69
    :sswitch_2
    const-string v11, "trace_ids"

    .line 70
    .line 71
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v12, 0x6

    .line 79
    goto :goto_1

    .line 80
    :sswitch_3
    const-string v11, "error_ids"

    .line 81
    .line 82
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-nez v11, :cond_4

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const/4 v12, 0x5

    .line 90
    goto :goto_1

    .line 91
    :sswitch_4
    const-string v11, "timestamp"

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-nez v11, :cond_5

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    const/4 v12, 0x4

    .line 101
    goto :goto_1

    .line 102
    :sswitch_5
    const-string v11, "urls"

    .line 103
    .line 104
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-nez v11, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    const/4 v12, 0x3

    .line 112
    goto :goto_1

    .line 113
    :sswitch_6
    const-string v11, "type"

    .line 114
    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    const/4 v12, 0x2

    .line 123
    goto :goto_1

    .line 124
    :sswitch_7
    const-string v11, "replay_start_timestamp"

    .line 125
    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-nez v11, :cond_8

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_8
    const/4 v12, 0x1

    .line 134
    goto :goto_1

    .line 135
    :sswitch_8
    const-string v11, "replay_id"

    .line 136
    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-nez v11, :cond_9

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_9
    const/4 v12, 0x0

    .line 145
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v10, p1, p2}, Lio/sentry/SentryBaseEvent$Deserializer;->a(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-nez v11, :cond_0

    .line 153
    .line 154
    if-nez v4, :cond_a

    .line 155
    .line 156
    new-instance v4, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    :cond_a
    invoke-interface {p1, p2, v4, v10}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_1
    new-instance v1, Lio/sentry/SentryReplayEvent$ReplayType$Deserializer;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, p2, v1}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lio/sentry/SentryReplayEvent$ReplayType;

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    check-cast v9, Ljava/util/List;

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    check-cast v8, Ljava/util/List;

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_4
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Ljava/util/List;

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_7
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_8
    new-instance v5, Lio/sentry/protocol/SentryId$Deserializer;

    .line 228
    .line 229
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, p2, v5}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Lio/sentry/protocol/SentryId;

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 241
    .line 242
    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    iput-object v0, p0, Lio/sentry/SentryReplayEvent;->z:Ljava/lang/String;

    .line 246
    .line 247
    :cond_c
    if-eqz v1, :cond_d

    .line 248
    .line 249
    iput-object v1, p0, Lio/sentry/SentryReplayEvent;->A:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 250
    .line 251
    :cond_d
    if-eqz v2, :cond_e

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p0, Lio/sentry/SentryReplayEvent;->C:I

    .line 258
    .line 259
    :cond_e
    if-eqz v3, :cond_f

    .line 260
    .line 261
    iput-object v3, p0, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 262
    .line 263
    :cond_f
    iput-object v5, p0, Lio/sentry/SentryReplayEvent;->B:Lio/sentry/protocol/SentryId;

    .line 264
    .line 265
    iput-object v6, p0, Lio/sentry/SentryReplayEvent;->E:Ljava/util/Date;

    .line 266
    .line 267
    iput-object v7, p0, Lio/sentry/SentryReplayEvent;->F:Ljava/util/List;

    .line 268
    .line 269
    iput-object v8, p0, Lio/sentry/SentryReplayEvent;->G:Ljava/util/List;

    .line 270
    .line 271
    iput-object v9, p0, Lio/sentry/SentryReplayEvent;->H:Ljava/util/List;

    .line 272
    .line 273
    iput-object v4, p0, Lio/sentry/SentryReplayEvent;->I:Ljava/util/HashMap;

    .line 274
    .line 275
    return-object p0

    .line 276
    nop

    .line 277
    :sswitch_data_0
    .sparse-switch
        -0x1b1b338d -> :sswitch_8
        -0xfbcbadf -> :sswitch_7
        0x368f3a -> :sswitch_6
        0x36e8e4 -> :sswitch_5
        0x3492916 -> :sswitch_4
        0x13a95401 -> :sswitch_3
        0x2b308cbe -> :sswitch_2
        0x3ee8d892 -> :sswitch_1
        0x403ba1a7 -> :sswitch_0
    .end sparse-switch

    .line 278
    .line 279
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
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
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
