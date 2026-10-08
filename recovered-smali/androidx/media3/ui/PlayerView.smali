.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;,
        Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;,
        Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;,
        Landroidx/media3/ui/PlayerView$ComponentListener;
    }
.end annotation


# static fields
.field public static final synthetic P:I


# instance fields
.field public final A:Ljava/lang/Object;

.field public B:Landroidx/media3/common/Player;

.field public C:Z

.field public D:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

.field public E:I

.field public F:I

.field public G:Landroid/graphics/drawable/Drawable;

.field public H:I

.field public I:Z

.field public J:Ljava/lang/CharSequence;

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public final j:Landroidx/media3/ui/PlayerView$ComponentListener;

.field public final k:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Z

.field public final o:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final p:Landroid/widget/ImageView;

.field public final q:Landroid/widget/ImageView;

.field public final r:Landroidx/media3/ui/SubtitleView;

.field public final s:Landroid/view/View;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroidx/media3/ui/PlayerControlView;

.field public final v:Landroid/widget/FrameLayout;

.field public final w:Landroid/widget/FrameLayout;

.field public final x:Landroid/os/Handler;

.field public final y:Ljava/lang/Class;

.field public final z:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Landroidx/media3/ui/PlayerView;->j:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 12
    .line 13
    new-instance v3, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->x:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->l:Landroid/view/View;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 35
    .line 36
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerView;->n:Z

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->o:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->q:Landroid/widget/ImageView;

    .line 43
    .line 44
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->r:Landroidx/media3/ui/SubtitleView;

    .line 45
    .line 46
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->t:Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->y:Ljava/lang/Class;

    .line 57
    .line 58
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->z:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Ljava/lang/Object;

    .line 61
    .line 62
    new-instance v1, Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const v3, 0x7f080077

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    const p1, 0x7f06006b

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const v4, 0x7f0d0031

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    const/high16 v3, 0x40000

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 112
    .line 113
    .line 114
    const v3, 0x7f0a00b4

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 122
    .line 123
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 124
    .line 125
    if-eqz v3, :cond_1

    .line 126
    .line 127
    invoke-virtual {v3, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 128
    .line 129
    .line 130
    :cond_1
    const v4, 0x7f0a00d7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iput-object v4, p0, Landroidx/media3/ui/PlayerView;->l:Landroid/view/View;

    .line 138
    .line 139
    const/16 v4, 0x22

    .line 140
    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    const/4 v6, -0x1

    .line 146
    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    new-instance v6, Landroid/view/SurfaceView;

    .line 150
    .line 151
    invoke-direct {v6, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    if-lt v7, v4, :cond_2

    .line 157
    .line 158
    invoke-static {v6}, Lac;->l(Landroid/view/SurfaceView;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    iput-object v6, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v1}, Landroid/view/View;->setClickable(Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_3
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 177
    .line 178
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerView;->n:Z

    .line 179
    .line 180
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 181
    .line 182
    if-ne v2, v4, :cond_4

    .line 183
    .line 184
    new-instance v2, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    move-object v2, v0

    .line 191
    :goto_1
    iput-object v2, p0, Landroidx/media3/ui/PlayerView;->o:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 192
    .line 193
    const v2, 0x7f0a00ac

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Landroid/widget/FrameLayout;

    .line 201
    .line 202
    iput-object v2, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/FrameLayout;

    .line 203
    .line 204
    const v2, 0x7f0a00c8

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Landroid/widget/FrameLayout;

    .line 212
    .line 213
    iput-object v2, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/FrameLayout;

    .line 214
    .line 215
    const v2, 0x7f0a00c0

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Landroid/widget/ImageView;

    .line 223
    .line 224
    iput-object v2, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 225
    .line 226
    iput v1, p0, Landroidx/media3/ui/PlayerView;->F:I

    .line 227
    .line 228
    const/4 v2, 0x1

    .line 229
    :try_start_0
    const-class v3, Landroidx/media3/exoplayer/ExoPlayer;

    .line 230
    .line 231
    const-class v4, Landroidx/media3/exoplayer/image/ImageOutput;

    .line 232
    .line 233
    const-string v5, "setImageOutput"

    .line 234
    .line 235
    new-array v6, v2, [Ljava/lang/Class;

    .line 236
    .line 237
    aput-object v4, v6, v1

    .line 238
    .line 239
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-array v7, v2, [Ljava/lang/Class;

    .line 248
    .line 249
    aput-object v4, v7, v1

    .line 250
    .line 251
    new-instance v4, Ltd;

    .line 252
    .line 253
    invoke-direct {v4, p0}, Ltd;-><init>(Landroidx/media3/ui/PlayerView;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_2

    .line 261
    :catch_0
    move-object v3, v0

    .line 262
    move-object v4, v3

    .line 263
    move-object v5, v4

    .line 264
    :goto_2
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->y:Ljava/lang/Class;

    .line 265
    .line 266
    iput-object v5, p0, Landroidx/media3/ui/PlayerView;->z:Ljava/lang/reflect/Method;

    .line 267
    .line 268
    iput-object v4, p0, Landroidx/media3/ui/PlayerView;->A:Ljava/lang/Object;

    .line 269
    .line 270
    const v3, 0x7f0a00ad

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    check-cast v3, Landroid/widget/ImageView;

    .line 278
    .line 279
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->q:Landroid/widget/ImageView;

    .line 280
    .line 281
    if-eqz v3, :cond_5

    .line 282
    .line 283
    move v3, v2

    .line 284
    goto :goto_3

    .line 285
    :cond_5
    move v3, v1

    .line 286
    :goto_3
    iput v3, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 287
    .line 288
    const v3, 0x7f0a00da

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Landroidx/media3/ui/SubtitleView;

    .line 296
    .line 297
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->r:Landroidx/media3/ui/SubtitleView;

    .line 298
    .line 299
    if-eqz v3, :cond_6

    .line 300
    .line 301
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->a()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Landroidx/media3/ui/SubtitleView;->b()V

    .line 305
    .line 306
    .line 307
    :cond_6
    const v3, 0x7f0a00b1

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    .line 315
    .line 316
    const/16 v4, 0x8

    .line 317
    .line 318
    if-eqz v3, :cond_7

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    :cond_7
    iput v1, p0, Landroidx/media3/ui/PlayerView;->H:I

    .line 324
    .line 325
    const v3, 0x7f0a00b9

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    check-cast v3, Landroid/widget/TextView;

    .line 333
    .line 334
    iput-object v3, p0, Landroidx/media3/ui/PlayerView;->t:Landroid/widget/TextView;

    .line 335
    .line 336
    if-eqz v3, :cond_8

    .line 337
    .line 338
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    :cond_8
    const v3, 0x7f0a00b5

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    check-cast v4, Landroidx/media3/ui/PlayerControlView;

    .line 349
    .line 350
    const v5, 0x7f0a00b6

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    if-eqz v4, :cond_9

    .line 358
    .line 359
    iput-object v4, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_9
    if-eqz v5, :cond_a

    .line 363
    .line 364
    new-instance v0, Landroidx/media3/ui/PlayerControlView;

    .line 365
    .line 366
    invoke-direct {v0, p1}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 370
    .line 371
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    check-cast p1, Landroid/view/ViewGroup;

    .line 386
    .line 387
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_a
    iput-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 399
    .line 400
    :goto_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 401
    .line 402
    if-eqz p1, :cond_b

    .line 403
    .line 404
    const/16 v0, 0x1388

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_b
    move v0, v1

    .line 408
    :goto_5
    iput v0, p0, Landroidx/media3/ui/PlayerView;->K:I

    .line 409
    .line 410
    iput-boolean v2, p0, Landroidx/media3/ui/PlayerView;->N:Z

    .line 411
    .line 412
    iput-boolean v2, p0, Landroidx/media3/ui/PlayerView;->L:Z

    .line 413
    .line 414
    iput-boolean v2, p0, Landroidx/media3/ui/PlayerView;->M:Z

    .line 415
    .line 416
    if-eqz p1, :cond_c

    .line 417
    .line 418
    move v1, v2

    .line 419
    :cond_c
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 420
    .line 421
    if-eqz p1, :cond_f

    .line 422
    .line 423
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 424
    .line 425
    iget v0, p1, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    .line 426
    .line 427
    const/4 v1, 0x3

    .line 428
    if-eq v0, v1, :cond_e

    .line 429
    .line 430
    const/4 v1, 0x2

    .line 431
    if-ne v0, v1, :cond_d

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_d
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i(I)V

    .line 438
    .line 439
    .line 440
    :cond_e
    :goto_6
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 441
    .line 442
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->j:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 443
    .line 444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    :cond_f
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public static a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->o()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->l:Landroid/view/View;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->o()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setImageOutput(Landroidx/media3/common/Player;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->y:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->z:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->A:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->A:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x1e

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x4

    .line 25
    invoke-virtual {p0, v0}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const v0, 0x106000d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/common/Player;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/media3/common/Player;->i()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x22

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->o:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->O:Z

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p1, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->a:Landroid/window/SurfaceSyncGroup;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Lac;->m(Landroid/window/SurfaceSyncGroup;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    iput-object p0, p1, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->a:Landroid/window/SurfaceSyncGroup;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/common/BasePlayer;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/common/Player;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v1, 0x13

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x10e

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/16 v1, 0x16

    .line 43
    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x10f

    .line 47
    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x14

    .line 51
    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    const/16 v1, 0x10d

    .line 55
    .line 56
    if-eq v0, v1, :cond_2

    .line 57
    .line 58
    const/16 v1, 0x15

    .line 59
    .line 60
    if-eq v0, v1, :cond_2

    .line 61
    .line 62
    const/16 v1, 0x10c

    .line 63
    .line 64
    if-eq v0, v1, :cond_2

    .line 65
    .line 66
    const/16 v1, 0x17

    .line 67
    .line 68
    if-ne v0, v1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v0, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move v0, v3

    .line 74
    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerControlView;->d(Landroid/view/KeyEvent;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    :goto_2
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 114
    .line 115
    .line 116
    return v3

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 126
    .line 127
    .line 128
    :cond_6
    return v2
.end method

.method public final e(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->M:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-gtz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->g()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->h(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->q:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v2, :cond_2

    .line 17
    .line 18
    if-lez v3, :cond_2

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    int-to-float v3, v3

    .line 22
    div-float/2addr v2, v3

    .line 23
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 24
    .line 25
    iget v4, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    div-float/2addr v2, v3

    .line 41
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_2
    return v0
.end method

.method public final g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->y()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->L:Z

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 16
    .line 17
    const/16 v3, 0x11

    .line 18
    .line 19
    check-cast v2, Landroidx/media3/common/BasePlayer;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 28
    .line 29
    invoke-interface {v2}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    :cond_1
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    if-eq v0, v2, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Landroidx/media3/common/Player;->i()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    :cond_2
    return v1

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    return p0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Landroidx/media3/common/AdOverlayInfo;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    new-instance v1, Landroidx/media3/common/AdOverlayInfo;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Landroidx/media3/common/AdOverlayInfo;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    const-string v0, "exo_ad_overlay must be present for ad playback"

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public getArtworkDisplayMode()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 2
    .line 3
    return p0
.end method

.method public getControllerAutoShow()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->L:Z

    .line 2
    .line 3
    return p0
.end method

.method public getControllerHideOnTouch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->N:Z

    .line 2
    .line 3
    return p0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerView;->K:I

    .line 2
    .line 3
    return p0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->G:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getImageDisplayMode()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerView;->F:I

    .line 2
    .line 3
    return p0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->r:Landroidx/media3/ui/SubtitleView;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUseArtwork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public getUseController()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->K:I

    .line 14
    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->l()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->m()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->N:Z

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->g()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->n()Landroidx/media3/common/VideoSize;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 11
    .line 12
    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->a:I

    .line 13
    .line 14
    iget v2, v0, Landroidx/media3/common/VideoSize;->b:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    int-to-float v1, v1

    .line 23
    iget v0, v0, Landroidx/media3/common/VideoSize;->c:F

    .line 24
    .line 25
    mul-float/2addr v1, v0

    .line 26
    int-to-float v0, v2

    .line 27
    div-float/2addr v1, v0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    move v1, v3

    .line 30
    :goto_2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->n:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move v3, v1

    .line 36
    :goto_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 37
    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 41
    .line 42
    .line 43
    :cond_4
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Landroidx/media3/common/Player;->y()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget v1, p0, Landroidx/media3/ui/PlayerView;->H:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    if-ne v1, v4, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 25
    .line 26
    invoke-interface {p0}, Landroidx/media3/common/Player;->i()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v4, v2

    .line 34
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/16 v2, 0x8

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->N:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f11004c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f11005a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->J:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Landroidx/media3/common/Player;->t()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 22
    .line 23
    .line 24
    :cond_1
    const/16 p0, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v4, v0

    .line 10
    check-cast v4, Landroidx/media3/common/BasePlayer;

    .line 11
    .line 12
    invoke-virtual {v4, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v4, v4, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    move v4, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v3

    .line 33
    :goto_0
    iget-boolean v5, p0, Landroidx/media3/ui/PlayerView;->I:Z

    .line 34
    .line 35
    const v6, 0x106000d

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->q:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object v9, p0, Landroidx/media3/ui/PlayerView;->l:Landroid/view/View;

    .line 42
    .line 43
    if-nez v5, :cond_4

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    :cond_1
    if-eqz v8, :cond_2

    .line 50
    .line 51
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-eqz v9, :cond_3

    .line 58
    .line 59
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    .line 63
    .line 64
    .line 65
    :cond_4
    if-nez v4, :cond_5

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_5
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    move-object v4, p1

    .line 74
    check-cast v4, Landroidx/media3/common/BasePlayer;

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-interface {p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-virtual {p1, v1}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    move p1, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move p1, v3

    .line 96
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez p1, :cond_8

    .line 101
    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    if-eqz v9, :cond_7

    .line 105
    .line 106
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 113
    .line 114
    if-eqz v9, :cond_a

    .line 115
    .line 116
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-ne v5, v7, :cond_a

    .line 121
    .line 122
    if-nez v4, :cond_9

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_a

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_a

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    :goto_2
    move v2, v3

    .line 139
    :goto_3
    if-eqz v1, :cond_c

    .line 140
    .line 141
    if-nez p1, :cond_c

    .line 142
    .line 143
    if-eqz v2, :cond_c

    .line 144
    .line 145
    if-eqz v9, :cond_b

    .line 146
    .line 147
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_b
    if-eqz v4, :cond_d

    .line 151
    .line 152
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->o()V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_c
    if-eqz p1, :cond_d

    .line 160
    .line 161
    if-nez v1, :cond_d

    .line 162
    .line 163
    if-eqz v2, :cond_d

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    .line 166
    .line 167
    .line 168
    :cond_d
    :goto_4
    if-nez p1, :cond_12

    .line 169
    .line 170
    if-nez v1, :cond_12

    .line 171
    .line 172
    iget p1, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 173
    .line 174
    if-eqz p1, :cond_12

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    if-eqz v0, :cond_10

    .line 180
    .line 181
    const/16 p1, 0x12

    .line 182
    .line 183
    move-object v1, v0

    .line 184
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_e

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_e
    invoke-interface {v0}, Landroidx/media3/common/Player;->R()Landroidx/media3/common/MediaMetadata;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->f:[B

    .line 198
    .line 199
    if-nez p1, :cond_f

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_f
    array-length v0, p1

    .line 203
    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->f(Landroid/graphics/drawable/Drawable;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    :cond_10
    :goto_5
    if-eqz v3, :cond_11

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_11
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->G:Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->f(Landroid/graphics/drawable/Drawable;)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    if-eqz p0, :cond_12

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_12
    if-eqz v8, :cond_13

    .line 233
    .line 234
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    :cond_13
    :goto_6
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v2, :cond_5

    .line 22
    .line 23
    if-gtz v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    int-to-float v2, v2

    .line 27
    int-to-float v1, v1

    .line 28
    div-float/2addr v2, v1

    .line 29
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    iget v3, p0, Landroidx/media3/ui/PlayerView;->F:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    div-float v2, v1, v2

    .line 47
    .line 48
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_4

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_0
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final performClick()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->i()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->q:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 12
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/ui/PlayerView;->E:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->n(Z)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setAnimationEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->L:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->M:Z

    .line 2
    .line 3
    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->N:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroidx/media3/ui/PlayerView;->K:I

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->g()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->h(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->D:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->D:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->t:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->J:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->G:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->G:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->n(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->O:Z

    .line 2
    .line 3
    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->j:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->o(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->p:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/ui/PlayerView;->F:I

    .line 12
    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/ui/PlayerView;->F:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->o()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->I:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->I:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->n(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/common/Player;->L()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    move v0, v3

    .line 35
    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 39
    .line 40
    if-ne v0, p1, :cond_3

    .line 41
    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :cond_3
    const/4 v1, 0x0

    .line 45
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 46
    .line 47
    const/16 v5, 0x1b

    .line 48
    .line 49
    iget-object v6, p0, Landroidx/media3/ui/PlayerView;->j:Landroidx/media3/ui/PlayerView$ComponentListener;

    .line 50
    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->B(Landroidx/media3/common/Player$Listener;)V

    .line 54
    .line 55
    .line 56
    move-object v7, v0

    .line 57
    check-cast v7, Landroidx/media3/common/BasePlayer;

    .line 58
    .line 59
    invoke-virtual {v7, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_5

    .line 64
    .line 65
    instance-of v7, v4, Landroid/view/TextureView;

    .line 66
    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    move-object v7, v4

    .line 70
    check-cast v7, Landroid/view/TextureView;

    .line 71
    .line 72
    invoke-interface {v0, v7}, Landroidx/media3/common/Player;->m(Landroid/view/TextureView;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    instance-of v7, v4, Landroid/view/SurfaceView;

    .line 77
    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    move-object v7, v4

    .line 81
    check-cast v7, Landroid/view/SurfaceView;

    .line 82
    .line 83
    invoke-interface {v0, v7}, Landroidx/media3/common/Player;->G(Landroid/view/SurfaceView;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_3
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->y:Ljava/lang/Class;

    .line 87
    .line 88
    if-eqz v7, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    :try_start_0
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->z:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_0
    move-exception p0

    .line 114
    new-instance p1, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_6
    :goto_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->r:Landroidx/media3/ui/SubtitleView;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 134
    .line 135
    if-eqz v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {v7, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->k()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->n(Z)V

    .line 147
    .line 148
    .line 149
    if-eqz p1, :cond_11

    .line 150
    .line 151
    move-object v1, p1

    .line 152
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 153
    .line 154
    invoke-virtual {v1, v5}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_f

    .line 159
    .line 160
    instance-of v5, v4, Landroid/view/TextureView;

    .line 161
    .line 162
    if-eqz v5, :cond_9

    .line 163
    .line 164
    check-cast v4, Landroid/view/TextureView;

    .line 165
    .line 166
    invoke-interface {p1, v4}, Landroidx/media3/common/Player;->Q(Landroid/view/TextureView;)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    instance-of v5, v4, Landroid/view/SurfaceView;

    .line 171
    .line 172
    if-eqz v5, :cond_a

    .line 173
    .line 174
    check-cast v4, Landroid/view/SurfaceView;

    .line 175
    .line 176
    invoke-interface {p1, v4}, Landroidx/media3/common/Player;->r(Landroid/view/SurfaceView;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    :goto_5
    const/16 v4, 0x1e

    .line 180
    .line 181
    invoke-virtual {v1, v4}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_e

    .line 186
    .line 187
    invoke-interface {p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    iget-object v4, v4, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    .line 192
    .line 193
    move v5, v2

    .line 194
    :goto_6
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-ge v5, v7, :cond_d

    .line 199
    .line 200
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    check-cast v7, Landroidx/media3/common/Tracks$Group;

    .line 205
    .line 206
    iget-object v7, v7, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    .line 207
    .line 208
    iget v7, v7, Landroidx/media3/common/TrackGroup;->c:I

    .line 209
    .line 210
    const/4 v8, 0x2

    .line 211
    if-ne v7, v8, :cond_c

    .line 212
    .line 213
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    check-cast v7, Landroidx/media3/common/Tracks$Group;

    .line 218
    .line 219
    move v8, v2

    .line 220
    :goto_7
    iget-object v9, v7, Landroidx/media3/common/Tracks$Group;->d:[I

    .line 221
    .line 222
    array-length v9, v9

    .line 223
    if-ge v8, v9, :cond_c

    .line 224
    .line 225
    invoke-virtual {v7, v8}, Landroidx/media3/common/Tracks$Group;->a(I)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_b

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_d
    move v3, v2

    .line 239
    :goto_8
    if-eqz v3, :cond_f

    .line 240
    .line 241
    :cond_e
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->j()V

    .line 242
    .line 243
    .line 244
    :cond_f
    if-eqz v0, :cond_10

    .line 245
    .line 246
    const/16 v3, 0x1c

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Landroidx/media3/common/BasePlayer;->V(I)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_10

    .line 253
    .line 254
    invoke-interface {p1}, Landroidx/media3/common/Player;->A()Landroidx/media3/common/text/CueGroup;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iget-object v1, v1, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 261
    .line 262
    .line 263
    :cond_10
    invoke-interface {p1, v6}, Landroidx/media3/common/Player;->H(Landroidx/media3/common/Player$Listener;)V

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setImageOutput(Landroidx/media3/common/Player;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v2}, Landroidx/media3/ui/PlayerView;->e(Z)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_11
    if-eqz v7, :cond_12

    .line 274
    .line 275
    invoke-virtual {v7}, Landroidx/media3/ui/PlayerControlView;->g()V

    .line 276
    .line 277
    .line 278
    :cond_12
    :goto_9
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->k:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerView;->H:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/ui/PlayerView;->H:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->k()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setTimeBarScrubbingEnabled(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->u:Landroidx/media3/ui/PlayerControlView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v3, v0

    .line 13
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v0, v1

    .line 26
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 30
    .line 31
    if-ne v0, p1, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->C:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->B:Landroidx/media3/common/Player;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    if-eqz v2, :cond_6

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView;->g()V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 55
    .line 56
    .line 57
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->m:Landroid/view/View;

    .line 5
    .line 6
    instance-of v0, p0, Landroid/view/SurfaceView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
