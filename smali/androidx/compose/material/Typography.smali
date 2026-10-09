.class public final Landroidx/compose/material/Typography;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/text/TextStyle;

.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:Landroidx/compose/ui/text/TextStyle;

.field public final d:Landroidx/compose/ui/text/TextStyle;

.field public final e:Landroidx/compose/ui/text/TextStyle;

.field public final f:Landroidx/compose/ui/text/TextStyle;

.field public final g:Landroidx/compose/ui/text/TextStyle;

.field public final h:Landroidx/compose/ui/text/TextStyle;

.field public final i:Landroidx/compose/ui/text/TextStyle;

.field public final j:Landroidx/compose/ui/text/TextStyle;

.field public final k:Landroidx/compose/ui/text/TextStyle;

.field public final l:Landroidx/compose/ui/text/TextStyle;

.field public final m:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>()V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/material/TypographyKt;->a:Landroidx/compose/ui/text/TextStyle;

    .line 4
    .line 5
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->p:Landroidx/compose/ui/text/font/FontWeight;

    .line 6
    .line 7
    const/16 v2, 0x60

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/16 v2, 0x70

    .line 14
    .line 15
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    .line 20
    .line 21
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    const/4 v12, 0x0

    .line 26
    const v13, 0xfdff79

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    const/16 v2, 0x3c

    .line 37
    .line 38
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    const/16 v2, 0x48

    .line 43
    .line 44
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 61
    .line 62
    const/16 v2, 0x30

    .line 63
    .line 64
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    const/16 v2, 0x38

    .line 69
    .line 70
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    const/16 v2, 0x22

    .line 87
    .line 88
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    const/16 v2, 0x24

    .line 93
    .line 94
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v9

    .line 98
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    .line 99
    .line 100
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    const-wide/16 v2, 0x0

    .line 105
    .line 106
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 107
    .line 108
    .line 109
    move-result-object v20

    .line 110
    const/16 v21, 0x18

    .line 111
    .line 112
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    move-object/from16 v22, v6

    .line 129
    .line 130
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 131
    .line 132
    const/16 v23, 0x14

    .line 133
    .line 134
    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    const-wide v24, 0x3fc3333333333333L    # 0.15

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 148
    .line 149
    .line 150
    move-result-wide v7

    .line 151
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 152
    .line 153
    .line 154
    move-result-object v26

    .line 155
    move-object/from16 v27, v6

    .line 156
    .line 157
    const/16 v28, 0x10

    .line 158
    .line 159
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 168
    .line 169
    .line 170
    move-result-wide v7

    .line 171
    move-object/from16 v6, v22

    .line 172
    .line 173
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 174
    .line 175
    .line 176
    move-result-object v22

    .line 177
    move-object/from16 v24, v6

    .line 178
    .line 179
    const/16 v25, 0xe

    .line 180
    .line 181
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v9

    .line 189
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    const-wide/16 v2, 0x0

    .line 199
    .line 200
    move-object/from16 v6, v27

    .line 201
    .line 202
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 203
    .line 204
    .line 205
    move-result-object v27

    .line 206
    move-object/from16 v29, v6

    .line 207
    .line 208
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v9

    .line 216
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 219
    .line 220
    .line 221
    move-result-wide v7

    .line 222
    const-wide/16 v2, 0x0

    .line 223
    .line 224
    move-object/from16 v6, v24

    .line 225
    .line 226
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 227
    .line 228
    .line 229
    move-result-object v21

    .line 230
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v9

    .line 238
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 239
    .line 240
    .line 241
    move-result-wide v7

    .line 242
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 243
    .line 244
    .line 245
    move-result-object v18

    .line 246
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 247
    .line 248
    .line 249
    move-result-wide v4

    .line 250
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v9

    .line 254
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    .line 255
    .line 256
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 257
    .line 258
    .line 259
    move-result-wide v7

    .line 260
    const-wide/16 v2, 0x0

    .line 261
    .line 262
    move-object/from16 v6, v29

    .line 263
    .line 264
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 265
    .line 266
    .line 267
    move-result-object v19

    .line 268
    const/16 v2, 0xc

    .line 269
    .line 270
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v4

    .line 274
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v9

    .line 278
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    const-wide/16 v2, 0x0

    .line 288
    .line 289
    move-object/from16 v6, v24

    .line 290
    .line 291
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 292
    .line 293
    .line 294
    move-result-object v23

    .line 295
    const/16 v2, 0xa

    .line 296
    .line 297
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 298
    .line 299
    .line 300
    move-result-wide v4

    .line 301
    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 302
    .line 303
    .line 304
    move-result-wide v9

    .line 305
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 306
    .line 307
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->c(D)J

    .line 308
    .line 309
    .line 310
    move-result-wide v7

    .line 311
    const-wide/16 v2, 0x0

    .line 312
    .line 313
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {v14}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-static {v15}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static/range {v17 .. v17}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static/range {v20 .. v20}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static/range {v16 .. v16}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-static/range {v26 .. v26}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-static/range {v22 .. v22}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    invoke-static/range {v27 .. v27}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    invoke-static/range {v21 .. v21}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-static/range {v18 .. v18}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    invoke-static/range {v23 .. v23}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    invoke-static {v1}, Landroidx/compose/material/TypographyKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 370
    .line 371
    .line 372
    iput-object v2, v0, Landroidx/compose/material/Typography;->a:Landroidx/compose/ui/text/TextStyle;

    .line 373
    .line 374
    iput-object v3, v0, Landroidx/compose/material/Typography;->b:Landroidx/compose/ui/text/TextStyle;

    .line 375
    .line 376
    iput-object v4, v0, Landroidx/compose/material/Typography;->c:Landroidx/compose/ui/text/TextStyle;

    .line 377
    .line 378
    iput-object v5, v0, Landroidx/compose/material/Typography;->d:Landroidx/compose/ui/text/TextStyle;

    .line 379
    .line 380
    iput-object v6, v0, Landroidx/compose/material/Typography;->e:Landroidx/compose/ui/text/TextStyle;

    .line 381
    .line 382
    iput-object v7, v0, Landroidx/compose/material/Typography;->f:Landroidx/compose/ui/text/TextStyle;

    .line 383
    .line 384
    iput-object v8, v0, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 385
    .line 386
    iput-object v9, v0, Landroidx/compose/material/Typography;->h:Landroidx/compose/ui/text/TextStyle;

    .line 387
    .line 388
    iput-object v10, v0, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 389
    .line 390
    iput-object v11, v0, Landroidx/compose/material/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    .line 391
    .line 392
    iput-object v12, v0, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 393
    .line 394
    iput-object v13, v0, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 395
    .line 396
    iput-object v1, v0, Landroidx/compose/material/Typography;->m:Landroidx/compose/ui/text/TextStyle;

    .line 397
    .line 398
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/material/Typography;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/material/Typography;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/material/Typography;->a:Landroidx/compose/ui/text/TextStyle;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/material/Typography;->a:Landroidx/compose/ui/text/TextStyle;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/material/Typography;->b:Landroidx/compose/ui/text/TextStyle;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/compose/material/Typography;->b:Landroidx/compose/ui/text/TextStyle;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/compose/material/Typography;->c:Landroidx/compose/ui/text/TextStyle;

    .line 36
    .line 37
    iget-object v3, p1, Landroidx/compose/material/Typography;->c:Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Landroidx/compose/material/Typography;->d:Landroidx/compose/ui/text/TextStyle;

    .line 47
    .line 48
    iget-object v3, p1, Landroidx/compose/material/Typography;->d:Landroidx/compose/ui/text/TextStyle;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Landroidx/compose/material/Typography;->e:Landroidx/compose/ui/text/TextStyle;

    .line 58
    .line 59
    iget-object v3, p1, Landroidx/compose/material/Typography;->e:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Landroidx/compose/material/Typography;->f:Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    iget-object v3, p1, Landroidx/compose/material/Typography;->f:Landroidx/compose/ui/text/TextStyle;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 80
    .line 81
    iget-object v3, p1, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Landroidx/compose/material/Typography;->h:Landroidx/compose/ui/text/TextStyle;

    .line 91
    .line 92
    iget-object v3, p1, Landroidx/compose/material/Typography;->h:Landroidx/compose/ui/text/TextStyle;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 102
    .line 103
    iget-object v3, p1, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Landroidx/compose/material/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    .line 113
    .line 114
    iget-object v3, p1, Landroidx/compose/material/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 124
    .line 125
    iget-object v3, p1, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 135
    .line 136
    iget-object v3, p1, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object p0, p0, Landroidx/compose/material/Typography;->m:Landroidx/compose/ui/text/TextStyle;

    .line 146
    .line 147
    iget-object p1, p1, Landroidx/compose/material/Typography;->m:Landroidx/compose/ui/text/TextStyle;

    .line 148
    .line 149
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/material/Typography;->a:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/material/Typography;->b:Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/material/Typography;->c:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/material/Typography;->d:Landroidx/compose/ui/text/TextStyle;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/material/Typography;->e:Landroidx/compose/ui/text/TextStyle;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/material/Typography;->f:Landroidx/compose/ui/text/TextStyle;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/material/Typography;->h:Landroidx/compose/ui/text/TextStyle;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v1, v0

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/material/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x1f

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v1, v0

    .line 106
    mul-int/lit8 v1, v1, 0x1f

    .line 107
    .line 108
    iget-object p0, p0, Landroidx/compose/material/Typography;->m:Landroidx/compose/ui/text/TextStyle;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    add-int/2addr p0, v1

    .line 115
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Typography(h1="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/material/Typography;->a:Landroidx/compose/ui/text/TextStyle;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", h2="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/material/Typography;->b:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", h3="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/Typography;->c:Landroidx/compose/ui/text/TextStyle;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", h4="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/material/Typography;->d:Landroidx/compose/ui/text/TextStyle;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", h5="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/material/Typography;->e:Landroidx/compose/ui/text/TextStyle;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", h6="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/compose/material/Typography;->f:Landroidx/compose/ui/text/TextStyle;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", subtitle1="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", subtitle2="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/compose/material/Typography;->h:Landroidx/compose/ui/text/TextStyle;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", body1="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroidx/compose/material/Typography;->i:Landroidx/compose/ui/text/TextStyle;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", body2="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroidx/compose/material/Typography;->j:Landroidx/compose/ui/text/TextStyle;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", button="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Landroidx/compose/material/Typography;->k:Landroidx/compose/ui/text/TextStyle;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", caption="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", overline="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Landroidx/compose/material/Typography;->m:Landroidx/compose/ui/text/TextStyle;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p0, ")"

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0
.end method
