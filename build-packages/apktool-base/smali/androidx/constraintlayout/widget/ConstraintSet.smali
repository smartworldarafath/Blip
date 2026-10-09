.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;,
        Landroidx/constraintlayout/widget/ConstraintSet$Motion;,
        Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;,
        Landroidx/constraintlayout/widget/ConstraintSet$Transform;,
        Landroidx/constraintlayout/widget/ConstraintSet$Layout;
    }
.end annotation


# static fields
.field public static final d:[I

.field public static final e:Landroid/util/SparseIntArray;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    filled-new-array {v0, v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    sput-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->d:[I

    .line 10
    .line 11
    new-instance v3, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->e:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    const/16 v4, 0x4c

    .line 19
    .line 20
    const/16 v5, 0x19

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    .line 24
    .line 25
    const/16 v6, 0x4d

    .line 26
    .line 27
    const/16 v7, 0x1a

    .line 28
    .line 29
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    .line 32
    const/16 v8, 0x4f

    .line 33
    .line 34
    const/16 v9, 0x1d

    .line 35
    .line 36
    invoke-virtual {v3, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    .line 38
    .line 39
    const/16 v10, 0x50

    .line 40
    .line 41
    const/16 v11, 0x1e

    .line 42
    .line 43
    invoke-virtual {v3, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    .line 45
    .line 46
    const/16 v12, 0x56

    .line 47
    .line 48
    const/16 v13, 0x24

    .line 49
    .line 50
    invoke-virtual {v3, v12, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    .line 52
    .line 53
    const/16 v12, 0x55

    .line 54
    .line 55
    const/16 v13, 0x23

    .line 56
    .line 57
    invoke-virtual {v3, v12, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    .line 59
    .line 60
    const/16 v12, 0x3a

    .line 61
    .line 62
    invoke-virtual {v3, v12, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    .line 64
    .line 65
    const/16 v13, 0x39

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    invoke-virtual {v3, v13, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x37

    .line 72
    .line 73
    const/4 v10, 0x1

    .line 74
    invoke-virtual {v3, v15, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 75
    .line 76
    .line 77
    const/16 v6, 0x5e

    .line 78
    .line 79
    const/4 v4, 0x6

    .line 80
    invoke-virtual {v3, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    .line 82
    .line 83
    const/16 v6, 0x5f

    .line 84
    .line 85
    const/4 v11, 0x7

    .line 86
    invoke-virtual {v3, v6, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 87
    .line 88
    .line 89
    const/16 v6, 0x41

    .line 90
    .line 91
    const/16 v9, 0x11

    .line 92
    .line 93
    invoke-virtual {v3, v6, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 94
    .line 95
    .line 96
    const/16 v10, 0x12

    .line 97
    .line 98
    const/16 v8, 0x42

    .line 99
    .line 100
    invoke-virtual {v3, v8, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 101
    .line 102
    .line 103
    const/16 v10, 0x43

    .line 104
    .line 105
    const/16 v8, 0x13

    .line 106
    .line 107
    invoke-virtual {v3, v10, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    .line 109
    .line 110
    const/16 v8, 0x1b

    .line 111
    .line 112
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 113
    .line 114
    .line 115
    const/16 v0, 0x51

    .line 116
    .line 117
    const/16 v8, 0x20

    .line 118
    .line 119
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 120
    .line 121
    .line 122
    const/16 v0, 0x21

    .line 123
    .line 124
    const/16 v8, 0x52

    .line 125
    .line 126
    invoke-virtual {v3, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 127
    .line 128
    .line 129
    const/16 v0, 0x40

    .line 130
    .line 131
    const/16 v10, 0xa

    .line 132
    .line 133
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    .line 135
    .line 136
    const/16 v0, 0x3f

    .line 137
    .line 138
    const/16 v10, 0x9

    .line 139
    .line 140
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 141
    .line 142
    .line 143
    const/16 v0, 0x62

    .line 144
    .line 145
    const/16 v10, 0xd

    .line 146
    .line 147
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 148
    .line 149
    .line 150
    const/16 v0, 0x65

    .line 151
    .line 152
    const/16 v10, 0x10

    .line 153
    .line 154
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 155
    .line 156
    .line 157
    const/16 v0, 0x63

    .line 158
    .line 159
    const/16 v10, 0xe

    .line 160
    .line 161
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    .line 163
    .line 164
    const/16 v0, 0x60

    .line 165
    .line 166
    const/16 v10, 0xb

    .line 167
    .line 168
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0x64

    .line 172
    .line 173
    const/16 v10, 0xf

    .line 174
    .line 175
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 176
    .line 177
    .line 178
    const/16 v0, 0x61

    .line 179
    .line 180
    const/16 v10, 0xc

    .line 181
    .line 182
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 183
    .line 184
    .line 185
    const/16 v0, 0x59

    .line 186
    .line 187
    const/16 v10, 0x28

    .line 188
    .line 189
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 190
    .line 191
    .line 192
    const/16 v0, 0x4a

    .line 193
    .line 194
    const/16 v10, 0x27

    .line 195
    .line 196
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 197
    .line 198
    .line 199
    const/16 v0, 0x49

    .line 200
    .line 201
    const/16 v10, 0x29

    .line 202
    .line 203
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 204
    .line 205
    .line 206
    const/16 v0, 0x58

    .line 207
    .line 208
    const/16 v10, 0x2a

    .line 209
    .line 210
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 211
    .line 212
    .line 213
    const/16 v0, 0x48

    .line 214
    .line 215
    const/16 v10, 0x14

    .line 216
    .line 217
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 218
    .line 219
    .line 220
    const/16 v0, 0x57

    .line 221
    .line 222
    const/16 v10, 0x25

    .line 223
    .line 224
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 225
    .line 226
    .line 227
    const/16 v0, 0x3e

    .line 228
    .line 229
    const/4 v10, 0x5

    .line 230
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    .line 232
    .line 233
    const/16 v0, 0x4b

    .line 234
    .line 235
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    .line 237
    .line 238
    const/16 v0, 0x54

    .line 239
    .line 240
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 241
    .line 242
    .line 243
    const/16 v0, 0x4e

    .line 244
    .line 245
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    .line 247
    .line 248
    const/16 v0, 0x38

    .line 249
    .line 250
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    .line 252
    .line 253
    const/16 v0, 0x36

    .line 254
    .line 255
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x5

    .line 259
    const/16 v8, 0x18

    .line 260
    .line 261
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 262
    .line 263
    .line 264
    const/16 v0, 0x1c

    .line 265
    .line 266
    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    .line 268
    .line 269
    const/16 v0, 0x17

    .line 270
    .line 271
    const/16 v8, 0x1f

    .line 272
    .line 273
    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    .line 275
    .line 276
    const/16 v0, 0x18

    .line 277
    .line 278
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    .line 280
    .line 281
    const/16 v0, 0x22

    .line 282
    .line 283
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    .line 285
    .line 286
    const/4 v0, 0x2

    .line 287
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    .line 289
    .line 290
    const/16 v0, 0x17

    .line 291
    .line 292
    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    .line 294
    .line 295
    const/16 v0, 0x15

    .line 296
    .line 297
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    .line 299
    .line 300
    const/4 v0, 0x2

    .line 301
    const/16 v1, 0x16

    .line 302
    .line 303
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    .line 305
    .line 306
    const/16 v0, 0xd

    .line 307
    .line 308
    const/16 v1, 0x2b

    .line 309
    .line 310
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    .line 312
    .line 313
    const/16 v0, 0x2c

    .line 314
    .line 315
    invoke-virtual {v3, v7, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    .line 317
    .line 318
    const/16 v0, 0x15

    .line 319
    .line 320
    const/16 v1, 0x2d

    .line 321
    .line 322
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    .line 324
    .line 325
    const/16 v0, 0x16

    .line 326
    .line 327
    const/16 v1, 0x2e

    .line 328
    .line 329
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    .line 331
    .line 332
    const/16 v0, 0x14

    .line 333
    .line 334
    const/16 v1, 0x3c

    .line 335
    .line 336
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    .line 338
    .line 339
    const/16 v0, 0x12

    .line 340
    .line 341
    const/16 v1, 0x2f

    .line 342
    .line 343
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 344
    .line 345
    .line 346
    const/16 v0, 0x13

    .line 347
    .line 348
    const/16 v1, 0x30

    .line 349
    .line 350
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    .line 352
    .line 353
    const/16 v0, 0xe

    .line 354
    .line 355
    const/16 v1, 0x31

    .line 356
    .line 357
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    .line 359
    .line 360
    const/16 v0, 0xf

    .line 361
    .line 362
    const/16 v1, 0x32

    .line 363
    .line 364
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    .line 366
    .line 367
    const/16 v0, 0x10

    .line 368
    .line 369
    const/16 v1, 0x33

    .line 370
    .line 371
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    .line 373
    .line 374
    const/16 v0, 0x34

    .line 375
    .line 376
    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    .line 378
    .line 379
    const/16 v0, 0x35

    .line 380
    .line 381
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 382
    .line 383
    .line 384
    const/16 v0, 0x5a

    .line 385
    .line 386
    const/16 v1, 0x36

    .line 387
    .line 388
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 389
    .line 390
    .line 391
    const/16 v0, 0x44

    .line 392
    .line 393
    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    .line 395
    .line 396
    const/16 v0, 0x5b

    .line 397
    .line 398
    const/16 v1, 0x38

    .line 399
    .line 400
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 401
    .line 402
    .line 403
    const/16 v0, 0x45

    .line 404
    .line 405
    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 406
    .line 407
    .line 408
    const/16 v0, 0x5c

    .line 409
    .line 410
    invoke-virtual {v3, v0, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 411
    .line 412
    .line 413
    const/16 v0, 0x46

    .line 414
    .line 415
    const/16 v1, 0x3b

    .line 416
    .line 417
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 418
    .line 419
    .line 420
    const/16 v0, 0x3b

    .line 421
    .line 422
    const/16 v1, 0x3d

    .line 423
    .line 424
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 425
    .line 426
    .line 427
    const/16 v0, 0x3d

    .line 428
    .line 429
    const/16 v1, 0x3e

    .line 430
    .line 431
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 432
    .line 433
    .line 434
    const/16 v0, 0x3c

    .line 435
    .line 436
    const/16 v1, 0x3f

    .line 437
    .line 438
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    .line 440
    .line 441
    const/16 v0, 0x1b

    .line 442
    .line 443
    const/16 v1, 0x40

    .line 444
    .line 445
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    .line 447
    .line 448
    const/16 v0, 0x6a

    .line 449
    .line 450
    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 451
    .line 452
    .line 453
    const/16 v0, 0x21

    .line 454
    .line 455
    const/16 v1, 0x42

    .line 456
    .line 457
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 458
    .line 459
    .line 460
    const/16 v0, 0x6b

    .line 461
    .line 462
    const/16 v1, 0x43

    .line 463
    .line 464
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 465
    .line 466
    .line 467
    const/16 v0, 0x67

    .line 468
    .line 469
    const/16 v1, 0x4f

    .line 470
    .line 471
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 472
    .line 473
    .line 474
    const/16 v0, 0x26

    .line 475
    .line 476
    const/4 v1, 0x1

    .line 477
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 478
    .line 479
    .line 480
    const/16 v0, 0x66

    .line 481
    .line 482
    const/16 v1, 0x44

    .line 483
    .line 484
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 485
    .line 486
    .line 487
    const/16 v0, 0x5d

    .line 488
    .line 489
    const/16 v1, 0x45

    .line 490
    .line 491
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 492
    .line 493
    .line 494
    const/16 v0, 0x47

    .line 495
    .line 496
    const/16 v1, 0x46

    .line 497
    .line 498
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 499
    .line 500
    .line 501
    const/16 v0, 0x1f

    .line 502
    .line 503
    const/16 v1, 0x47

    .line 504
    .line 505
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 506
    .line 507
    .line 508
    const/16 v0, 0x48

    .line 509
    .line 510
    const/16 v1, 0x1d

    .line 511
    .line 512
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 513
    .line 514
    .line 515
    const/16 v0, 0x49

    .line 516
    .line 517
    const/16 v1, 0x1e

    .line 518
    .line 519
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    .line 521
    .line 522
    const/16 v0, 0x20

    .line 523
    .line 524
    const/16 v1, 0x4a

    .line 525
    .line 526
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 527
    .line 528
    .line 529
    const/16 v0, 0x1c

    .line 530
    .line 531
    const/16 v1, 0x4b

    .line 532
    .line 533
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 534
    .line 535
    .line 536
    const/16 v0, 0x68

    .line 537
    .line 538
    const/16 v1, 0x4c

    .line 539
    .line 540
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 541
    .line 542
    .line 543
    const/16 v0, 0x53

    .line 544
    .line 545
    const/16 v1, 0x4d

    .line 546
    .line 547
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 548
    .line 549
    .line 550
    const/16 v0, 0x6c

    .line 551
    .line 552
    const/16 v1, 0x4e

    .line 553
    .line 554
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 555
    .line 556
    .line 557
    const/16 v0, 0x35

    .line 558
    .line 559
    const/16 v1, 0x50

    .line 560
    .line 561
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 562
    .line 563
    .line 564
    const/16 v0, 0x34

    .line 565
    .line 566
    const/16 v1, 0x51

    .line 567
    .line 568
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 569
    .line 570
    .line 571
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->b:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->c:Ljava/util/HashMap;

    .line 20
    .line 21
    return-void
.end method

.method public static c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    array-length v5, p1

    .line 18
    if-ge v3, v5, :cond_4

    .line 19
    .line 20
    aget-object v5, p1, v3

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 28
    .line 29
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move v7, v2

    .line 39
    :goto_1
    if-nez v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "id"

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    :cond_0
    if-nez v7, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    if-eqz v8, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 80
    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_2

    .line 88
    .line 89
    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 100
    .line 101
    instance-of v5, v6, Ljava/lang/Integer;

    .line 102
    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    check-cast v6, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 112
    .line 113
    aput v7, v1, v4

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    move v4, v5

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    array-length p0, p1

    .line 120
    if-eq v4, p0, :cond_5

    .line 121
    .line 122
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_5
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 14

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->c:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 27
    .line 28
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eq v3, v7, :cond_0

    .line 32
    .line 33
    const/16 v8, 0x17

    .line 34
    .line 35
    if-eq v8, v3, :cond_0

    .line 36
    .line 37
    const/16 v8, 0x18

    .line 38
    .line 39
    if-eq v8, v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :cond_0
    sget-object v8, Landroidx/constraintlayout/widget/ConstraintSet;->e:Landroid/util/SparseIntArray;

    .line 51
    .line 52
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 57
    .line 58
    const/high16 v11, 0x3f800000    # 1.0f

    .line 59
    .line 60
    const-string v12, "   "

    .line 61
    .line 62
    const-string v13, "ConstraintSet"

    .line 63
    .line 64
    packed-switch v9, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Unknown attribute 0x"

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "unused attribute 0x"

    .line 103
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :pswitch_1
    iget-boolean v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:Z

    .line 134
    .line 135
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iput-boolean v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:Z

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :pswitch_2
    iget-boolean v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:Z

    .line 144
    .line 145
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    iput-boolean v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:Z

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :pswitch_3
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->c:F

    .line 154
    .line 155
    invoke-virtual {p0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->c:F

    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :pswitch_4
    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 164
    .line 165
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    iput v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :pswitch_5
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f0:Ljava/lang/String;

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :pswitch_6
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->b:I

    .line 182
    .line 183
    invoke-virtual {p0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->b:I

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_7
    iget-boolean v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Z

    .line 192
    .line 193
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    iput-boolean v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Z

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :pswitch_8
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    iput-object v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:Ljava/lang/String;

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :pswitch_9
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 210
    .line 211
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :pswitch_a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 220
    .line 221
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :pswitch_b
    const-string v3, "CURRENTLY UNSUPPORTED"

    .line 230
    .line 231
    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :pswitch_c
    invoke-virtual {p0, v3, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:F

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_d
    invoke-virtual {p0, v3, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:F

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :pswitch_e
    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->d:F

    .line 253
    .line 254
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    iput v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->d:F

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :pswitch_f
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->d:F

    .line 263
    .line 264
    invoke-virtual {p0, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->d:F

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :pswitch_10
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :pswitch_11
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 285
    .line 286
    const/4 v6, 0x3

    .line 287
    if-ne v5, v6, :cond_1

    .line 288
    .line 289
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_1
    sget-object v5, Landroidx/constraintlayout/motion/utils/Easing;->a:[Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    aget-object v3, v5, v3

    .line 304
    .line 305
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :pswitch_12
    iget v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->a:I

    .line 311
    .line 312
    invoke-static {p0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->a:I

    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :pswitch_13
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:F

    .line 321
    .line 322
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:F

    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :pswitch_14
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:I

    .line 331
    .line 332
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:I

    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_15
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:I

    .line 341
    .line 342
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:I

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :pswitch_16
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 351
    .line 352
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :pswitch_17
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 361
    .line 362
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :pswitch_18
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 371
    .line 372
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 377
    .line 378
    goto/16 :goto_1

    .line 379
    .line 380
    :pswitch_19
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 381
    .line 382
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :pswitch_1a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 391
    .line 392
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :pswitch_1b
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:I

    .line 401
    .line 402
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:I

    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :pswitch_1c
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:I

    .line 411
    .line 412
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:I

    .line 417
    .line 418
    goto/16 :goto_1

    .line 419
    .line 420
    :pswitch_1d
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 421
    .line 422
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 427
    .line 428
    goto/16 :goto_1

    .line 429
    .line 430
    :pswitch_1e
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 431
    .line 432
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :pswitch_1f
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:F

    .line 441
    .line 442
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:F

    .line 447
    .line 448
    goto/16 :goto_1

    .line 449
    .line 450
    :pswitch_20
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 451
    .line 452
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 457
    .line 458
    goto/16 :goto_1

    .line 459
    .line 460
    :pswitch_21
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 461
    .line 462
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 467
    .line 468
    goto/16 :goto_1

    .line 469
    .line 470
    :pswitch_22
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 471
    .line 472
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 477
    .line 478
    goto/16 :goto_1

    .line 479
    .line 480
    :pswitch_23
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 481
    .line 482
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :pswitch_24
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 491
    .line 492
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 497
    .line 498
    goto/16 :goto_1

    .line 499
    .line 500
    :pswitch_25
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 501
    .line 502
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 507
    .line 508
    goto/16 :goto_1

    .line 509
    .line 510
    :pswitch_26
    iput-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:Z

    .line 511
    .line 512
    iget v4, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:F

    .line 513
    .line 514
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:F

    .line 519
    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :pswitch_27
    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 523
    .line 524
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    iput v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 529
    .line 530
    goto/16 :goto_1

    .line 531
    .line 532
    :pswitch_28
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 533
    .line 534
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 539
    .line 540
    goto/16 :goto_1

    .line 541
    .line 542
    :pswitch_29
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 543
    .line 544
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 549
    .line 550
    goto/16 :goto_1

    .line 551
    .line 552
    :pswitch_2a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:F

    .line 553
    .line 554
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:F

    .line 559
    .line 560
    goto/16 :goto_1

    .line 561
    .line 562
    :pswitch_2b
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:F

    .line 563
    .line 564
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:F

    .line 569
    .line 570
    goto/16 :goto_1

    .line 571
    .line 572
    :pswitch_2c
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 573
    .line 574
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 579
    .line 580
    goto/16 :goto_1

    .line 581
    .line 582
    :pswitch_2d
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:F

    .line 583
    .line 584
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:F

    .line 589
    .line 590
    goto/16 :goto_1

    .line 591
    .line 592
    :pswitch_2e
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 593
    .line 594
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 599
    .line 600
    goto/16 :goto_1

    .line 601
    .line 602
    :pswitch_2f
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 603
    .line 604
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 609
    .line 610
    goto/16 :goto_1

    .line 611
    .line 612
    :pswitch_30
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 613
    .line 614
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 619
    .line 620
    goto/16 :goto_1

    .line 621
    .line 622
    :pswitch_31
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 623
    .line 624
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 629
    .line 630
    goto/16 :goto_1

    .line 631
    .line 632
    :pswitch_32
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 633
    .line 634
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 639
    .line 640
    goto/16 :goto_1

    .line 641
    .line 642
    :pswitch_33
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 643
    .line 644
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 645
    .line 646
    .line 647
    move-result v3

    .line 648
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 649
    .line 650
    goto/16 :goto_1

    .line 651
    .line 652
    :pswitch_34
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 653
    .line 654
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 659
    .line 660
    goto/16 :goto_1

    .line 661
    .line 662
    :pswitch_35
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 663
    .line 664
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 669
    .line 670
    goto/16 :goto_1

    .line 671
    .line 672
    :pswitch_36
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 673
    .line 674
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 679
    .line 680
    goto/16 :goto_1

    .line 681
    .line 682
    :pswitch_37
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 683
    .line 684
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 689
    .line 690
    goto/16 :goto_1

    .line 691
    .line 692
    :pswitch_38
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 693
    .line 694
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 699
    .line 700
    goto/16 :goto_1

    .line 701
    .line 702
    :pswitch_39
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 703
    .line 704
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 709
    .line 710
    goto/16 :goto_1

    .line 711
    .line 712
    :pswitch_3a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 713
    .line 714
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 719
    .line 720
    goto/16 :goto_1

    .line 721
    .line 722
    :pswitch_3b
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 723
    .line 724
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 729
    .line 730
    goto/16 :goto_1

    .line 731
    .line 732
    :pswitch_3c
    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 733
    .line 734
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    iput v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 739
    .line 740
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->d:[I

    .line 741
    .line 742
    aget v3, v4, v3

    .line 743
    .line 744
    iput v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 745
    .line 746
    goto/16 :goto_1

    .line 747
    .line 748
    :pswitch_3d
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 749
    .line 750
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 755
    .line 756
    goto/16 :goto_1

    .line 757
    .line 758
    :pswitch_3e
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:F

    .line 759
    .line 760
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:F

    .line 765
    .line 766
    goto/16 :goto_1

    .line 767
    .line 768
    :pswitch_3f
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 769
    .line 770
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 775
    .line 776
    goto/16 :goto_1

    .line 777
    .line 778
    :pswitch_40
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 779
    .line 780
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 785
    .line 786
    goto/16 :goto_1

    .line 787
    .line 788
    :pswitch_41
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 789
    .line 790
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 795
    .line 796
    goto/16 :goto_1

    .line 797
    .line 798
    :pswitch_42
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 799
    .line 800
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 805
    .line 806
    goto/16 :goto_1

    .line 807
    .line 808
    :pswitch_43
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 809
    .line 810
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 811
    .line 812
    .line 813
    move-result v3

    .line 814
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 815
    .line 816
    goto/16 :goto_1

    .line 817
    .line 818
    :pswitch_44
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 819
    .line 820
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 821
    .line 822
    .line 823
    move-result v3

    .line 824
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 825
    .line 826
    goto/16 :goto_1

    .line 827
    .line 828
    :pswitch_45
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 829
    .line 830
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 831
    .line 832
    .line 833
    move-result v3

    .line 834
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 835
    .line 836
    goto/16 :goto_1

    .line 837
    .line 838
    :pswitch_46
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 839
    .line 840
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 845
    .line 846
    goto :goto_1

    .line 847
    :pswitch_47
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 848
    .line 849
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 854
    .line 855
    goto :goto_1

    .line 856
    :pswitch_48
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 857
    .line 858
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 863
    .line 864
    goto :goto_1

    .line 865
    :pswitch_49
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 866
    .line 867
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 872
    .line 873
    goto :goto_1

    .line 874
    :pswitch_4a
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 875
    .line 876
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 881
    .line 882
    goto :goto_1

    .line 883
    :pswitch_4b
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:I

    .line 884
    .line 885
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:I

    .line 890
    .line 891
    goto :goto_1

    .line 892
    :pswitch_4c
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 893
    .line 894
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 899
    .line 900
    goto :goto_1

    .line 901
    :pswitch_4d
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    iput-object v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:Ljava/lang/String;

    .line 906
    .line 907
    goto :goto_1

    .line 908
    :pswitch_4e
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 909
    .line 910
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 915
    .line 916
    goto :goto_1

    .line 917
    :pswitch_4f
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 918
    .line 919
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 920
    .line 921
    .line 922
    move-result v3

    .line 923
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 924
    .line 925
    goto :goto_1

    .line 926
    :pswitch_50
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 927
    .line 928
    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 933
    .line 934
    goto :goto_1

    .line 935
    :pswitch_51
    iget v4, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 936
    .line 937
    invoke-static {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->f(Landroid/content/res/TypedArray;II)I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    iput v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 942
    .line 943
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 944
    .line 945
    goto/16 :goto_0

    .line 946
    .line 947
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 948
    .line 949
    .line 950
    return-object v0

    .line 951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    return p2
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    new-instance v4, Ljava/util/HashSet;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/constraintlayout/widget/ConstraintSet;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move v6, v0

    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    const/4 v7, -0x1

    .line 24
    if-ge v6, v3, :cond_e

    .line 25
    .line 26
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const-string v11, "ConstraintSet"

    .line 43
    .line 44
    if-nez v10, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v7, "id unknown "

    .line 49
    .line 50
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    const-string v7, "UNKNOWN"

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_2
    move/from16 v17, v3

    .line 83
    .line 84
    move-object/from16 v18, v4

    .line 85
    .line 86
    move/from16 v21, v6

    .line 87
    .line 88
    goto/16 :goto_b

    .line 89
    .line 90
    :cond_0
    iget-boolean v10, v1, Landroidx/constraintlayout/widget/ConstraintSet;->b:Z

    .line 91
    .line 92
    if-eqz v10, :cond_2

    .line 93
    .line 94
    if-eq v9, v7, :cond_1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_1
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 98
    .line 99
    invoke-static {v0}, Lu2;->n(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    :goto_3
    if-ne v9, v7, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_c

    .line 115
    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 132
    .line 133
    instance-of v11, v8, Landroidx/constraintlayout/widget/Barrier;

    .line 134
    .line 135
    if-eqz v11, :cond_4

    .line 136
    .line 137
    iget-object v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 138
    .line 139
    iput v0, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:I

    .line 140
    .line 141
    :cond_4
    iget-object v11, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 142
    .line 143
    iget-object v12, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 144
    .line 145
    iget-object v13, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 146
    .line 147
    iget v14, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:I

    .line 148
    .line 149
    if-eq v14, v7, :cond_7

    .line 150
    .line 151
    if-eq v14, v0, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    move-object v0, v8

    .line 155
    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    .line 156
    .line 157
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 158
    .line 159
    .line 160
    iget v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 161
    .line 162
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 163
    .line 164
    .line 165
    iget v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 166
    .line 167
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 168
    .line 169
    .line 170
    iget-boolean v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Z

    .line 171
    .line 172
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:[I

    .line 176
    .line 177
    if-eqz v7, :cond_6

    .line 178
    .line 179
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-object v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v7, :cond_7

    .line 186
    .line 187
    invoke-static {v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    iput-object v7, v11, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:[I

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v7, v0

    .line 201
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 202
    .line 203
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    iget-object v9, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->f:Ljava/util/HashMap;

    .line 210
    .line 211
    const-string v10, "\" not found on "

    .line 212
    .line 213
    const-string v11, " Custom Attribute \""

    .line 214
    .line 215
    const-string v14, "TransitionLayout"

    .line 216
    .line 217
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v16

    .line 229
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    move-object v1, v0

    .line 240
    check-cast v1, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 247
    .line 248
    move/from16 v17, v3

    .line 249
    .line 250
    const-string v3, "set"

    .line 251
    .line 252
    invoke-static {v3, v1}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    move-object/from16 v18, v4

    .line 257
    .line 258
    :try_start_1
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 259
    .line 260
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 261
    .line 262
    .line 263
    move-result v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 265
    .line 266
    sget-object v20, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 267
    .line 268
    packed-switch v4, :pswitch_data_0

    .line 269
    .line 270
    .line 271
    :goto_6
    move/from16 v21, v6

    .line 272
    .line 273
    goto/16 :goto_a

    .line 274
    .line 275
    :pswitch_0
    :try_start_2
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:F

    .line 284
    .line 285
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :catch_1
    move-exception v0

    .line 298
    move/from16 v21, v6

    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :catch_2
    move-exception v0

    .line 303
    move/from16 v21, v6

    .line 304
    .line 305
    goto/16 :goto_8

    .line 306
    .line 307
    :catch_3
    move-exception v0

    .line 308
    move/from16 v21, v6

    .line 309
    .line 310
    goto/16 :goto_9

    .line 311
    .line 312
    :pswitch_1
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 313
    .line 314
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:Z

    .line 323
    .line 324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :pswitch_2
    const-class v4, Ljava/lang/CharSequence;

    .line 337
    .line 338
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:Ljava/lang/String;

    .line 347
    .line 348
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :pswitch_3
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 357
    .line 358
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 363
    .line 364
    .line 365
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 366
    move/from16 v21, v6

    .line 367
    .line 368
    :try_start_3
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 369
    .line 370
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 371
    .line 372
    .line 373
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:I

    .line 374
    .line 375
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 376
    .line 377
    .line 378
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :catch_4
    move-exception v0

    .line 388
    goto :goto_7

    .line 389
    :catch_5
    move-exception v0

    .line 390
    goto :goto_8

    .line 391
    :catch_6
    move-exception v0

    .line 392
    goto/16 :goto_9

    .line 393
    .line 394
    :pswitch_4
    move/from16 v21, v6

    .line 395
    .line 396
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:I

    .line 405
    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    goto/16 :goto_a

    .line 418
    .line 419
    :pswitch_5
    move/from16 v21, v6

    .line 420
    .line 421
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:F

    .line 430
    .line 431
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    goto/16 :goto_a

    .line 443
    .line 444
    :pswitch_6
    move/from16 v21, v6

    .line 445
    .line 446
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v15, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:I

    .line 455
    .line 456
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    .line 465
    .line 466
    .line 467
    goto :goto_a

    .line 468
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 523
    .line 524
    .line 525
    goto :goto_a

    .line 526
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v1, " must have a method "

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    :goto_a
    move-object/from16 v1, p0

    .line 586
    .line 587
    move/from16 v3, v17

    .line 588
    .line 589
    move-object/from16 v4, v18

    .line 590
    .line 591
    move/from16 v6, v21

    .line 592
    .line 593
    goto/16 :goto_5

    .line 594
    .line 595
    :cond_8
    move/from16 v17, v3

    .line 596
    .line 597
    move-object/from16 v18, v4

    .line 598
    .line 599
    move/from16 v21, v6

    .line 600
    .line 601
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    .line 603
    .line 604
    iget v0, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 605
    .line 606
    if-nez v0, :cond_9

    .line 607
    .line 608
    iget v0, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 609
    .line 610
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    :cond_9
    iget v0, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 614
    .line 615
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 616
    .line 617
    .line 618
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 619
    .line 620
    invoke-virtual {v8, v0}, Landroid/view/View;->setRotation(F)V

    .line 621
    .line 622
    .line 623
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 624
    .line 625
    invoke-virtual {v8, v0}, Landroid/view/View;->setRotationX(F)V

    .line 626
    .line 627
    .line 628
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 629
    .line 630
    invoke-virtual {v8, v0}, Landroid/view/View;->setRotationY(F)V

    .line 631
    .line 632
    .line 633
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 634
    .line 635
    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleX(F)V

    .line 636
    .line 637
    .line 638
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 639
    .line 640
    invoke-virtual {v8, v0}, Landroid/view/View;->setScaleY(F)V

    .line 641
    .line 642
    .line 643
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 644
    .line 645
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    if-nez v0, :cond_a

    .line 650
    .line 651
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 652
    .line 653
    invoke-virtual {v8, v0}, Landroid/view/View;->setPivotX(F)V

    .line 654
    .line 655
    .line 656
    :cond_a
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 657
    .line 658
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-nez v0, :cond_b

    .line 663
    .line 664
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 665
    .line 666
    invoke-virtual {v8, v0}, Landroid/view/View;->setPivotY(F)V

    .line 667
    .line 668
    .line 669
    :cond_b
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:F

    .line 670
    .line 671
    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 672
    .line 673
    .line 674
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 675
    .line 676
    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 677
    .line 678
    .line 679
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 680
    .line 681
    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 682
    .line 683
    .line 684
    iget-boolean v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:Z

    .line 685
    .line 686
    if-eqz v0, :cond_d

    .line 687
    .line 688
    iget v0, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:F

    .line 689
    .line 690
    invoke-virtual {v8, v0}, Landroid/view/View;->setElevation(F)V

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :cond_c
    move/from16 v17, v3

    .line 695
    .line 696
    move-object/from16 v18, v4

    .line 697
    .line 698
    move/from16 v21, v6

    .line 699
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string v1, "WARNING NO CONSTRAINTS for view "

    .line 703
    .line 704
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    :cond_d
    :goto_b
    add-int/lit8 v6, v21, 0x1

    .line 718
    .line 719
    move-object/from16 v1, p0

    .line 720
    .line 721
    move/from16 v3, v17

    .line 722
    .line 723
    move-object/from16 v4, v18

    .line 724
    .line 725
    goto/16 :goto_0

    .line 726
    .line 727
    :cond_e
    move-object/from16 v18, v4

    .line 728
    .line 729
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    :cond_f
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-eqz v3, :cond_14

    .line 738
    .line 739
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    check-cast v3, Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 750
    .line 751
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 752
    .line 753
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:I

    .line 754
    .line 755
    if-eq v8, v7, :cond_13

    .line 756
    .line 757
    if-eq v8, v0, :cond_10

    .line 758
    .line 759
    goto :goto_e

    .line 760
    :cond_10
    new-instance v8, Landroidx/constraintlayout/widget/Barrier;

    .line 761
    .line 762
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    invoke-direct {v8, v9}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 770
    .line 771
    .line 772
    move-result v9

    .line 773
    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 774
    .line 775
    .line 776
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:[I

    .line 777
    .line 778
    if-eqz v9, :cond_11

    .line 779
    .line 780
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 781
    .line 782
    .line 783
    goto :goto_d

    .line 784
    :cond_11
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:Ljava/lang/String;

    .line 785
    .line 786
    if-eqz v9, :cond_12

    .line 787
    .line 788
    invoke-static {v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    .line 789
    .line 790
    .line 791
    move-result-object v9

    .line 792
    iput-object v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:[I

    .line 793
    .line 794
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    .line 795
    .line 796
    .line 797
    :cond_12
    :goto_d
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 798
    .line 799
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 800
    .line 801
    .line 802
    iget v9, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 803
    .line 804
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 805
    .line 806
    .line 807
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 808
    .line 809
    .line 810
    move-result-object v9

    .line 811
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->d()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    .line 819
    .line 820
    :cond_13
    :goto_e
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a:Z

    .line 821
    .line 822
    if-eqz v6, :cond_f

    .line 823
    .line 824
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    .line 825
    .line 826
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    invoke-direct {v6, v8}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    .line 838
    .line 839
    .line 840
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 848
    .line 849
    .line 850
    goto :goto_c

    .line 851
    :cond_14
    return-void

    .line 852
    nop

    .line 853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    move v4, v0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_9

    .line 15
    .line 16
    move-object/from16 v5, p1

    .line 17
    .line 18
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v7, v0

    .line 27
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->b:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    if-eq v8, v0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 42
    .line 43
    invoke-static {v0}, Lu2;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 62
    .line 63
    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v9, v0

    .line 78
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 79
    .line 80
    new-instance v10, Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    iget-object v12, v1, Landroidx/constraintlayout/widget/ConstraintSet;->a:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 116
    .line 117
    :try_start_0
    const-string v15, "BackgroundColor"

    .line 118
    .line 119
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-eqz v15, :cond_3

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    check-cast v15, Landroid/graphics/drawable/ColorDrawable;

    .line 130
    .line 131
    invoke-virtual {v15}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 140
    .line 141
    invoke-direct {v1, v14, v15}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto :goto_3

    .line 150
    :catch_1
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :catch_2
    move-exception v0

    .line 153
    goto :goto_5

    .line 154
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v15, "getMap"

    .line 160
    .line 161
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const/4 v15, 0x0

    .line 172
    invoke-virtual {v11, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 181
    .line 182
    invoke-direct {v15, v14, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    goto :goto_6

    .line 189
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    goto :goto_6

    .line 197
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    :goto_6
    move-object/from16 v1, p0

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_4
    iput-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->f:Ljava/util/HashMap;

    .line 204
    .line 205
    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 206
    .line 207
    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 208
    .line 209
    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 210
    .line 211
    iput v8, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 212
    .line 213
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 214
    .line 215
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 216
    .line 217
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 218
    .line 219
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 220
    .line 221
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 222
    .line 223
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 224
    .line 225
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 226
    .line 227
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 228
    .line 229
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 230
    .line 231
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 232
    .line 233
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 234
    .line 235
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 236
    .line 237
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 238
    .line 239
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 240
    .line 241
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 242
    .line 243
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 244
    .line 245
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 246
    .line 247
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 248
    .line 249
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 250
    .line 251
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 252
    .line 253
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 254
    .line 255
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 256
    .line 257
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 258
    .line 259
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 260
    .line 261
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 262
    .line 263
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 264
    .line 265
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 266
    .line 267
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:F

    .line 268
    .line 269
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    .line 270
    .line 271
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:F

    .line 272
    .line 273
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 274
    .line 275
    iput-object v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:Ljava/lang/String;

    .line 276
    .line 277
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 278
    .line 279
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:I

    .line 280
    .line 281
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 282
    .line 283
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:I

    .line 284
    .line 285
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 286
    .line 287
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:F

    .line 288
    .line 289
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 290
    .line 291
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 292
    .line 293
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 294
    .line 295
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:I

    .line 296
    .line 297
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 298
    .line 299
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 300
    .line 301
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 302
    .line 303
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 304
    .line 305
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 306
    .line 307
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 308
    .line 309
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 310
    .line 311
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 312
    .line 313
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 314
    .line 315
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 316
    .line 317
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 318
    .line 319
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 320
    .line 321
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 322
    .line 323
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 324
    .line 325
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 326
    .line 327
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 328
    .line 329
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 330
    .line 331
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 332
    .line 333
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 334
    .line 335
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 336
    .line 337
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 338
    .line 339
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:F

    .line 340
    .line 341
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 342
    .line 343
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:F

    .line 344
    .line 345
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 346
    .line 347
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 348
    .line 349
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 350
    .line 351
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 352
    .line 353
    iget-boolean v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 354
    .line 355
    iput-boolean v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:Z

    .line 356
    .line 357
    iget-boolean v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 358
    .line 359
    iput-boolean v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:Z

    .line 360
    .line 361
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 362
    .line 363
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:I

    .line 364
    .line 365
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 366
    .line 367
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:I

    .line 368
    .line 369
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 370
    .line 371
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 372
    .line 373
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 374
    .line 375
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 376
    .line 377
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 378
    .line 379
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 380
    .line 381
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 382
    .line 383
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 384
    .line 385
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 386
    .line 387
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:F

    .line 388
    .line 389
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 390
    .line 391
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:F

    .line 392
    .line 393
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 394
    .line 395
    iput-object v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f0:Ljava/lang/String;

    .line 396
    .line 397
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 398
    .line 399
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 400
    .line 401
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 402
    .line 403
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 404
    .line 405
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 406
    .line 407
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 408
    .line 409
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 410
    .line 411
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 412
    .line 413
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 414
    .line 415
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 416
    .line 417
    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 418
    .line 419
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 420
    .line 421
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 426
    .line 427
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    iput v7, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 432
    .line 433
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 434
    .line 435
    .line 436
    move-result v7

    .line 437
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 438
    .line 439
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 444
    .line 445
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 450
    .line 451
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 456
    .line 457
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 462
    .line 463
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 468
    .line 469
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 474
    .line 475
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    float-to-double v8, v0

    .line 484
    const-wide/16 v11, 0x0

    .line 485
    .line 486
    cmpl-double v8, v8, v11

    .line 487
    .line 488
    if-nez v8, :cond_5

    .line 489
    .line 490
    float-to-double v8, v7

    .line 491
    cmpl-double v8, v8, v11

    .line 492
    .line 493
    if-eqz v8, :cond_6

    .line 494
    .line 495
    :cond_5
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 496
    .line 497
    iput v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 498
    .line 499
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:F

    .line 504
    .line 505
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 510
    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 516
    .line 517
    iget-boolean v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:Z

    .line 518
    .line 519
    if-eqz v0, :cond_7

    .line 520
    .line 521
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:F

    .line 526
    .line 527
    :cond_7
    instance-of v0, v6, Landroidx/constraintlayout/widget/Barrier;

    .line 528
    .line 529
    if-eqz v0, :cond_8

    .line 530
    .line 531
    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 532
    .line 533
    iget-object v0, v6, Landroidx/constraintlayout/widget/Barrier;->r:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 534
    .line 535
    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->g0:Z

    .line 536
    .line 537
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Z

    .line 538
    .line 539
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:[I

    .line 544
    .line 545
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 550
    .line 551
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 556
    .line 557
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 558
    .line 559
    move-object/from16 v1, p0

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_9
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "Guideline"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 43
    .line 44
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a:Z

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->c:Ljava/util/HashMap;

    .line 47
    .line 48
    iget v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_1
    move-exception p0

    .line 72
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_2
    return-void
.end method
