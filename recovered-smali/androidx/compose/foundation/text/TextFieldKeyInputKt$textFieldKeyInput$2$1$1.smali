.class final synthetic Landroidx/compose/foundation/text/TextFieldKeyInputKt$textFieldKeyInput$2$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->a:Landroid/view/KeyEvent;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->f:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->d:Z

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_4

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->i:Landroidx/compose/foundation/text/DeadKeyCombiner;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/high16 v6, -0x80000000

    .line 41
    .line 42
    and-int/2addr v6, v5

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    const v6, 0x7fffffff

    .line 46
    .line 47
    .line 48
    and-int/2addr v5, v6

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iput-object v5, v2, Landroidx/compose/foundation/text/DeadKeyCombiner;->a:Ljava/lang/Integer;

    .line 54
    .line 55
    move-object v2, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v6, v2, Landroidx/compose/foundation/text/DeadKeyCombiner;->a:Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    iput-object v4, v2, Landroidx/compose/foundation/text/DeadKeyCombiner;->a:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2, v5}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    move-object v6, v4

    .line 78
    :cond_1
    if-eqz v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_0
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v5, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 113
    .line 114
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move-object v5, v4

    .line 119
    :goto_1
    const/4 v2, 0x0

    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->a(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    iput-object v4, v0, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->a:Ljava/lang/Float;

    .line 132
    .line 133
    goto/16 :goto_26

    .line 134
    .line 135
    :cond_5
    :goto_2
    move v3, v2

    .line 136
    goto/16 :goto_26

    .line 137
    .line 138
    :cond_6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const/4 v6, 0x2

    .line 143
    if-ne v5, v6, :cond_5

    .line 144
    .line 145
    iget-object v5, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->j:Landroidx/compose/foundation/text/KeyMapping_androidKt$platformDefaultKeyMapping$1;

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    const/16 v7, 0x9

    .line 155
    .line 156
    if-ne v5, v7, :cond_b

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v7

    .line 166
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->f:J

    .line 167
    .line 168
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->Z:Landroidx/compose/foundation/text/KeyCommand;

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_7
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->g:J

    .line 179
    .line 180
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_8

    .line 185
    .line 186
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->a0:Landroidx/compose/foundation/text/KeyCommand;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->d:J

    .line 190
    .line 191
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_9

    .line 196
    .line 197
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->R:Landroidx/compose/foundation/text/KeyCommand;

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->e:J

    .line 201
    .line 202
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_a

    .line 207
    .line 208
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->S:Landroidx/compose/foundation/text/KeyCommand;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_a
    move-object v5, v4

    .line 212
    goto :goto_3

    .line 213
    :cond_b
    if-ne v5, v3, :cond_a

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v7

    .line 223
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->f:J

    .line 224
    .line 225
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_c

    .line 230
    .line 231
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->s:Landroidx/compose/foundation/text/KeyCommand;

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_c
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->g:J

    .line 235
    .line 236
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_d

    .line 241
    .line 242
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->t:Landroidx/compose/foundation/text/KeyCommand;

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_d
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->d:J

    .line 246
    .line 247
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_e

    .line 252
    .line 253
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->z:Landroidx/compose/foundation/text/KeyCommand;

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_e
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->e:J

    .line 257
    .line 258
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_f

    .line 263
    .line 264
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->A:Landroidx/compose/foundation/text/KeyCommand;

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_f
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->s:J

    .line 268
    .line 269
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_a

    .line 274
    .line 275
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->I:Landroidx/compose/foundation/text/KeyCommand;

    .line 276
    .line 277
    :goto_3
    if-nez v5, :cond_66

    .line 278
    .line 279
    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    invoke-static {v7}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 288
    .line 289
    .line 290
    move-result-wide v7

    .line 291
    sget-wide v9, Landroidx/compose/ui/input/key/Key;->s:J

    .line 292
    .line 293
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    const/16 v10, 0x8

    .line 298
    .line 299
    const/16 v11, 0xa

    .line 300
    .line 301
    if-eqz v9, :cond_15

    .line 302
    .line 303
    if-nez v5, :cond_10

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_10
    if-ne v5, v10, :cond_11

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_11
    const/16 v7, 0xc

    .line 310
    .line 311
    if-ne v5, v7, :cond_12

    .line 312
    .line 313
    :goto_4
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->E:Landroidx/compose/foundation/text/KeyCommand;

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_12
    if-ne v5, v6, :cond_13

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_13
    if-ne v5, v11, :cond_14

    .line 320
    .line 321
    :goto_5
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->G:Landroidx/compose/foundation/text/KeyCommand;

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_14
    move-object v5, v4

    .line 325
    goto :goto_7

    .line 326
    :cond_15
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->r:J

    .line 327
    .line 328
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-nez v9, :cond_16

    .line 333
    .line 334
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->E:J

    .line 335
    .line 336
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-eqz v7, :cond_14

    .line 341
    .line 342
    :cond_16
    if-nez v5, :cond_17

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_17
    if-ne v5, v10, :cond_18

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_18
    if-ne v5, v6, :cond_19

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_19
    if-ne v5, v11, :cond_14

    .line 352
    .line 353
    :goto_6
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->c0:Landroidx/compose/foundation/text/KeyCommand;

    .line 354
    .line 355
    :goto_7
    if-eqz v5, :cond_1a

    .line 356
    .line 357
    goto/16 :goto_25

    .line 358
    .line 359
    :cond_1a
    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    if-ne v5, v11, :cond_23

    .line 364
    .line 365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v7

    .line 373
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->f:J

    .line 374
    .line 375
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-nez v5, :cond_22

    .line 380
    .line 381
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->H:J

    .line 382
    .line 383
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    if-eqz v5, :cond_1b

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_1b
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->g:J

    .line 391
    .line 392
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_21

    .line 397
    .line 398
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->I:J

    .line 399
    .line 400
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_1c

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_1c
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->d:J

    .line 408
    .line 409
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-nez v5, :cond_20

    .line 414
    .line 415
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->F:J

    .line 416
    .line 417
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_1d

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_1d
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->e:J

    .line 425
    .line 426
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-nez v5, :cond_1f

    .line 431
    .line 432
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->G:J

    .line 433
    .line 434
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_1e

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_1e
    move-object v5, v4

    .line 442
    goto/16 :goto_11

    .line 443
    .line 444
    :cond_1f
    :goto_8
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->V:Landroidx/compose/foundation/text/KeyCommand;

    .line 445
    .line 446
    goto/16 :goto_11

    .line 447
    .line 448
    :cond_20
    :goto_9
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->W:Landroidx/compose/foundation/text/KeyCommand;

    .line 449
    .line 450
    goto/16 :goto_11

    .line 451
    .line 452
    :cond_21
    :goto_a
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->U:Landroidx/compose/foundation/text/KeyCommand;

    .line 453
    .line 454
    goto/16 :goto_11

    .line 455
    .line 456
    :cond_22
    :goto_b
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->T:Landroidx/compose/foundation/text/KeyCommand;

    .line 457
    .line 458
    goto/16 :goto_11

    .line 459
    .line 460
    :cond_23
    if-ne v5, v6, :cond_2e

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 467
    .line 468
    .line 469
    move-result-wide v7

    .line 470
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->f:J

    .line 471
    .line 472
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-nez v5, :cond_2d

    .line 477
    .line 478
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->H:J

    .line 479
    .line 480
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_24

    .line 485
    .line 486
    goto :goto_f

    .line 487
    :cond_24
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->g:J

    .line 488
    .line 489
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    if-nez v5, :cond_2c

    .line 494
    .line 495
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->I:J

    .line 496
    .line 497
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    if-eqz v5, :cond_25

    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_25
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->d:J

    .line 505
    .line 506
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-nez v5, :cond_2b

    .line 511
    .line 512
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->F:J

    .line 513
    .line 514
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    if-eqz v5, :cond_26

    .line 519
    .line 520
    goto :goto_d

    .line 521
    :cond_26
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->e:J

    .line 522
    .line 523
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    if-nez v5, :cond_2a

    .line 528
    .line 529
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->G:J

    .line 530
    .line 531
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    if-eqz v5, :cond_27

    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_27
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->k:J

    .line 539
    .line 540
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    if-eqz v5, :cond_28

    .line 545
    .line 546
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->E:Landroidx/compose/foundation/text/KeyCommand;

    .line 547
    .line 548
    goto/16 :goto_11

    .line 549
    .line 550
    :cond_28
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->t:J

    .line 551
    .line 552
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_29

    .line 557
    .line 558
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->H:Landroidx/compose/foundation/text/KeyCommand;

    .line 559
    .line 560
    goto :goto_11

    .line 561
    :cond_29
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->B:J

    .line 562
    .line 563
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    if-eqz v5, :cond_1e

    .line 568
    .line 569
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->b0:Landroidx/compose/foundation/text/KeyCommand;

    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_2a
    :goto_c
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->o:Landroidx/compose/foundation/text/KeyCommand;

    .line 573
    .line 574
    goto :goto_11

    .line 575
    :cond_2b
    :goto_d
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->p:Landroidx/compose/foundation/text/KeyCommand;

    .line 576
    .line 577
    goto :goto_11

    .line 578
    :cond_2c
    :goto_e
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->m:Landroidx/compose/foundation/text/KeyCommand;

    .line 579
    .line 580
    goto :goto_11

    .line 581
    :cond_2d
    :goto_f
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->n:Landroidx/compose/foundation/text/KeyCommand;

    .line 582
    .line 583
    goto :goto_11

    .line 584
    :cond_2e
    if-ne v5, v10, :cond_32

    .line 585
    .line 586
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 591
    .line 592
    .line 593
    move-result-wide v7

    .line 594
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->v:J

    .line 595
    .line 596
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 597
    .line 598
    .line 599
    move-result v5

    .line 600
    if-nez v5, :cond_31

    .line 601
    .line 602
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->J:J

    .line 603
    .line 604
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    if-eqz v5, :cond_2f

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_2f
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->w:J

    .line 612
    .line 613
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-nez v5, :cond_30

    .line 618
    .line 619
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->K:J

    .line 620
    .line 621
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    if-eqz v5, :cond_1e

    .line 626
    .line 627
    :cond_30
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->Y:Landroidx/compose/foundation/text/KeyCommand;

    .line 628
    .line 629
    goto :goto_11

    .line 630
    :cond_31
    :goto_10
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->X:Landroidx/compose/foundation/text/KeyCommand;

    .line 631
    .line 632
    goto :goto_11

    .line 633
    :cond_32
    if-ne v5, v3, :cond_1e

    .line 634
    .line 635
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    invoke-static {v5}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 640
    .line 641
    .line 642
    move-result-wide v7

    .line 643
    sget-wide v12, Landroidx/compose/ui/input/key/Key;->t:J

    .line 644
    .line 645
    invoke-static {v7, v8, v12, v13}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    if-eqz v5, :cond_1e

    .line 650
    .line 651
    sget-object v5, Landroidx/compose/foundation/text/KeyCommand;->J:Landroidx/compose/foundation/text/KeyCommand;

    .line 652
    .line 653
    :goto_11
    if-nez v5, :cond_66

    .line 654
    .line 655
    sget-object v5, Landroidx/compose/foundation/text/KeyMappingKt;->a:Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1;

    .line 656
    .line 657
    iget-object v5, v5, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$1$1;->a:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 658
    .line 659
    invoke-static {p1}, Landroidx/compose/foundation/text/KeyModifiersKt;->a(Landroid/view/KeyEvent;)I

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    if-ne v5, v11, :cond_33

    .line 664
    .line 665
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 670
    .line 671
    .line 672
    move-result-wide v5

    .line 673
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->o:J

    .line 674
    .line 675
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 676
    .line 677
    .line 678
    move-result p1

    .line 679
    if-eqz p1, :cond_65

    .line 680
    .line 681
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->f0:Landroidx/compose/foundation/text/KeyCommand;

    .line 682
    .line 683
    goto/16 :goto_24

    .line 684
    .line 685
    :cond_33
    if-ne v5, v6, :cond_3a

    .line 686
    .line 687
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 688
    .line 689
    .line 690
    move-result p1

    .line 691
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 692
    .line 693
    .line 694
    move-result-wide v5

    .line 695
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->j:J

    .line 696
    .line 697
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 698
    .line 699
    .line 700
    move-result p1

    .line 701
    if-nez p1, :cond_39

    .line 702
    .line 703
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->x:J

    .line 704
    .line 705
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    if-nez p1, :cond_39

    .line 710
    .line 711
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->N:J

    .line 712
    .line 713
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    if-eqz p1, :cond_34

    .line 718
    .line 719
    goto :goto_12

    .line 720
    :cond_34
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->l:J

    .line 721
    .line 722
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 723
    .line 724
    .line 725
    move-result p1

    .line 726
    if-eqz p1, :cond_35

    .line 727
    .line 728
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->C:Landroidx/compose/foundation/text/KeyCommand;

    .line 729
    .line 730
    goto/16 :goto_24

    .line 731
    .line 732
    :cond_35
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->m:J

    .line 733
    .line 734
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 735
    .line 736
    .line 737
    move-result p1

    .line 738
    if-eqz p1, :cond_36

    .line 739
    .line 740
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->D:Landroidx/compose/foundation/text/KeyCommand;

    .line 741
    .line 742
    goto/16 :goto_24

    .line 743
    .line 744
    :cond_36
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->i:J

    .line 745
    .line 746
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    if-eqz p1, :cond_37

    .line 751
    .line 752
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->K:Landroidx/compose/foundation/text/KeyCommand;

    .line 753
    .line 754
    goto/16 :goto_24

    .line 755
    .line 756
    :cond_37
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->n:J

    .line 757
    .line 758
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 759
    .line 760
    .line 761
    move-result p1

    .line 762
    if-eqz p1, :cond_38

    .line 763
    .line 764
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->f0:Landroidx/compose/foundation/text/KeyCommand;

    .line 765
    .line 766
    goto/16 :goto_24

    .line 767
    .line 768
    :cond_38
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->o:J

    .line 769
    .line 770
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 771
    .line 772
    .line 773
    move-result p1

    .line 774
    if-eqz p1, :cond_65

    .line 775
    .line 776
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->e0:Landroidx/compose/foundation/text/KeyCommand;

    .line 777
    .line 778
    goto/16 :goto_24

    .line 779
    .line 780
    :cond_39
    :goto_12
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->B:Landroidx/compose/foundation/text/KeyCommand;

    .line 781
    .line 782
    goto/16 :goto_24

    .line 783
    .line 784
    :cond_3a
    if-ne v5, v10, :cond_4c

    .line 785
    .line 786
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 787
    .line 788
    .line 789
    move-result p1

    .line 790
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 791
    .line 792
    .line 793
    move-result-wide v5

    .line 794
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->f:J

    .line 795
    .line 796
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 797
    .line 798
    .line 799
    move-result p1

    .line 800
    if-nez p1, :cond_4b

    .line 801
    .line 802
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->H:J

    .line 803
    .line 804
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 805
    .line 806
    .line 807
    move-result p1

    .line 808
    if-eqz p1, :cond_3b

    .line 809
    .line 810
    goto/16 :goto_1a

    .line 811
    .line 812
    :cond_3b
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->g:J

    .line 813
    .line 814
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 815
    .line 816
    .line 817
    move-result p1

    .line 818
    if-nez p1, :cond_4a

    .line 819
    .line 820
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->I:J

    .line 821
    .line 822
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 823
    .line 824
    .line 825
    move-result p1

    .line 826
    if-eqz p1, :cond_3c

    .line 827
    .line 828
    goto/16 :goto_19

    .line 829
    .line 830
    :cond_3c
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->d:J

    .line 831
    .line 832
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 833
    .line 834
    .line 835
    move-result p1

    .line 836
    if-nez p1, :cond_49

    .line 837
    .line 838
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->F:J

    .line 839
    .line 840
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 841
    .line 842
    .line 843
    move-result p1

    .line 844
    if-eqz p1, :cond_3d

    .line 845
    .line 846
    goto/16 :goto_18

    .line 847
    .line 848
    :cond_3d
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->e:J

    .line 849
    .line 850
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 851
    .line 852
    .line 853
    move-result p1

    .line 854
    if-nez p1, :cond_48

    .line 855
    .line 856
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->G:J

    .line 857
    .line 858
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 859
    .line 860
    .line 861
    move-result p1

    .line 862
    if-eqz p1, :cond_3e

    .line 863
    .line 864
    goto/16 :goto_17

    .line 865
    .line 866
    :cond_3e
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->C:J

    .line 867
    .line 868
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 869
    .line 870
    .line 871
    move-result p1

    .line 872
    if-nez p1, :cond_47

    .line 873
    .line 874
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->L:J

    .line 875
    .line 876
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 877
    .line 878
    .line 879
    move-result p1

    .line 880
    if-eqz p1, :cond_3f

    .line 881
    .line 882
    goto :goto_16

    .line 883
    :cond_3f
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->D:J

    .line 884
    .line 885
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 886
    .line 887
    .line 888
    move-result p1

    .line 889
    if-nez p1, :cond_46

    .line 890
    .line 891
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->M:J

    .line 892
    .line 893
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 894
    .line 895
    .line 896
    move-result p1

    .line 897
    if-eqz p1, :cond_40

    .line 898
    .line 899
    goto :goto_15

    .line 900
    :cond_40
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->v:J

    .line 901
    .line 902
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 903
    .line 904
    .line 905
    move-result p1

    .line 906
    if-nez p1, :cond_45

    .line 907
    .line 908
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->J:J

    .line 909
    .line 910
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 911
    .line 912
    .line 913
    move-result p1

    .line 914
    if-eqz p1, :cond_41

    .line 915
    .line 916
    goto :goto_14

    .line 917
    :cond_41
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->w:J

    .line 918
    .line 919
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 920
    .line 921
    .line 922
    move-result p1

    .line 923
    if-nez p1, :cond_44

    .line 924
    .line 925
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->K:J

    .line 926
    .line 927
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 928
    .line 929
    .line 930
    move-result p1

    .line 931
    if-eqz p1, :cond_42

    .line 932
    .line 933
    goto :goto_13

    .line 934
    :cond_42
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->x:J

    .line 935
    .line 936
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 937
    .line 938
    .line 939
    move-result p1

    .line 940
    if-nez p1, :cond_43

    .line 941
    .line 942
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->N:J

    .line 943
    .line 944
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 945
    .line 946
    .line 947
    move-result p1

    .line 948
    if-eqz p1, :cond_65

    .line 949
    .line 950
    :cond_43
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->C:Landroidx/compose/foundation/text/KeyCommand;

    .line 951
    .line 952
    goto/16 :goto_24

    .line 953
    .line 954
    :cond_44
    :goto_13
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->Y:Landroidx/compose/foundation/text/KeyCommand;

    .line 955
    .line 956
    goto/16 :goto_24

    .line 957
    .line 958
    :cond_45
    :goto_14
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->X:Landroidx/compose/foundation/text/KeyCommand;

    .line 959
    .line 960
    goto/16 :goto_24

    .line 961
    .line 962
    :cond_46
    :goto_15
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->Q:Landroidx/compose/foundation/text/KeyCommand;

    .line 963
    .line 964
    goto/16 :goto_24

    .line 965
    .line 966
    :cond_47
    :goto_16
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->P:Landroidx/compose/foundation/text/KeyCommand;

    .line 967
    .line 968
    goto/16 :goto_24

    .line 969
    .line 970
    :cond_48
    :goto_17
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->O:Landroidx/compose/foundation/text/KeyCommand;

    .line 971
    .line 972
    goto/16 :goto_24

    .line 973
    .line 974
    :cond_49
    :goto_18
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->N:Landroidx/compose/foundation/text/KeyCommand;

    .line 975
    .line 976
    goto/16 :goto_24

    .line 977
    .line 978
    :cond_4a
    :goto_19
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->M:Landroidx/compose/foundation/text/KeyCommand;

    .line 979
    .line 980
    goto/16 :goto_24

    .line 981
    .line 982
    :cond_4b
    :goto_1a
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->L:Landroidx/compose/foundation/text/KeyCommand;

    .line 983
    .line 984
    goto/16 :goto_24

    .line 985
    .line 986
    :cond_4c
    if-nez v5, :cond_65

    .line 987
    .line 988
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 989
    .line 990
    .line 991
    move-result p1

    .line 992
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 993
    .line 994
    .line 995
    move-result-wide v5

    .line 996
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->f:J

    .line 997
    .line 998
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 999
    .line 1000
    .line 1001
    move-result p1

    .line 1002
    if-nez p1, :cond_64

    .line 1003
    .line 1004
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->H:J

    .line 1005
    .line 1006
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1007
    .line 1008
    .line 1009
    move-result p1

    .line 1010
    if-eqz p1, :cond_4d

    .line 1011
    .line 1012
    goto/16 :goto_23

    .line 1013
    .line 1014
    :cond_4d
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->g:J

    .line 1015
    .line 1016
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1017
    .line 1018
    .line 1019
    move-result p1

    .line 1020
    if-nez p1, :cond_63

    .line 1021
    .line 1022
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->I:J

    .line 1023
    .line 1024
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1025
    .line 1026
    .line 1027
    move-result p1

    .line 1028
    if-eqz p1, :cond_4e

    .line 1029
    .line 1030
    goto/16 :goto_22

    .line 1031
    .line 1032
    :cond_4e
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->d:J

    .line 1033
    .line 1034
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1035
    .line 1036
    .line 1037
    move-result p1

    .line 1038
    if-nez p1, :cond_62

    .line 1039
    .line 1040
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->F:J

    .line 1041
    .line 1042
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1043
    .line 1044
    .line 1045
    move-result p1

    .line 1046
    if-eqz p1, :cond_4f

    .line 1047
    .line 1048
    goto/16 :goto_21

    .line 1049
    .line 1050
    :cond_4f
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->e:J

    .line 1051
    .line 1052
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1053
    .line 1054
    .line 1055
    move-result p1

    .line 1056
    if-nez p1, :cond_61

    .line 1057
    .line 1058
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->G:J

    .line 1059
    .line 1060
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1061
    .line 1062
    .line 1063
    move-result p1

    .line 1064
    if-eqz p1, :cond_50

    .line 1065
    .line 1066
    goto/16 :goto_20

    .line 1067
    .line 1068
    :cond_50
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->h:J

    .line 1069
    .line 1070
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1071
    .line 1072
    .line 1073
    move-result p1

    .line 1074
    if-eqz p1, :cond_51

    .line 1075
    .line 1076
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->w:Landroidx/compose/foundation/text/KeyCommand;

    .line 1077
    .line 1078
    goto/16 :goto_24

    .line 1079
    .line 1080
    :cond_51
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->C:J

    .line 1081
    .line 1082
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1083
    .line 1084
    .line 1085
    move-result p1

    .line 1086
    if-nez p1, :cond_60

    .line 1087
    .line 1088
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->L:J

    .line 1089
    .line 1090
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1091
    .line 1092
    .line 1093
    move-result p1

    .line 1094
    if-eqz p1, :cond_52

    .line 1095
    .line 1096
    goto/16 :goto_1f

    .line 1097
    .line 1098
    :cond_52
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->D:J

    .line 1099
    .line 1100
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1101
    .line 1102
    .line 1103
    move-result p1

    .line 1104
    if-nez p1, :cond_5f

    .line 1105
    .line 1106
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->M:J

    .line 1107
    .line 1108
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1109
    .line 1110
    .line 1111
    move-result p1

    .line 1112
    if-eqz p1, :cond_53

    .line 1113
    .line 1114
    goto/16 :goto_1e

    .line 1115
    .line 1116
    :cond_53
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->v:J

    .line 1117
    .line 1118
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1119
    .line 1120
    .line 1121
    move-result p1

    .line 1122
    if-nez p1, :cond_5e

    .line 1123
    .line 1124
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->J:J

    .line 1125
    .line 1126
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1127
    .line 1128
    .line 1129
    move-result p1

    .line 1130
    if-eqz p1, :cond_54

    .line 1131
    .line 1132
    goto/16 :goto_1d

    .line 1133
    .line 1134
    :cond_54
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->w:J

    .line 1135
    .line 1136
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1137
    .line 1138
    .line 1139
    move-result p1

    .line 1140
    if-nez p1, :cond_5d

    .line 1141
    .line 1142
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->K:J

    .line 1143
    .line 1144
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1145
    .line 1146
    .line 1147
    move-result p1

    .line 1148
    if-eqz p1, :cond_55

    .line 1149
    .line 1150
    goto :goto_1c

    .line 1151
    :cond_55
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->r:J

    .line 1152
    .line 1153
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1154
    .line 1155
    .line 1156
    move-result p1

    .line 1157
    if-nez p1, :cond_5c

    .line 1158
    .line 1159
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->E:J

    .line 1160
    .line 1161
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1162
    .line 1163
    .line 1164
    move-result p1

    .line 1165
    if-eqz p1, :cond_56

    .line 1166
    .line 1167
    goto :goto_1b

    .line 1168
    :cond_56
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->s:J

    .line 1169
    .line 1170
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1171
    .line 1172
    .line 1173
    move-result p1

    .line 1174
    if-eqz p1, :cond_57

    .line 1175
    .line 1176
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->E:Landroidx/compose/foundation/text/KeyCommand;

    .line 1177
    .line 1178
    goto :goto_24

    .line 1179
    :cond_57
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->t:J

    .line 1180
    .line 1181
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1182
    .line 1183
    .line 1184
    move-result p1

    .line 1185
    if-eqz p1, :cond_58

    .line 1186
    .line 1187
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->F:Landroidx/compose/foundation/text/KeyCommand;

    .line 1188
    .line 1189
    goto :goto_24

    .line 1190
    :cond_58
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->A:J

    .line 1191
    .line 1192
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1193
    .line 1194
    .line 1195
    move-result p1

    .line 1196
    if-eqz p1, :cond_59

    .line 1197
    .line 1198
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->C:Landroidx/compose/foundation/text/KeyCommand;

    .line 1199
    .line 1200
    goto :goto_24

    .line 1201
    :cond_59
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->y:J

    .line 1202
    .line 1203
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1204
    .line 1205
    .line 1206
    move-result p1

    .line 1207
    if-eqz p1, :cond_5a

    .line 1208
    .line 1209
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->D:Landroidx/compose/foundation/text/KeyCommand;

    .line 1210
    .line 1211
    goto :goto_24

    .line 1212
    :cond_5a
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->z:J

    .line 1213
    .line 1214
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1215
    .line 1216
    .line 1217
    move-result p1

    .line 1218
    if-eqz p1, :cond_5b

    .line 1219
    .line 1220
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->B:Landroidx/compose/foundation/text/KeyCommand;

    .line 1221
    .line 1222
    goto :goto_24

    .line 1223
    :cond_5b
    sget-wide v7, Landroidx/compose/ui/input/key/Key;->p:J

    .line 1224
    .line 1225
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 1226
    .line 1227
    .line 1228
    move-result p1

    .line 1229
    if-eqz p1, :cond_65

    .line 1230
    .line 1231
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->d0:Landroidx/compose/foundation/text/KeyCommand;

    .line 1232
    .line 1233
    goto :goto_24

    .line 1234
    :cond_5c
    :goto_1b
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->c0:Landroidx/compose/foundation/text/KeyCommand;

    .line 1235
    .line 1236
    goto :goto_24

    .line 1237
    :cond_5d
    :goto_1c
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->r:Landroidx/compose/foundation/text/KeyCommand;

    .line 1238
    .line 1239
    goto :goto_24

    .line 1240
    :cond_5e
    :goto_1d
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->q:Landroidx/compose/foundation/text/KeyCommand;

    .line 1241
    .line 1242
    goto :goto_24

    .line 1243
    :cond_5f
    :goto_1e
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->y:Landroidx/compose/foundation/text/KeyCommand;

    .line 1244
    .line 1245
    goto :goto_24

    .line 1246
    :cond_60
    :goto_1f
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->x:Landroidx/compose/foundation/text/KeyCommand;

    .line 1247
    .line 1248
    goto :goto_24

    .line 1249
    :cond_61
    :goto_20
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->v:Landroidx/compose/foundation/text/KeyCommand;

    .line 1250
    .line 1251
    goto :goto_24

    .line 1252
    :cond_62
    :goto_21
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->u:Landroidx/compose/foundation/text/KeyCommand;

    .line 1253
    .line 1254
    goto :goto_24

    .line 1255
    :cond_63
    :goto_22
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->l:Landroidx/compose/foundation/text/KeyCommand;

    .line 1256
    .line 1257
    goto :goto_24

    .line 1258
    :cond_64
    :goto_23
    sget-object v4, Landroidx/compose/foundation/text/KeyCommand;->k:Landroidx/compose/foundation/text/KeyCommand;

    .line 1259
    .line 1260
    :cond_65
    :goto_24
    move-object v5, v4

    .line 1261
    :cond_66
    :goto_25
    if-eqz v5, :cond_5

    .line 1262
    .line 1263
    iget-boolean p1, v5, Landroidx/compose/foundation/text/KeyCommand;->j:Z

    .line 1264
    .line 1265
    if-eqz p1, :cond_67

    .line 1266
    .line 1267
    if-nez v1, :cond_67

    .line 1268
    .line 1269
    goto/16 :goto_2

    .line 1270
    .line 1271
    :cond_67
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1272
    .line 1273
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 1277
    .line 1278
    new-instance v1, Landroidx/compose/foundation/text/i;

    .line 1279
    .line 1280
    invoke-direct {v1, v5, p0, p1}, Landroidx/compose/foundation/text/i;-><init>(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 1284
    .line 1285
    iget-object v4, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->c:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1286
    .line 1287
    iget-object v5, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->g:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1288
    .line 1289
    iget-object v6, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->a:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1290
    .line 1291
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v6

    .line 1295
    invoke-direct {v2, v4, v5, v6, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    iget-wide v0, v2, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1302
    .line 1303
    iget-wide v5, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 1304
    .line 1305
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v0

    .line 1309
    iget-object v1, v2, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->g:Landroidx/compose/ui/text/AnnotatedString;

    .line 1310
    .line 1311
    if-eqz v0, :cond_68

    .line 1312
    .line 1313
    iget-object v0, v4, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 1314
    .line 1315
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-nez v0, :cond_69

    .line 1320
    .line 1321
    :cond_68
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->k:Lkotlin/jvm/functions/Function1;

    .line 1322
    .line 1323
    iget-wide v5, v2, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->f:J

    .line 1324
    .line 1325
    const/4 v2, 0x4

    .line 1326
    invoke-static {v4, v1, v5, v6, v2}, Landroidx/compose/ui/text/input/TextFieldValue;->a(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    :cond_69
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput;->h:Landroidx/compose/foundation/text/UndoManager;

    .line 1334
    .line 1335
    if-eqz p0, :cond_6a

    .line 1336
    .line 1337
    iput-boolean v3, p0, Landroidx/compose/foundation/text/UndoManager;->e:Z

    .line 1338
    .line 1339
    :cond_6a
    iget-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 1340
    .line 1341
    :goto_26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1342
    .line 1343
    .line 1344
    move-result-object p0

    .line 1345
    return-object p0
.end method
