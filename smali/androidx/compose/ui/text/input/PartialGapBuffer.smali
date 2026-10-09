.class public final Landroidx/compose/ui/text/input/PartialGapBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/compose/ui/text/input/GapBuffer;

.field public c:I

.field public d:I


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->b:Landroidx/compose/ui/text/input/GapBuffer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->d:I

    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->c:I

    .line 19
    .line 20
    sub-int/2addr v2, p0

    .line 21
    sub-int/2addr v1, v2

    .line 22
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sub-int/2addr p0, v0

    .line 29
    add-int/2addr p0, v1

    .line 30
    return p0
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 7

    .line 1
    if-gt p2, p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "start index must be less than or equal to end index: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " > "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    if-ltz p2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "start must be non-negative, but was "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->b:Landroidx/compose/ui/text/input/GapBuffer;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/lit16 v0, v0, 0x80

    .line 59
    .line 60
    const/16 v2, 0xff

    .line 61
    .line 62
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    new-array v2, v0, [C

    .line 67
    .line 68
    const/16 v3, 0x40

    .line 69
    .line 70
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v5, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sub-int/2addr v5, p3

    .line 81
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget-object v5, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 86
    .line 87
    sub-int v6, p2, v4

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 96
    .line 97
    sub-int v5, v0, v3

    .line 98
    .line 99
    add-int/2addr v3, p3

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3, v3, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1, v1, p2, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Landroidx/compose/ui/text/input/GapBuffer;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    add-int/2addr p1, v4

    .line 120
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iput v0, p2, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 124
    .line 125
    iput-object v2, p2, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 126
    .line 127
    iput p1, p2, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 128
    .line 129
    iput v5, p2, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 130
    .line 131
    iput-object p2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->b:Landroidx/compose/ui/text/input/GapBuffer;

    .line 132
    .line 133
    iput v6, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->c:I

    .line 134
    .line 135
    iput v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->d:I

    .line 136
    .line 137
    return-void

    .line 138
    :cond_2
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->c:I

    .line 139
    .line 140
    sub-int v3, p2, v2

    .line 141
    .line 142
    sub-int v2, p3, v2

    .line 143
    .line 144
    if-ltz v3, :cond_8

    .line 145
    .line 146
    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    sub-int/2addr v4, v5

    .line 153
    if-le v2, v4, :cond_3

    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    sub-int p2, v2, v3

    .line 162
    .line 163
    sub-int/2addr p0, p2

    .line 164
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-gt p0, p2, :cond_4

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    sub-int/2addr p0, p2

    .line 176
    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 177
    .line 178
    :goto_2
    mul-int/lit8 p2, p2, 0x2

    .line 179
    .line 180
    iget p3, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 181
    .line 182
    sub-int p3, p2, p3

    .line 183
    .line 184
    if-ge p3, p0, :cond_5

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    new-array p0, p2, [C

    .line 188
    .line 189
    iget-object p3, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 190
    .line 191
    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 192
    .line 193
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {p3, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .line 198
    .line 199
    iget p3, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 200
    .line 201
    iget v4, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 202
    .line 203
    sub-int/2addr p3, v4

    .line 204
    sub-int v5, p2, p3

    .line 205
    .line 206
    iget-object v6, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 207
    .line 208
    add-int/2addr p3, v4

    .line 209
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sub-int/2addr p3, v4

    .line 213
    invoke-static {v6, v4, p0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .line 215
    .line 216
    iput-object p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 217
    .line 218
    iput p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 219
    .line 220
    iput v5, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 221
    .line 222
    :goto_3
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 223
    .line 224
    if-ge v3, p0, :cond_6

    .line 225
    .line 226
    if-gt v2, p0, :cond_6

    .line 227
    .line 228
    sub-int/2addr p0, v2

    .line 229
    iget-object p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 230
    .line 231
    iget p3, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 232
    .line 233
    sub-int/2addr p3, p0

    .line 234
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {p2, v2, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    .line 239
    .line 240
    iput v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 241
    .line 242
    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 243
    .line 244
    sub-int/2addr p2, p0

    .line 245
    iput p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_6
    if-ge v3, p0, :cond_7

    .line 249
    .line 250
    if-lt v2, p0, :cond_7

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    add-int/2addr v2, p0

    .line 257
    iput v2, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 258
    .line 259
    iput v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    add-int/2addr v3, p0

    .line 267
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->a()I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    add-int/2addr v2, p0

    .line 272
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 273
    .line 274
    sub-int/2addr v3, p0

    .line 275
    iget-object p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 276
    .line 277
    iget p3, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {p2, p0, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    .line 284
    .line 285
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 286
    .line 287
    add-int/2addr p0, v3

    .line 288
    iput p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 289
    .line 290
    iput v2, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 291
    .line 292
    :goto_4
    iget-object p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 293
    .line 294
    iget p2, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 297
    .line 298
    .line 299
    move-result p3

    .line 300
    invoke-virtual {p1, v1, p3, p0, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 301
    .line 302
    .line 303
    iget p0, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    add-int/2addr p1, p0

    .line 310
    iput p1, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 311
    .line 312
    return-void

    .line 313
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/PartialGapBuffer;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->b:Landroidx/compose/ui/text/input/GapBuffer;

    .line 321
    .line 322
    const/4 v0, -0x1

    .line 323
    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->c:I

    .line 324
    .line 325
    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->d:I

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/input/PartialGapBuffer;->b(Ljava/lang/String;II)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->b:Landroidx/compose/ui/text/input/GapBuffer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->c:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 20
    .line 21
    iget v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->c:I

    .line 22
    .line 23
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Landroidx/compose/ui/text/input/GapBuffer;->b:[C

    .line 27
    .line 28
    iget v3, v0, Landroidx/compose/ui/text/input/GapBuffer;->d:I

    .line 29
    .line 30
    iget v0, v0, Landroidx/compose/ui/text/input/GapBuffer;->a:I

    .line 31
    .line 32
    sub-int/2addr v0, v3

    .line 33
    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget p0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->d:I

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v2, v0, p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
