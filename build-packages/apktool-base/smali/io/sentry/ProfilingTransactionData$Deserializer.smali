.class public final Lio/sentry/ProfilingTransactionData$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTransactionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTransactionData;",
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
    new-instance p0, Lio/sentry/ProfilingTransactionData;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lio/sentry/NoOpTransaction;->a:Lio/sentry/NoOpTransaction;

    .line 13
    .line 14
    invoke-direct {p0, v1, v0, v0}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 23
    .line 24
    if-ne v1, v2, :cond_9

    .line 25
    .line 26
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    sparse-switch v2, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    const-string v2, "relative_cpu_start_ms"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v3, 0x6

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v2, "relative_cpu_end_ms"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v3, 0x5

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v2, "trace_id"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v3, 0x4

    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    const-string v2, "name"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v3, 0x3

    .line 85
    goto :goto_1

    .line 86
    :sswitch_4
    const-string v2, "id"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const/4 v3, 0x2

    .line 96
    goto :goto_1

    .line 97
    :sswitch_5
    const-string v2, "relative_end_ns"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/4 v3, 0x1

    .line 107
    goto :goto_1

    .line 108
    :sswitch_6
    const-string v2, "relative_start_ns"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    const/4 v3, 0x0

    .line 118
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    if-nez v0, :cond_8

    .line 122
    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    :cond_8
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_0

    .line 137
    .line 138
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->o:Ljava/lang/Long;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->p:Ljava/lang/Long;

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    .line 157
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->k:Ljava/lang/String;

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    .line 167
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->l:Ljava/lang/String;

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    .line 177
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->j:Ljava/lang/String;

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    .line 186
    .line 187
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->n:Ljava/lang/Long;

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    .line 196
    .line 197
    iput-object v1, p0, Lio/sentry/ProfilingTransactionData;->m:Ljava/lang/Long;

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_9
    iput-object v0, p0, Lio/sentry/ProfilingTransactionData;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 202
    .line 203
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x6b2a92b -> :sswitch_6
        -0x50b0384 -> :sswitch_5
        0xd1b -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x4bb73e55 -> :sswitch_2
        0x5d612954 -> :sswitch_1
        0x716221ed -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
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
