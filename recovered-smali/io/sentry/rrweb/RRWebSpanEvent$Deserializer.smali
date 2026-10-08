.class public final Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebSpanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebSpanEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebSpanEvent;
    .locals 9

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/RRWebSpanEvent;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/RRWebSpanEvent;-><init>()V

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
    if-ne v3, v4, :cond_10

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
    if-ne v5, v6, :cond_f

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
    iput-object v5, v0, Lio/sentry/rrweb/RRWebSpanEvent;->l:Ljava/lang/String;

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
    if-ne v6, v7, :cond_e

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
    const/4 v8, -0x1

    .line 132
    sparse-switch v7, :sswitch_data_0

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :sswitch_0
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_8

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    const/4 v8, 0x4

    .line 144
    goto :goto_3

    .line 145
    :sswitch_1
    const-string v7, "op"

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_9

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    const/4 v8, 0x3

    .line 155
    goto :goto_3

    .line 156
    :sswitch_2
    const-string v7, "startTimestamp"

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_a

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_a
    const/4 v8, 0x2

    .line 166
    goto :goto_3

    .line 167
    :sswitch_3
    const-string v7, "endTimestamp"

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_b

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_b
    const/4 v8, 0x1

    .line 177
    goto :goto_3

    .line 178
    :sswitch_4
    const-string v7, "description"

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_c

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_c
    const/4 v8, 0x0

    .line 188
    :goto_3
    packed-switch v8, :pswitch_data_0

    .line 189
    .line 190
    .line 191
    if-nez v5, :cond_d

    .line 192
    .line 193
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    :cond_d
    invoke-interface {p0, p1, v5, v6}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :pswitch_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Ljava/util/Map;

    .line 207
    .line 208
    invoke-static {v6}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    if-eqz v6, :cond_7

    .line 213
    .line 214
    iput-object v6, v0, Lio/sentry/rrweb/RRWebSpanEvent;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :pswitch_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    iput-object v6, v0, Lio/sentry/rrweb/RRWebSpanEvent;->m:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextDouble()D

    .line 225
    .line 226
    .line 227
    move-result-wide v6

    .line 228
    iput-wide v6, v0, Lio/sentry/rrweb/RRWebSpanEvent;->o:D

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextDouble()D

    .line 232
    .line 233
    .line 234
    move-result-wide v6

    .line 235
    iput-wide v6, v0, Lio/sentry/rrweb/RRWebSpanEvent;->p:D

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :pswitch_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iput-object v6, v0, Lio/sentry/rrweb/RRWebSpanEvent;->n:Ljava/lang/String;

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_e
    iput-object v5, v0, Lio/sentry/rrweb/RRWebSpanEvent;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 247
    .line 248
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_f
    iput-object v3, v0, Lio/sentry/rrweb/RRWebSpanEvent;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 254
    .line 255
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_10
    iput-object v2, v0, Lio/sentry/rrweb/RRWebSpanEvent;->r:Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 263
    .line 264
    .line 265
    return-object v0

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_4
        -0x15397985 -> :sswitch_3
        -0x11d5ad2c -> :sswitch_2
        0xde1 -> :sswitch_1
        0x2eefaa -> :sswitch_0
    .end sparse-switch

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
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
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-static {p1, p2}, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebSpanEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
