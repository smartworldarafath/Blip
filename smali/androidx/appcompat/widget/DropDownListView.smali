.class abstract Landroidx/appcompat/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/DropDownListView$Api33Impl;,
        Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;,
        Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;,
        Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;,
        Landroidx/appcompat/widget/DropDownListView$Api30Impl;
    }
.end annotation


# instance fields
.field public final j:Landroid/graphics/Rect;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

.field public q:Z

.field public final r:Z

.field public s:Z

.field public t:Landroidx/core/widget/ListViewAutoScrollHelper;

.field public u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f04013c

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView;->j:Landroid/graphics/Rect;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->k:I

    .line 17
    .line 18
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->l:I

    .line 19
    .line 20
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->m:I

    .line 21
    .line 22
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->n:I

    .line 23
    .line 24
    iput-boolean p2, p0, Landroidx/appcompat/widget/DropDownListView;->r:Z

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eq v3, v4, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq v3, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq v3, v0, :cond_0

    .line 18
    .line 19
    move v0, v4

    .line 20
    move v4, v5

    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    :goto_0
    move v0, v5

    .line 24
    move v4, v0

    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    move v0, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v0, v5

    .line 30
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-gez v6, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    float-to-int v7, v7

    .line 42
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    float-to-int v6, v6

    .line 47
    invoke-virtual {v1, v7, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v9, -0x1

    .line 52
    if-ne v8, v9, :cond_4

    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_4
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sub-int v0, v8, v0

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    int-to-float v7, v7

    .line 67
    int-to-float v6, v6

    .line 68
    iput-boolean v4, v1, Landroidx/appcompat/widget/DropDownListView;->s:Z

    .line 69
    .line 70
    invoke-virtual {v1, v7, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 83
    .line 84
    .line 85
    iget v0, v1, Landroidx/appcompat/widget/DropDownListView;->o:I

    .line 86
    .line 87
    if-eq v0, v9, :cond_6

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    sub-int/2addr v0, v11

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    if-eq v0, v10, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iput v8, v1, Landroidx/appcompat/widget/DropDownListView;->o:I

    .line 112
    .line 113
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    int-to-float v0, v0

    .line 118
    sub-float v0, v7, v0

    .line 119
    .line 120
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    int-to-float v11, v11

    .line 125
    sub-float v11, v6, v11

    .line 126
    .line 127
    invoke-virtual {v10, v0, v11}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    if-eqz v11, :cond_8

    .line 144
    .line 145
    if-eq v8, v9, :cond_8

    .line 146
    .line 147
    move v12, v4

    .line 148
    goto :goto_2

    .line 149
    :cond_8
    move v12, v5

    .line 150
    :goto_2
    if-eqz v12, :cond_9

    .line 151
    .line 152
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 153
    .line 154
    .line 155
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    move/from16 v16, v4

    .line 172
    .line 173
    iget-object v4, v1, Landroidx/appcompat/widget/DropDownListView;->j:Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-virtual {v4, v0, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    .line 177
    .line 178
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 179
    .line 180
    iget v13, v1, Landroidx/appcompat/widget/DropDownListView;->k:I

    .line 181
    .line 182
    sub-int/2addr v0, v13

    .line 183
    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 184
    .line 185
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 186
    .line 187
    iget v13, v1, Landroidx/appcompat/widget/DropDownListView;->l:I

    .line 188
    .line 189
    sub-int/2addr v0, v13

    .line 190
    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 191
    .line 192
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 193
    .line 194
    iget v13, v1, Landroidx/appcompat/widget/DropDownListView;->m:I

    .line 195
    .line 196
    add-int/2addr v0, v13

    .line 197
    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 198
    .line 199
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 200
    .line 201
    iget v13, v1, Landroidx/appcompat/widget/DropDownListView;->n:I

    .line 202
    .line 203
    add-int/2addr v0, v13

    .line 204
    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 205
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    const/16 v13, 0x21

    .line 209
    .line 210
    if-lt v0, v13, :cond_a

    .line 211
    .line 212
    move-object v0, v1

    .line 213
    check-cast v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 214
    .line 215
    invoke-static {v0}, Landroidx/appcompat/widget/DropDownListView$Api33Impl;->a(Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    goto :goto_3

    .line 220
    :cond_a
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->a:Ljava/lang/reflect/Field;

    .line 221
    .line 222
    if-eqz v0, :cond_b

    .line 223
    .line 224
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    :cond_b
    move v0, v5

    .line 234
    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    if-eq v14, v0, :cond_e

    .line 239
    .line 240
    xor-int/lit8 v0, v0, 0x1

    .line 241
    .line 242
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 243
    .line 244
    if-lt v14, v13, :cond_c

    .line 245
    .line 246
    move-object v13, v1

    .line 247
    check-cast v13, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 248
    .line 249
    invoke-static {v13, v0}, Landroidx/appcompat/widget/DropDownListView$Api33Impl;->b(Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;Z)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_c
    sget-object v13, Landroidx/appcompat/widget/DropDownListView$PreApi33Impl;->a:Ljava/lang/reflect/Field;

    .line 254
    .line 255
    if-eqz v13, :cond_d

    .line 256
    .line 257
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v13, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :catch_1
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :cond_d
    :goto_4
    if-eq v8, v9, :cond_e

    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 272
    .line 273
    .line 274
    :cond_e
    if-eqz v12, :cond_10

    .line 275
    .line 276
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-nez v12, :cond_f

    .line 289
    .line 290
    move/from16 v12, v16

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_f
    move v12, v5

    .line 294
    :goto_5
    invoke-virtual {v11, v12, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {v11, v0, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 298
    .line 299
    .line 300
    :cond_10
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_11

    .line 305
    .line 306
    if-eq v8, v9, :cond_11

    .line 307
    .line 308
    invoke-virtual {v0, v7, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 309
    .line 310
    .line 311
    :cond_11
    iget-object v0, v1, Landroidx/appcompat/widget/DropDownListView;->p:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 312
    .line 313
    if-eqz v0, :cond_12

    .line 314
    .line 315
    iput-boolean v5, v0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->k:Z

    .line 316
    .line 317
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 318
    .line 319
    .line 320
    move/from16 v4, v16

    .line 321
    .line 322
    if-ne v3, v4, :cond_13

    .line 323
    .line 324
    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 329
    .line 330
    .line 331
    :cond_13
    move v4, v5

    .line 332
    const/4 v0, 0x1

    .line 333
    :goto_6
    if-eqz v0, :cond_14

    .line 334
    .line 335
    if-eqz v4, :cond_15

    .line 336
    .line 337
    :cond_14
    iput-boolean v5, v1, Landroidx/appcompat/widget/DropDownListView;->s:Z

    .line 338
    .line 339
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 343
    .line 344
    .line 345
    iget v3, v1, Landroidx/appcompat/widget/DropDownListView;->o:I

    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    sub-int/2addr v3, v4

    .line 352
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    if-eqz v3, :cond_15

    .line 357
    .line 358
    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    .line 359
    .line 360
    .line 361
    :cond_15
    iget-object v3, v1, Landroidx/appcompat/widget/DropDownListView;->t:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 362
    .line 363
    if-eqz v0, :cond_17

    .line 364
    .line 365
    if-nez v3, :cond_16

    .line 366
    .line 367
    new-instance v3, Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 368
    .line 369
    move-object v4, v1

    .line 370
    check-cast v4, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 371
    .line 372
    invoke-direct {v3, v4}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;)V

    .line 373
    .line 374
    .line 375
    iput-object v3, v1, Landroidx/appcompat/widget/DropDownListView;->t:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 376
    .line 377
    :cond_16
    iget-object v3, v1, Landroidx/appcompat/widget/DropDownListView;->t:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 378
    .line 379
    iget-boolean v4, v3, Landroidx/core/widget/AutoScrollHelper;->y:Z

    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    iput-boolean v4, v3, Landroidx/core/widget/AutoScrollHelper;->y:Z

    .line 383
    .line 384
    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_17
    if-eqz v3, :cond_19

    .line 389
    .line 390
    iget-boolean v1, v3, Landroidx/core/widget/AutoScrollHelper;->y:Z

    .line 391
    .line 392
    if-eqz v1, :cond_18

    .line 393
    .line 394
    invoke-virtual {v3}, Landroidx/core/widget/AutoScrollHelper;->d()V

    .line 395
    .line 396
    .line 397
    :cond_18
    iput-boolean v5, v3, Landroidx/core/widget/AutoScrollHelper;->y:Z

    .line 398
    .line 399
    :cond_19
    :goto_7
    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->j:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->p:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->k:Z

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/appcompat/widget/DropDownListView;->s:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->hasFocus()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public isFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->q:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    :cond_1
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_2
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroidx/appcompat/widget/DropDownListView;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x9

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eq p1, v3, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eq p1, v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-int v0, p1, v0

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 79
    .line 80
    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v4, 0x1e

    .line 84
    .line 85
    if-lt v2, v4, :cond_3

    .line 86
    .line 87
    sget-boolean v2, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->d:Z

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :try_start_0
    sget-object v3, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->a:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    filled-new-array {v4, v0, v5, v2, v2}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->b:Ljava/lang/reflect/Method;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v0, Landroidx/appcompat/widget/DropDownListView$Api30Impl;->c:Ljava/lang/reflect/Method;

    .line 124
    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-exception p1

    .line 138
    goto :goto_1

    .line 139
    :catch_1
    move-exception p1

    .line 140
    goto :goto_2

    .line 141
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    sub-int/2addr v0, v2

    .line 158
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 159
    .line 160
    .line 161
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView;->s:Z

    .line 168
    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    .line 183
    .line 184
    :cond_5
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-int v1, v1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Landroidx/appcompat/widget/DropDownListView;->o:I

    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->j:Landroidx/appcompat/widget/DropDownListView;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-object v2, v1, Landroidx/appcompat/widget/DropDownListView;->u:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public setListSelectionHidden(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    new-instance v1, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->j:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, v1, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->j:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->k:Z

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :cond_1
    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->p:Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 26
    .line 27
    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->k:I

    .line 43
    .line 44
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->l:I

    .line 47
    .line 48
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->m:I

    .line 51
    .line 52
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    iput p1, p0, Landroidx/appcompat/widget/DropDownListView;->n:I

    .line 55
    .line 56
    return-void
.end method
