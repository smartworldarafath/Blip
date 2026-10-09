.class public final synthetic Lkotlin/text/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/text/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlin/text/b;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lkotlin/text/b;->k:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/util/List;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Ljava/lang/CharSequence;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ne p2, v1, :cond_4

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    if-ne p2, v1, :cond_2

    .line 38
    .line 39
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/String;

    .line 44
    .line 45
    const/4 p2, 0x4

    .line 46
    invoke-static {v6, p0, p1, v2, p2}, Lkotlin/text/StringsKt;->r(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-gez p1, :cond_1

    .line 51
    .line 52
    :cond_0
    move-object p2, v3

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lkotlin/Pair;

    .line 60
    .line 61
    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_2
    const-string p0, "List has more than one element."

    .line 67
    .line 68
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_3
    const-string p0, "List is empty."

    .line 74
    .line 75
    invoke-static {p0}, Lfe;->o(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_4
    new-instance p2, Lkotlin/ranges/IntRange;

    .line 81
    .line 82
    if-gez p1, :cond_5

    .line 83
    .line 84
    move p1, v2

    .line 85
    :cond_5
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-direct {p2, p1, v0, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 90
    .line 91
    .line 92
    instance-of v0, v6, Ljava/lang/String;

    .line 93
    .line 94
    iget v1, p2, Lkotlin/ranges/IntProgression;->l:I

    .line 95
    .line 96
    iget p2, p2, Lkotlin/ranges/IntProgression;->k:I

    .line 97
    .line 98
    if-eqz v0, :cond_b

    .line 99
    .line 100
    if-lez v1, :cond_6

    .line 101
    .line 102
    if-le p1, p2, :cond_7

    .line 103
    .line 104
    :cond_6
    if-gez v1, :cond_0

    .line 105
    .line 106
    if-gt p2, p1, :cond_0

    .line 107
    .line 108
    :cond_7
    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_9

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    move-object v5, v4

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 124
    .line 125
    move-object v7, v6

    .line 126
    check-cast v7, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    invoke-virtual {v5, v2, v7, p1, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_8

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_9
    move-object v4, v3

    .line 140
    :goto_1
    check-cast v4, Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v4, :cond_a

    .line 143
    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    new-instance p2, Lkotlin/Pair;

    .line 149
    .line 150
    invoke-direct {p2, p0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    if-eq p1, p2, :cond_0

    .line 155
    .line 156
    add-int/2addr p1, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_b
    if-lez v1, :cond_c

    .line 159
    .line 160
    if-le p1, p2, :cond_d

    .line 161
    .line 162
    :cond_c
    if-gez v1, :cond_0

    .line 163
    .line 164
    if-gt p2, p1, :cond_0

    .line 165
    .line 166
    :cond_d
    move v7, p1

    .line 167
    :goto_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v4, v0

    .line 182
    check-cast v4, Ljava/lang/String;

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    const/4 v9, 0x0

    .line 190
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->e(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_e

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_f
    move-object v0, v3

    .line 198
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v0, :cond_10

    .line 201
    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    new-instance p2, Lkotlin/Pair;

    .line 207
    .line 208
    invoke-direct {p2, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_10
    if-eq v7, p2, :cond_0

    .line 213
    .line 214
    add-int/2addr v7, v1

    .line 215
    goto :goto_2

    .line 216
    :goto_4
    if-eqz p2, :cond_11

    .line 217
    .line 218
    iget-object p0, p2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 219
    .line 220
    iget-object p1, p2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p1, Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-instance v3, Lkotlin/Pair;

    .line 233
    .line 234
    invoke-direct {v3, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_11
    :goto_5
    return-object v3

    .line 238
    :pswitch_0
    check-cast p0, [C

    .line 239
    .line 240
    check-cast p1, Ljava/lang/CharSequence;

    .line 241
    .line 242
    check-cast p2, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {p1, p0, p2, v2}, Lkotlin/text/StringsKt__StringsKt;->d(Ljava/lang/CharSequence;[CIZ)I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-gez p0, :cond_12

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    new-instance v3, Lkotlin/Pair;

    .line 267
    .line 268
    invoke-direct {v3, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :goto_6
    return-object v3

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
