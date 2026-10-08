.class final Landroidx/media3/ui/PlayerControlViewLayoutManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public final a:Landroidx/media3/ui/PlayerControlView;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Landroid/view/ViewGroup;

.field public final e:Landroid/view/ViewGroup;

.field public final f:Landroid/view/ViewGroup;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/view/ViewGroup;

.field public final i:Landroid/view/ViewGroup;

.field public final j:Landroid/view/ViewGroup;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Landroid/animation/AnimatorSet;

.field public final n:Landroid/animation/AnimatorSet;

.field public final o:Landroid/animation/AnimatorSet;

.field public final p:Landroid/animation/AnimatorSet;

.field public final q:Landroid/animation/AnimatorSet;

.field public final r:Landroid/animation/ValueAnimator;

.field public final s:Landroid/animation/ValueAnimator;

.field public final t:Landroidx/media3/ui/d;

.field public final u:Landroidx/media3/ui/d;

.field public final v:Landroidx/media3/ui/d;

.field public final w:Landroidx/media3/ui/d;

.field public final x:Landroidx/media3/ui/d;

.field public final y:Landroidx/media3/ui/f;

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 5
    .line 6
    new-instance v0, Landroidx/media3/ui/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->t:Landroidx/media3/ui/d;

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/ui/d;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {v0, p0, v2}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->u:Landroidx/media3/ui/d;

    .line 21
    .line 22
    new-instance v0, Landroidx/media3/ui/d;

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-direct {v0, p0, v3}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->v:Landroidx/media3/ui/d;

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/ui/d;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    invoke-direct {v0, p0, v3}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->w:Landroidx/media3/ui/d;

    .line 37
    .line 38
    new-instance v0, Landroidx/media3/ui/d;

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    invoke-direct {v0, p0, v3}, Landroidx/media3/ui/d;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->x:Landroidx/media3/ui/d;

    .line 45
    .line 46
    new-instance v0, Landroidx/media3/ui/f;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Landroidx/media3/ui/f;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->y:Landroidx/media3/ui/f;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 55
    .line 56
    iput v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 57
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->z:Ljava/util/ArrayList;

    .line 64
    .line 65
    const v3, 0x7f0a00dd

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/view/ViewGroup;

    .line 73
    .line 74
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c:Landroid/view/ViewGroup;

    .line 75
    .line 76
    const v3, 0x7f0a00b7

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    .line 84
    .line 85
    const v3, 0x7f0a00b2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/view/ViewGroup;

    .line 93
    .line 94
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    .line 95
    .line 96
    const v3, 0x7f0a00c3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroid/view/ViewGroup;

    .line 104
    .line 105
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    .line 106
    .line 107
    const v3, 0x7f0a00b0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroid/view/ViewGroup;

    .line 115
    .line 116
    iput-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e:Landroid/view/ViewGroup;

    .line 117
    .line 118
    const v4, 0x7f0a00dc

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Landroid/view/ViewGroup;

    .line 126
    .line 127
    iput-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j:Landroid/view/ViewGroup;

    .line 128
    .line 129
    const v4, 0x7f0a00cf

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k:Landroid/view/View;

    .line 137
    .line 138
    const v5, 0x7f0a00af

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Landroid/view/ViewGroup;

    .line 146
    .line 147
    iput-object v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g:Landroid/view/ViewGroup;

    .line 148
    .line 149
    const v5, 0x7f0a00ba

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Landroid/view/ViewGroup;

    .line 157
    .line 158
    iput-object v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h:Landroid/view/ViewGroup;

    .line 159
    .line 160
    const v5, 0x7f0a00bb

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Landroid/view/ViewGroup;

    .line 168
    .line 169
    iput-object v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i:Landroid/view/ViewGroup;

    .line 170
    .line 171
    const v5, 0x7f0a00c7

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iput-object v5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->l:Landroid/view/View;

    .line 179
    .line 180
    const v6, 0x7f0a00c6

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    if-eqz v5, :cond_0

    .line 188
    .line 189
    if-eqz v6, :cond_0

    .line 190
    .line 191
    new-instance v7, Landroidx/media3/ui/a;

    .line 192
    .line 193
    invoke-direct {v7, v2, p0}, Landroidx/media3/ui/a;-><init>(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    new-instance v5, Landroidx/media3/ui/a;

    .line 200
    .line 201
    invoke-direct {v5, v2, p0}, Landroidx/media3/ui/a;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    :cond_0
    const/4 v5, 0x2

    .line 208
    new-array v6, v5, [F

    .line 209
    .line 210
    fill-array-data v6, :array_0

    .line 211
    .line 212
    .line 213
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    .line 218
    .line 219
    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    .line 224
    .line 225
    new-instance v7, Landroidx/media3/ui/e;

    .line 226
    .line 227
    invoke-direct {v7, p0, v2}, Landroidx/media3/ui/e;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    .line 234
    .line 235
    invoke-direct {v2, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    .line 240
    .line 241
    new-array v2, v5, [F

    .line 242
    .line 243
    fill-array-data v2, :array_1

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    .line 251
    .line 252
    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    .line 257
    .line 258
    new-instance v7, Landroidx/media3/ui/e;

    .line 259
    .line 260
    invoke-direct {v7, p0, v1}, Landroidx/media3/ui/e;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;

    .line 267
    .line 268
    invoke-direct {v1, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const v7, 0x7f0700a8

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    const v9, 0x7f0700ad

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    sub-float/2addr v8, v9

    .line 293
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 298
    .line 299
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 300
    .line 301
    .line 302
    iput-object v7, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->m:Landroid/animation/AnimatorSet;

    .line 303
    .line 304
    const-wide/16 v9, 0xfa

    .line 305
    .line 306
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 307
    .line 308
    .line 309
    new-instance v11, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;

    .line 310
    .line 311
    invoke-direct {v11, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    const/4 v11, 0x0

    .line 322
    invoke-static {v4, v11, v8}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    invoke-static {v3, v11, v8}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 335
    .line 336
    .line 337
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 338
    .line 339
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v7, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n:Landroid/animation/AnimatorSet;

    .line 343
    .line 344
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 345
    .line 346
    .line 347
    new-instance v12, Landroidx/media3/ui/PlayerControlViewLayoutManager$4;

    .line 348
    .line 349
    invoke-direct {v12, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager$4;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v4, v8, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    invoke-static {v3, v8, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    invoke-virtual {v7, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 368
    .line 369
    .line 370
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 371
    .line 372
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 373
    .line 374
    .line 375
    iput-object v7, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->o:Landroid/animation/AnimatorSet;

    .line 376
    .line 377
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 378
    .line 379
    .line 380
    new-instance v12, Landroidx/media3/ui/PlayerControlViewLayoutManager$5;

    .line 381
    .line 382
    invoke-direct {v12, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager$5;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-static {v4, v11, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {v3, v11, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 405
    .line 406
    .line 407
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 408
    .line 409
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    .line 411
    .line 412
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->p:Landroid/animation/AnimatorSet;

    .line 413
    .line 414
    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 415
    .line 416
    .line 417
    new-instance v6, Landroidx/media3/ui/PlayerControlViewLayoutManager$6;

    .line 418
    .line 419
    invoke-direct {v6, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$6;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {v4, v8, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    invoke-static {v3, v8, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 442
    .line 443
    .line 444
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 445
    .line 446
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 447
    .line 448
    .line 449
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->q:Landroid/animation/AnimatorSet;

    .line 450
    .line 451
    invoke-virtual {p1, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 452
    .line 453
    .line 454
    new-instance v6, Landroidx/media3/ui/PlayerControlViewLayoutManager$7;

    .line 455
    .line 456
    invoke-direct {v6, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$7;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-static {v4, v1, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-static {v3, v1, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 479
    .line 480
    .line 481
    new-array p1, v5, [F

    .line 482
    .line 483
    fill-array-data p1, :array_2

    .line 484
    .line 485
    .line 486
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->r:Landroid/animation/ValueAnimator;

    .line 491
    .line 492
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 493
    .line 494
    .line 495
    new-instance v1, Landroidx/media3/ui/e;

    .line 496
    .line 497
    invoke-direct {v1, p0, v0}, Landroidx/media3/ui/e;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    .line 502
    .line 503
    new-instance v0, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;

    .line 504
    .line 505
    invoke-direct {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$8;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    .line 510
    .line 511
    new-array p1, v5, [F

    .line 512
    .line 513
    fill-array-data p1, :array_3

    .line 514
    .line 515
    .line 516
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->s:Landroid/animation/ValueAnimator;

    .line 521
    .line 522
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    .line 524
    .line 525
    new-instance v0, Landroidx/media3/ui/e;

    .line 526
    .line 527
    invoke-direct {v0, p0, v5}, Landroidx/media3/ui/e;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 531
    .line 532
    .line 533
    new-instance v0, Landroidx/media3/ui/PlayerControlViewLayoutManager$9;

    .line 534
    .line 535
    invoke-direct {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager$9;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    nop

    .line 543
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static c(Landroid/view/View;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    .line 19
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 20
    .line 21
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 22
    .line 23
    add-int/2addr v1, p0

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1

    .line 26
    :cond_1
    return v0
.end method

.method public static d(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    const-string p1, "translationY"

    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static j(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0x7f0a00b0

    .line 6
    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const v0, 0x7f0a00c2

    .line 11
    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const v0, 0x7f0a00ce

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    .line 20
    const v0, 0x7f0a00c5

    .line 21
    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const v0, 0x7f0a00d2

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    const v0, 0x7f0a00d3

    .line 31
    .line 32
    .line 33
    if-eq p0, v0, :cond_1

    .line 34
    .line 35
    const v0, 0x7f0a00bc

    .line 36
    .line 37
    .line 38
    if-eq p0, v0, :cond_1

    .line 39
    .line 40
    const v0, 0x7f0a00bd

    .line 41
    .line 42
    .line 43
    if-ne p0, v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0

    .line 48
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 49
    return p0
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    sub-float v3, v0, p1

    .line 13
    .line 14
    mul-float/2addr v3, v2

    .line 15
    float-to-int v2, v3

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j:Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sub-float v2, v0, p1

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sub-float/2addr v0, p1

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final b(Landroid/view/View;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->z:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final e(JLjava/lang/Runnable;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 8
    .line 9
    invoke-virtual {p0, p3, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->x:Landroidx/media3/ui/d;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->u:Landroidx/media3/ui/d;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->w:Landroidx/media3/ui/d;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->v:Landroidx/media3/ui/d;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_3

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->x:Landroidx/media3/ui/d;

    .line 23
    .line 24
    int-to-long v2, v0

    .line 25
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e(JLjava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->v:Landroidx/media3/ui/d;

    .line 35
    .line 36
    const-wide/16 v1, 0x7d0

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e(JLjava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->w:Landroidx/media3/ui/d;

    .line 43
    .line 44
    int-to-long v2, v0

    .line 45
    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->e(JLjava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final h(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->z:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    const/16 p0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->j(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x4

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    check-cast v0, Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/media3/ui/PlayerView$ComponentListener;->l:Landroidx/media3/ui/PlayerView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->C:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->q:Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->p:Landroid/animation/AnimatorSet;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
