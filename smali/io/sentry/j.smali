.class public final synthetic Lio/sentry/j;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/j;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lio/sentry/j;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lio/sentry/HostnameCache;

    .line 9
    .line 10
    sget-object v0, Lio/sentry/HostnameCache;->g:Lio/sentry/HostnameCache;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->e:Lio/sentry/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lio/sentry/HostnameCache;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iget-wide v3, p0, Lio/sentry/HostnameCache;->a:J

    .line 33
    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, p0, Lio/sentry/HostnameCache;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    iget-object p0, p0, Lio/sentry/HostnameCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    iget-object p0, p0, Lio/sentry/HostnameCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :pswitch_0
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 52
    .line 53
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_1
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 61
    .line 62
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    array-length p0, p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_2
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 75
    .line 76
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_3
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 84
    .line 85
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 86
    .line 87
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    array-length p0, p0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_4
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 98
    .line 99
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_5
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 107
    .line 108
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_6
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 116
    .line 117
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 118
    .line 119
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    array-length p0, p0

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :pswitch_7
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 130
    .line 131
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_8
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 139
    .line 140
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 141
    .line 142
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    array-length p0, p0

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0

    .line 152
    :pswitch_9
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 153
    .line 154
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 155
    .line 156
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_a
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 162
    .line 163
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 164
    .line 165
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    array-length p0, p0

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    return-object p0

    .line 175
    :pswitch_b
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 176
    .line 177
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    array-length p0, p0

    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :pswitch_c
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 190
    .line 191
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 192
    .line 193
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :pswitch_d
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 199
    .line 200
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 201
    .line 202
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    array-length p0, p0

    .line 207
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    return-object p0

    .line 212
    :pswitch_e
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 213
    .line 214
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 215
    .line 216
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :pswitch_f
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 222
    .line 223
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 224
    .line 225
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    array-length p0, p0

    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :pswitch_10
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 236
    .line 237
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 238
    .line 239
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :pswitch_11
    check-cast p0, Lio/sentry/SentryEnvelopeItem$CachedItem;

    .line 245
    .line 246
    sget-object v0, Lio/sentry/SentryEnvelopeItem;->d:Ljava/nio/charset/Charset;

    .line 247
    .line 248
    invoke-virtual {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->a()[B

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    array-length p0, p0

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
