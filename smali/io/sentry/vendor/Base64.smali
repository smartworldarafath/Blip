.class public abstract Lio/sentry/vendor/Base64;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/vendor/Base64$Encoder;,
        Lio/sentry/vendor/Base64$Coder;
    }
.end annotation


# direct methods
.method public static a([B)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-instance v2, Lio/sentry/vendor/Base64$Encoder;

    .line 5
    .line 6
    invoke-direct {v2}, Lio/sentry/vendor/Base64$Encoder;-><init>()V

    .line 7
    .line 8
    .line 9
    div-int/lit8 v3, v1, 0x3

    .line 10
    .line 11
    mul-int/lit8 v3, v3, 0x4

    .line 12
    .line 13
    rem-int/lit8 v4, v1, 0x3

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x1

    .line 17
    if-eq v4, v6, :cond_1

    .line 18
    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 26
    .line 27
    :goto_0
    new-array v3, v3, [B

    .line 28
    .line 29
    iput-object v3, v2, Lio/sentry/vendor/Base64$Coder;->a:[B

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    move v10, v4

    .line 34
    move v8, v7

    .line 35
    move v9, v8

    .line 36
    :goto_1
    add-int/lit8 v11, v8, 0x3

    .line 37
    .line 38
    const/16 v12, 0xa

    .line 39
    .line 40
    sget-object v13, Lio/sentry/vendor/Base64$Encoder;->d:[B

    .line 41
    .line 42
    if-gt v11, v1, :cond_3

    .line 43
    .line 44
    aget-byte v14, v0, v8

    .line 45
    .line 46
    and-int/lit16 v14, v14, 0xff

    .line 47
    .line 48
    shl-int/lit8 v14, v14, 0x10

    .line 49
    .line 50
    add-int/lit8 v15, v8, 0x1

    .line 51
    .line 52
    aget-byte v15, v0, v15

    .line 53
    .line 54
    and-int/lit16 v15, v15, 0xff

    .line 55
    .line 56
    shl-int/lit8 v15, v15, 0x8

    .line 57
    .line 58
    or-int/2addr v14, v15

    .line 59
    add-int/lit8 v8, v8, 0x2

    .line 60
    .line 61
    aget-byte v8, v0, v8

    .line 62
    .line 63
    and-int/lit16 v8, v8, 0xff

    .line 64
    .line 65
    or-int/2addr v8, v14

    .line 66
    shr-int/lit8 v14, v8, 0x12

    .line 67
    .line 68
    and-int/lit8 v14, v14, 0x3f

    .line 69
    .line 70
    aget-byte v14, v13, v14

    .line 71
    .line 72
    aput-byte v14, v3, v9

    .line 73
    .line 74
    add-int/lit8 v14, v9, 0x1

    .line 75
    .line 76
    shr-int/lit8 v15, v8, 0xc

    .line 77
    .line 78
    and-int/lit8 v15, v15, 0x3f

    .line 79
    .line 80
    aget-byte v15, v13, v15

    .line 81
    .line 82
    aput-byte v15, v3, v14

    .line 83
    .line 84
    add-int/lit8 v14, v9, 0x2

    .line 85
    .line 86
    shr-int/lit8 v15, v8, 0x6

    .line 87
    .line 88
    and-int/lit8 v15, v15, 0x3f

    .line 89
    .line 90
    aget-byte v15, v13, v15

    .line 91
    .line 92
    aput-byte v15, v3, v14

    .line 93
    .line 94
    add-int/lit8 v14, v9, 0x3

    .line 95
    .line 96
    and-int/lit8 v8, v8, 0x3f

    .line 97
    .line 98
    aget-byte v8, v13, v8

    .line 99
    .line 100
    aput-byte v8, v3, v14

    .line 101
    .line 102
    add-int/lit8 v9, v9, 0x4

    .line 103
    .line 104
    add-int/2addr v10, v4

    .line 105
    if-nez v10, :cond_2

    .line 106
    .line 107
    add-int/lit8 v8, v9, 0x1

    .line 108
    .line 109
    aput-byte v12, v3, v9

    .line 110
    .line 111
    const/16 v10, 0x13

    .line 112
    .line 113
    move v9, v8

    .line 114
    :cond_2
    move v8, v11

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget v4, v2, Lio/sentry/vendor/Base64$Encoder;->c:I

    .line 117
    .line 118
    sub-int v10, v8, v4

    .line 119
    .line 120
    add-int/lit8 v11, v1, -0x1

    .line 121
    .line 122
    iget-object v14, v2, Lio/sentry/vendor/Base64$Encoder;->b:[B

    .line 123
    .line 124
    if-ne v10, v11, :cond_5

    .line 125
    .line 126
    if-lez v4, :cond_4

    .line 127
    .line 128
    aget-byte v0, v14, v7

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    aget-byte v0, v0, v8

    .line 132
    .line 133
    move v6, v7

    .line 134
    :goto_2
    and-int/lit16 v0, v0, 0xff

    .line 135
    .line 136
    shl-int/lit8 v0, v0, 0x4

    .line 137
    .line 138
    sub-int/2addr v4, v6

    .line 139
    iput v4, v2, Lio/sentry/vendor/Base64$Encoder;->c:I

    .line 140
    .line 141
    add-int/lit8 v1, v9, 0x1

    .line 142
    .line 143
    shr-int/lit8 v4, v0, 0x6

    .line 144
    .line 145
    and-int/lit8 v4, v4, 0x3f

    .line 146
    .line 147
    aget-byte v4, v13, v4

    .line 148
    .line 149
    aput-byte v4, v3, v9

    .line 150
    .line 151
    and-int/lit8 v0, v0, 0x3f

    .line 152
    .line 153
    aget-byte v0, v13, v0

    .line 154
    .line 155
    aput-byte v0, v3, v1

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    sub-int/2addr v1, v5

    .line 159
    if-ne v10, v1, :cond_8

    .line 160
    .line 161
    if-le v4, v6, :cond_6

    .line 162
    .line 163
    aget-byte v1, v14, v7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    add-int/lit8 v1, v8, 0x1

    .line 167
    .line 168
    aget-byte v6, v0, v8

    .line 169
    .line 170
    move v8, v1

    .line 171
    move v1, v6

    .line 172
    move v6, v7

    .line 173
    :goto_3
    and-int/lit16 v1, v1, 0xff

    .line 174
    .line 175
    shl-int/2addr v1, v12

    .line 176
    if-lez v4, :cond_7

    .line 177
    .line 178
    add-int/lit8 v0, v6, 0x1

    .line 179
    .line 180
    aget-byte v6, v14, v6

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_7
    aget-byte v0, v0, v8

    .line 184
    .line 185
    move/from16 v16, v6

    .line 186
    .line 187
    move v6, v0

    .line 188
    move/from16 v0, v16

    .line 189
    .line 190
    :goto_4
    and-int/lit16 v6, v6, 0xff

    .line 191
    .line 192
    shl-int/2addr v6, v5

    .line 193
    or-int/2addr v1, v6

    .line 194
    sub-int/2addr v4, v0

    .line 195
    iput v4, v2, Lio/sentry/vendor/Base64$Encoder;->c:I

    .line 196
    .line 197
    add-int/lit8 v0, v9, 0x1

    .line 198
    .line 199
    shr-int/lit8 v4, v1, 0xc

    .line 200
    .line 201
    and-int/lit8 v4, v4, 0x3f

    .line 202
    .line 203
    aget-byte v4, v13, v4

    .line 204
    .line 205
    aput-byte v4, v3, v9

    .line 206
    .line 207
    add-int/2addr v9, v5

    .line 208
    shr-int/lit8 v4, v1, 0x6

    .line 209
    .line 210
    and-int/lit8 v4, v4, 0x3f

    .line 211
    .line 212
    aget-byte v4, v13, v4

    .line 213
    .line 214
    aput-byte v4, v3, v0

    .line 215
    .line 216
    and-int/lit8 v0, v1, 0x3f

    .line 217
    .line 218
    aget-byte v0, v13, v0

    .line 219
    .line 220
    aput-byte v0, v3, v9

    .line 221
    .line 222
    :cond_8
    :goto_5
    iget-object v0, v2, Lio/sentry/vendor/Base64$Coder;->a:[B

    .line 223
    .line 224
    return-object v0
.end method
