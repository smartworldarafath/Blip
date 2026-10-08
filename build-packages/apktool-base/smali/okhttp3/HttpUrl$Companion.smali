.class public final Lokhttp3/HttpUrl$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, p4, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move/from16 v4, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v5, p4, 0x8

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v5, v6

    .line 33
    :goto_2
    and-int/lit8 v7, p4, 0x10

    .line 34
    .line 35
    if-eqz v7, :cond_3

    .line 36
    .line 37
    move v7, v3

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v7, v6

    .line 40
    :goto_3
    and-int/lit8 v8, p4, 0x20

    .line 41
    .line 42
    if-eqz v8, :cond_4

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move v8, v6

    .line 47
    :goto_4
    and-int/lit8 v9, p4, 0x40

    .line 48
    .line 49
    if-eqz v9, :cond_5

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move v3, v6

    .line 53
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move v6, v2

    .line 57
    :goto_6
    if-ge v6, v4, :cond_13

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const/16 v10, 0x80

    .line 64
    .line 65
    const/16 v11, 0x20

    .line 66
    .line 67
    const/16 v12, 0x2b

    .line 68
    .line 69
    const/16 v13, 0x25

    .line 70
    .line 71
    const/16 v14, 0x7f

    .line 72
    .line 73
    if-lt v9, v11, :cond_9

    .line 74
    .line 75
    if-eq v9, v14, :cond_9

    .line 76
    .line 77
    if-lt v9, v10, :cond_6

    .line 78
    .line 79
    if-eqz v3, :cond_9

    .line 80
    .line 81
    :cond_6
    int-to-char v15, v9

    .line 82
    invoke-static {v1, v15}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-nez v15, :cond_9

    .line 87
    .line 88
    if-ne v9, v13, :cond_7

    .line 89
    .line 90
    if-eqz v5, :cond_9

    .line 91
    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    invoke-static {v0, v6, v4}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;II)Z

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    if-eqz v15, :cond_9

    .line 99
    .line 100
    :cond_7
    if-ne v9, v12, :cond_8

    .line 101
    .line 102
    if-eqz v8, :cond_8

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    add-int/2addr v6, v9

    .line 110
    goto :goto_6

    .line 111
    :cond_9
    :goto_7
    new-instance v9, Lokio/Buffer;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v0, v2, v6}, Lokio/Buffer;->K0(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    :goto_8
    if-ge v6, v4, :cond_12

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-eqz v5, :cond_a

    .line 127
    .line 128
    const/16 v13, 0x9

    .line 129
    .line 130
    if-eq v15, v13, :cond_f

    .line 131
    .line 132
    const/16 v13, 0xa

    .line 133
    .line 134
    if-eq v15, v13, :cond_f

    .line 135
    .line 136
    const/16 v13, 0xc

    .line 137
    .line 138
    if-eq v15, v13, :cond_f

    .line 139
    .line 140
    const/16 v13, 0xd

    .line 141
    .line 142
    if-ne v15, v13, :cond_a

    .line 143
    .line 144
    goto :goto_a

    .line 145
    :cond_a
    if-ne v15, v12, :cond_c

    .line 146
    .line 147
    if-eqz v8, :cond_c

    .line 148
    .line 149
    if-eqz v5, :cond_b

    .line 150
    .line 151
    const-string v13, "+"

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_b
    const-string v13, "%2B"

    .line 155
    .line 156
    :goto_9
    invoke-virtual {v9, v13}, Lokio/Buffer;->E0(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_a

    .line 160
    :cond_c
    if-lt v15, v11, :cond_10

    .line 161
    .line 162
    if-eq v15, v14, :cond_10

    .line 163
    .line 164
    if-lt v15, v10, :cond_d

    .line 165
    .line 166
    if-eqz v3, :cond_10

    .line 167
    .line 168
    :cond_d
    int-to-char v13, v15

    .line 169
    invoke-static {v1, v13}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-nez v13, :cond_10

    .line 174
    .line 175
    const/16 v13, 0x25

    .line 176
    .line 177
    if-ne v15, v13, :cond_e

    .line 178
    .line 179
    if-eqz v5, :cond_10

    .line 180
    .line 181
    if-eqz v7, :cond_e

    .line 182
    .line 183
    invoke-static {v0, v6, v4}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;II)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_e

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_e
    invoke-virtual {v9, v15}, Lokio/Buffer;->P0(I)V

    .line 191
    .line 192
    .line 193
    :cond_f
    :goto_a
    const/16 v11, 0x25

    .line 194
    .line 195
    goto :goto_d

    .line 196
    :cond_10
    :goto_b
    if-nez v2, :cond_11

    .line 197
    .line 198
    new-instance v2, Lokio/Buffer;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 201
    .line 202
    .line 203
    :cond_11
    invoke-virtual {v2, v15}, Lokio/Buffer;->P0(I)V

    .line 204
    .line 205
    .line 206
    :goto_c
    invoke-virtual {v2}, Lokio/Buffer;->J()Z

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    if-nez v13, :cond_f

    .line 211
    .line 212
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    and-int/lit16 v10, v13, 0xff

    .line 217
    .line 218
    const/16 v11, 0x25

    .line 219
    .line 220
    invoke-virtual {v9, v11}, Lokio/Buffer;->g0(I)V

    .line 221
    .line 222
    .line 223
    shr-int/lit8 v10, v10, 0x4

    .line 224
    .line 225
    and-int/lit8 v10, v10, 0xf

    .line 226
    .line 227
    sget-object v16, Lokhttp3/HttpUrl;->j:[C

    .line 228
    .line 229
    aget-char v10, v16, v10

    .line 230
    .line 231
    invoke-virtual {v9, v10}, Lokio/Buffer;->g0(I)V

    .line 232
    .line 233
    .line 234
    and-int/lit8 v10, v13, 0xf

    .line 235
    .line 236
    aget-char v10, v16, v10

    .line 237
    .line 238
    invoke-virtual {v9, v10}, Lokio/Buffer;->g0(I)V

    .line 239
    .line 240
    .line 241
    const/16 v10, 0x80

    .line 242
    .line 243
    const/16 v11, 0x20

    .line 244
    .line 245
    goto :goto_c

    .line 246
    :goto_d
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    add-int/2addr v6, v10

    .line 251
    move v13, v11

    .line 252
    const/16 v10, 0x80

    .line 253
    .line 254
    const/16 v11, 0x20

    .line 255
    .line 256
    goto/16 :goto_8

    .line 257
    .line 258
    :cond_12
    invoke-virtual {v9}, Lokio/Buffer;->P()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    :cond_13
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "http"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x50

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    const-string v0, "https"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/16 p0, 0x1bb

    .line 24
    .line 25
    return p0

    .line 26
    :cond_1
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public static c(Ljava/lang/String;II)Z
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    if-ge v0, p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v1, 0x25

    .line 10
    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    add-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lokhttp3/internal/Util;->o(C)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Lokhttp3/internal/Util;->o(C)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eq p0, v1, :cond_0

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static d(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x1

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move p3, p1

    .line 25
    :goto_1
    if-ge p3, p2, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v2, 0x2b

    .line 32
    .line 33
    const/16 v3, 0x25

    .line 34
    .line 35
    if-eq v0, v3, :cond_4

    .line 36
    .line 37
    if-ne v0, v2, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    :goto_2
    new-instance v0, Lokio/Buffer;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0, p1, p3}, Lokio/Buffer;->K0(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    :goto_3
    if-ge p3, p2, :cond_7

    .line 54
    .line 55
    invoke-virtual {p0, p3}, Ljava/lang/String;->codePointAt(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p1, v3, :cond_5

    .line 60
    .line 61
    add-int/lit8 v4, p3, 0x2

    .line 62
    .line 63
    if-ge v4, p2, :cond_5

    .line 64
    .line 65
    add-int/lit8 v5, p3, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v5}, Lokhttp3/internal/Util;->o(C)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-static {v6}, Lokhttp3/internal/Util;->o(C)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v7, -0x1

    .line 84
    if-eq v5, v7, :cond_6

    .line 85
    .line 86
    if-eq v6, v7, :cond_6

    .line 87
    .line 88
    shl-int/lit8 p3, v5, 0x4

    .line 89
    .line 90
    add-int/2addr p3, v6

    .line 91
    invoke-virtual {v0, p3}, Lokio/Buffer;->g0(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    add-int p3, p1, v4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    if-ne p1, v2, :cond_6

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    const/16 p1, 0x20

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lokio/Buffer;->g0(I)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p3, p3, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-virtual {v0, p1}, Lokio/Buffer;->P0(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    add-int/2addr p3, p1

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    invoke-virtual {v0}, Lokio/Buffer;->P()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {p0, v2, v1, v3}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_0
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {p0, v5, v1, v3}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-object v0
.end method
