.class final Landroidx/media3/extractor/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final j:Landroidx/media3/extractor/text/ttml/TtmlNode;

.field public final k:[J

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/HashMap;

.field public final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->j:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->m:Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->n:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->l:Ljava/util/Map;

    .line 15
    .line 16
    new-instance p2, Ljava/util/TreeSet;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->d(Ljava/util/TreeSet;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [J

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_0

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    check-cast p4, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    add-int/lit8 p4, p3, 0x1

    .line 52
    .line 53
    aput-wide v0, p1, p3

    .line 54
    .line 55
    move p3, p4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->k:[J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->k:[J

    .line 3
    .line 4
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->a([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length p0, p0

    .line 9
    if-ge p1, p0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final b(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->k:[J

    .line 2
    .line 3
    aget-wide p0, p0, p1

    .line 4
    .line 5
    return-wide p0
.end method

.method public final c(J)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->j:Landroidx/media3/extractor/text/ttml/TtmlNode;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2, v2, v0}, Landroidx/media3/extractor/text/ttml/TtmlNode;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    iget-object v5, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 20
    .line 21
    move-wide v2, p1

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/text/ttml/TtmlNode;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v1, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->l:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->m:Ljava/util/HashMap;

    .line 30
    .line 31
    move-object v7, v6

    .line 32
    move-object v6, p1

    .line 33
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/extractor/text/ttml/TtmlNode;->h(JLjava/util/Map;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 34
    .line 35
    .line 36
    move-object v6, v7

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/util/Pair;

    .line 58
    .line 59
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->n:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    array-length v3, v2

    .line 77
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    .line 93
    .line 94
    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 101
    .line 102
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->b:F

    .line 103
    .line 104
    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 105
    .line 106
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 107
    .line 108
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->c:F

    .line 109
    .line 110
    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 111
    .line 112
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 113
    .line 114
    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->e:I

    .line 115
    .line 116
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 117
    .line 118
    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->f:F

    .line 119
    .line 120
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 121
    .line 122
    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->g:F

    .line 123
    .line 124
    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->m:F

    .line 125
    .line 126
    iget v0, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->j:I

    .line 127
    .line 128
    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->p:I

    .line 129
    .line 130
    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_d

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Ljava/util/Map$Entry;

    .line 157
    .line 158
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroidx/media3/common/text/Cue$Builder;

    .line 176
    .line 177
    iget-object v2, p2, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const-class v4, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    .line 189
    .line 190
    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, [Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    .line 195
    .line 196
    array-length v4, v3

    .line 197
    move v6, v1

    .line 198
    :goto_2
    if-ge v6, v4, :cond_2

    .line 199
    .line 200
    aget-object v7, v3, v6

    .line 201
    .line 202
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    const-string v9, ""

    .line 211
    .line 212
    invoke-virtual {v2, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    .line 214
    .line 215
    add-int/lit8 v6, v6, 0x1

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_2
    move v3, v1

    .line 219
    :goto_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    const/16 v6, 0x20

    .line 224
    .line 225
    if-ge v3, v4, :cond_5

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-ne v4, v6, :cond_4

    .line 232
    .line 233
    add-int/lit8 v4, v3, 0x1

    .line 234
    .line 235
    move v7, v4

    .line 236
    :goto_4
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-ge v7, v8, :cond_3

    .line 241
    .line 242
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-ne v8, v6, :cond_3

    .line 247
    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_3
    sub-int/2addr v7, v4

    .line 252
    if-lez v7, :cond_4

    .line 253
    .line 254
    add-int/2addr v7, v3

    .line 255
    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    const/4 v4, 0x1

    .line 266
    if-lez v3, :cond_6

    .line 267
    .line 268
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-ne v3, v6, :cond_6

    .line 273
    .line 274
    invoke-virtual {v2, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 275
    .line 276
    .line 277
    :cond_6
    move v3, v1

    .line 278
    :goto_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    sub-int/2addr v7, v4

    .line 283
    const/16 v8, 0xa

    .line 284
    .line 285
    if-ge v3, v7, :cond_8

    .line 286
    .line 287
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-ne v7, v8, :cond_7

    .line 292
    .line 293
    add-int/lit8 v7, v3, 0x1

    .line 294
    .line 295
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-ne v8, v6, :cond_7

    .line 300
    .line 301
    add-int/lit8 v8, v3, 0x2

    .line 302
    .line 303
    invoke-virtual {v2, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 304
    .line 305
    .line 306
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_8
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-lez v3, :cond_9

    .line 314
    .line 315
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    sub-int/2addr v3, v4

    .line 320
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-ne v3, v6, :cond_9

    .line 325
    .line 326
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    sub-int/2addr v3, v4

    .line 331
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 336
    .line 337
    .line 338
    :cond_9
    move v3, v1

    .line 339
    :goto_6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    sub-int/2addr v7, v4

    .line 344
    if-ge v3, v7, :cond_b

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    if-ne v7, v6, :cond_a

    .line 351
    .line 352
    add-int/lit8 v7, v3, 0x1

    .line 353
    .line 354
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    if-ne v9, v8, :cond_a

    .line 359
    .line 360
    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 361
    .line 362
    .line 363
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_b
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-lez v3, :cond_c

    .line 371
    .line 372
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    sub-int/2addr v3, v4

    .line 377
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-ne v3, v8, :cond_c

    .line 382
    .line 383
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    sub-int/2addr v3, v4

    .line 388
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 393
    .line 394
    .line 395
    :cond_c
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->c:F

    .line 396
    .line 397
    iget v3, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->d:I

    .line 398
    .line 399
    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 400
    .line 401
    iput v3, p2, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 402
    .line 403
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->e:I

    .line 404
    .line 405
    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 406
    .line 407
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->b:F

    .line 408
    .line 409
    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 410
    .line 411
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->f:F

    .line 412
    .line 413
    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->l:F

    .line 414
    .line 415
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->i:F

    .line 416
    .line 417
    iget v3, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->h:I

    .line 418
    .line 419
    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->k:F

    .line 420
    .line 421
    iput v3, p2, Landroidx/media3/common/text/Cue$Builder;->j:I

    .line 422
    .line 423
    iget v0, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->j:I

    .line 424
    .line 425
    iput v0, p2, Landroidx/media3/common/text/Cue$Builder;->p:I

    .line 426
    .line 427
    invoke-virtual {p2}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :cond_d
    return-object p1
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->k:[J

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method
