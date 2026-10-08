.class public Landroidx/media3/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/ui/TrackNameProvider;


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const-string v2, "und"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    :cond_1
    :goto_0
    move-object v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v4, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    :try_start_0
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_3

    .line 102
    .line 103
    move-object v1, v3

    .line 104
    :cond_3
    move-object p0, v1

    .line 105
    :cond_4
    return-object p0
.end method

.method public final b(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Landroidx/media3/common/Format;->f:I

    .line 2
    .line 3
    iget p1, p1, Landroidx/media3/common/Format;->f:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f11006d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    .line 21
    :goto_0
    and-int/lit8 v2, p1, 0x4

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const v2, 0x7f110070

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    and-int/lit8 v2, p1, 0x8

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const v2, 0x7f11006f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_2
    and-int/lit16 p1, p1, 0x440

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const p1, 0x7f11006e

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_3
    return-object v0
.end method

.method public final c(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, v1, Landroidx/media3/common/Format;->k:I

    .line 8
    .line 9
    iget v4, v1, Landroidx/media3/common/Format;->J:I

    .line 10
    .line 11
    iget v5, v1, Landroidx/media3/common/Format;->x:I

    .line 12
    .line 13
    iget v6, v1, Landroidx/media3/common/Format;->w:I

    .line 14
    .line 15
    iget-object v7, v1, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v8, 0x2

    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v10, -0x1

    .line 24
    if-eq v2, v10, :cond_0

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    const-string v2, "(\\s*,\\s*)"

    .line 29
    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    if-nez v7, :cond_2

    .line 33
    .line 34
    :cond_1
    move-object/from16 v16, v12

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v13

    .line 41
    if-eqz v13, :cond_3

    .line 42
    .line 43
    new-array v13, v11, [Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13, v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    :goto_0
    array-length v14, v13

    .line 55
    move v15, v11

    .line 56
    :goto_1
    if-ge v15, v14, :cond_1

    .line 57
    .line 58
    aget-object v16, v13, v15

    .line 59
    .line 60
    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v16

    .line 64
    if-eqz v16, :cond_4

    .line 65
    .line 66
    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v17

    .line 70
    if-eqz v17, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_2
    if-eqz v16, :cond_6

    .line 77
    .line 78
    :cond_5
    :goto_3
    move v2, v8

    .line 79
    goto :goto_8

    .line 80
    :cond_6
    if-nez v7, :cond_7

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eqz v13, :cond_8

    .line 88
    .line 89
    new-array v2, v11, [Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :goto_4
    array-length v7, v2

    .line 101
    :goto_5
    if-ge v11, v7, :cond_a

    .line 102
    .line 103
    aget-object v13, v2, v11

    .line 104
    .line 105
    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    if-eqz v13, :cond_9

    .line 110
    .line 111
    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->h(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    if-eqz v14, :cond_9

    .line 116
    .line 117
    move-object v12, v13

    .line 118
    goto :goto_6

    .line 119
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_a
    :goto_6
    if-eqz v12, :cond_c

    .line 123
    .line 124
    :cond_b
    :goto_7
    move v2, v9

    .line 125
    goto :goto_8

    .line 126
    :cond_c
    if-ne v6, v10, :cond_5

    .line 127
    .line 128
    if-eq v5, v10, :cond_d

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_d
    if-ne v4, v10, :cond_b

    .line 132
    .line 133
    iget v2, v1, Landroidx/media3/common/Format;->L:I

    .line 134
    .line 135
    if-eq v2, v10, :cond_e

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_e
    move v2, v10

    .line 139
    :goto_8
    const v7, 0x49742400    # 1000000.0f

    .line 140
    .line 141
    .line 142
    const v11, 0x7f11006a

    .line 143
    .line 144
    .line 145
    const-string v12, ""

    .line 146
    .line 147
    iget-object v13, v0, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    .line 148
    .line 149
    if-ne v2, v8, :cond_12

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eq v6, v10, :cond_10

    .line 156
    .line 157
    if-ne v5, v10, :cond_f

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const v5, 0x7f11006c

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    goto :goto_a

    .line 180
    :cond_10
    :goto_9
    move-object v4, v12

    .line 181
    :goto_a
    if-ne v3, v10, :cond_11

    .line 182
    .line 183
    goto :goto_b

    .line 184
    :cond_11
    int-to-float v3, v3

    .line 185
    div-float/2addr v3, v7

    .line 186
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v13, v11, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    :goto_b
    filled-new-array {v2, v4, v12}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    goto :goto_f

    .line 207
    :cond_12
    if-ne v2, v9, :cond_1a

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-eq v4, v10, :cond_18

    .line 214
    .line 215
    if-ge v4, v9, :cond_13

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_13
    if-eq v4, v9, :cond_17

    .line 219
    .line 220
    if-eq v4, v8, :cond_16

    .line 221
    .line 222
    const/4 v5, 0x6

    .line 223
    if-eq v4, v5, :cond_15

    .line 224
    .line 225
    const/4 v5, 0x7

    .line 226
    if-eq v4, v5, :cond_15

    .line 227
    .line 228
    const/16 v5, 0x8

    .line 229
    .line 230
    if-eq v4, v5, :cond_14

    .line 231
    .line 232
    const v4, 0x7f110075

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    goto :goto_d

    .line 240
    :cond_14
    const v4, 0x7f110077

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    goto :goto_d

    .line 248
    :cond_15
    const v4, 0x7f110076

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    goto :goto_d

    .line 256
    :cond_16
    const v4, 0x7f110074

    .line 257
    .line 258
    .line 259
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    goto :goto_d

    .line 264
    :cond_17
    const v4, 0x7f11006b

    .line 265
    .line 266
    .line 267
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    goto :goto_d

    .line 272
    :cond_18
    :goto_c
    move-object v4, v12

    .line 273
    :goto_d
    if-ne v3, v10, :cond_19

    .line 274
    .line 275
    goto :goto_e

    .line 276
    :cond_19
    int-to-float v3, v3

    .line 277
    div-float/2addr v3, v7

    .line 278
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v13, v11, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v12

    .line 290
    :goto_e
    filled-new-array {v2, v4, v12}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v0, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    goto :goto_f

    .line 299
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/ui/DefaultTrackNameProvider;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_1b

    .line 308
    .line 309
    return-object v0

    .line 310
    :cond_1b
    iget-object v0, v1, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 311
    .line 312
    if-eqz v0, :cond_1d

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_1c

    .line 323
    .line 324
    goto :goto_10

    .line 325
    :cond_1c
    const v1, 0x7f110079

    .line 326
    .line 327
    .line 328
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v13, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    return-object v0

    .line 337
    :cond_1d
    :goto_10
    const v0, 0x7f110078

    .line 338
    .line 339
    .line 340
    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    return-object v0
.end method

.method public final varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    .line 7
    aget-object v3, p1, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    move-object v1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const v4, 0x7f110069

    .line 24
    .line 25
    .line 26
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v3, p0, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    .line 31
    .line 32
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v1
.end method
