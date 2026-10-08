.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public f0:I

.field public g0:Z

.field public h0:I


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 9
    .line 10
    aput-object v4, v2, v3

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 14
    .line 15
    aput-object v6, v2, v5

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 19
    .line 20
    aput-object v8, v2, v7

    .line 21
    .line 22
    const/4 v9, 0x3

    .line 23
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 24
    .line 25
    aput-object v10, v2, v9

    .line 26
    .line 27
    move v11, v3

    .line 28
    :goto_0
    array-length v12, v2

    .line 29
    if-ge v11, v12, :cond_0

    .line 30
    .line 31
    aget-object v12, v2, v11

    .line 32
    .line 33
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    iput-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 38
    .line 39
    add-int/lit8 v11, v11, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 43
    .line 44
    if-ltz v11, :cond_19

    .line 45
    .line 46
    const/4 v12, 0x4

    .line 47
    if-ge v11, v12, :cond_19

    .line 48
    .line 49
    aget-object v2, v2, v11

    .line 50
    .line 51
    move v11, v3

    .line 52
    :goto_1
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 53
    .line 54
    if-ge v11, v13, :cond_6

    .line 55
    .line 56
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 57
    .line 58
    aget-object v13, v13, v11

    .line 59
    .line 60
    iget-boolean v14, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->g0:Z

    .line 61
    .line 62
    if-nez v14, :cond_1

    .line 63
    .line 64
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-nez v14, :cond_1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_1
    iget v14, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 72
    .line 73
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    if-eqz v14, :cond_2

    .line 76
    .line 77
    if-ne v14, v7, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    aget-object v12, v12, v3

    .line 82
    .line 83
    if-ne v12, v15, :cond_3

    .line 84
    .line 85
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 86
    .line 87
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 88
    .line 89
    if-eqz v12, :cond_3

    .line 90
    .line 91
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 92
    .line 93
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 94
    .line 95
    if-eqz v12, :cond_3

    .line 96
    .line 97
    :goto_2
    move v11, v7

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    if-eq v14, v5, :cond_4

    .line 100
    .line 101
    if-ne v14, v9, :cond_5

    .line 102
    .line 103
    :cond_4
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 104
    .line 105
    aget-object v12, v12, v7

    .line 106
    .line 107
    if-ne v12, v15, :cond_5

    .line 108
    .line 109
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 110
    .line 111
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 112
    .line 113
    if-eqz v12, :cond_5

    .line 114
    .line 115
    iget-object v12, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 116
    .line 117
    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 118
    .line 119
    if-eqz v12, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    const/4 v12, 0x4

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    move v11, v3

    .line 127
    :goto_4
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_8

    .line 132
    .line 133
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_7

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    move v12, v3

    .line 141
    goto :goto_6

    .line 142
    :cond_8
    :goto_5
    move v12, v7

    .line 143
    :goto_6
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    if-nez v13, :cond_a

    .line 148
    .line 149
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_9

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_9
    move v13, v3

    .line 157
    goto :goto_8

    .line 158
    :cond_a
    :goto_7
    move v13, v7

    .line 159
    :goto_8
    if-nez v11, :cond_f

    .line 160
    .line 161
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 162
    .line 163
    if-nez v11, :cond_b

    .line 164
    .line 165
    if-nez v12, :cond_e

    .line 166
    .line 167
    :cond_b
    if-ne v11, v5, :cond_c

    .line 168
    .line 169
    if-nez v13, :cond_e

    .line 170
    .line 171
    :cond_c
    if-ne v11, v7, :cond_d

    .line 172
    .line 173
    if-nez v12, :cond_e

    .line 174
    .line 175
    :cond_d
    if-ne v11, v9, :cond_f

    .line 176
    .line 177
    if-eqz v13, :cond_f

    .line 178
    .line 179
    :cond_e
    move v11, v7

    .line 180
    goto :goto_9

    .line 181
    :cond_f
    move v11, v3

    .line 182
    :goto_9
    if-nez v11, :cond_10

    .line 183
    .line 184
    const/4 v11, 0x4

    .line 185
    goto :goto_a

    .line 186
    :cond_10
    const/4 v11, 0x5

    .line 187
    :goto_a
    move v12, v3

    .line 188
    :goto_b
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 189
    .line 190
    if-ge v12, v13, :cond_15

    .line 191
    .line 192
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 193
    .line 194
    aget-object v13, v13, v12

    .line 195
    .line 196
    iget-boolean v14, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->g0:Z

    .line 197
    .line 198
    if-nez v14, :cond_11

    .line 199
    .line 200
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b()Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-nez v14, :cond_11

    .line 205
    .line 206
    goto :goto_f

    .line 207
    :cond_11
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 208
    .line 209
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 210
    .line 211
    aget-object v14, v14, v15

    .line 212
    .line 213
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/LinearSystem;->j(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 218
    .line 219
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 220
    .line 221
    aget-object v13, v13, v15

    .line 222
    .line 223
    iput-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 224
    .line 225
    iget-object v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 226
    .line 227
    if-eqz v9, :cond_12

    .line 228
    .line 229
    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 230
    .line 231
    if-ne v9, v0, :cond_12

    .line 232
    .line 233
    iget v9, v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_12
    move v9, v3

    .line 237
    :goto_c
    if-eqz v15, :cond_14

    .line 238
    .line 239
    if-ne v15, v5, :cond_13

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_13
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 243
    .line 244
    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->h0:I

    .line 245
    .line 246
    add-int/2addr v15, v9

    .line 247
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->l()Landroidx/constraintlayout/solver/SolverVariable;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    iput v3, v7, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 256
    .line 257
    invoke-virtual {v5, v13, v14, v7, v15}, Landroidx/constraintlayout/solver/ArrayRow;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 261
    .line 262
    .line 263
    goto :goto_e

    .line 264
    :cond_14
    :goto_d
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 265
    .line 266
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->h0:I

    .line 267
    .line 268
    sub-int/2addr v7, v9

    .line 269
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->k()Landroidx/constraintlayout/solver/ArrayRow;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/LinearSystem;->l()Landroidx/constraintlayout/solver/SolverVariable;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    iput v3, v15, Landroidx/constraintlayout/solver/SolverVariable;->d:I

    .line 278
    .line 279
    invoke-virtual {v13, v5, v14, v15, v7}, Landroidx/constraintlayout/solver/ArrayRow;->d(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/LinearSystem;->c(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 283
    .line 284
    .line 285
    :goto_e
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 286
    .line 287
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->h0:I

    .line 288
    .line 289
    add-int/2addr v7, v9

    .line 290
    invoke-virtual {v1, v5, v14, v7, v11}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 291
    .line 292
    .line 293
    :goto_f
    add-int/lit8 v12, v12, 0x1

    .line 294
    .line 295
    const/4 v5, 0x2

    .line 296
    const/4 v7, 0x1

    .line 297
    const/4 v9, 0x3

    .line 298
    goto :goto_b

    .line 299
    :cond_15
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->f0:I

    .line 300
    .line 301
    const/16 v5, 0x8

    .line 302
    .line 303
    if-nez v2, :cond_16

    .line 304
    .line 305
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 306
    .line 307
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 308
    .line 309
    invoke-virtual {v1, v2, v6, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 310
    .line 311
    .line 312
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 313
    .line 314
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 315
    .line 316
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 317
    .line 318
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 319
    .line 320
    const/4 v6, 0x4

    .line 321
    invoke-virtual {v1, v2, v5, v3, v6}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 322
    .line 323
    .line 324
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 325
    .line 326
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 327
    .line 328
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 329
    .line 330
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 331
    .line 332
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_16
    const/4 v7, 0x1

    .line 337
    if-ne v2, v7, :cond_17

    .line 338
    .line 339
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 340
    .line 341
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 342
    .line 343
    invoke-virtual {v1, v2, v6, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 347
    .line 348
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 349
    .line 350
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 351
    .line 352
    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 353
    .line 354
    const/4 v6, 0x4

    .line 355
    invoke-virtual {v1, v2, v5, v3, v6}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 356
    .line 357
    .line 358
    iget-object v2, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 359
    .line 360
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 361
    .line 362
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 363
    .line 364
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 365
    .line 366
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_17
    const/4 v4, 0x2

    .line 371
    if-ne v2, v4, :cond_18

    .line 372
    .line 373
    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 374
    .line 375
    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 376
    .line 377
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 378
    .line 379
    .line 380
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 381
    .line 382
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 383
    .line 384
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 385
    .line 386
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 387
    .line 388
    const/4 v5, 0x4

    .line 389
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 393
    .line 394
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 395
    .line 396
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 397
    .line 398
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 399
    .line 400
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_18
    const/4 v4, 0x3

    .line 405
    if-ne v2, v4, :cond_19

    .line 406
    .line 407
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 408
    .line 409
    iget-object v4, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 410
    .line 411
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 412
    .line 413
    .line 414
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 415
    .line 416
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 417
    .line 418
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 419
    .line 420
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 421
    .line 422
    const/4 v5, 0x4

    .line 423
    invoke-virtual {v1, v2, v4, v3, v5}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 427
    .line 428
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 429
    .line 430
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 431
    .line 432
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->g:Landroidx/constraintlayout/solver/SolverVariable;

    .line 433
    .line 434
    invoke-virtual {v1, v2, v0, v3, v3}, Landroidx/constraintlayout/solver/LinearSystem;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 435
    .line 436
    .line 437
    :cond_19
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[Barrier] "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, " {"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->e0:I

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/HelperWidget;->d0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 22
    .line 23
    aget-object v2, v2, v1

    .line 24
    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    const-string v3, ", "

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->X:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p0, "}"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
