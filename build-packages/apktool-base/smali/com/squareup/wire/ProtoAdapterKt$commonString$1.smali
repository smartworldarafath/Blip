.class public final Lcom/squareup/wire/ProtoAdapterKt$commonString$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ByteArrayProtoReader32;->m()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    .line 10
    .line 11
    invoke-interface {p0, p2}, Lokio/BufferedSink;->f0(Ljava/lang/String;)Lokio/BufferedSink;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x1

    .line 14
    sub-int/2addr p0, v0

    .line 15
    :goto_0
    if-ltz p0, :cond_7

    .line 16
    .line 17
    add-int/lit8 v1, p0, -0x1

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 29
    .line 30
    .line 31
    iget p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 32
    .line 33
    iget-object v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 34
    .line 35
    add-int/2addr p0, v4

    .line 36
    int-to-byte v2, v2

    .line 37
    aput-byte v2, v5, p0

    .line 38
    .line 39
    sub-int v2, v1, p0

    .line 40
    .line 41
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    move v8, v1

    .line 46
    move v1, p0

    .line 47
    move p0, v8

    .line 48
    :goto_1
    if-le p0, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ge v4, v3, :cond_0

    .line 55
    .line 56
    add-int/lit8 p0, p0, -0x1

    .line 57
    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    int-to-byte v4, v4

    .line 61
    aput-byte v4, v5, v1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iput v1, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v5, 0x800

    .line 68
    .line 69
    if-ge v2, v5, :cond_2

    .line 70
    .line 71
    const/4 p0, 0x2

    .line 72
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 76
    .line 77
    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 78
    .line 79
    add-int/lit8 v5, v4, -0x1

    .line 80
    .line 81
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 82
    .line 83
    and-int/lit8 v6, v2, 0x3f

    .line 84
    .line 85
    or-int/2addr v3, v6

    .line 86
    int-to-byte v3, v3

    .line 87
    aput-byte v3, p0, v5

    .line 88
    .line 89
    add-int/lit8 v4, v4, -0x2

    .line 90
    .line 91
    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 92
    .line 93
    shr-int/lit8 v2, v2, 0x6

    .line 94
    .line 95
    or-int/lit16 v2, v2, 0xc0

    .line 96
    .line 97
    int-to-byte v2, v2

    .line 98
    aput-byte v2, p0, v4

    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_2
    const v5, 0xd800

    .line 103
    .line 104
    .line 105
    const/16 v6, 0x3f

    .line 106
    .line 107
    if-lt v2, v5, :cond_6

    .line 108
    .line 109
    const v5, 0xdfff

    .line 110
    .line 111
    .line 112
    if-le v2, v5, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    if-ltz v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const v5, 0x7fffffff

    .line 123
    .line 124
    .line 125
    :goto_2
    const v7, 0xdbff

    .line 126
    .line 127
    .line 128
    if-gt v5, v7, :cond_5

    .line 129
    .line 130
    const v7, 0xdc00

    .line 131
    .line 132
    .line 133
    if-gt v7, v2, :cond_5

    .line 134
    .line 135
    const v7, 0xe000

    .line 136
    .line 137
    .line 138
    if-ge v2, v7, :cond_5

    .line 139
    .line 140
    add-int/lit8 p0, p0, -0x2

    .line 141
    .line 142
    and-int/lit16 v1, v5, 0x3ff

    .line 143
    .line 144
    shl-int/lit8 v1, v1, 0xa

    .line 145
    .line 146
    and-int/lit16 v2, v2, 0x3ff

    .line 147
    .line 148
    or-int/2addr v1, v2

    .line 149
    const/high16 v2, 0x10000

    .line 150
    .line 151
    add-int/2addr v1, v2

    .line 152
    const/4 v2, 0x4

    .line 153
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 157
    .line 158
    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 159
    .line 160
    add-int/lit8 v5, v4, -0x1

    .line 161
    .line 162
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 163
    .line 164
    and-int/lit8 v7, v1, 0x3f

    .line 165
    .line 166
    or-int/2addr v7, v3

    .line 167
    int-to-byte v7, v7

    .line 168
    aput-byte v7, v2, v5

    .line 169
    .line 170
    add-int/lit8 v5, v4, -0x2

    .line 171
    .line 172
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 173
    .line 174
    shr-int/lit8 v7, v1, 0x6

    .line 175
    .line 176
    and-int/2addr v7, v6

    .line 177
    or-int/2addr v7, v3

    .line 178
    int-to-byte v7, v7

    .line 179
    aput-byte v7, v2, v5

    .line 180
    .line 181
    add-int/lit8 v5, v4, -0x3

    .line 182
    .line 183
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 184
    .line 185
    shr-int/lit8 v7, v1, 0xc

    .line 186
    .line 187
    and-int/2addr v6, v7

    .line 188
    or-int/2addr v3, v6

    .line 189
    int-to-byte v3, v3

    .line 190
    aput-byte v3, v2, v5

    .line 191
    .line 192
    add-int/lit8 v4, v4, -0x4

    .line 193
    .line 194
    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 195
    .line 196
    shr-int/lit8 v1, v1, 0x12

    .line 197
    .line 198
    or-int/lit16 v1, v1, 0xf0

    .line 199
    .line 200
    int-to-byte v1, v1

    .line 201
    aput-byte v1, v2, v4

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_5
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 206
    .line 207
    .line 208
    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 209
    .line 210
    iget v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 211
    .line 212
    add-int/2addr v2, v4

    .line 213
    iput v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 214
    .line 215
    aput-byte v6, p0, v2

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_6
    :goto_3
    const/4 p0, 0x3

    .line 219
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    .line 220
    .line 221
    .line 222
    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    .line 223
    .line 224
    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 225
    .line 226
    add-int/lit8 v5, v4, -0x1

    .line 227
    .line 228
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 229
    .line 230
    and-int/lit8 v7, v2, 0x3f

    .line 231
    .line 232
    or-int/2addr v7, v3

    .line 233
    int-to-byte v7, v7

    .line 234
    aput-byte v7, p0, v5

    .line 235
    .line 236
    add-int/lit8 v5, v4, -0x2

    .line 237
    .line 238
    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 239
    .line 240
    shr-int/lit8 v7, v2, 0x6

    .line 241
    .line 242
    and-int/2addr v6, v7

    .line 243
    or-int/2addr v3, v6

    .line 244
    int-to-byte v3, v3

    .line 245
    aput-byte v3, p0, v5

    .line 246
    .line 247
    add-int/lit8 v4, v4, -0x3

    .line 248
    .line 249
    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    .line 250
    .line 251
    shr-int/lit8 v2, v2, 0xc

    .line 252
    .line 253
    or-int/lit16 v2, v2, 0xe0

    .line 254
    .line 255
    int-to-byte v2, v2

    .line 256
    aput-byte v2, p0, v4

    .line 257
    .line 258
    :goto_4
    move p0, v1

    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_7
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lokio/Utf8;->a(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    long-to-int p0, p0

    .line 11
    return p0
.end method
