.class public final Landroidx/media3/extractor/text/subrip/SubripParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripParser;->d:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\\{\\\\.*?\\}"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripParser;->e:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripParser;->a:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripParser;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripParser;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 24
    .line 25
    return-void
.end method

.method public static c(Ljava/util/regex/Matcher;I)J
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/32 v2, 0x36ee80

    .line 14
    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const-wide/32 v4, 0xea60

    .line 34
    .line 35
    .line 36
    mul-long/2addr v2, v4

    .line 37
    add-long/2addr v2, v0

    .line 38
    add-int/lit8 v0, p1, 0x3

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    const-wide/16 v4, 0x3e8

    .line 52
    .line 53
    mul-long/2addr v0, v4

    .line 54
    add-long/2addr v0, v2

    .line 55
    add-int/lit8 p1, p1, 0x4

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    add-long/2addr v0, p0

    .line 68
    :cond_1
    mul-long/2addr v0, v4

    .line 69
    return-wide v0
.end method


# virtual methods
.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "SubripParser"

    .line 6
    .line 7
    add-int v3, v1, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/media3/extractor/text/subrip/SubripParser;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    invoke-virtual {v4, v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->I()Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_13

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    const-string v0, "Unexpected end"

    .line 51
    .line 52
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1b

    .line 56
    .line 57
    :cond_2
    sget-object v5, Landroidx/media3/extractor/text/subrip/SubripParser;->d:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_12

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {v5, v3}, Landroidx/media3/extractor/text/subrip/SubripParser;->c(Ljava/util/regex/Matcher;I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    const/4 v6, 0x6

    .line 75
    invoke-static {v5, v6}, Landroidx/media3/extractor/text/subrip/SubripParser;->c(Ljava/util/regex/Matcher;I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    iget-object v9, v0, Landroidx/media3/extractor/text/subrip/SubripParser;->a:Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    .line 84
    .line 85
    iget-object v11, v0, Landroidx/media3/extractor/text/subrip/SubripParser;->b:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    if-nez v13, :cond_5

    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    if-lez v13, :cond_3

    .line 105
    .line 106
    const-string v13, "<br>"

    .line 107
    .line 108
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    new-instance v13, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v14, Landroidx/media3/extractor/text/subrip/SubripParser;->e:Ljava/util/regex/Pattern;

    .line 121
    .line 122
    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    move v14, v10

    .line 127
    :goto_2
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-eqz v15, :cond_4

    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    .line 141
    .line 142
    .line 143
    move-result v16

    .line 144
    sub-int v3, v16, v14

    .line 145
    .line 146
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    add-int v10, v3, v15

    .line 151
    .line 152
    const-string v0, ""

    .line 153
    .line 154
    invoke-virtual {v13, v3, v10, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    add-int/2addr v14, v15

    .line 158
    move-object/from16 v0, p0

    .line 159
    .line 160
    const/4 v3, 0x1

    .line 161
    const/4 v10, 0x0

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    move-object/from16 v0, p0

    .line 175
    .line 176
    const/4 v3, 0x1

    .line 177
    const/4 v10, 0x0

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/4 v3, 0x0

    .line 188
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    const/4 v10, 0x0

    .line 193
    if-ge v3, v9, :cond_7

    .line 194
    .line 195
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Ljava/lang/String;

    .line 200
    .line 201
    const-string v12, "\\{\\\\an[1-9]\\}"

    .line 202
    .line 203
    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-eqz v12, :cond_6

    .line 208
    .line 209
    :goto_4
    move-wide v11, v5

    .line 210
    goto :goto_5

    .line 211
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    move-object v9, v10

    .line 215
    goto :goto_4

    .line 216
    :goto_5
    new-instance v6, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 217
    .line 218
    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    .line 219
    .line 220
    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v0, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 224
    .line 225
    iput-object v10, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 226
    .line 227
    if-nez v9, :cond_8

    .line 228
    .line 229
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object/from16 v17, v1

    .line 234
    .line 235
    move-object/from16 v18, v4

    .line 236
    .line 237
    move-object/from16 v19, v6

    .line 238
    .line 239
    move-wide/from16 v20, v7

    .line 240
    .line 241
    goto/16 :goto_19

    .line 242
    .line 243
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    const-string v10, "{\\an1}"

    .line 248
    .line 249
    const-string v13, "{\\an2}"

    .line 250
    .line 251
    const-string v14, "{\\an3}"

    .line 252
    .line 253
    const-string v15, "{\\an4}"

    .line 254
    .line 255
    const-string v5, "{\\an5}"

    .line 256
    .line 257
    move/from16 v16, v0

    .line 258
    .line 259
    const-string v0, "{\\an6}"

    .line 260
    .line 261
    move-object/from16 v17, v1

    .line 262
    .line 263
    const-string v1, "{\\an7}"

    .line 264
    .line 265
    move-object/from16 v18, v4

    .line 266
    .line 267
    const-string v4, "{\\an8}"

    .line 268
    .line 269
    move-object/from16 v19, v6

    .line 270
    .line 271
    const-string v6, "{\\an9}"

    .line 272
    .line 273
    sparse-switch v16, :sswitch_data_0

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :sswitch_0
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v16

    .line 281
    if-eqz v16, :cond_9

    .line 282
    .line 283
    :goto_6
    move-wide/from16 v20, v7

    .line 284
    .line 285
    const/4 v7, 0x2

    .line 286
    goto :goto_b

    .line 287
    :sswitch_1
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v16

    .line 291
    :cond_9
    :goto_7
    move-wide/from16 v20, v7

    .line 292
    .line 293
    :cond_a
    :goto_8
    const/4 v7, 0x1

    .line 294
    goto :goto_d

    .line 295
    :sswitch_2
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v16

    .line 299
    if-eqz v16, :cond_9

    .line 300
    .line 301
    :goto_9
    move-wide/from16 v20, v7

    .line 302
    .line 303
    :goto_a
    const/4 v7, 0x0

    .line 304
    goto :goto_c

    .line 305
    :sswitch_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v16

    .line 309
    if-eqz v16, :cond_9

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :sswitch_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v16

    .line 316
    goto :goto_7

    .line 317
    :sswitch_5
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v16

    .line 321
    if-eqz v16, :cond_9

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :sswitch_6
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v16

    .line 328
    if-eqz v16, :cond_9

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :goto_b
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 332
    .line 333
    goto :goto_e

    .line 334
    :sswitch_7
    move-wide/from16 v20, v7

    .line 335
    .line 336
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    goto :goto_8

    .line 341
    :sswitch_8
    move-wide/from16 v20, v7

    .line 342
    .line 343
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_a

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :goto_c
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 351
    .line 352
    goto :goto_e

    .line 353
    :goto_d
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 354
    .line 355
    :goto_e
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    sparse-switch v7, :sswitch_data_1

    .line 360
    .line 361
    .line 362
    goto :goto_12

    .line 363
    :sswitch_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_b

    .line 368
    .line 369
    :goto_f
    const/4 v7, 0x0

    .line 370
    goto :goto_10

    .line 371
    :sswitch_a
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_b

    .line 376
    .line 377
    goto :goto_f

    .line 378
    :sswitch_b
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_b

    .line 383
    .line 384
    goto :goto_f

    .line 385
    :goto_10
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 386
    .line 387
    :goto_11
    const/4 v7, 0x1

    .line 388
    goto :goto_16

    .line 389
    :sswitch_c
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    :cond_b
    :goto_12
    const/4 v7, 0x1

    .line 394
    goto :goto_15

    .line 395
    :sswitch_d
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    goto :goto_12

    .line 400
    :sswitch_e
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    goto :goto_12

    .line 405
    :sswitch_f
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_b

    .line 410
    .line 411
    :goto_13
    const/4 v7, 0x2

    .line 412
    goto :goto_14

    .line 413
    :sswitch_10
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_b

    .line 418
    .line 419
    goto :goto_13

    .line 420
    :sswitch_11
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_b

    .line 425
    .line 426
    goto :goto_13

    .line 427
    :goto_14
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 428
    .line 429
    goto :goto_11

    .line 430
    :goto_15
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 431
    .line 432
    :goto_16
    iget v0, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 433
    .line 434
    const v1, 0x3da3d70a    # 0.08f

    .line 435
    .line 436
    .line 437
    const/high16 v4, 0x3f000000    # 0.5f

    .line 438
    .line 439
    const v5, 0x3f6b851f    # 0.92f

    .line 440
    .line 441
    .line 442
    if-eqz v0, :cond_e

    .line 443
    .line 444
    if-eq v0, v7, :cond_d

    .line 445
    .line 446
    const/4 v6, 0x2

    .line 447
    if-ne v0, v6, :cond_c

    .line 448
    .line 449
    move v0, v5

    .line 450
    goto :goto_17

    .line 451
    :cond_c
    invoke-static {}, Lfe;->h()V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_d
    const/4 v6, 0x2

    .line 456
    move v0, v4

    .line 457
    goto :goto_17

    .line 458
    :cond_e
    const/4 v6, 0x2

    .line 459
    move v0, v1

    .line 460
    :goto_17
    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 461
    .line 462
    iget v0, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 463
    .line 464
    if-eqz v0, :cond_11

    .line 465
    .line 466
    if-eq v0, v7, :cond_10

    .line 467
    .line 468
    if-ne v0, v6, :cond_f

    .line 469
    .line 470
    move v1, v5

    .line 471
    goto :goto_18

    .line 472
    :cond_f
    invoke-static {}, Lfe;->h()V

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :cond_10
    move v1, v4

    .line 477
    :cond_11
    :goto_18
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 478
    .line 479
    const/4 v7, 0x0

    .line 480
    iput v7, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 481
    .line 482
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    :goto_19
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sub-long v9, v11, v20

    .line 491
    .line 492
    move-object v11, v0

    .line 493
    move-object/from16 v6, v19

    .line 494
    .line 495
    move-wide/from16 v7, v20

    .line 496
    .line 497
    invoke-direct/range {v6 .. v11}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 498
    .line 499
    .line 500
    move-object/from16 v0, p4

    .line 501
    .line 502
    invoke-interface {v0, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v0, p0

    .line 506
    .line 507
    move-object/from16 v1, v17

    .line 508
    .line 509
    move-object/from16 v4, v18

    .line 510
    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :cond_12
    move-object/from16 v0, p4

    .line 514
    .line 515
    move-object/from16 v17, v1

    .line 516
    .line 517
    move-object/from16 v18, v4

    .line 518
    .line 519
    const-string v1, "Skipping invalid timing: "

    .line 520
    .line 521
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :goto_1a
    move-object/from16 v0, p0

    .line 529
    .line 530
    move-object/from16 v1, v17

    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :catch_0
    move-object/from16 v0, p4

    .line 535
    .line 536
    move-object/from16 v17, v1

    .line 537
    .line 538
    move-object/from16 v18, v4

    .line 539
    .line 540
    const-string v1, "Skipping invalid index: "

    .line 541
    .line 542
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    goto :goto_1a

    .line 550
    :cond_13
    :goto_1b
    return-void

    .line 551
    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
