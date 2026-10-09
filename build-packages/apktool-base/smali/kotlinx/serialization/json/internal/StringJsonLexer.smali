.class public Lkotlinx/serialization/json/internal/StringJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/json/JsonConfiguration;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>(Lkotlinx/serialization/json/JsonConfiguration;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 14

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->s(C)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 7
    .line 8
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {v2, v0, v1, v3}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, -0x1

    .line 17
    if-ne v4, v6, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    if-gez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const-string v1, "EOF"

    .line 43
    .line 44
    :goto_1
    const-string v2, "Expected quotation mark \'\"\', but had \'"

    .line 45
    .line 46
    const-string v4, "\' instead"

    .line 47
    .line 48
    invoke-static {v2, v1, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p0, v1, v0, v5, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    throw v5

    .line 56
    :cond_2
    move v7, v1

    .line 57
    :goto_2
    if-ge v7, v4, :cond_e

    .line 58
    .line 59
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const/16 v9, 0x5c

    .line 64
    .line 65
    if-ne v8, v9, :cond_d

    .line 66
    .line 67
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 68
    .line 69
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v8, 0x0

    .line 74
    move v10, v8

    .line 75
    :goto_3
    iget-object v11, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e:Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const/4 v12, 0x1

    .line 78
    if-eq v4, v0, :cond_b

    .line 79
    .line 80
    const-string v13, "Unexpected EOF"

    .line 81
    .line 82
    if-ne v4, v9, :cond_8

    .line 83
    .line 84
    invoke-virtual {v11, v2, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    invoke-virtual {p0, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->n(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v4, 0x6

    .line 94
    if-eq v1, v6, :cond_7

    .line 95
    .line 96
    add-int/lit8 v7, v1, 0x1

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/16 v10, 0x75

    .line 103
    .line 104
    if-ne v1, v10, :cond_3

    .line 105
    .line 106
    invoke-virtual {p0, v2, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a(Ljava/lang/CharSequence;I)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    goto :goto_5

    .line 111
    :cond_3
    if-ge v1, v10, :cond_4

    .line 112
    .line 113
    sget-object v10, Lkotlinx/serialization/json/internal/CharMappings;->a:[C

    .line 114
    .line 115
    aget-char v10, v10, v1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    move v10, v8

    .line 119
    :goto_4
    if-eqz v10, :cond_6

    .line 120
    .line 121
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :goto_5
    invoke-virtual {p0, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->n(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eq v1, v6, :cond_5

    .line 129
    .line 130
    :goto_6
    move v7, v1

    .line 131
    move v10, v12

    .line 132
    goto :goto_7

    .line 133
    :cond_5
    invoke-static {p0, v13, v1, v5, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    throw v5

    .line 137
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "Invalid escaped char \'"

    .line 140
    .line 141
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x27

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p0, v0, v8, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    throw v5

    .line 160
    :cond_7
    const-string v0, "Expected escape sequence to continue, got EOF"

    .line 161
    .line 162
    invoke-static {p0, v0, v8, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    throw v5

    .line 166
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-lt v7, v4, :cond_a

    .line 173
    .line 174
    invoke-virtual {v11, v2, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->n(I)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eq v1, v6, :cond_9

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_9
    invoke-static {p0, v13, v1, v5, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    throw v5

    .line 188
    :cond_a
    :goto_7
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    goto :goto_3

    .line 193
    :cond_b
    if-nez v10, :cond_c

    .line 194
    .line 195
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    goto :goto_8

    .line 204
    :cond_c
    invoke-virtual {v11, v2, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    .line 213
    .line 214
    :goto_8
    add-int/2addr v7, v12

    .line 215
    iput v7, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_e
    add-int/lit8 v0, v4, 0x1

    .line 223
    .line 224
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 225
    .line 226
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method

.method public d()B
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 2
    .line 3
    :goto_0
    const/4 v1, -0x1

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0xd

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    const/16 v2, 0x9

    .line 33
    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 38
    .line 39
    invoke-static {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_1
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 51
    .line 52
    return v2
.end method

.method public final n(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-ge p1, p0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p0, -0x1

    .line 11
    return p0
.end method

.method public o()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v0, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    if-ne v1, v2, :cond_2

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 39
    .line 40
    return v0
.end method

.method public r()Z
    .locals 4

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v0, v3, :cond_4

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v3, 0x20

    .line 21
    .line 22
    if-eq v1, v3, :cond_3

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    const/16 v3, 0xd

    .line 29
    .line 30
    if-eq v1, v3, :cond_3

    .line 31
    .line 32
    const/16 v3, 0x9

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 38
    .line 39
    const/16 p0, 0x2c

    .line 40
    .line 41
    if-eq v1, p0, :cond_2

    .line 42
    .line 43
    const/16 p0, 0x3a

    .line 44
    .line 45
    if-eq v1, p0, :cond_2

    .line 46
    .line 47
    const/16 p0, 0x5d

    .line 48
    .line 49
    if-eq v1, p0, :cond_2

    .line 50
    .line 51
    const/16 p0, 0x7d

    .line 52
    .line 53
    if-eq v1, p0, :cond_2

    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_2
    return v2

    .line 58
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 62
    .line 63
    return v2
.end method

.method public s(C)V
    .locals 5

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_4

    .line 6
    .line 7
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v0, v4, :cond_3

    .line 14
    .line 15
    add-int/lit8 v4, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    if-eq v0, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0xd

    .line 30
    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    const/16 v3, 0x9

    .line 34
    .line 35
    if-ne v0, v3, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iput v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 39
    .line 40
    if-ne v0, p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(C)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_2
    :goto_1
    move v0, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(C)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->q(C)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method
