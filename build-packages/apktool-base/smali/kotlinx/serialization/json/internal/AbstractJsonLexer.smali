.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlinx/serialization/json/JsonConfiguration;

.field public b:I

.field public final c:Lkotlinx/serialization/json/internal/JsonPath;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 5
    .line 6
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPath;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/JsonPath;-><init>(Lkotlinx/serialization/json/JsonConfiguration;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e:Ljava/lang/StringBuilder;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-ge v0, p2, :cond_0

    .line 16
    .line 17
    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a(Ljava/lang/CharSequence;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x6

    .line 26
    const-string v0, "Unexpected EOF during unicode escape"

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, p1, v1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k(Ljava/lang/CharSequence;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    shl-int/lit8 v1, v1, 0xc

    .line 38
    .line 39
    add-int/lit8 v2, p2, 0x1

    .line 40
    .line 41
    invoke-virtual {p0, p1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k(Ljava/lang/CharSequence;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    shl-int/lit8 v2, v2, 0x8

    .line 46
    .line 47
    add-int/2addr v1, v2

    .line 48
    add-int/lit8 v2, p2, 0x2

    .line 49
    .line 50
    invoke-virtual {p0, p1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k(Ljava/lang/CharSequence;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    shl-int/lit8 v2, v2, 0x4

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    add-int/lit8 p2, p2, 0x3

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k(Ljava/lang/CharSequence;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, v1

    .line 64
    int-to-char p1, p1

    .line 65
    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e:Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    return v0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 3
    .line 4
    iget-object v0, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr v1, p1

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x6

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-lt v1, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    move v2, v4

    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int v7, p1, v2

    .line 32
    .line 33
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    or-int/lit8 v7, v7, 0x20

    .line 38
    .line 39
    if-ne v6, v7, :cond_0

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p2, "Expected valid boolean literal prefix, but had \'"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p2, 0x27

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1, v4, v5, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    throw v5

    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    add-int/2addr p2, p1

    .line 76
    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    const-string p1, "Unexpected end of boolean literal"

    .line 80
    .line 81
    invoke-static {p0, p1, v4, v5, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    throw v5
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()B
.end method

.method public final e(B)B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_3

    .line 6
    .line 7
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->b(B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v0, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v0

    .line 19
    :goto_0
    move-object v2, p0

    .line 20
    check-cast v2, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 21
    .line 22
    iget-object v2, v2, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eq v0, v3, :cond_2

    .line 29
    .line 30
    if-gez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    const-string v0, "EOF"

    .line 43
    .line 44
    :goto_2
    const-string v2, ", but had \'"

    .line 45
    .line 46
    const-string v3, "\' instead"

    .line 47
    .line 48
    const-string v4, "Expected "

    .line 49
    .line 50
    invoke-static {v4, p1, v2, v0, v3}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x4

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static {p0, p1, v1, v2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :cond_3
    return v0
.end method

.method public final f()J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 13
    .line 14
    iget-object v2, v2, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, "EOF"

    .line 21
    .line 22
    const/4 v5, 0x6

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    if-ge v1, v3, :cond_1d

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v1, v3, :cond_1d

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v8, 0x22

    .line 35
    .line 36
    if-ne v3, v8, :cond_1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eq v1, v3, :cond_0

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v0, v4, v7, v6, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    throw v6

    .line 52
    :cond_1
    move v3, v7

    .line 53
    :goto_0
    move v12, v1

    .line 54
    move v11, v7

    .line 55
    move v13, v11

    .line 56
    move v14, v13

    .line 57
    const-wide/16 v9, 0x0

    .line 58
    .line 59
    const-wide/16 v16, 0x0

    .line 60
    .line 61
    const-wide/16 v18, 0x0

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v15

    .line 67
    const-string v8, "Numeric value overflow"

    .line 68
    .line 69
    if-eq v12, v15, :cond_e

    .line 70
    .line 71
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    const/16 v7, 0x65

    .line 76
    .line 77
    const-string v5, "\' in numeric literal"

    .line 78
    .line 79
    const-string v6, "Unexpected symbol \'"

    .line 80
    .line 81
    if-eq v15, v7, :cond_3

    .line 82
    .line 83
    const/16 v7, 0x45

    .line 84
    .line 85
    if-ne v15, v7, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move/from16 v20, v3

    .line 89
    .line 90
    const/4 v7, 0x4

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    :goto_2
    if-nez v13, :cond_2

    .line 93
    .line 94
    if-eq v12, v1, :cond_4

    .line 95
    .line 96
    add-int/lit8 v12, v12, 0x1

    .line 97
    .line 98
    const/4 v5, 0x6

    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    const/16 v8, 0x22

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    const/4 v13, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v7, 0x4

    .line 123
    invoke-static {v0, v1, v12, v2, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    throw v2

    .line 127
    :goto_3
    const-string v3, "Unexpected symbol \'-\' in numeric literal"

    .line 128
    .line 129
    const/16 v7, 0x2d

    .line 130
    .line 131
    if-ne v15, v7, :cond_6

    .line 132
    .line 133
    if-eqz v13, :cond_6

    .line 134
    .line 135
    if-eq v12, v1, :cond_5

    .line 136
    .line 137
    add-int/lit8 v12, v12, 0x1

    .line 138
    .line 139
    move/from16 v3, v20

    .line 140
    .line 141
    const/4 v5, 0x6

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    const/16 v8, 0x22

    .line 145
    .line 146
    const/4 v11, 0x0

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const/4 v5, 0x0

    .line 149
    const/4 v7, 0x4

    .line 150
    invoke-static {v0, v3, v12, v5, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    throw v5

    .line 154
    :cond_6
    const/4 v7, 0x0

    .line 155
    const/16 v7, 0x2b

    .line 156
    .line 157
    if-ne v15, v7, :cond_8

    .line 158
    .line 159
    if-eqz v13, :cond_8

    .line 160
    .line 161
    if-eq v12, v1, :cond_7

    .line 162
    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    move/from16 v3, v20

    .line 166
    .line 167
    const/4 v5, 0x6

    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    const/16 v8, 0x22

    .line 171
    .line 172
    const/4 v11, 0x1

    .line 173
    goto :goto_1

    .line 174
    :cond_7
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v7, 0x4

    .line 178
    invoke-static {v0, v1, v12, v2, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    throw v2

    .line 182
    :cond_8
    move/from16 v21, v13

    .line 183
    .line 184
    const/4 v13, 0x0

    .line 185
    const/16 v7, 0x2d

    .line 186
    .line 187
    if-ne v15, v7, :cond_a

    .line 188
    .line 189
    if-ne v12, v1, :cond_9

    .line 190
    .line 191
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    move-object v6, v13

    .line 194
    move/from16 v3, v20

    .line 195
    .line 196
    move/from16 v13, v21

    .line 197
    .line 198
    const/4 v5, 0x6

    .line 199
    const/4 v7, 0x0

    .line 200
    const/16 v8, 0x22

    .line 201
    .line 202
    const/4 v14, 0x1

    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_9
    const/4 v7, 0x4

    .line 206
    invoke-static {v0, v3, v12, v13, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    throw v13

    .line 210
    :cond_a
    invoke-static {v15}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_f

    .line 215
    .line 216
    add-int/lit8 v3, v12, 0x1

    .line 217
    .line 218
    add-int/lit8 v7, v15, -0x30

    .line 219
    .line 220
    if-ltz v7, :cond_d

    .line 221
    .line 222
    const/16 v13, 0xa

    .line 223
    .line 224
    if-ge v7, v13, :cond_d

    .line 225
    .line 226
    const-wide/16 v5, 0xa

    .line 227
    .line 228
    if-eqz v21, :cond_b

    .line 229
    .line 230
    mul-long/2addr v9, v5

    .line 231
    int-to-long v5, v7

    .line 232
    add-long/2addr v9, v5

    .line 233
    :goto_4
    move v12, v3

    .line 234
    move/from16 v3, v20

    .line 235
    .line 236
    move/from16 v13, v21

    .line 237
    .line 238
    const/4 v5, 0x6

    .line 239
    const/4 v6, 0x0

    .line 240
    const/4 v7, 0x0

    .line 241
    const/16 v8, 0x22

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :cond_b
    mul-long v16, v16, v5

    .line 246
    .line 247
    int-to-long v5, v7

    .line 248
    sub-long v16, v16, v5

    .line 249
    .line 250
    cmp-long v5, v16, v18

    .line 251
    .line 252
    if-gtz v5, :cond_c

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_c
    const/4 v3, 0x6

    .line 256
    const/4 v5, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    invoke-static {v0, v8, v5, v7, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    throw v7

    .line 262
    :cond_d
    const/4 v7, 0x0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const/4 v2, 0x4

    .line 279
    invoke-static {v0, v1, v12, v7, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    throw v7

    .line 283
    :cond_e
    move/from16 v20, v3

    .line 284
    .line 285
    move/from16 v21, v13

    .line 286
    .line 287
    :cond_f
    if-eq v12, v1, :cond_10

    .line 288
    .line 289
    const/4 v3, 0x1

    .line 290
    goto :goto_5

    .line 291
    :cond_10
    const/4 v3, 0x0

    .line 292
    :goto_5
    if-eq v1, v12, :cond_11

    .line 293
    .line 294
    if-eqz v14, :cond_12

    .line 295
    .line 296
    add-int/lit8 v5, v12, -0x1

    .line 297
    .line 298
    if-eq v1, v5, :cond_11

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_11
    const/4 v7, 0x0

    .line 302
    goto/16 :goto_b

    .line 303
    .line 304
    :cond_12
    :goto_6
    if-eqz v20, :cond_15

    .line 305
    .line 306
    if-eqz v3, :cond_14

    .line 307
    .line 308
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/16 v2, 0x22

    .line 313
    .line 314
    if-ne v1, v2, :cond_13

    .line 315
    .line 316
    add-int/lit8 v12, v12, 0x1

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_13
    const-string v1, "Expected closing quotation mark"

    .line 320
    .line 321
    const/4 v2, 0x0

    .line 322
    const/4 v7, 0x4

    .line 323
    invoke-static {v0, v1, v12, v2, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    throw v2

    .line 327
    :cond_14
    const/4 v2, 0x0

    .line 328
    const/4 v3, 0x6

    .line 329
    const/4 v5, 0x0

    .line 330
    invoke-static {v0, v4, v5, v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    throw v2

    .line 334
    :cond_15
    :goto_7
    iput v12, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 335
    .line 336
    move-wide/from16 v1, v16

    .line 337
    .line 338
    if-eqz v21, :cond_1a

    .line 339
    .line 340
    long-to-double v1, v1

    .line 341
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 342
    .line 343
    if-nez v11, :cond_16

    .line 344
    .line 345
    long-to-double v5, v9

    .line 346
    neg-double v5, v5

    .line 347
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 348
    .line 349
    .line 350
    move-result-wide v3

    .line 351
    goto :goto_8

    .line 352
    :cond_16
    const/4 v5, 0x1

    .line 353
    if-ne v11, v5, :cond_19

    .line 354
    .line 355
    long-to-double v5, v9

    .line 356
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 357
    .line 358
    .line 359
    move-result-wide v3

    .line 360
    :goto_8
    mul-double/2addr v1, v3

    .line 361
    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    .line 362
    .line 363
    cmpl-double v3, v1, v3

    .line 364
    .line 365
    if-gtz v3, :cond_18

    .line 366
    .line 367
    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    .line 368
    .line 369
    cmpg-double v3, v1, v3

    .line 370
    .line 371
    if-ltz v3, :cond_18

    .line 372
    .line 373
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 374
    .line 375
    .line 376
    move-result-wide v3

    .line 377
    cmpg-double v3, v3, v1

    .line 378
    .line 379
    if-nez v3, :cond_17

    .line 380
    .line 381
    double-to-long v10, v1

    .line 382
    :goto_9
    const/4 v7, 0x0

    .line 383
    goto :goto_a

    .line 384
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v4, "Can\'t convert "

    .line 387
    .line 388
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v1, " to Long"

    .line 395
    .line 396
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const/4 v3, 0x6

    .line 404
    const/4 v5, 0x0

    .line 405
    const/4 v7, 0x0

    .line 406
    invoke-static {v0, v1, v5, v7, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    throw v7

    .line 410
    :cond_18
    const/4 v3, 0x6

    .line 411
    const/4 v5, 0x0

    .line 412
    const/4 v7, 0x0

    .line 413
    invoke-static {v0, v8, v5, v7, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    throw v7

    .line 417
    :cond_19
    invoke-static {}, Lk8;->e()V

    .line 418
    .line 419
    .line 420
    return-wide v18

    .line 421
    :cond_1a
    move-wide v10, v1

    .line 422
    goto :goto_9

    .line 423
    :goto_a
    if-eqz v14, :cond_1b

    .line 424
    .line 425
    return-wide v10

    .line 426
    :cond_1b
    const-wide/high16 v1, -0x8000000000000000L

    .line 427
    .line 428
    cmp-long v1, v10, v1

    .line 429
    .line 430
    if-eqz v1, :cond_1c

    .line 431
    .line 432
    neg-long v0, v10

    .line 433
    return-wide v0

    .line 434
    :cond_1c
    const/4 v3, 0x6

    .line 435
    const/4 v5, 0x0

    .line 436
    invoke-static {v0, v8, v5, v7, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 437
    .line 438
    .line 439
    throw v7

    .line 440
    :goto_b
    const-string v1, "Expected numeric literal"

    .line 441
    .line 442
    const/4 v2, 0x4

    .line 443
    invoke-static {v0, v1, v12, v7, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 444
    .line 445
    .line 446
    throw v7

    .line 447
    :cond_1d
    move v3, v5

    .line 448
    move v5, v7

    .line 449
    move-object v7, v6

    .line 450
    invoke-static {v0, v4, v5, v7, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 451
    .line 452
    .line 453
    throw v7
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    move-object v2, p0

    .line 17
    check-cast v2, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 18
    .line 19
    iget-object v2, v2, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v0, v3, :cond_7

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v0, v3, :cond_7

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v4, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    const/4 v6, 0x0

    .line 47
    if-nez v4, :cond_6

    .line 48
    .line 49
    move v1, v6

    .line 50
    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-static {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v7, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-lt v0, v4, :cond_2

    .line 69
    .line 70
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 71
    .line 72
    invoke-virtual {v7, v2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, v3, :cond_3

    .line 80
    .line 81
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 82
    .line 83
    invoke-virtual {v7, v2, v6, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_3
    move v0, v1

    .line 95
    move v1, v5

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {v7, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v4, "Expected beginning of the string, but got "

    .line 126
    .line 127
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v2, 0x6

    .line 142
    invoke-static {p0, v0, v6, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_7
    const-string v2, "EOF"

    .line 147
    .line 148
    const/4 v3, 0x4

    .line 149
    invoke-static {p0, v2, v0, v1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    throw v1
.end method

.method public final i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->c:Lkotlinx/serialization/json/internal/JsonPath;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonPath;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, p0

    .line 8
    check-cast v1, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 9
    .line 10
    iget-object v1, v1, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 16
    .line 17
    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->f:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {v1, p2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->d(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    .line 32
    .line 33
    invoke-static {p2, p1, v0, p3, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public final k(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x30

    .line 6
    .line 7
    if-gt p2, p1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    sub-int/2addr p1, p2

    .line 14
    return p1

    .line 15
    :cond_0
    const/16 p2, 0x61

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    const/16 p2, 0x67

    .line 20
    .line 21
    if-ge p1, p2, :cond_1

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x57

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    const/16 p2, 0x41

    .line 27
    .line 28
    if-gt p2, p1, :cond_2

    .line 29
    .line 30
    const/16 p2, 0x47

    .line 31
    .line 32
    if-ge p1, p2, :cond_2

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x37

    .line 35
    .line 36
    return p1

    .line 37
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "Invalid toHexChar char \'"

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, "\' in unicode escape"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x0

    .line 57
    const/4 v0, 0x6

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {p0, p1, p2, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public l()B
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 3
    .line 4
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v4, 0x9

    .line 22
    .line 23
    if-eq v2, v4, :cond_0

    .line 24
    .line 25
    if-eq v2, v3, :cond_0

    .line 26
    .line 27
    const/16 v3, 0xd

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 36
    .line 37
    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 46
    .line 47
    return v3
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eq v1, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->d:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public abstract n(I)I
.end method

.method public abstract o()I
.end method

.method public final p()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move-object v1, p0

    .line 6
    check-cast v1, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x2c

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 34
    .line 35
    return v1

    .line 36
    :cond_1
    :goto_0
    return v3
.end method

.method public final q(C)V
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    const/16 v2, 0x22

    .line 7
    .line 8
    if-ne p1, v2, :cond_1

    .line 9
    .line 10
    add-int/lit8 v2, v0, -0x1

    .line 11
    .line 12
    :try_start_0
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 19
    .line 20
    const-string v0, "null"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    .line 34
    .line 35
    const-string v2, "Expected string literal but \'null\' literal was found"

    .line 36
    .line 37
    invoke-virtual {p0, v2, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->a(C)B

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->b(B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 54
    .line 55
    if-lez v0, :cond_2

    .line 56
    .line 57
    add-int/lit8 v2, v0, -0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v2, v0

    .line 61
    :goto_1
    move-object v3, p0

    .line 62
    check-cast v3, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 63
    .line 64
    iget-object v3, v3, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eq v0, v4, :cond_4

    .line 71
    .line 72
    if-gez v2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    :goto_2
    const-string v0, "EOF"

    .line 85
    .line 86
    :goto_3
    const-string v3, ", but had \'"

    .line 87
    .line 88
    const-string v4, "\' instead"

    .line 89
    .line 90
    const-string v5, "Expected "

    .line 91
    .line 92
    invoke-static {v5, p1, v3, v0, v4}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v0, 0x4

    .line 97
    invoke-static {p0, p1, v2, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "JsonReader(source=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 10
    .line 11
    iget-object v1, v1, Lkotlinx/serialization/json/internal/StringJsonLexer;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\', currentPosition="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:I

    .line 22
    .line 23
    const/16 v1, 0x29

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lq;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
