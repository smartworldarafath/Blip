.class public abstract Landroidx/compose/material/icons/automirrored/rounded/HelpOutlineKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static a:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material/icons/automirrored/rounded/HelpOutlineKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const/4 v10, 0x1

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
    const-string v2, "AutoMirrored.Rounded.HelpOutline"

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
    const/high16 v2, 0x41400000    # 12.0f

    .line 42
    .line 43
    const/high16 v3, 0x40000000    # 2.0f

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 46
    .line 47
    .line 48
    const/high16 v9, 0x40000000    # 2.0f

    .line 49
    .line 50
    const/high16 v10, 0x41400000    # 12.0f

    .line 51
    .line 52
    const v5, 0x40cf5c29    # 6.48f

    .line 53
    .line 54
    .line 55
    const/high16 v6, 0x40000000    # 2.0f

    .line 56
    .line 57
    const/high16 v7, 0x40000000    # 2.0f

    .line 58
    .line 59
    const v8, 0x40cf5c29    # 6.48f

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 63
    .line 64
    .line 65
    const v2, 0x408f5c29    # 4.48f

    .line 66
    .line 67
    .line 68
    const/high16 v3, 0x41200000    # 10.0f

    .line 69
    .line 70
    invoke-virtual {v4, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 71
    .line 72
    .line 73
    const v2, -0x3f70a3d7    # -4.48f

    .line 74
    .line 75
    .line 76
    const/high16 v3, -0x3ee00000    # -10.0f

    .line 77
    .line 78
    const/high16 v5, 0x41200000    # 10.0f

    .line 79
    .line 80
    invoke-virtual {v4, v5, v2, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 81
    .line 82
    .line 83
    const v2, 0x418c28f6    # 17.52f

    .line 84
    .line 85
    .line 86
    const/high16 v3, 0x41400000    # 12.0f

    .line 87
    .line 88
    const/high16 v5, 0x40000000    # 2.0f

    .line 89
    .line 90
    invoke-virtual {v4, v2, v5, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->j(FFFF)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 94
    .line 95
    .line 96
    const/high16 v2, 0x41a00000    # 20.0f

    .line 97
    .line 98
    invoke-virtual {v4, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 99
    .line 100
    .line 101
    const/high16 v9, -0x3f000000    # -8.0f

    .line 102
    .line 103
    const/high16 v10, -0x3f000000    # -8.0f

    .line 104
    .line 105
    const v5, -0x3f72e148    # -4.41f

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/high16 v7, -0x3f000000    # -8.0f

    .line 110
    .line 111
    const v8, -0x3f9a3d71    # -3.59f

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 115
    .line 116
    .line 117
    const v2, 0x4065c28f    # 3.59f

    .line 118
    .line 119
    .line 120
    const/high16 v3, -0x3f000000    # -8.0f

    .line 121
    .line 122
    const/high16 v5, 0x41000000    # 8.0f

    .line 123
    .line 124
    invoke-virtual {v4, v2, v3, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 125
    .line 126
    .line 127
    const/high16 v3, 0x41000000    # 8.0f

    .line 128
    .line 129
    invoke-virtual {v4, v3, v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 130
    .line 131
    .line 132
    const v2, -0x3f9a3d71    # -3.59f

    .line 133
    .line 134
    .line 135
    const/high16 v3, -0x3f000000    # -8.0f

    .line 136
    .line 137
    invoke-virtual {v4, v2, v5, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 141
    .line 142
    .line 143
    const/high16 v2, 0x41300000    # 11.0f

    .line 144
    .line 145
    const/high16 v3, 0x41800000    # 16.0f

    .line 146
    .line 147
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 148
    .line 149
    .line 150
    const/high16 v2, 0x40000000    # 2.0f

    .line 151
    .line 152
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 156
    .line 157
    .line 158
    const/high16 v2, -0x40000000    # -2.0f

    .line 159
    .line 160
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 164
    .line 165
    .line 166
    const v2, 0x4149c28f    # 12.61f

    .line 167
    .line 168
    .line 169
    const v3, 0x40c147ae    # 6.04f

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 173
    .line 174
    .line 175
    const v9, -0x3f723d71    # -4.43f

    .line 176
    .line 177
    .line 178
    const v10, 0x40328f5c    # 2.79f

    .line 179
    .line 180
    .line 181
    const v5, -0x3ffc28f6    # -2.06f

    .line 182
    .line 183
    .line 184
    const v6, -0x41666666    # -0.3f

    .line 185
    .line 186
    .line 187
    const v7, -0x3f87ae14    # -3.88f

    .line 188
    .line 189
    .line 190
    const v8, 0x3f7851ec    # 0.97f

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 194
    .line 195
    .line 196
    const v9, 0x3f5eb852    # 0.87f

    .line 197
    .line 198
    .line 199
    const v10, 0x3f95c28f    # 1.17f

    .line 200
    .line 201
    .line 202
    const v5, -0x41c7ae14    # -0.18f

    .line 203
    .line 204
    .line 205
    const v6, 0x3f147ae1    # 0.58f

    .line 206
    .line 207
    .line 208
    const v7, 0x3e851eb8    # 0.26f

    .line 209
    .line 210
    .line 211
    const v8, 0x3f95c28f    # 1.17f

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 215
    .line 216
    .line 217
    const v2, 0x3e4ccccd    # 0.2f

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 221
    .line 222
    .line 223
    const v9, 0x3f6147ae    # 0.88f

    .line 224
    .line 225
    .line 226
    const v10, -0x40d47ae1    # -0.67f

    .line 227
    .line 228
    .line 229
    const v5, 0x3ed1eb85    # 0.41f

    .line 230
    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    const v7, 0x3f3d70a4    # 0.74f

    .line 234
    .line 235
    .line 236
    const v8, -0x416b851f    # -0.29f

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 240
    .line 241
    .line 242
    const v9, 0x40133333    # 2.3f

    .line 243
    .line 244
    .line 245
    const v10, -0x405c28f6    # -1.28f

    .line 246
    .line 247
    .line 248
    const v5, 0x3ea3d70a    # 0.32f

    .line 249
    .line 250
    .line 251
    const v6, -0x409c28f6    # -0.89f

    .line 252
    .line 253
    .line 254
    const v7, 0x3fa28f5c    # 1.27f

    .line 255
    .line 256
    .line 257
    const/high16 v8, -0x40400000    # -1.5f

    .line 258
    .line 259
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 260
    .line 261
    .line 262
    const v9, 0x3fc8f5c3    # 1.57f

    .line 263
    .line 264
    .line 265
    const v10, 0x40066666    # 2.1f

    .line 266
    .line 267
    .line 268
    const v5, 0x3f733333    # 0.95f

    .line 269
    .line 270
    .line 271
    const v6, 0x3e4ccccd    # 0.2f

    .line 272
    .line 273
    .line 274
    const v7, 0x3fd33333    # 1.65f

    .line 275
    .line 276
    .line 277
    const v8, 0x3f90a3d7    # 1.13f

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 281
    .line 282
    .line 283
    const v9, -0x3fe33333    # -2.45f

    .line 284
    .line 285
    .line 286
    const v10, 0x403851ec    # 2.88f

    .line 287
    .line 288
    .line 289
    const v5, -0x42333333    # -0.1f

    .line 290
    .line 291
    .line 292
    const v6, 0x3fab851f    # 1.34f

    .line 293
    .line 294
    .line 295
    const v7, -0x4030a3d7    # -1.62f

    .line 296
    .line 297
    .line 298
    const v8, 0x3fd0a3d7    # 1.63f

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 302
    .line 303
    .line 304
    const v9, -0x43dc28f6    # -0.01f

    .line 305
    .line 306
    .line 307
    const v10, 0x3ca3d70a    # 0.02f

    .line 308
    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    const v6, 0x3c23d70a    # 0.01f

    .line 312
    .line 313
    .line 314
    const v7, -0x43dc28f6    # -0.01f

    .line 315
    .line 316
    .line 317
    const v8, 0x3c23d70a    # 0.01f

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 321
    .line 322
    .line 323
    const v9, -0x430a3d71    # -0.03f

    .line 324
    .line 325
    .line 326
    const v10, 0x3d4ccccd    # 0.05f

    .line 327
    .line 328
    .line 329
    const v5, -0x43dc28f6    # -0.01f

    .line 330
    .line 331
    .line 332
    const v6, 0x3ca3d70a    # 0.02f

    .line 333
    .line 334
    .line 335
    const v7, -0x435c28f6    # -0.02f

    .line 336
    .line 337
    .line 338
    const v8, 0x3cf5c28f    # 0.03f

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 342
    .line 343
    .line 344
    const/high16 v9, -0x41800000    # -0.25f

    .line 345
    .line 346
    const/high16 v10, 0x3f000000    # 0.5f

    .line 347
    .line 348
    const v5, -0x4247ae14    # -0.09f

    .line 349
    .line 350
    .line 351
    const v6, 0x3e19999a    # 0.15f

    .line 352
    .line 353
    .line 354
    const v7, -0x41c7ae14    # -0.18f

    .line 355
    .line 356
    .line 357
    const v8, 0x3ea3d70a    # 0.32f

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 361
    .line 362
    .line 363
    const v9, -0x42dc28f6    # -0.04f

    .line 364
    .line 365
    .line 366
    const v10, 0x3da3d70a    # 0.08f

    .line 367
    .line 368
    .line 369
    const v5, -0x43dc28f6    # -0.01f

    .line 370
    .line 371
    .line 372
    const v6, 0x3cf5c28f    # 0.03f

    .line 373
    .line 374
    .line 375
    const v7, -0x430a3d71    # -0.03f

    .line 376
    .line 377
    .line 378
    const v8, 0x3d4ccccd    # 0.05f

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 382
    .line 383
    .line 384
    const v9, -0x435c28f6    # -0.02f

    .line 385
    .line 386
    .line 387
    const v10, 0x3d8f5c29    # 0.07f

    .line 388
    .line 389
    .line 390
    const v6, 0x3ca3d70a    # 0.02f

    .line 391
    .line 392
    .line 393
    const v7, -0x43dc28f6    # -0.01f

    .line 394
    .line 395
    .line 396
    const v8, 0x3d23d70a    # 0.04f

    .line 397
    .line 398
    .line 399
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 400
    .line 401
    .line 402
    const v9, -0x41b33333    # -0.2f

    .line 403
    .line 404
    .line 405
    const/high16 v10, 0x3fa00000    # 1.25f

    .line 406
    .line 407
    const v5, -0x420a3d71    # -0.12f

    .line 408
    .line 409
    .line 410
    const v6, 0x3eae147b    # 0.34f

    .line 411
    .line 412
    .line 413
    const v7, -0x41b33333    # -0.2f

    .line 414
    .line 415
    .line 416
    const/high16 v8, 0x3f400000    # 0.75f

    .line 417
    .line 418
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 419
    .line 420
    .line 421
    const/high16 v2, 0x40000000    # 2.0f

    .line 422
    .line 423
    invoke-virtual {v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 424
    .line 425
    .line 426
    const v9, 0x3e8f5c29    # 0.28f

    .line 427
    .line 428
    .line 429
    const v10, -0x40770a3d    # -1.07f

    .line 430
    .line 431
    .line 432
    const/4 v5, 0x0

    .line 433
    const v6, -0x4128f5c3    # -0.42f

    .line 434
    .line 435
    .line 436
    const v7, 0x3de147ae    # 0.11f

    .line 437
    .line 438
    .line 439
    const v8, -0x40bae148    # -0.77f

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 443
    .line 444
    .line 445
    const v9, 0x3d4ccccd    # 0.05f

    .line 446
    .line 447
    .line 448
    const v10, -0x4247ae14    # -0.09f

    .line 449
    .line 450
    .line 451
    const v5, 0x3ca3d70a    # 0.02f

    .line 452
    .line 453
    .line 454
    const v6, -0x430a3d71    # -0.03f

    .line 455
    .line 456
    .line 457
    const v7, 0x3cf5c28f    # 0.03f

    .line 458
    .line 459
    .line 460
    const v8, -0x428a3d71    # -0.06f

    .line 461
    .line 462
    .line 463
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 464
    .line 465
    .line 466
    const v9, 0x3e8f5c29    # 0.28f

    .line 467
    .line 468
    .line 469
    const v10, -0x413851ec    # -0.39f

    .line 470
    .line 471
    .line 472
    const v5, 0x3da3d70a    # 0.08f

    .line 473
    .line 474
    .line 475
    const v6, -0x41f0a3d7    # -0.14f

    .line 476
    .line 477
    .line 478
    const v7, 0x3e3851ec    # 0.18f

    .line 479
    .line 480
    .line 481
    const v8, -0x4175c28f    # -0.27f

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 485
    .line 486
    .line 487
    const v9, 0x3cf5c28f    # 0.03f

    .line 488
    .line 489
    .line 490
    const v10, -0x42dc28f6    # -0.04f

    .line 491
    .line 492
    .line 493
    const v5, 0x3c23d70a    # 0.01f

    .line 494
    .line 495
    .line 496
    const v6, -0x43dc28f6    # -0.01f

    .line 497
    .line 498
    .line 499
    const v7, 0x3ca3d70a    # 0.02f

    .line 500
    .line 501
    .line 502
    const v8, -0x430a3d71    # -0.03f

    .line 503
    .line 504
    .line 505
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 506
    .line 507
    .line 508
    const v9, 0x3ea8f5c3    # 0.33f

    .line 509
    .line 510
    .line 511
    const v10, -0x4151eb85    # -0.34f

    .line 512
    .line 513
    .line 514
    const v5, 0x3dcccccd    # 0.1f

    .line 515
    .line 516
    .line 517
    const v6, -0x420a3d71    # -0.12f

    .line 518
    .line 519
    .line 520
    const v7, 0x3e570a3d    # 0.21f

    .line 521
    .line 522
    .line 523
    const v8, -0x41947ae1    # -0.23f

    .line 524
    .line 525
    .line 526
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 527
    .line 528
    .line 529
    const v9, 0x3ffeb852    # 1.99f

    .line 530
    .line 531
    .line 532
    const v10, -0x3f9c28f6    # -3.56f

    .line 533
    .line 534
    .line 535
    const v5, 0x3f75c28f    # 0.96f

    .line 536
    .line 537
    .line 538
    const v6, -0x40970a3d    # -0.91f

    .line 539
    .line 540
    .line 541
    const v7, 0x4010a3d7    # 2.26f

    .line 542
    .line 543
    .line 544
    const v8, -0x402ccccd    # -1.65f

    .line 545
    .line 546
    .line 547
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 548
    .line 549
    .line 550
    const v9, -0x3fa9999a    # -3.35f

    .line 551
    .line 552
    .line 553
    const v10, -0x3fa1eb85    # -3.47f

    .line 554
    .line 555
    .line 556
    const v5, -0x418a3d71    # -0.24f

    .line 557
    .line 558
    .line 559
    const v6, -0x402147ae    # -1.74f

    .line 560
    .line 561
    .line 562
    const v7, -0x4031eb85    # -1.61f

    .line 563
    .line 564
    .line 565
    const v8, -0x3fb28f5c    # -3.21f

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 572
    .line 573
    .line 574
    iget-object v2, v4, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-static {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    sput-object v0, Landroidx/compose/material/icons/automirrored/rounded/HelpOutlineKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 584
    .line 585
    return-object v0
.end method
