.class public abstract Landroidx/compose/material/icons/rounded/CloudOffKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/rounded/CloudOffKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/high16 v3, 0x41c00000    # 24.0f

    .line 13
    .line 14
    const/high16 v4, 0x41c00000    # 24.0f

    .line 15
    .line 16
    const/high16 v5, 0x41c00000    # 24.0f

    .line 17
    .line 18
    const/high16 v6, 0x41c00000    # 24.0f

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-string v2, "Rounded.CloudOff"

    .line 23
    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->b:J

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const/high16 v2, 0x41c00000    # 24.0f

    .line 42
    .line 43
    const/high16 v3, 0x41700000    # 15.0f

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 46
    .line 47
    .line 48
    const v9, -0x3f6b3333    # -4.65f

    .line 49
    .line 50
    .line 51
    const v10, -0x3f6147ae    # -4.96f

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const v6, -0x3fd70a3d    # -2.64f

    .line 56
    .line 57
    .line 58
    const v7, -0x3ffccccd    # -2.05f

    .line 59
    .line 60
    .line 61
    const v8, -0x3f670a3d    # -4.78f

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 65
    .line 66
    .line 67
    const/high16 v9, 0x41400000    # 12.0f

    .line 68
    .line 69
    const/high16 v10, 0x40800000    # 4.0f

    .line 70
    .line 71
    const v5, 0x41955c29    # 18.67f

    .line 72
    .line 73
    .line 74
    const v6, 0x40d2e148    # 6.59f

    .line 75
    .line 76
    .line 77
    const v7, 0x417a3d71    # 15.64f

    .line 78
    .line 79
    .line 80
    const/high16 v8, 0x40800000    # 4.0f

    .line 81
    .line 82
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 83
    .line 84
    .line 85
    const v9, -0x3f966666    # -3.65f

    .line 86
    .line 87
    .line 88
    const v10, 0x3f7851ec    # 0.97f

    .line 89
    .line 90
    .line 91
    const v5, -0x4055c28f    # -1.33f

    .line 92
    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    const v7, -0x3fdb851f    # -2.57f

    .line 96
    .line 97
    .line 98
    const v8, 0x3eb851ec    # 0.36f

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 102
    .line 103
    .line 104
    const v2, 0x3fbeb852    # 1.49f

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 108
    .line 109
    .line 110
    const/high16 v9, 0x41400000    # 12.0f

    .line 111
    .line 112
    const/high16 v10, 0x40c00000    # 6.0f

    .line 113
    .line 114
    const v5, 0x412828f6    # 10.51f

    .line 115
    .line 116
    .line 117
    const v6, 0x40c570a4    # 6.17f

    .line 118
    .line 119
    .line 120
    const v7, 0x4133ae14    # 11.23f

    .line 121
    .line 122
    .line 123
    const/high16 v8, 0x40c00000    # 6.0f

    .line 124
    .line 125
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 126
    .line 127
    .line 128
    const/high16 v9, 0x40b00000    # 5.5f

    .line 129
    .line 130
    const/high16 v10, 0x40b00000    # 5.5f

    .line 131
    .line 132
    const v5, 0x40428f5c    # 3.04f

    .line 133
    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    const/high16 v7, 0x40b00000    # 5.5f

    .line 137
    .line 138
    const v8, 0x401d70a4    # 2.46f

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 142
    .line 143
    .line 144
    const/high16 v2, 0x3f000000    # 0.5f

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 147
    .line 148
    .line 149
    const/high16 v2, 0x41980000    # 19.0f

    .line 150
    .line 151
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 152
    .line 153
    .line 154
    const/high16 v9, 0x40400000    # 3.0f

    .line 155
    .line 156
    const/high16 v10, 0x40400000    # 3.0f

    .line 157
    .line 158
    const v5, 0x3fd47ae1    # 1.66f

    .line 159
    .line 160
    .line 161
    const/high16 v7, 0x40400000    # 3.0f

    .line 162
    .line 163
    const v8, 0x3fab851f    # 1.34f

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 167
    .line 168
    .line 169
    const v9, -0x40651eb8    # -1.21f

    .line 170
    .line 171
    .line 172
    const v10, 0x4019999a    # 2.4f

    .line 173
    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    const v6, 0x3f7d70a4    # 0.99f

    .line 177
    .line 178
    .line 179
    const v7, -0x410a3d71    # -0.48f

    .line 180
    .line 181
    .line 182
    const v8, 0x3feccccd    # 1.85f

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 186
    .line 187
    .line 188
    const v2, 0x3fb47ae1    # 1.41f

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 192
    .line 193
    .line 194
    const v9, 0x3fe66666    # 1.8f

    .line 195
    .line 196
    .line 197
    const v10, -0x3f8c28f6    # -3.81f

    .line 198
    .line 199
    .line 200
    const v5, 0x3f8b851f    # 1.09f

    .line 201
    .line 202
    .line 203
    const v6, -0x40947ae1    # -0.92f

    .line 204
    .line 205
    .line 206
    const v7, 0x3fe66666    # 1.8f

    .line 207
    .line 208
    .line 209
    const v8, -0x3feeb852    # -2.27f

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 216
    .line 217
    .line 218
    const v2, 0x406d70a4    # 3.71f

    .line 219
    .line 220
    .line 221
    const v3, 0x4091eb85    # 4.56f

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 225
    .line 226
    .line 227
    const/4 v9, 0x0

    .line 228
    const v10, 0x3fb47ae1    # 1.41f

    .line 229
    .line 230
    .line 231
    const v5, -0x413851ec    # -0.39f

    .line 232
    .line 233
    .line 234
    const v6, 0x3ec7ae14    # 0.39f

    .line 235
    .line 236
    .line 237
    const v7, -0x413851ec    # -0.39f

    .line 238
    .line 239
    .line 240
    const v8, 0x3f828f5c    # 1.02f

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 244
    .line 245
    .line 246
    const v2, 0x4003d70a    # 2.06f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 250
    .line 251
    .line 252
    const v2, -0x4128f5c3    # -0.42f

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 256
    .line 257
    .line 258
    const v9, -0x3f56b852    # -5.29f

    .line 259
    .line 260
    .line 261
    const v10, 0x40d947ae    # 6.79f

    .line 262
    .line 263
    .line 264
    const v5, -0x3fae147b    # -3.28f

    .line 265
    .line 266
    .line 267
    const v6, 0x3eb33333    # 0.35f

    .line 268
    .line 269
    .line 270
    const v7, -0x3f47ae14    # -5.76f

    .line 271
    .line 272
    .line 273
    const v8, 0x4055c28f    # 3.34f

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 277
    .line 278
    .line 279
    const v9, 0x40c70a3d    # 6.22f

    .line 280
    .line 281
    .line 282
    const/high16 v10, 0x41a00000    # 20.0f

    .line 283
    .line 284
    const v5, 0x3eeb851f    # 0.46f

    .line 285
    .line 286
    .line 287
    const v6, 0x418eb852    # 17.84f

    .line 288
    .line 289
    .line 290
    const v7, 0x404c28f6    # 3.19f

    .line 291
    .line 292
    .line 293
    const/high16 v8, 0x41a00000    # 20.0f

    .line 294
    .line 295
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 296
    .line 297
    .line 298
    const v2, 0x413828f6    # 11.51f

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 302
    .line 303
    .line 304
    const v2, 0x3fa51eb8    # 1.29f

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 308
    .line 309
    .line 310
    const v9, 0x3fb47ae1    # 1.41f

    .line 311
    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    const v5, 0x3ec7ae14    # 0.39f

    .line 315
    .line 316
    .line 317
    const v6, 0x3ec7ae14    # 0.39f

    .line 318
    .line 319
    .line 320
    const v7, 0x3f828f5c    # 1.02f

    .line 321
    .line 322
    .line 323
    const v8, 0x3ec7ae14    # 0.39f

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 327
    .line 328
    .line 329
    const/4 v9, 0x0

    .line 330
    const v10, -0x404b851f    # -1.41f

    .line 331
    .line 332
    .line 333
    const v6, -0x413851ec    # -0.39f

    .line 334
    .line 335
    .line 336
    const v7, 0x3ec7ae14    # 0.39f

    .line 337
    .line 338
    .line 339
    const v8, -0x407d70a4    # -1.02f

    .line 340
    .line 341
    .line 342
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 343
    .line 344
    .line 345
    const v2, 0x40a3d70a    # 5.12f

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 349
    .line 350
    .line 351
    const v9, -0x404b851f    # -1.41f

    .line 352
    .line 353
    .line 354
    const/4 v10, 0x0

    .line 355
    const v5, -0x413851ec    # -0.39f

    .line 356
    .line 357
    .line 358
    const v7, -0x407d70a4    # -1.02f

    .line 359
    .line 360
    .line 361
    const v8, -0x413851ec    # -0.39f

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 368
    .line 369
    .line 370
    const/high16 v2, 0x41900000    # 18.0f

    .line 371
    .line 372
    const/high16 v3, 0x40c00000    # 6.0f

    .line 373
    .line 374
    invoke-virtual {v4, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 375
    .line 376
    .line 377
    const/high16 v9, -0x3f800000    # -4.0f

    .line 378
    .line 379
    const/high16 v10, -0x3f800000    # -4.0f

    .line 380
    .line 381
    const v5, -0x3ff28f5c    # -2.21f

    .line 382
    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    const/high16 v7, -0x3f800000    # -4.0f

    .line 386
    .line 387
    const v8, -0x401ae148    # -1.79f

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 391
    .line 392
    .line 393
    const v2, 0x3fe51eb8    # 1.79f

    .line 394
    .line 395
    .line 396
    const/high16 v3, 0x40800000    # 4.0f

    .line 397
    .line 398
    const/high16 v5, -0x3f800000    # -4.0f

    .line 399
    .line 400
    invoke-virtual {v4, v2, v5, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 401
    .line 402
    .line 403
    const v2, 0x3fdd70a4    # 1.73f

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 407
    .line 408
    .line 409
    const/high16 v2, 0x41000000    # 8.0f

    .line 410
    .line 411
    invoke-virtual {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 412
    .line 413
    .line 414
    const/high16 v2, 0x40c00000    # 6.0f

    .line 415
    .line 416
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 420
    .line 421
    .line 422
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    sput-object v0, Landroidx/compose/material/icons/rounded/CloudOffKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 432
    .line 433
    return-object v0
.end method
