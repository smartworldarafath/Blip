.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/HttpUrl;
    .locals 13

    .line 1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v1, :cond_7

    .line 5
    .line 6
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x7

    .line 10
    invoke-static {v2, v3, v3, v4}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v5, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v5, v3, v3, v4}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move v6, v4

    .line 21
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_6

    .line 24
    .line 25
    iget v7, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 26
    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v7, v8, :cond_0

    .line 29
    .line 30
    :goto_0
    move v8, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v7}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v10, 0xa

    .line 47
    .line 48
    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    if-eqz v11, :cond_1

    .line 64
    .line 65
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v11, v3, v3, v8}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz v9, :cond_3

    .line 82
    .line 83
    new-instance v11, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_4

    .line 101
    .line 102
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    const/4 v12, 0x3

    .line 111
    invoke-static {v10, v3, v3, v12}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    move-object v10, v0

    .line 117
    :goto_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move-object v11, v0

    .line 122
    :cond_4
    iget-object v9, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v9, :cond_5

    .line 125
    .line 126
    invoke-static {v9, v3, v3, v8}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_5
    move-object v8, v0

    .line 131
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    new-instance v0, Lokhttp3/HttpUrl;

    .line 136
    .line 137
    move-object v3, v5

    .line 138
    move v5, v7

    .line 139
    move-object v7, v11

    .line 140
    invoke-direct/range {v0 .. v9}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_6
    const-string p0, "host == null"

    .line 145
    .line 146
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_7
    const-string p0, "scheme == null"

    .line 151
    .line 152
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method public final b(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lokhttp3/internal/Util;->a:[B

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v2, v4, v3}, Lokhttp3/internal/Util;->k(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-static {v2, v3, v5}, Lokhttp3/internal/Util;->l(Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sub-int v6, v5, v3

    .line 27
    .line 28
    const/16 v7, 0x5b

    .line 29
    .line 30
    const/16 v8, 0x3a

    .line 31
    .line 32
    const/4 v9, -0x1

    .line 33
    const/4 v10, 0x2

    .line 34
    if-ge v6, v10, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/16 v11, 0x61

    .line 42
    .line 43
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    const/16 v13, 0x41

    .line 48
    .line 49
    if-ltz v12, :cond_1

    .line 50
    .line 51
    const/16 v12, 0x7a

    .line 52
    .line 53
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-lez v12, :cond_2

    .line 58
    .line 59
    :cond_1
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-ltz v12, :cond_9

    .line 64
    .line 65
    const/16 v12, 0x5a

    .line 66
    .line 67
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-lez v6, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .line 75
    .line 76
    :goto_0
    if-ge v6, v5, :cond_9

    .line 77
    .line 78
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    if-gt v11, v12, :cond_3

    .line 83
    .line 84
    const/16 v14, 0x7b

    .line 85
    .line 86
    if-ge v12, v14, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-gt v13, v12, :cond_4

    .line 90
    .line 91
    if-ge v12, v7, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/16 v14, 0x30

    .line 95
    .line 96
    if-gt v14, v12, :cond_5

    .line 97
    .line 98
    if-ge v12, v8, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/16 v14, 0x2b

    .line 102
    .line 103
    if-ne v12, v14, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/16 v14, 0x2d

    .line 107
    .line 108
    if-ne v12, v14, :cond_7

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_7
    const/16 v14, 0x2e

    .line 112
    .line 113
    if-ne v12, v14, :cond_8

    .line 114
    .line 115
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    if-ne v12, v8, :cond_9

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_9
    :goto_2
    move v6, v9

    .line 122
    :goto_3
    const/4 v11, 0x1

    .line 123
    if-eq v6, v9, :cond_c

    .line 124
    .line 125
    const-string v12, "https:"

    .line 126
    .line 127
    invoke-static {v3, v2, v12, v11}, Lkotlin/text/StringsKt;->I(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_a

    .line 132
    .line 133
    const-string v6, "https"

    .line 134
    .line 135
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 136
    .line 137
    add-int/lit8 v3, v3, 0x6

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_a
    const-string v12, "http:"

    .line 141
    .line 142
    invoke-static {v3, v2, v12, v11}, Lkotlin/text/StringsKt;->I(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_b

    .line 147
    .line 148
    const-string v6, "http"

    .line 149
    .line 150
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x5

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 164
    .line 165
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const/16 v1, 0x27

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_c
    if-eqz v1, :cond_31

    .line 185
    .line 186
    iget-object v6, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v6, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 189
    .line 190
    :goto_4
    move v6, v3

    .line 191
    move v12, v4

    .line 192
    :goto_5
    const/16 v13, 0x2f

    .line 193
    .line 194
    const/16 v14, 0x5c

    .line 195
    .line 196
    if-ge v6, v5, :cond_e

    .line 197
    .line 198
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    if-eq v15, v14, :cond_d

    .line 203
    .line 204
    if-ne v15, v13, :cond_e

    .line 205
    .line 206
    :cond_d
    add-int/lit8 v12, v12, 0x1

    .line 207
    .line 208
    add-int/lit8 v6, v6, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_e
    const-string v6, " \"\'<>#"

    .line 212
    .line 213
    const-string v15, ""

    .line 214
    .line 215
    move/from16 v16, v11

    .line 216
    .line 217
    iget-object v11, v0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 218
    .line 219
    const/16 v8, 0x23

    .line 220
    .line 221
    if-ge v12, v10, :cond_12

    .line 222
    .line 223
    if-eqz v1, :cond_12

    .line 224
    .line 225
    iget-object v10, v1, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v7, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-nez v7, :cond_f

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_f
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->e()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    iput-object v7, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iput-object v7, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v7, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 249
    .line 250
    iput-object v7, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 251
    .line 252
    iget v7, v1, Lokhttp3/HttpUrl;->e:I

    .line 253
    .line 254
    iput v7, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 255
    .line 256
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->c()Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    .line 265
    .line 266
    if-eq v3, v5, :cond_10

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-ne v7, v8, :cond_21

    .line 273
    .line 274
    :cond_10
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_11

    .line 279
    .line 280
    const/16 v7, 0xd3

    .line 281
    .line 282
    invoke-static {v1, v4, v4, v6, v7}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    goto :goto_6

    .line 291
    :cond_11
    const/4 v1, 0x0

    .line 292
    :goto_6
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 293
    .line 294
    goto/16 :goto_11

    .line 295
    .line 296
    :cond_12
    :goto_7
    add-int/2addr v3, v12

    .line 297
    move v1, v4

    .line 298
    move v7, v1

    .line 299
    :goto_8
    const-string v10, "@/\\?#"

    .line 300
    .line 301
    invoke-static {v3, v5, v2, v10}, Lokhttp3/internal/Util;->d(IILjava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-eq v10, v5, :cond_13

    .line 306
    .line 307
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    goto :goto_9

    .line 312
    :cond_13
    move v12, v9

    .line 313
    :goto_9
    if-eq v12, v9, :cond_18

    .line 314
    .line 315
    if-eq v12, v8, :cond_18

    .line 316
    .line 317
    if-eq v12, v13, :cond_18

    .line 318
    .line 319
    if-eq v12, v14, :cond_18

    .line 320
    .line 321
    const/16 v4, 0x3f

    .line 322
    .line 323
    if-eq v12, v4, :cond_18

    .line 324
    .line 325
    const/16 v4, 0x40

    .line 326
    .line 327
    if-eq v12, v4, :cond_14

    .line 328
    .line 329
    const/4 v4, 0x0

    .line 330
    goto :goto_8

    .line 331
    :cond_14
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 332
    .line 333
    const-string v12, "%40"

    .line 334
    .line 335
    if-nez v1, :cond_17

    .line 336
    .line 337
    const/16 v8, 0x3a

    .line 338
    .line 339
    invoke-static {v2, v8, v3, v10}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    const/16 v8, 0xf0

    .line 344
    .line 345
    invoke-static {v2, v3, v14, v4, v8}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    if-eqz v7, :cond_15

    .line 350
    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-object v8, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    :cond_15
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 372
    .line 373
    if-eq v14, v10, :cond_16

    .line 374
    .line 375
    add-int/lit8 v14, v14, 0x1

    .line 376
    .line 377
    const/16 v8, 0xf0

    .line 378
    .line 379
    invoke-static {v2, v14, v10, v4, v8}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 384
    .line 385
    move/from16 v1, v16

    .line 386
    .line 387
    goto :goto_a

    .line 388
    :cond_16
    const/16 v8, 0xf0

    .line 389
    .line 390
    :goto_a
    move/from16 v7, v16

    .line 391
    .line 392
    goto :goto_b

    .line 393
    :cond_17
    const/16 v8, 0xf0

    .line 394
    .line 395
    new-instance v14, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    iget-object v13, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-static {v2, v3, v10, v4, v8}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iput-object v3, v0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 420
    .line 421
    :goto_b
    add-int/lit8 v3, v10, 0x1

    .line 422
    .line 423
    const/4 v4, 0x0

    .line 424
    const/16 v8, 0x23

    .line 425
    .line 426
    const/16 v13, 0x2f

    .line 427
    .line 428
    const/16 v14, 0x5c

    .line 429
    .line 430
    goto/16 :goto_8

    .line 431
    .line 432
    :cond_18
    move v1, v3

    .line 433
    :goto_c
    if-ge v1, v10, :cond_1d

    .line 434
    .line 435
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    const/16 v7, 0x5b

    .line 440
    .line 441
    if-ne v4, v7, :cond_1b

    .line 442
    .line 443
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 444
    .line 445
    if-ge v1, v10, :cond_1a

    .line 446
    .line 447
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    const/16 v8, 0x5d

    .line 452
    .line 453
    if-ne v4, v8, :cond_19

    .line 454
    .line 455
    :cond_1a
    const/16 v8, 0x3a

    .line 456
    .line 457
    goto :goto_d

    .line 458
    :cond_1b
    const/16 v8, 0x3a

    .line 459
    .line 460
    if-ne v4, v8, :cond_1c

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_1c
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_1d
    move v1, v10

    .line 467
    :goto_e
    add-int/lit8 v4, v1, 0x1

    .line 468
    .line 469
    const/4 v7, 0x4

    .line 470
    if-ge v4, v10, :cond_20

    .line 471
    .line 472
    invoke-static {v2, v3, v1, v7}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-static {v7}, Lokhttp3/internal/HostnamesKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    iput-object v7, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 481
    .line 482
    const/16 v7, 0xf8

    .line 483
    .line 484
    :try_start_0
    invoke-static {v2, v4, v10, v15, v7}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    move/from16 v8, v16

    .line 493
    .line 494
    if-gt v8, v7, :cond_1e

    .line 495
    .line 496
    const/high16 v8, 0x10000

    .line 497
    .line 498
    if-ge v7, v8, :cond_1e

    .line 499
    .line 500
    goto :goto_f

    .line 501
    :catch_0
    :cond_1e
    move v7, v9

    .line 502
    :goto_f
    iput v7, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 503
    .line 504
    if-eq v7, v9, :cond_1f

    .line 505
    .line 506
    goto :goto_10

    .line 507
    :cond_1f
    const-string v0, "Invalid URL port: \""

    .line 508
    .line 509
    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-static {v1, v0}, Lk8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :cond_20
    invoke-static {v2, v3, v1, v7}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-static {v4}, Lokhttp3/internal/HostnamesKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    iput-object v4, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 526
    .line 527
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    invoke-static {v4}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    iput v4, v0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 537
    .line 538
    :goto_10
    iget-object v4, v0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 539
    .line 540
    if-eqz v4, :cond_30

    .line 541
    .line 542
    move v3, v10

    .line 543
    :cond_21
    :goto_11
    const-string v1, "?#"

    .line 544
    .line 545
    invoke-static {v3, v5, v2, v1}, Lokhttp3/internal/Util;->d(IILjava/lang/String;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-ne v3, v1, :cond_22

    .line 550
    .line 551
    goto/16 :goto_18

    .line 552
    .line 553
    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    const/16 v7, 0x2f

    .line 558
    .line 559
    if-eq v4, v7, :cond_24

    .line 560
    .line 561
    const/16 v7, 0x5c

    .line 562
    .line 563
    if-ne v4, v7, :cond_23

    .line 564
    .line 565
    goto :goto_12

    .line 566
    :cond_23
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    const/16 v16, 0x1

    .line 571
    .line 572
    add-int/lit8 v4, v4, -0x1

    .line 573
    .line 574
    invoke-virtual {v11, v4, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    goto :goto_13

    .line 578
    :cond_24
    :goto_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    add-int/lit8 v3, v3, 0x1

    .line 585
    .line 586
    :goto_13
    if-ge v3, v1, :cond_2d

    .line 587
    .line 588
    const-string v4, "/\\"

    .line 589
    .line 590
    invoke-static {v3, v1, v2, v4}, Lokhttp3/internal/Util;->d(IILjava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    if-ge v4, v1, :cond_25

    .line 595
    .line 596
    const/4 v8, 0x1

    .line 597
    goto :goto_14

    .line 598
    :cond_25
    const/4 v8, 0x0

    .line 599
    :goto_14
    const-string v7, " \"<>^`{}|/\\?#"

    .line 600
    .line 601
    const/16 v9, 0xf0

    .line 602
    .line 603
    invoke-static {v2, v3, v4, v7, v9}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    const-string v7, "."

    .line 608
    .line 609
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v7

    .line 613
    if-nez v7, :cond_2b

    .line 614
    .line 615
    const-string v7, "%2e"

    .line 616
    .line 617
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 618
    .line 619
    .line 620
    move-result v7

    .line 621
    if-eqz v7, :cond_26

    .line 622
    .line 623
    goto/16 :goto_17

    .line 624
    .line 625
    :cond_26
    const-string v7, ".."

    .line 626
    .line 627
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    if-nez v7, :cond_29

    .line 632
    .line 633
    const-string v7, "%2e."

    .line 634
    .line 635
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    if-nez v7, :cond_29

    .line 640
    .line 641
    const-string v7, ".%2e"

    .line 642
    .line 643
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-nez v7, :cond_29

    .line 648
    .line 649
    const-string v7, "%2e%2e"

    .line 650
    .line 651
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_27

    .line 656
    .line 657
    goto :goto_16

    .line 658
    :cond_27
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    const/16 v16, 0x1

    .line 663
    .line 664
    add-int/lit8 v7, v7, -0x1

    .line 665
    .line 666
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v7

    .line 670
    check-cast v7, Ljava/lang/CharSequence;

    .line 671
    .line 672
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    if-nez v7, :cond_28

    .line 677
    .line 678
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 679
    .line 680
    .line 681
    move-result v7

    .line 682
    add-int/lit8 v7, v7, -0x1

    .line 683
    .line 684
    invoke-virtual {v11, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    goto :goto_15

    .line 688
    :cond_28
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    :goto_15
    if-eqz v8, :cond_2b

    .line 692
    .line 693
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    goto :goto_17

    .line 697
    :cond_29
    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    const/16 v16, 0x1

    .line 702
    .line 703
    add-int/lit8 v3, v3, -0x1

    .line 704
    .line 705
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    check-cast v3, Ljava/lang/String;

    .line 710
    .line 711
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-nez v3, :cond_2a

    .line 716
    .line 717
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-nez v3, :cond_2a

    .line 722
    .line 723
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    add-int/lit8 v3, v3, -0x1

    .line 728
    .line 729
    invoke-virtual {v11, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    goto :goto_17

    .line 733
    :cond_2a
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    :cond_2b
    :goto_17
    if-eqz v8, :cond_2c

    .line 737
    .line 738
    add-int/lit8 v3, v4, 0x1

    .line 739
    .line 740
    goto/16 :goto_13

    .line 741
    .line 742
    :cond_2c
    move v3, v4

    .line 743
    goto/16 :goto_13

    .line 744
    .line 745
    :cond_2d
    :goto_18
    if-ge v1, v5, :cond_2e

    .line 746
    .line 747
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    const/16 v4, 0x3f

    .line 752
    .line 753
    if-ne v3, v4, :cond_2e

    .line 754
    .line 755
    const/16 v3, 0x23

    .line 756
    .line 757
    invoke-static {v2, v3, v1, v5}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    add-int/lit8 v1, v1, 0x1

    .line 762
    .line 763
    const/16 v3, 0xd0

    .line 764
    .line 765
    invoke-static {v2, v1, v4, v6, v3}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 774
    .line 775
    move v1, v4

    .line 776
    :cond_2e
    if-ge v1, v5, :cond_2f

    .line 777
    .line 778
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    const/16 v4, 0x23

    .line 783
    .line 784
    if-ne v3, v4, :cond_2f

    .line 785
    .line 786
    const/16 v16, 0x1

    .line 787
    .line 788
    add-int/lit8 v1, v1, 0x1

    .line 789
    .line 790
    const/16 v3, 0xb0

    .line 791
    .line 792
    invoke-static {v2, v1, v5, v15, v3}, Lokhttp3/HttpUrl$Companion;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    iput-object v1, v0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 797
    .line 798
    :cond_2f
    return-void

    .line 799
    :cond_30
    const-string v0, "Invalid URL host: \""

    .line 800
    .line 801
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    invoke-static {v1, v0}, Lk8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    return-void

    .line 809
    :cond_31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    const/4 v1, 0x6

    .line 814
    if-le v0, v1, :cond_32

    .line 815
    .line 816
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    const-string v1, "..."

    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    goto :goto_19

    .line 827
    :cond_32
    move-object v0, v2

    .line 828
    :goto_19
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 829
    .line 830
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "://"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "//"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x3a

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_3

    .line 42
    .line 43
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const/16 v1, 0x40

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->j(Ljava/lang/CharSequence;C)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/16 v1, 0x5b

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x5d

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->e:I

    .line 101
    .line 102
    const/4 v3, -0x1

    .line 103
    if-ne v1, v3, :cond_6

    .line 104
    .line 105
    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v4, :cond_9

    .line 108
    .line 109
    :cond_6
    if-eq v1, v3, :cond_7

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->a:Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v3, :cond_8

    .line 124
    .line 125
    invoke-static {v3}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eq v1, v3, :cond_9

    .line 130
    .line 131
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->f:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v3, 0x0

    .line 147
    move v4, v3

    .line 148
    :goto_4
    if-ge v4, v2, :cond_a

    .line 149
    .line 150
    const/16 v5, 0x2f

    .line 151
    .line 152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 168
    .line 169
    if-eqz v1, :cond_f

    .line 170
    .line 171
    const/16 v1, 0x3f

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->g:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const/4 v3, 0x2

    .line 190
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->h(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iget v3, v2, Lkotlin/ranges/IntProgression;->j:I

    .line 195
    .line 196
    iget v4, v2, Lkotlin/ranges/IntProgression;->k:I

    .line 197
    .line 198
    iget v2, v2, Lkotlin/ranges/IntProgression;->l:I

    .line 199
    .line 200
    if-lez v2, :cond_b

    .line 201
    .line 202
    if-le v3, v4, :cond_c

    .line 203
    .line 204
    :cond_b
    if-gez v2, :cond_f

    .line 205
    .line 206
    if-gt v4, v3, :cond_f

    .line 207
    .line 208
    :cond_c
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Ljava/lang/String;

    .line 213
    .line 214
    add-int/lit8 v6, v3, 0x1

    .line 215
    .line 216
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    check-cast v6, Ljava/lang/String;

    .line 221
    .line 222
    if-lez v3, :cond_d

    .line 223
    .line 224
    const/16 v7, 0x26

    .line 225
    .line 226
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    if-eqz v6, :cond_e

    .line 233
    .line 234
    const/16 v5, 0x3d

    .line 235
    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    :cond_e
    if-eq v3, v4, :cond_f

    .line 243
    .line 244
    add-int/2addr v3, v2

    .line 245
    goto :goto_5

    .line 246
    :cond_f
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 247
    .line 248
    if-eqz v1, :cond_10

    .line 249
    .line 250
    const/16 v1, 0x23

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lokhttp3/HttpUrl$Builder;->h:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    return-object p0
.end method
