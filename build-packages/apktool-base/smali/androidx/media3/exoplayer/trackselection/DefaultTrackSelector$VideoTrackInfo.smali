.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:I

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public final G:I

.field public final H:Z

.field public final I:Ljava/lang/String;

.field public final n:Z

.field public final o:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;IZ)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 5
    .line 6
    iget-boolean p1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->y:Z

    .line 7
    .line 8
    iget-object p2, p4, Landroidx/media3/common/TrackSelectionParameters;->i:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->k:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x18

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x10

    .line 18
    .line 19
    :goto_0
    const/4 p7, 0x0

    .line 20
    iput-boolean p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->B:Z

    .line 21
    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz p8, :cond_5

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 29
    .line 30
    iget v4, v3, Landroidx/media3/common/Format;->w:I

    .line 31
    .line 32
    if-eq v4, v1, :cond_1

    .line 33
    .line 34
    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->a:I

    .line 35
    .line 36
    if-gt v4, v5, :cond_5

    .line 37
    .line 38
    :cond_1
    iget v4, v3, Landroidx/media3/common/Format;->x:I

    .line 39
    .line 40
    if-eq v4, v1, :cond_2

    .line 41
    .line 42
    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->b:I

    .line 43
    .line 44
    if-gt v4, v5, :cond_5

    .line 45
    .line 46
    :cond_2
    iget v4, v3, Landroidx/media3/common/Format;->B:F

    .line 47
    .line 48
    cmpl-float v5, v4, v0

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->c:I

    .line 53
    .line 54
    int-to-float v5, v5

    .line 55
    cmpg-float v4, v4, v5

    .line 56
    .line 57
    if-gtz v4, :cond_5

    .line 58
    .line 59
    :cond_3
    iget v3, v3, Landroidx/media3/common/Format;->k:I

    .line 60
    .line 61
    if-eq v3, v1, :cond_4

    .line 62
    .line 63
    iget v4, p4, Landroidx/media3/common/TrackSelectionParameters;->d:I

    .line 64
    .line 65
    if-gt v3, v4, :cond_5

    .line 66
    .line 67
    :cond_4
    move v3, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v3, p7

    .line 70
    :goto_1
    iput-boolean v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:Z

    .line 71
    .line 72
    if-eqz p8, :cond_a

    .line 73
    .line 74
    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 75
    .line 76
    iget v3, p8, Landroidx/media3/common/Format;->w:I

    .line 77
    .line 78
    if-eq v3, v1, :cond_6

    .line 79
    .line 80
    if-ltz v3, :cond_a

    .line 81
    .line 82
    :cond_6
    iget v3, p8, Landroidx/media3/common/Format;->x:I

    .line 83
    .line 84
    if-eq v3, v1, :cond_7

    .line 85
    .line 86
    if-ltz v3, :cond_a

    .line 87
    .line 88
    :cond_7
    iget v3, p8, Landroidx/media3/common/Format;->B:F

    .line 89
    .line 90
    cmpl-float v4, v3, v0

    .line 91
    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    cmpl-float v3, v3, v4

    .line 96
    .line 97
    if-ltz v3, :cond_a

    .line 98
    .line 99
    :cond_8
    iget p8, p8, Landroidx/media3/common/Format;->k:I

    .line 100
    .line 101
    if-eq p8, v1, :cond_9

    .line 102
    .line 103
    if-ltz p8, :cond_a

    .line 104
    .line 105
    :cond_9
    move p8, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_a
    move p8, p7

    .line 108
    :goto_2
    iput-boolean p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:Z

    .line 109
    .line 110
    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->h(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result p8

    .line 114
    iput-boolean p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->q:Z

    .line 115
    .line 116
    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 117
    .line 118
    iget v3, p8, Landroidx/media3/common/Format;->B:F

    .line 119
    .line 120
    cmpl-float v0, v3, v0

    .line 121
    .line 122
    if-eqz v0, :cond_b

    .line 123
    .line 124
    const/high16 v0, 0x41200000    # 10.0f

    .line 125
    .line 126
    cmpl-float v0, v3, v0

    .line 127
    .line 128
    if-ltz v0, :cond_b

    .line 129
    .line 130
    move v0, v2

    .line 131
    goto :goto_3

    .line 132
    :cond_b
    move v0, p7

    .line 133
    :goto_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->r:Z

    .line 134
    .line 135
    iget v0, p8, Landroidx/media3/common/Format;->k:I

    .line 136
    .line 137
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->s:I

    .line 138
    .line 139
    iget v0, p8, Landroidx/media3/common/Format;->w:I

    .line 140
    .line 141
    if-eq v0, v1, :cond_d

    .line 142
    .line 143
    iget p8, p8, Landroidx/media3/common/Format;->x:I

    .line 144
    .line 145
    if-ne p8, v1, :cond_c

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_c
    mul-int/2addr v0, p8

    .line 149
    goto :goto_5

    .line 150
    :cond_d
    :goto_4
    move v0, v1

    .line 151
    :goto_5
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->t:I

    .line 152
    .line 153
    move p8, p7

    .line 154
    :goto_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const v3, 0x7fffffff

    .line 159
    .line 160
    .line 161
    if-ge p8, v0, :cond_f

    .line 162
    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 164
    .line 165
    invoke-interface {p3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0, v4, p7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-lez v0, :cond_e

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_e
    add-int/lit8 p8, p8, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_f
    move v0, p7

    .line 182
    move p8, v3

    .line 183
    :goto_7
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->v:I

    .line 184
    .line 185
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->w:I

    .line 186
    .line 187
    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 188
    .line 189
    iget p3, p3, Landroidx/media3/common/Format;->f:I

    .line 190
    .line 191
    sget-object p8, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 192
    .line 193
    if-eqz p3, :cond_10

    .line 194
    .line 195
    if-nez p3, :cond_10

    .line 196
    .line 197
    move p3, v3

    .line 198
    goto :goto_8

    .line 199
    :cond_10
    invoke-static {p7}, Ljava/lang/Integer;->bitCount(I)I

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    :goto_8
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->x:I

    .line 204
    .line 205
    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 206
    .line 207
    iget p3, p3, Landroidx/media3/common/Format;->f:I

    .line 208
    .line 209
    if-eqz p3, :cond_12

    .line 210
    .line 211
    and-int/2addr p3, v2

    .line 212
    if-eqz p3, :cond_11

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_11
    move p3, p7

    .line 216
    goto :goto_a

    .line 217
    :cond_12
    :goto_9
    move p3, v2

    .line 218
    :goto_a
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->z:Z

    .line 219
    .line 220
    invoke-static {p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    if-nez p3, :cond_13

    .line 225
    .line 226
    move p3, v2

    .line 227
    goto :goto_b

    .line 228
    :cond_13
    move p3, p7

    .line 229
    :goto_b
    iget-object p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 230
    .line 231
    invoke-static {p8, p6, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->A:I

    .line 236
    .line 237
    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 238
    .line 239
    iget-object p6, p3, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 240
    .line 241
    and-int/lit16 p8, p5, 0x180

    .line 242
    .line 243
    const/16 v0, 0x100

    .line 244
    .line 245
    if-ne p8, v0, :cond_14

    .line 246
    .line 247
    invoke-static {p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    if-eqz p3, :cond_14

    .line 252
    .line 253
    move-object p6, p3

    .line 254
    :cond_14
    move p3, p7

    .line 255
    :goto_c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-ge p3, v4, :cond_16

    .line 260
    .line 261
    if-eqz p6, :cond_15

    .line 262
    .line 263
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_15

    .line 272
    .line 273
    move v3, p3

    .line 274
    goto :goto_d

    .line 275
    :cond_15
    add-int/lit8 p3, p3, 0x1

    .line 276
    .line 277
    goto :goto_c

    .line 278
    :cond_16
    :goto_d
    iput v3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->u:I

    .line 279
    .line 280
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 281
    .line 282
    iget-object p3, p4, Landroidx/media3/common/TrackSelectionParameters;->j:Lcom/google/common/collect/ImmutableList;

    .line 283
    .line 284
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->b(Landroidx/media3/common/Format;Lcom/google/common/collect/ImmutableList;)I

    .line 285
    .line 286
    .line 287
    move-result p2

    .line 288
    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->y:I

    .line 289
    .line 290
    const/16 p2, 0x80

    .line 291
    .line 292
    if-eq p8, p2, :cond_18

    .line 293
    .line 294
    if-ne p8, v0, :cond_17

    .line 295
    .line 296
    goto :goto_e

    .line 297
    :cond_17
    move p3, p7

    .line 298
    goto :goto_f

    .line 299
    :cond_18
    :goto_e
    move p3, v2

    .line 300
    :goto_f
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 301
    .line 302
    if-ne p8, p2, :cond_19

    .line 303
    .line 304
    move p2, v2

    .line 305
    goto :goto_10

    .line 306
    :cond_19
    move p2, p7

    .line 307
    :goto_10
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->E:Z

    .line 308
    .line 309
    and-int/lit8 p3, p5, 0x40

    .line 310
    .line 311
    const/16 p4, 0x40

    .line 312
    .line 313
    if-ne p3, p4, :cond_1a

    .line 314
    .line 315
    move p3, v2

    .line 316
    goto :goto_11

    .line 317
    :cond_1a
    move p3, p7

    .line 318
    :goto_11
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 319
    .line 320
    iput-object p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->I:Ljava/lang/String;

    .line 321
    .line 322
    const/4 p3, 0x2

    .line 323
    if-nez p6, :cond_1b

    .line 324
    .line 325
    goto :goto_14

    .line 326
    :cond_1b
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    .line 327
    .line 328
    .line 329
    move-result p4

    .line 330
    const/4 p8, 0x4

    .line 331
    const/4 v0, 0x3

    .line 332
    sparse-switch p4, :sswitch_data_0

    .line 333
    .line 334
    .line 335
    :goto_12
    move p4, v1

    .line 336
    goto :goto_13

    .line 337
    :sswitch_0
    const-string p4, "video/x-vnd.on2.vp9"

    .line 338
    .line 339
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p4

    .line 343
    if-nez p4, :cond_1c

    .line 344
    .line 345
    goto :goto_12

    .line 346
    :cond_1c
    move p4, p8

    .line 347
    goto :goto_13

    .line 348
    :sswitch_1
    const-string p4, "video/avc"

    .line 349
    .line 350
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result p4

    .line 354
    if-nez p4, :cond_1d

    .line 355
    .line 356
    goto :goto_12

    .line 357
    :cond_1d
    move p4, v0

    .line 358
    goto :goto_13

    .line 359
    :sswitch_2
    const-string p4, "video/hevc"

    .line 360
    .line 361
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p4

    .line 365
    if-nez p4, :cond_1e

    .line 366
    .line 367
    goto :goto_12

    .line 368
    :cond_1e
    move p4, p3

    .line 369
    goto :goto_13

    .line 370
    :sswitch_3
    const-string p4, "video/av01"

    .line 371
    .line 372
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result p4

    .line 376
    if-nez p4, :cond_1f

    .line 377
    .line 378
    goto :goto_12

    .line 379
    :cond_1f
    move p4, v2

    .line 380
    goto :goto_13

    .line 381
    :sswitch_4
    const-string p4, "video/dolby-vision"

    .line 382
    .line 383
    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result p4

    .line 387
    if-nez p4, :cond_20

    .line 388
    .line 389
    goto :goto_12

    .line 390
    :cond_20
    move p4, p7

    .line 391
    :goto_13
    packed-switch p4, :pswitch_data_0

    .line 392
    .line 393
    .line 394
    :goto_14
    move p8, p7

    .line 395
    goto :goto_15

    .line 396
    :pswitch_0
    move p8, p3

    .line 397
    goto :goto_15

    .line 398
    :pswitch_1
    move p8, v2

    .line 399
    goto :goto_15

    .line 400
    :pswitch_2
    move p8, v0

    .line 401
    goto :goto_15

    .line 402
    :pswitch_3
    const/4 p8, 0x5

    .line 403
    :goto_15
    :pswitch_4
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->G:I

    .line 404
    .line 405
    if-eqz p2, :cond_23

    .line 406
    .line 407
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 408
    .line 409
    iget-object p2, p2, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 410
    .line 411
    if-eqz p2, :cond_22

    .line 412
    .line 413
    iget p2, p2, Landroidx/media3/common/ColorInfo;->c:I

    .line 414
    .line 415
    const/4 p4, 0x7

    .line 416
    if-eq p2, p4, :cond_21

    .line 417
    .line 418
    const/4 p4, 0x6

    .line 419
    if-ne p2, p4, :cond_23

    .line 420
    .line 421
    :cond_21
    move p2, v2

    .line 422
    goto :goto_16

    .line 423
    :cond_22
    sget-object p2, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    .line 424
    .line 425
    :cond_23
    move p2, p7

    .line 426
    :goto_16
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->H:Z

    .line 427
    .line 428
    iget-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->n:Z

    .line 429
    .line 430
    iget-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 431
    .line 432
    iget-object p6, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->m:Landroidx/media3/common/Format;

    .line 433
    .line 434
    iget p8, p6, Landroidx/media3/common/Format;->f:I

    .line 435
    .line 436
    and-int/lit16 p8, p8, 0x4000

    .line 437
    .line 438
    if-eqz p8, :cond_24

    .line 439
    .line 440
    goto :goto_17

    .line 441
    :cond_24
    iget-boolean p8, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->C:Z

    .line 442
    .line 443
    invoke-static {p5, p8}, Landroidx/media3/exoplayer/RendererCapabilities;->h(IZ)Z

    .line 444
    .line 445
    .line 446
    move-result p8

    .line 447
    if-nez p8, :cond_25

    .line 448
    .line 449
    goto :goto_17

    .line 450
    :cond_25
    if-nez p2, :cond_26

    .line 451
    .line 452
    iget-boolean p4, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->x:Z

    .line 453
    .line 454
    if-nez p4, :cond_26

    .line 455
    .line 456
    goto :goto_17

    .line 457
    :cond_26
    invoke-static {p5, p7}, Landroidx/media3/exoplayer/RendererCapabilities;->h(IZ)Z

    .line 458
    .line 459
    .line 460
    move-result p4

    .line 461
    if-eqz p4, :cond_27

    .line 462
    .line 463
    iget-boolean p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->p:Z

    .line 464
    .line 465
    if-eqz p4, :cond_27

    .line 466
    .line 467
    if-eqz p2, :cond_27

    .line 468
    .line 469
    iget p2, p6, Landroidx/media3/common/Format;->k:I

    .line 470
    .line 471
    if-eq p2, v1, :cond_27

    .line 472
    .line 473
    and-int/2addr p1, p5

    .line 474
    if-eqz p1, :cond_27

    .line 475
    .line 476
    move p7, p3

    .line 477
    goto :goto_17

    .line 478
    :cond_27
    move p7, v2

    .line 479
    :goto_17
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->C:I

    .line 480
    .line 481
    return-void

    .line 482
    nop

    .line 483
    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->C:I

    .line 2
    .line 3
    return p0
.end method

.method public final b(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 2

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->B:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->I:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->I:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->o:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->D:Z

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 29
    .line 30
    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;->F:Z

    .line 31
    .line 32
    if-ne p0, p1, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method
