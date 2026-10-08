.class public abstract Lio/sentry/SentryUUID;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lio/sentry/util/Random;->b([B)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    aget-byte v3, v2, v0

    .line 14
    .line 15
    and-int/lit8 v3, v3, 0xf

    .line 16
    .line 17
    int-to-byte v3, v3

    .line 18
    aput-byte v3, v2, v0

    .line 19
    .line 20
    or-int/lit8 v3, v3, 0x40

    .line 21
    .line 22
    int-to-byte v3, v3

    .line 23
    aput-byte v3, v2, v0

    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    aget-byte v3, v2, v0

    .line 28
    .line 29
    and-int/lit8 v3, v3, 0x3f

    .line 30
    .line 31
    int-to-byte v3, v3

    .line 32
    aput-byte v3, v2, v0

    .line 33
    .line 34
    or-int/lit16 v3, v3, 0x80

    .line 35
    .line 36
    int-to-byte v3, v3

    .line 37
    aput-byte v3, v2, v0

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    move-wide v6, v3

    .line 43
    :goto_0
    if-ge v5, v0, :cond_0

    .line 44
    .line 45
    shl-long/2addr v6, v0

    .line 46
    aget-byte v8, v2, v5

    .line 47
    .line 48
    and-int/lit16 v8, v8, 0xff

    .line 49
    .line 50
    int-to-long v8, v8

    .line 51
    or-long/2addr v6, v8

    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v5, v0

    .line 56
    :goto_1
    if-ge v5, v1, :cond_1

    .line 57
    .line 58
    shl-long/2addr v3, v0

    .line 59
    aget-byte v8, v2, v5

    .line 60
    .line 61
    and-int/lit16 v8, v8, 0xff

    .line 62
    .line 63
    int-to-long v8, v8

    .line 64
    or-long/2addr v3, v8

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    new-instance v2, Ljava/util/UUID;

    .line 69
    .line 70
    invoke-direct {v2, v6, v7, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 71
    .line 72
    .line 73
    sget-object v3, Lio/sentry/util/UUIDStringUtils;->a:[C

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    const/16 v2, 0x20

    .line 84
    .line 85
    new-array v7, v2, [C

    .line 86
    .line 87
    invoke-static {v7, v3, v4}, Lio/sentry/util/UUIDStringUtils;->a([CJ)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lio/sentry/util/UUIDStringUtils;->a:[C

    .line 91
    .line 92
    const-wide/high16 v8, -0x1000000000000000L    # -3.105036184601418E231

    .line 93
    .line 94
    and-long/2addr v8, v5

    .line 95
    const/16 v4, 0x3c

    .line 96
    .line 97
    ushr-long/2addr v8, v4

    .line 98
    long-to-int v4, v8

    .line 99
    aget-char v4, v3, v4

    .line 100
    .line 101
    aput-char v4, v7, v1

    .line 102
    .line 103
    const-wide/high16 v8, 0xf00000000000000L

    .line 104
    .line 105
    and-long/2addr v8, v5

    .line 106
    const/16 v4, 0x38

    .line 107
    .line 108
    ushr-long/2addr v8, v4

    .line 109
    long-to-int v4, v8

    .line 110
    aget-char v4, v3, v4

    .line 111
    .line 112
    const/16 v8, 0x11

    .line 113
    .line 114
    aput-char v4, v7, v8

    .line 115
    .line 116
    const-wide/high16 v8, 0xf0000000000000L

    .line 117
    .line 118
    and-long/2addr v8, v5

    .line 119
    const/16 v4, 0x34

    .line 120
    .line 121
    ushr-long/2addr v8, v4

    .line 122
    long-to-int v4, v8

    .line 123
    aget-char v4, v3, v4

    .line 124
    .line 125
    const/16 v8, 0x12

    .line 126
    .line 127
    aput-char v4, v7, v8

    .line 128
    .line 129
    const-wide/high16 v8, 0xf000000000000L

    .line 130
    .line 131
    and-long/2addr v8, v5

    .line 132
    const/16 v4, 0x30

    .line 133
    .line 134
    ushr-long/2addr v8, v4

    .line 135
    long-to-int v4, v8

    .line 136
    aget-char v4, v3, v4

    .line 137
    .line 138
    const/16 v8, 0x13

    .line 139
    .line 140
    aput-char v4, v7, v8

    .line 141
    .line 142
    const-wide v8, 0xf00000000000L

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    and-long/2addr v8, v5

    .line 148
    const/16 v4, 0x2c

    .line 149
    .line 150
    ushr-long/2addr v8, v4

    .line 151
    long-to-int v4, v8

    .line 152
    aget-char v4, v3, v4

    .line 153
    .line 154
    const/16 v8, 0x14

    .line 155
    .line 156
    aput-char v4, v7, v8

    .line 157
    .line 158
    const-wide v9, 0xf0000000000L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    and-long/2addr v9, v5

    .line 164
    const/16 v4, 0x28

    .line 165
    .line 166
    ushr-long/2addr v9, v4

    .line 167
    long-to-int v4, v9

    .line 168
    aget-char v4, v3, v4

    .line 169
    .line 170
    const/16 v9, 0x15

    .line 171
    .line 172
    aput-char v4, v7, v9

    .line 173
    .line 174
    const-wide v9, 0xf000000000L

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    and-long/2addr v9, v5

    .line 180
    const/16 v4, 0x24

    .line 181
    .line 182
    ushr-long/2addr v9, v4

    .line 183
    long-to-int v4, v9

    .line 184
    aget-char v4, v3, v4

    .line 185
    .line 186
    const/16 v9, 0x16

    .line 187
    .line 188
    aput-char v4, v7, v9

    .line 189
    .line 190
    const-wide v9, 0xf00000000L

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    and-long/2addr v9, v5

    .line 196
    ushr-long/2addr v9, v2

    .line 197
    long-to-int v2, v9

    .line 198
    aget-char v2, v3, v2

    .line 199
    .line 200
    const/16 v4, 0x17

    .line 201
    .line 202
    aput-char v2, v7, v4

    .line 203
    .line 204
    const-wide v9, 0xf0000000L

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    and-long/2addr v9, v5

    .line 210
    const/16 v2, 0x1c

    .line 211
    .line 212
    ushr-long/2addr v9, v2

    .line 213
    long-to-int v4, v9

    .line 214
    aget-char v4, v3, v4

    .line 215
    .line 216
    const/16 v9, 0x18

    .line 217
    .line 218
    aput-char v4, v7, v9

    .line 219
    .line 220
    const-wide/32 v10, 0xf000000

    .line 221
    .line 222
    .line 223
    and-long/2addr v10, v5

    .line 224
    ushr-long v9, v10, v9

    .line 225
    .line 226
    long-to-int v4, v9

    .line 227
    aget-char v4, v3, v4

    .line 228
    .line 229
    const/16 v9, 0x19

    .line 230
    .line 231
    aput-char v4, v7, v9

    .line 232
    .line 233
    const-wide/32 v9, 0xf00000

    .line 234
    .line 235
    .line 236
    and-long/2addr v9, v5

    .line 237
    ushr-long v8, v9, v8

    .line 238
    .line 239
    long-to-int v4, v8

    .line 240
    aget-char v4, v3, v4

    .line 241
    .line 242
    const/16 v8, 0x1a

    .line 243
    .line 244
    aput-char v4, v7, v8

    .line 245
    .line 246
    const-wide/32 v8, 0xf0000

    .line 247
    .line 248
    .line 249
    and-long/2addr v8, v5

    .line 250
    ushr-long/2addr v8, v1

    .line 251
    long-to-int v1, v8

    .line 252
    aget-char v1, v3, v1

    .line 253
    .line 254
    const/16 v4, 0x1b

    .line 255
    .line 256
    aput-char v1, v7, v4

    .line 257
    .line 258
    const-wide/32 v8, 0xf000

    .line 259
    .line 260
    .line 261
    and-long/2addr v8, v5

    .line 262
    const/16 v1, 0xc

    .line 263
    .line 264
    ushr-long/2addr v8, v1

    .line 265
    long-to-int v1, v8

    .line 266
    aget-char v1, v3, v1

    .line 267
    .line 268
    aput-char v1, v7, v2

    .line 269
    .line 270
    const-wide/16 v1, 0xf00

    .line 271
    .line 272
    and-long/2addr v1, v5

    .line 273
    ushr-long v0, v1, v0

    .line 274
    .line 275
    long-to-int v0, v0

    .line 276
    aget-char v0, v3, v0

    .line 277
    .line 278
    const/16 v1, 0x1d

    .line 279
    .line 280
    aput-char v0, v7, v1

    .line 281
    .line 282
    const-wide/16 v0, 0xf0

    .line 283
    .line 284
    and-long/2addr v0, v5

    .line 285
    const/4 v2, 0x4

    .line 286
    ushr-long/2addr v0, v2

    .line 287
    long-to-int v0, v0

    .line 288
    aget-char v0, v3, v0

    .line 289
    .line 290
    const/16 v1, 0x1e

    .line 291
    .line 292
    aput-char v0, v7, v1

    .line 293
    .line 294
    const-wide/16 v0, 0xf

    .line 295
    .line 296
    and-long/2addr v0, v5

    .line 297
    long-to-int v0, v0

    .line 298
    aget-char v0, v3, v0

    .line 299
    .line 300
    const/16 v1, 0x1f

    .line 301
    .line 302
    aput-char v0, v7, v1

    .line 303
    .line 304
    new-instance v0, Ljava/lang/String;

    .line 305
    .line 306
    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 307
    .line 308
    .line 309
    return-object v0
.end method
