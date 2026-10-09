.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field public static final D:Landroid/graphics/Rect;

.field public static final E:[I

.field public static final F:[I


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public final B:Landroid/graphics/RectF;

.field public final C:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field public n:Lcom/google/android/material/chip/ChipDrawable;

.field public o:Landroid/graphics/drawable/InsetDrawable;

.field public p:Landroid/graphics/drawable/RippleDrawable;

.field public q:Landroid/view/View$OnClickListener;

.field public r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public final z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/material/chip/Chip;->D:Landroid/graphics/Rect;

    .line 7
    .line 8
    const v0, 0x10100a1

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/material/chip/Chip;->E:[I

    .line 16
    .line 17
    const v0, 0x101009f

    .line 18
    .line 19
    .line 20
    filled-new-array {v0}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/android/material/chip/Chip;->F:[I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const v1, 0x7f12029f

    .line 6
    .line 7
    .line 8
    const v4, 0x7f0400af

    .line 9
    .line 10
    .line 11
    move-object/from16 v3, p1

    .line 12
    .line 13
    invoke-static {v3, v2, v4, v1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->B:Landroid/graphics/RectF;

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/material/chip/Chip$1;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->C:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const v9, 0x800013

    .line 46
    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "background"

    .line 53
    .line 54
    const-string v3, "http://schemas.android.com/apk/res/android"

    .line 55
    .line 56
    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v5, "Chip"

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string v1, "Do not set the background; Chip manages its own background drawable."

    .line 65
    .line 66
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    const-string v1, "drawableLeft"

    .line 70
    .line 71
    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_1f

    .line 76
    .line 77
    const-string v1, "drawableStart"

    .line 78
    .line 79
    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_1e

    .line 84
    .line 85
    const-string v1, "drawableEnd"

    .line 86
    .line 87
    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v6, "Please set end drawable using R.attr#closeIcon."

    .line 92
    .line 93
    if-nez v1, :cond_1d

    .line 94
    .line 95
    const-string v1, "drawableRight"

    .line 96
    .line 97
    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-nez v1, :cond_1c

    .line 102
    .line 103
    const-string v1, "singleLine"

    .line 104
    .line 105
    invoke-interface {v2, v3, v1, v10}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_1b

    .line 110
    .line 111
    const-string v1, "lines"

    .line 112
    .line 113
    invoke-interface {v2, v3, v1, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ne v1, v10, :cond_1b

    .line 118
    .line 119
    const-string v1, "minLines"

    .line 120
    .line 121
    invoke-interface {v2, v3, v1, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-ne v1, v10, :cond_1b

    .line 126
    .line 127
    const-string v1, "maxLines"

    .line 128
    .line 129
    invoke-interface {v2, v3, v1, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ne v1, v10, :cond_1b

    .line 134
    .line 135
    const-string v1, "gravity"

    .line 136
    .line 137
    invoke-interface {v2, v3, v1, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eq v1, v9, :cond_2

    .line 142
    .line 143
    const-string v1, "Chip text must be vertically center and start aligned"

    .line 144
    .line 145
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_0
    new-instance v11, Lcom/google/android/material/chip/ChipDrawable;

    .line 149
    .line 150
    invoke-direct {v11, v7, v2}, Lcom/google/android/material/chip/ChipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    .line 152
    .line 153
    const/4 v12, 0x0

    .line 154
    new-array v6, v12, [I

    .line 155
    .line 156
    iget-object v1, v11, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 157
    .line 158
    sget-object v3, Lcom/google/android/material/R$styleable;->b:[I

    .line 159
    .line 160
    const v5, 0x7f12029f

    .line 161
    .line 162
    .line 163
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const/16 v13, 0x25

    .line 168
    .line 169
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iput-boolean v5, v11, Lcom/google/android/material/chip/ChipDrawable;->N0:Z

    .line 174
    .line 175
    const/16 v5, 0x18

    .line 176
    .line 177
    iget-object v6, v11, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    iget-object v14, v11, Lcom/google/android/material/chip/ChipDrawable;->G:Landroid/content/res/ColorStateList;

    .line 184
    .line 185
    if-eq v14, v5, :cond_3

    .line 186
    .line 187
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->G:Landroid/content/res/ColorStateList;

    .line 188
    .line 189
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 194
    .line 195
    .line 196
    :cond_3
    const/16 v5, 0xb

    .line 197
    .line 198
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget-object v14, v11, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 203
    .line 204
    if-eq v14, v5, :cond_4

    .line 205
    .line 206
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 207
    .line 208
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 213
    .line 214
    .line 215
    :cond_4
    const/16 v5, 0x13

    .line 216
    .line 217
    const/4 v14, 0x0

    .line 218
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    iget v15, v11, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 223
    .line 224
    cmpl-float v15, v15, v5

    .line 225
    .line 226
    if-eqz v15, :cond_5

    .line 227
    .line 228
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 229
    .line 230
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 234
    .line 235
    .line 236
    :cond_5
    const/16 v5, 0xc

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    if-eqz v15, :cond_6

    .line 243
    .line 244
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->M(F)V

    .line 249
    .line 250
    .line 251
    :cond_6
    const/16 v5, 0x16

    .line 252
    .line 253
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->R(Landroid/content/res/ColorStateList;)V

    .line 258
    .line 259
    .line 260
    const/16 v5, 0x17

    .line 261
    .line 262
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->S(F)V

    .line 267
    .line 268
    .line 269
    const/16 v5, 0x24

    .line 270
    .line 271
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->b0(Landroid/content/res/ColorStateList;)V

    .line 276
    .line 277
    .line 278
    const/4 v5, 0x5

    .line 279
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    if-nez v5, :cond_7

    .line 284
    .line 285
    const-string v5, ""

    .line 286
    .line 287
    :cond_7
    iget-object v15, v11, Lcom/google/android/material/chip/ChipDrawable;->N:Ljava/lang/CharSequence;

    .line 288
    .line 289
    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-nez v15, :cond_8

    .line 294
    .line 295
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->N:Ljava/lang/CharSequence;

    .line 296
    .line 297
    iget-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->t0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 298
    .line 299
    iput-boolean v10, v5, Lcom/google/android/material/internal/TextDrawableHelper;->d:Z

    .line 300
    .line 301
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 305
    .line 306
    .line 307
    :cond_8
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_9

    .line 312
    .line 313
    invoke-virtual {v1, v12, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_9

    .line 318
    .line 319
    new-instance v15, Lcom/google/android/material/resources/TextAppearance;

    .line 320
    .line 321
    invoke-direct {v15, v6, v5}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_9
    const/4 v15, 0x0

    .line 326
    :goto_1
    iget v5, v15, Lcom/google/android/material/resources/TextAppearance;->k:F

    .line 327
    .line 328
    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    iput v5, v15, Lcom/google/android/material/resources/TextAppearance;->k:F

    .line 333
    .line 334
    invoke-virtual {v11, v15}, Lcom/google/android/material/chip/ChipDrawable;->c0(Lcom/google/android/material/resources/TextAppearance;)V

    .line 335
    .line 336
    .line 337
    const/4 v5, 0x3

    .line 338
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 339
    .line 340
    .line 341
    move-result v15

    .line 342
    if-eq v15, v10, :cond_c

    .line 343
    .line 344
    const/16 p1, 0x0

    .line 345
    .line 346
    const/4 v8, 0x2

    .line 347
    if-eq v15, v8, :cond_b

    .line 348
    .line 349
    if-eq v15, v5, :cond_a

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_a
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 353
    .line 354
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_b
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 358
    .line 359
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_c
    const/16 p1, 0x0

    .line 363
    .line 364
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 365
    .line 366
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 367
    .line 368
    :goto_2
    const/16 v5, 0x12

    .line 369
    .line 370
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->Q(Z)V

    .line 375
    .line 376
    .line 377
    const-string v5, "http://schemas.android.com/apk/res-auto"

    .line 378
    .line 379
    if-eqz v2, :cond_d

    .line 380
    .line 381
    const-string v8, "chipIconEnabled"

    .line 382
    .line 383
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    if-eqz v8, :cond_d

    .line 388
    .line 389
    const-string v8, "chipIconVisible"

    .line 390
    .line 391
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    if-nez v8, :cond_d

    .line 396
    .line 397
    const/16 v8, 0xf

    .line 398
    .line 399
    invoke-virtual {v1, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->Q(Z)V

    .line 404
    .line 405
    .line 406
    :cond_d
    const/16 v8, 0xe

    .line 407
    .line 408
    invoke-static {v6, v1, v8}, Lcom/google/android/material/resources/MaterialResources;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->N(Landroid/graphics/drawable/Drawable;)V

    .line 413
    .line 414
    .line 415
    const/16 v8, 0x11

    .line 416
    .line 417
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 418
    .line 419
    .line 420
    move-result v15

    .line 421
    if-eqz v15, :cond_e

    .line 422
    .line 423
    invoke-static {v6, v1, v8}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->P(Landroid/content/res/ColorStateList;)V

    .line 428
    .line 429
    .line 430
    :cond_e
    const/16 v8, 0x10

    .line 431
    .line 432
    const/high16 v15, -0x40800000    # -1.0f

    .line 433
    .line 434
    invoke-virtual {v1, v8, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->O(F)V

    .line 439
    .line 440
    .line 441
    const/16 v8, 0x1f

    .line 442
    .line 443
    invoke-virtual {v1, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->Y(Z)V

    .line 448
    .line 449
    .line 450
    if-eqz v2, :cond_f

    .line 451
    .line 452
    const-string v8, "closeIconEnabled"

    .line 453
    .line 454
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v8

    .line 458
    if-eqz v8, :cond_f

    .line 459
    .line 460
    const-string v8, "closeIconVisible"

    .line 461
    .line 462
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    if-nez v8, :cond_f

    .line 467
    .line 468
    const/16 v8, 0x1a

    .line 469
    .line 470
    invoke-virtual {v1, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->Y(Z)V

    .line 475
    .line 476
    .line 477
    :cond_f
    const/16 v8, 0x19

    .line 478
    .line 479
    invoke-static {v6, v1, v8}, Lcom/google/android/material/resources/MaterialResources;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->T(Landroid/graphics/drawable/Drawable;)V

    .line 484
    .line 485
    .line 486
    const/16 v8, 0x1e

    .line 487
    .line 488
    invoke-static {v6, v1, v8}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->X(Landroid/content/res/ColorStateList;)V

    .line 493
    .line 494
    .line 495
    const/16 v8, 0x1c

    .line 496
    .line 497
    invoke-virtual {v1, v8, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->V(F)V

    .line 502
    .line 503
    .line 504
    const/4 v8, 0x6

    .line 505
    invoke-virtual {v1, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->I(Z)V

    .line 510
    .line 511
    .line 512
    const/16 v8, 0xa

    .line 513
    .line 514
    invoke-virtual {v1, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    invoke-virtual {v11, v8}, Lcom/google/android/material/chip/ChipDrawable;->L(Z)V

    .line 519
    .line 520
    .line 521
    if-eqz v2, :cond_10

    .line 522
    .line 523
    const-string v8, "checkedIconEnabled"

    .line 524
    .line 525
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    if-eqz v8, :cond_10

    .line 530
    .line 531
    const-string v8, "checkedIconVisible"

    .line 532
    .line 533
    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    if-nez v5, :cond_10

    .line 538
    .line 539
    const/16 v5, 0x8

    .line 540
    .line 541
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->L(Z)V

    .line 546
    .line 547
    .line 548
    :cond_10
    const/4 v5, 0x7

    .line 549
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->J(Landroid/graphics/drawable/Drawable;)V

    .line 554
    .line 555
    .line 556
    const/16 v5, 0x9

    .line 557
    .line 558
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 559
    .line 560
    .line 561
    move-result v8

    .line 562
    if-eqz v8, :cond_11

    .line 563
    .line 564
    invoke-static {v6, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->K(Landroid/content/res/ColorStateList;)V

    .line 569
    .line 570
    .line 571
    :cond_11
    const/16 v5, 0x27

    .line 572
    .line 573
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 574
    .line 575
    .line 576
    move-result v8

    .line 577
    if-eqz v8, :cond_12

    .line 578
    .line 579
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_12

    .line 584
    .line 585
    invoke-static {v6, v5}, Lcom/google/android/material/animation/MotionSpec;->a(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    goto :goto_3

    .line 590
    :cond_12
    move-object/from16 v5, p1

    .line 591
    .line 592
    :goto_3
    iput-object v5, v11, Lcom/google/android/material/chip/ChipDrawable;->d0:Lcom/google/android/material/animation/MotionSpec;

    .line 593
    .line 594
    const/16 v5, 0x21

    .line 595
    .line 596
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    if-eqz v8, :cond_13

    .line 601
    .line 602
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_13

    .line 607
    .line 608
    invoke-static {v6, v5}, Lcom/google/android/material/animation/MotionSpec;->a(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    goto :goto_4

    .line 613
    :cond_13
    move-object/from16 v8, p1

    .line 614
    .line 615
    :goto_4
    iput-object v8, v11, Lcom/google/android/material/chip/ChipDrawable;->e0:Lcom/google/android/material/animation/MotionSpec;

    .line 616
    .line 617
    const/16 v5, 0x15

    .line 618
    .line 619
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    iget v6, v11, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 624
    .line 625
    cmpl-float v6, v6, v5

    .line 626
    .line 627
    if-eqz v6, :cond_14

    .line 628
    .line 629
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 630
    .line 631
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 635
    .line 636
    .line 637
    :cond_14
    const/16 v5, 0x23

    .line 638
    .line 639
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 640
    .line 641
    .line 642
    move-result v5

    .line 643
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->a0(F)V

    .line 644
    .line 645
    .line 646
    const/16 v5, 0x22

    .line 647
    .line 648
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->Z(F)V

    .line 653
    .line 654
    .line 655
    const/16 v5, 0x29

    .line 656
    .line 657
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    iget v6, v11, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 662
    .line 663
    cmpl-float v6, v6, v5

    .line 664
    .line 665
    if-eqz v6, :cond_15

    .line 666
    .line 667
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 668
    .line 669
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 673
    .line 674
    .line 675
    :cond_15
    const/16 v5, 0x28

    .line 676
    .line 677
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 678
    .line 679
    .line 680
    move-result v5

    .line 681
    iget v6, v11, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 682
    .line 683
    cmpl-float v6, v6, v5

    .line 684
    .line 685
    if-eqz v6, :cond_16

    .line 686
    .line 687
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 688
    .line 689
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 693
    .line 694
    .line 695
    :cond_16
    const/16 v5, 0x1d

    .line 696
    .line 697
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 698
    .line 699
    .line 700
    move-result v5

    .line 701
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->W(F)V

    .line 702
    .line 703
    .line 704
    const/16 v5, 0x1b

    .line 705
    .line 706
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 707
    .line 708
    .line 709
    move-result v5

    .line 710
    invoke-virtual {v11, v5}, Lcom/google/android/material/chip/ChipDrawable;->U(F)V

    .line 711
    .line 712
    .line 713
    const/16 v5, 0xd

    .line 714
    .line 715
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    iget v6, v11, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 720
    .line 721
    cmpl-float v6, v6, v5

    .line 722
    .line 723
    if-eqz v6, :cond_17

    .line 724
    .line 725
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 726
    .line 727
    invoke-virtual {v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v11}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 731
    .line 732
    .line 733
    :cond_17
    const/4 v5, 0x4

    .line 734
    const v6, 0x7fffffff

    .line 735
    .line 736
    .line 737
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    iput v5, v11, Lcom/google/android/material/chip/ChipDrawable;->M0:I

    .line 742
    .line 743
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 744
    .line 745
    .line 746
    new-array v6, v12, [I

    .line 747
    .line 748
    const v5, 0x7f12029f

    .line 749
    .line 750
    .line 751
    invoke-static {v7, v2, v4, v5}, Lcom/google/android/material/internal/ThemeEnforcement;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 752
    .line 753
    .line 754
    move-object v1, v7

    .line 755
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    const/16 v6, 0x20

    .line 763
    .line 764
    invoke-virtual {v5, v6, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    iput-boolean v6, v0, Lcom/google/android/material/chip/Chip;->w:Z

    .line 769
    .line 770
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    const/high16 v7, 0x42400000    # 48.0f

    .line 779
    .line 780
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 781
    .line 782
    .line 783
    move-result-object v6

    .line 784
    invoke-static {v10, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    float-to-double v6, v6

    .line 789
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 790
    .line 791
    .line 792
    move-result-wide v6

    .line 793
    double-to-float v6, v6

    .line 794
    const/16 v7, 0x14

    .line 795
    .line 796
    invoke-virtual {v5, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    float-to-double v6, v6

    .line 801
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 802
    .line 803
    .line 804
    move-result-wide v6

    .line 805
    double-to-int v6, v6

    .line 806
    iput v6, v0, Lcom/google/android/material/chip/Chip;->y:I

    .line 807
    .line 808
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0, v11}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 815
    .line 816
    .line 817
    move-result v5

    .line 818
    invoke-virtual {v11, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(F)V

    .line 819
    .line 820
    .line 821
    new-array v6, v12, [I

    .line 822
    .line 823
    const v5, 0x7f12029f

    .line 824
    .line 825
    .line 826
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/material/internal/ThemeEnforcement;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 827
    .line 828
    .line 829
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 841
    .line 842
    .line 843
    new-instance v1, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 844
    .line 845
    invoke-direct {v1, v0, v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    .line 846
    .line 847
    .line 848
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 849
    .line 850
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 851
    .line 852
    .line 853
    if-nez v2, :cond_18

    .line 854
    .line 855
    new-instance v1, Lcom/google/android/material/chip/Chip$2;

    .line 856
    .line 857
    invoke-direct {v1, v0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 861
    .line 862
    .line 863
    :cond_18
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 864
    .line 865
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 866
    .line 867
    .line 868
    iget-object v1, v11, Lcom/google/android/material/chip/ChipDrawable;->N:Ljava/lang/CharSequence;

    .line 869
    .line 870
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    iget-object v1, v11, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 874
    .line 875
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->i()V

    .line 879
    .line 880
    .line 881
    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 882
    .line 883
    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->L0:Z

    .line 884
    .line 885
    if-nez v1, :cond_19

    .line 886
    .line 887
    invoke-virtual {v0, v10}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 891
    .line 892
    .line 893
    :cond_19
    invoke-virtual {v0, v9}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 897
    .line 898
    .line 899
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->w:Z

    .line 900
    .line 901
    if-eqz v1, :cond_1a

    .line 902
    .line 903
    iget v1, v0, Lcom/google/android/material/chip/Chip;->y:I

    .line 904
    .line 905
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 906
    .line 907
    .line 908
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    iput v1, v0, Lcom/google/android/material/chip/Chip;->x:I

    .line 913
    .line 914
    return-void

    .line 915
    :cond_1b
    const/16 p1, 0x0

    .line 916
    .line 917
    const-string v0, "Chip does not support multi-line text"

    .line 918
    .line 919
    invoke-static {v0}, Lfe;->t(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    throw p1

    .line 923
    :cond_1c
    const/16 p1, 0x0

    .line 924
    .line 925
    invoke-static {v6}, Lfe;->t(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    throw p1

    .line 929
    :cond_1d
    const/16 p1, 0x0

    .line 930
    .line 931
    invoke-static {v6}, Lfe;->t(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw p1

    .line 935
    :cond_1e
    const/16 p1, 0x0

    .line 936
    .line 937
    const-string v0, "Please set start drawable using R.attr#chipIcon."

    .line 938
    .line 939
    invoke-static {v0}, Lfe;->t(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    throw p1

    .line 943
    :cond_1f
    const/16 p1, 0x0

    .line 944
    .line 945
    const-string v0, "Please set left drawable using R.attr#chipIcon."

    .line 946
    .line 947
    invoke-static {v0}, Lfe;->t(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    throw p1
.end method

.method public static synthetic a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->B:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->f0()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget v2, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 32
    .line 33
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:F

    .line 34
    .line 35
    add-float/2addr v2, v3

    .line 36
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    .line 37
    .line 38
    add-float/2addr v2, v3

    .line 39
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->k0:F

    .line 40
    .line 41
    add-float/2addr v2, v3

    .line 42
    iget v3, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 43
    .line 44
    add-float/2addr v2, v3

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    .line 51
    iget p0, v1, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    int-to-float p0, p0

    .line 54
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 55
    .line 56
    sub-float/2addr p0, v2

    .line 57
    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget p0, v1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    int-to-float p0, p0

    .line 63
    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 64
    .line 65
    add-float/2addr p0, v2

    .line 66
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    :goto_0
    iget p0, v1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    int-to-float p0, p0

    .line 71
    iput p0, v0, Landroid/graphics/RectF;->top:F

    .line 72
    .line 73
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    int-to-float p0, p0

    .line 76
    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    .line 77
    .line 78
    :cond_1
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    float-to-int v1, v1

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 9
    .line 10
    float-to-int v2, v2

    .line 11
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    float-to-int v3, v3

    .line 14
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->t0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->f:Lcom/google/android/material/resources/TextAppearance;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->u:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->u:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/Chip;->y:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->w:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 37
    .line 38
    iget v0, v0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 39
    .line 40
    float-to-int v0, v0

    .line 41
    sub-int v0, p1, v0

    .line 42
    .line 43
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-int v3, p1, v3

    .line 54
    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-gtz v3, :cond_4

    .line 60
    .line 61
    if-gtz v0, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-int p1, p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    if-lez v3, :cond_5

    .line 91
    .line 92
    div-int/lit8 v3, v3, 0x2

    .line 93
    .line 94
    move v6, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    move v6, v2

    .line 97
    :goto_0
    if-lez v0, :cond_6

    .line 98
    .line 99
    div-int/lit8 v2, v0, 0x2

    .line 100
    .line 101
    :cond_6
    move v7, v2

    .line 102
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 114
    .line 115
    .line 116
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    if-ne v1, v7, :cond_7

    .line 119
    .line 120
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    if-ne v1, v7, :cond_7

    .line 123
    .line 124
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    if-ne v1, v6, :cond_7

    .line 127
    .line 128
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 129
    .line 130
    if-ne v0, v6, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eq v0, p1, :cond_8

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eq v0, p1, :cond_9

    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 152
    .line 153
    .line 154
    :cond_9
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 157
    .line 158
    move v8, v6

    .line 159
    move v9, v7

    .line 160
    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 161
    .line 162
    .line 163
    iput-object v4, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-class v0, Landroidx/customview/widget/ExploreByTouchHelper;

    .line 2
    .line 3
    const-string v1, "Unable to send Accessibility Exit event"

    .line 4
    .line 5
    const-string v2, "Chip"

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    :try_start_0
    const-string v3, "v"

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/high16 v4, -0x80000000

    .line 38
    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    const-string v3, "w"

    .line 42
    .line 43
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v7}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :catch_3
    move-exception v0

    .line 75
    goto :goto_3

    .line 76
    :goto_0
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :goto_1
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :goto_2
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :goto_3
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_0
    :goto_4
    invoke-virtual {v5, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->l(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_1

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_1
    const/4 v6, 0x0

    .line 105
    :cond_2
    :goto_5
    return v6
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v1, v4, :cond_8

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v5, 0x3d

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-eq v1, v5, :cond_6

    .line 24
    .line 25
    const/16 v5, 0x42

    .line 26
    .line 27
    if-eq v1, v5, :cond_4

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_8

    .line 38
    .line 39
    const/16 v7, 0x13

    .line 40
    .line 41
    if-eq v1, v7, :cond_1

    .line 42
    .line 43
    const/16 v7, 0x15

    .line 44
    .line 45
    if-eq v1, v7, :cond_0

    .line 46
    .line 47
    const/16 v7, 0x16

    .line 48
    .line 49
    if-eq v1, v7, :cond_2

    .line 50
    .line 51
    const/16 v5, 0x82

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v5, 0x11

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 v5, 0x21

    .line 58
    .line 59
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v1, v4

    .line 64
    move v7, v3

    .line 65
    :goto_1
    if-ge v3, v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v5, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->o(ILandroid/graphics/Rect;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    move v7, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v3, v7

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_8

    .line 90
    .line 91
    iget v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 92
    .line 93
    if-eq v1, v2, :cond_5

    .line 94
    .line 95
    const/16 v3, 0x10

    .line 96
    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->q(II)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    move v3, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    invoke-virtual {v0, v1, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->o(ILandroid/graphics/Rect;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    invoke-virtual {v0, v4, v6}, Landroidx/customview/widget/ExploreByTouchHelper;->o(ILandroid/graphics/Rect;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 125
    .line 126
    iget v0, v0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 127
    .line 128
    if-eq v0, v2, :cond_9

    .line 129
    .line 130
    return v4

    .line 131
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    return p0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawableStateChanged()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/material/chip/ChipDrawable;->F(Landroid/graphics/drawable/Drawable;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_9

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->v:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->u:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    :cond_3
    new-array v2, v2, [I

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    const v3, 0x101009e

    .line 58
    .line 59
    .line 60
    aput v3, v2, v1

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v3, v1

    .line 65
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->v:Z

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    const v4, 0x101009c

    .line 70
    .line 71
    .line 72
    aput v4, v2, v3

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->u:Z

    .line 77
    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    const v4, 0x1010367

    .line 81
    .line 82
    .line 83
    aput v4, v2, v3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 88
    .line 89
    if-eqz v4, :cond_7

    .line 90
    .line 91
    const v4, 0x10100a7

    .line 92
    .line 93
    .line 94
    aput v4, v2, v3

    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_8

    .line 103
    .line 104
    const v4, 0x10100a1

    .line 105
    .line 106
    .line 107
    aput v4, v2, v3

    .line 108
    .line 109
    :cond_8
    iget-object v3, v0, Lcom/google/android/material/chip/ChipDrawable;->H0:[I

    .line 110
    .line 111
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_9

    .line 116
    .line 117
    iput-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->H0:[I

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->f0()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_9

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/ChipDrawable;->H([I[I)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :cond_9
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    .line 137
    .line 138
    :cond_a
    return-void
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipDrawable;->Z:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/google/android/material/chip/ChipDrawable;->T:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/view/View$OnClickListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Landroid/graphics/drawable/RippleDrawable;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Landroid/graphics/drawable/RippleDrawable;

    .line 31
    .line 32
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->b0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->c0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->D()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getChipEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->P:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    return-object v0
.end method

.method public getChipIconSize()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->R:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->Q:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipMinHeight()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->K:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->L:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->U:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->l0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconSize()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->X:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->k0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->W:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 2
    .line 3
    iget v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    iget v0, v0, Landroidx/customview/widget/ExploreByTouchHelper;->t:I

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:Lcom/google/android/material/animation/MotionSpec;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->h0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getIconStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->g0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->M:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->k()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:Lcom/google/android/material/animation/MotionSpec;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public getTextStartPadding()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final h()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, v0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 17
    .line 18
    iget v2, v0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 19
    .line 20
    add-float/2addr v1, v2

    .line 21
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->C()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-float/2addr v0, v1

    .line 26
    float-to-int v0, v0

    .line 27
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 28
    .line 29
    iget v2, v1, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 30
    .line 31
    iget v3, v1, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 32
    .line 33
    add-float/2addr v2, v3

    .line 34
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->B()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-float/2addr v1, v2

    .line 39
    float-to-int v1, v1

    .line 40
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->o:Landroid/graphics/drawable/InsetDrawable;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    add-int/2addr v1, v3

    .line 57
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    add-int/2addr v0, v2

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sget-object v4, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 69
    .line 70
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->C:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/material/resources/TextAppearance;->e(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->b(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/material/chip/Chip;->E:[I

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lcom/google/android/material/chip/Chip;->F:[I

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 27
    .line 28
    .line 29
    :cond_1
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 5
    .line 6
    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->u:I

    .line 7
    .line 8
    const/high16 v1, -0x80000000

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->j(I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->o(ILandroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "android.view.View"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v0, "android.widget.CompoundButton"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const-string v0, "android.widget.Button"

    .line 33
    .line 34
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    .line 56
    .line 57
    if-eqz v0, :cond_7

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 64
    .line 65
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 66
    .line 67
    invoke-direct {v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 68
    .line 69
    .line 70
    iget-boolean p1, v0, Lcom/google/android/material/internal/FlowLayout;->l:Z

    .line 71
    .line 72
    const/4 v2, -0x1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    move v3, p1

    .line 77
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ge p1, v4, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    .line 88
    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/google/android/material/chip/Chip;

    .line 96
    .line 97
    if-ne v4, p0, :cond_3

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    move v3, v2

    .line 106
    :goto_4
    const p1, 0x7f0a0180

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    instance-of v0, p1, Ljava/lang/Integer;

    .line 114
    .line 115
    if-nez v0, :cond_6

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_6
    check-cast p1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    const/4 p1, 0x1

    .line 129
    invoke-static {p0, v2, p1, v3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(ZIIII)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->k(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    .line 134
    .line 135
    .line 136
    :cond_7
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p1, 0x3ea

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/material/chip/Chip;->x:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/chip/Chip;->x:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    if-eq v0, v4, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-eq v0, v1, :cond_4

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    move v0, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->t:Z

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/view/View$OnClickListener;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->z:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->v(II)V

    .line 62
    .line 63
    .line 64
    move v0, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v0, v3

    .line 67
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    if-eqz v1, :cond_6

    .line 72
    .line 73
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    :goto_2
    move v0, v3

    .line 78
    :goto_3
    if-nez v0, :cond_8

    .line 79
    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    return v3

    .line 88
    :cond_8
    :goto_4
    return v2
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Landroid/graphics/drawable/RippleDrawable;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Chip"

    .line 12
    .line 13
    const-string p1, "Do not set the background; Chip manages its own background drawable."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    const-string p0, "Chip"

    .line 2
    .line 3
    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Landroid/graphics/drawable/RippleDrawable;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Chip"

    .line 12
    .line 13
    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 1
    const-string p0, "Chip"

    .line 2
    .line 3
    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    const-string p0, "Chip"

    .line 2
    .line 3
    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    const-string p0, "Chip"

    .line 2
    .line 3
    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->I(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->I(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, v0, Lcom/google/android/material/chip/ChipDrawable;->Z:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 17
    .line 18
    .line 19
    if-eq v0, p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->J(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->J(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->K(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->K(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->L(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->L(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->H:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->onStateChange([I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->M(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->M(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/google/android/material/chip/ChipDrawable;->J0:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Lcom/google/android/material/chip/ChipDrawable;->L0:Z

    .line 19
    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p1, Lcom/google/android/material/chip/ChipDrawable;->J0:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/material/chip/Chip;->y:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->c(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->m0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->N(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->N(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->O(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->O(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->P(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->P(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->Q(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->Q(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->I:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->f0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->R(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->R(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->S(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->S(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->T(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    sget-object v0, Landroidx/core/text/BidiFormatter;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    sget-object v0, Landroidx/core/text/BidiFormatter;->e:Landroidx/core/text/BidiFormatter;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Landroidx/core/text/BidiFormatter;->d:Landroidx/core/text/BidiFormatter;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->a:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->Y:Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->U(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->U(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->T(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->V(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->V(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->W(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->W(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->X(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->X(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->Y(Z)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 22
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "Please set end drawable using R.attr#closeIcon."

    .line 10
    .line 11
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p0, "Please set start drawable using R.attr#chipIcon."

    .line 16
    .line 17
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 22
    :cond_0
    const-string p0, "Please set right drawable using R.attr#closeIcon."

    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_1
    const-string p0, "Please set left drawable using R.attr#chipIcon."

    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->K0:Landroid/text/TextUtils$TruncateAt;

    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void

    .line 20
    :cond_2
    const-string p0, "Text within a chip are not allowed to scroll."

    .line 21
    .line 22
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->w:Z

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/material/chip/Chip;->y:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->c(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    const v0, 0x800013

    .line 2
    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const-string p0, "Chip"

    .line 7
    .line 8
    const-string p1, "Chip text must be vertically center and start aligned"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:Lcom/google/android/material/animation/MotionSpec;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->a(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->e0:Lcom/google/android/material/animation/MotionSpec;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->Z(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->Z(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->a0(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipDrawable;->a0(F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->M0:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 9
    .line 10
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->b0(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->b0(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:Lcom/google/android/material/animation/MotionSpec;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->a(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->d0:Lcom/google/android/material/animation/MotionSpec;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string p0, "Chip does not support multi-line text"

    .line 8
    .line 9
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    :cond_1
    iget-boolean v0, v0, Lcom/google/android/material/chip/ChipDrawable;->L0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    move-object v0, p1

    .line 17
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/material/chip/ChipDrawable;->N:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->N:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/material/chip/ChipDrawable;->t0:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p1, Lcom/google/android/material/internal/TextDrawableHelper;->d:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 26
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 27
    new-instance v1, Lcom/google/android/material/resources/TextAppearance;

    iget-object v2, v0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->c0(Lcom/google/android/material/resources/TextAppearance;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, p2}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->c0(Lcom/google/android/material/resources/TextAppearance;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->c0(Lcom/google/android/material/resources/TextAppearance;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->i()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->j0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 6
    .line 7
    cmpl-float v0, v0, p1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->n:Lcom/google/android/material/chip/ChipDrawable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/ChipDrawable;->n0:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/chip/ChipDrawable;->i0:F

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipDrawable;->G()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
