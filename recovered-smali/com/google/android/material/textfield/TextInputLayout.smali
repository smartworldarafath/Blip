.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;
    }
.end annotation


# instance fields
.field public A:Landroidx/appcompat/widget/AppCompatTextView;

.field public A0:Landroid/view/View$OnLongClickListener;

.field public B:Landroid/content/res/ColorStateList;

.field public final B0:Lcom/google/android/material/internal/CheckableImageButton;

.field public C:I

.field public C0:Landroid/content/res/ColorStateList;

.field public D:Landroid/content/res/ColorStateList;

.field public D0:Landroid/content/res/ColorStateList;

.field public E:Landroid/content/res/ColorStateList;

.field public E0:Landroid/content/res/ColorStateList;

.field public F:Ljava/lang/CharSequence;

.field public F0:I

.field public final G:Landroidx/appcompat/widget/AppCompatTextView;

.field public G0:I

.field public H:Ljava/lang/CharSequence;

.field public H0:I

.field public final I:Landroidx/appcompat/widget/AppCompatTextView;

.field public I0:Landroid/content/res/ColorStateList;

.field public J:Z

.field public J0:I

.field public K:Ljava/lang/CharSequence;

.field public K0:I

.field public L:Z

.field public L0:I

.field public M:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public M0:I

.field public N:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public N0:I

.field public final O:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public O0:Z

.field public final P:I

.field public final P0:Lcom/google/android/material/internal/CollapsingTextHelper;

.field public Q:I

.field public Q0:Z

.field public R:I

.field public R0:Z

.field public S:I

.field public S0:Landroid/animation/ValueAnimator;

.field public T:I

.field public T0:Z

.field public U:I

.field public U0:Z

.field public V:I

.field public W:I

.field public a0:I

.field public final b0:Landroid/graphics/Rect;

.field public final c0:Landroid/graphics/Rect;

.field public final d0:Landroid/graphics/RectF;

.field public e0:Landroid/graphics/Typeface;

.field public final f0:Lcom/google/android/material/internal/CheckableImageButton;

.field public g0:Landroid/content/res/ColorStateList;

.field public h0:Z

.field public i0:Landroid/graphics/PorterDuff$Mode;

.field public final j:Landroid/widget/FrameLayout;

.field public j0:Z

.field public final k:Landroid/widget/LinearLayout;

.field public k0:Landroid/graphics/drawable/ColorDrawable;

.field public final l:Landroid/widget/LinearLayout;

.field public l0:I

.field public final m:Landroid/widget/FrameLayout;

.field public m0:Landroid/view/View$OnLongClickListener;

.field public n:Landroid/widget/EditText;

.field public final n0:Ljava/util/LinkedHashSet;

.field public o:Ljava/lang/CharSequence;

.field public o0:I

.field public p:I

.field public final p0:Landroid/util/SparseArray;

.field public q:I

.field public final q0:Lcom/google/android/material/internal/CheckableImageButton;

.field public final r:Lcom/google/android/material/textfield/IndicatorViewController;

.field public final r0:Ljava/util/LinkedHashSet;

.field public s:Z

.field public s0:Landroid/content/res/ColorStateList;

.field public t:I

.field public t0:Z

.field public u:Z

.field public u0:Landroid/graphics/PorterDuff$Mode;

.field public v:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Z

.field public w:I

.field public w0:Landroid/graphics/drawable/ColorDrawable;

.field public x:I

.field public x0:I

.field public y:Ljava/lang/CharSequence;

.field public y0:Landroid/graphics/drawable/Drawable;

.field public z:Z

.field public z0:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const v4, 0x7f0403a3

    .line 6
    .line 7
    .line 8
    const v7, 0x7f12027c

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    invoke-static {v1, v2, v4, v7}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    .line 19
    .line 20
    const/4 v8, -0x1

    .line 21
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 22
    .line 23
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/material/textfield/IndicatorViewController;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 31
    .line 32
    new-instance v1, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Rect;

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/Rect;

    .line 45
    .line 46
    new-instance v1, Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/graphics/RectF;

    .line 52
    .line 53
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 62
    .line 63
    new-instance v10, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/util/SparseArray;

    .line 69
    .line 70
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Ljava/util/LinkedHashSet;

    .line 76
    .line 77
    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const/4 v11, 0x1

    .line 89
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-direct {v5, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    new-instance v12, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-direct {v12, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    .line 120
    .line 121
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    const v13, 0x800003

    .line 124
    .line 125
    .line 126
    const/4 v14, -0x2

    .line 127
    invoke-direct {v6, v14, v8, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    new-instance v13, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    .line 145
    .line 146
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    const v15, 0x800005

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v14, v8, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    new-instance v15, Landroid/widget/FrameLayout;

    .line 161
    .line 162
    invoke-direct {v15, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    iput-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .line 169
    invoke-direct {v5, v14, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    sget-object v5, Lcom/google/android/material/animation/AnimationUtils;->a:Landroid/view/animation/LinearInterpolator;

    .line 176
    .line 177
    iput-object v5, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Landroid/animation/TimeInterpolator;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 180
    .line 181
    .line 182
    iput-object v5, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 185
    .line 186
    .line 187
    iget v5, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 188
    .line 189
    const v6, 0x800033

    .line 190
    .line 191
    .line 192
    if-eq v5, v6, :cond_0

    .line 193
    .line 194
    iput v6, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 197
    .line 198
    .line 199
    :cond_0
    const/16 v1, 0x14

    .line 200
    .line 201
    const/16 v5, 0x12

    .line 202
    .line 203
    const/16 v6, 0x21

    .line 204
    .line 205
    const/16 v14, 0x26

    .line 206
    .line 207
    const/16 v9, 0x2a

    .line 208
    .line 209
    move v7, v6

    .line 210
    filled-new-array {v1, v5, v7, v14, v9}, [I

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    move/from16 v16, v5

    .line 215
    .line 216
    const v5, 0x7f12027c

    .line 217
    .line 218
    .line 219
    invoke-static {v3, v2, v4, v5}, Lcom/google/android/material/internal/ThemeEnforcement;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 220
    .line 221
    .line 222
    move/from16 v17, v1

    .line 223
    .line 224
    move-object v1, v3

    .line 225
    sget-object v3, Lcom/google/android/material/R$styleable;->v:[I

    .line 226
    .line 227
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Landroidx/appcompat/widget/TintTypedArray;

    .line 231
    .line 232
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-direct {v6, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 237
    .line 238
    .line 239
    const/16 v5, 0x29

    .line 240
    .line 241
    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    iput-boolean v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 246
    .line 247
    const/4 v5, 0x4

    .line 248
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    const/16 v5, 0x28

    .line 256
    .line 257
    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    iput-boolean v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->R0:Z

    .line 262
    .line 263
    const/16 v5, 0x23

    .line 264
    .line 265
    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    iput-boolean v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q0:Z

    .line 270
    .line 271
    const/4 v5, 0x3

    .line 272
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 273
    .line 274
    .line 275
    move-result v16

    .line 276
    if-eqz v16, :cond_1

    .line 277
    .line 278
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 283
    .line 284
    .line 285
    :cond_1
    const/4 v14, 0x2

    .line 286
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 287
    .line 288
    .line 289
    move-result v19

    .line 290
    if-eqz v19, :cond_2

    .line 291
    .line 292
    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 297
    .line 298
    .line 299
    :cond_2
    const v5, 0x7f12027c

    .line 300
    .line 301
    .line 302
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 311
    .line 312
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    const v5, 0x7f070198

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 324
    .line 325
    const/4 v4, 0x7

    .line 326
    const/4 v5, 0x0

    .line 327
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    const v5, 0x7f070199

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    const/16 v5, 0xe

    .line 345
    .line 346
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    const v5, 0x7f07019a

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    const/16 v5, 0xf

    .line 364
    .line 365
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 370
    .line 371
    iget v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 372
    .line 373
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 374
    .line 375
    const/16 v4, 0xb

    .line 376
    .line 377
    const/high16 v5, -0x40800000    # -1.0f

    .line 378
    .line 379
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    const/16 v14, 0xa

    .line 384
    .line 385
    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 386
    .line 387
    .line 388
    move-result v14

    .line 389
    const/16 v7, 0x8

    .line 390
    .line 391
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    const/16 v7, 0x9

    .line 396
    .line 397
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->d()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    const/4 v7, 0x0

    .line 406
    cmpl-float v20, v4, v7

    .line 407
    .line 408
    if-ltz v20, :cond_3

    .line 409
    .line 410
    move/from16 v20, v7

    .line 411
    .line 412
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 413
    .line 414
    invoke-direct {v7, v4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 415
    .line 416
    .line 417
    iput-object v7, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/CornerSize;

    .line 418
    .line 419
    goto :goto_0

    .line 420
    :cond_3
    move/from16 v20, v7

    .line 421
    .line 422
    :goto_0
    cmpl-float v4, v14, v20

    .line 423
    .line 424
    if-ltz v4, :cond_4

    .line 425
    .line 426
    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 427
    .line 428
    invoke-direct {v4, v14}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 429
    .line 430
    .line 431
    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/CornerSize;

    .line 432
    .line 433
    :cond_4
    cmpl-float v4, v9, v20

    .line 434
    .line 435
    if-ltz v4, :cond_5

    .line 436
    .line 437
    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 438
    .line 439
    invoke-direct {v4, v9}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 440
    .line 441
    .line 442
    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/CornerSize;

    .line 443
    .line 444
    :cond_5
    cmpl-float v4, v5, v20

    .line 445
    .line 446
    if-ltz v4, :cond_6

    .line 447
    .line 448
    new-instance v4, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 449
    .line 450
    invoke-direct {v4, v5}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 451
    .line 452
    .line 453
    iput-object v4, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/CornerSize;

    .line 454
    .line 455
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 460
    .line 461
    const/4 v2, 0x5

    .line 462
    invoke-static {v1, v6, v2}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    if-eqz v2, :cond_8

    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 469
    .line 470
    .line 471
    move-result v4

    .line 472
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 473
    .line 474
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 475
    .line 476
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    const v5, 0x1010367

    .line 481
    .line 482
    .line 483
    const v7, -0x101009e

    .line 484
    .line 485
    .line 486
    if-eqz v4, :cond_7

    .line 487
    .line 488
    filled-new-array {v7}, [I

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->K0:I

    .line 497
    .line 498
    const v4, 0x101009c

    .line 499
    .line 500
    .line 501
    const v7, 0x101009e

    .line 502
    .line 503
    .line 504
    filled-new-array {v4, v7}, [I

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 513
    .line 514
    filled-new-array {v5, v7}, [I

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 523
    .line 524
    :goto_1
    const/4 v5, 0x0

    .line 525
    goto :goto_2

    .line 526
    :cond_7
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 527
    .line 528
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 529
    .line 530
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    const v9, 0x7f0600ac

    .line 539
    .line 540
    .line 541
    invoke-static {v2, v9, v4}, Landroidx/core/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    filled-new-array {v7}, [I

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->K0:I

    .line 554
    .line 555
    filled-new-array {v5}, [I

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    invoke-virtual {v2, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 564
    .line 565
    goto :goto_1

    .line 566
    :cond_8
    const/4 v5, 0x0

    .line 567
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 568
    .line 569
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 570
    .line 571
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->K0:I

    .line 572
    .line 573
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 574
    .line 575
    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 576
    .line 577
    :goto_2
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-eqz v2, :cond_9

    .line 582
    .line 583
    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 588
    .line 589
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 590
    .line 591
    :cond_9
    const/16 v2, 0xc

    .line 592
    .line 593
    invoke-static {v1, v6, v2}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 602
    .line 603
    const v2, 0x7f0600c3

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 607
    .line 608
    .line 609
    move-result v2

    .line 610
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 611
    .line 612
    const v2, 0x7f0600c4

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

    .line 620
    .line 621
    const v2, 0x7f0600c7

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 629
    .line 630
    if-eqz v4, :cond_a

    .line 631
    .line 632
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 633
    .line 634
    .line 635
    :cond_a
    const/16 v2, 0xd

    .line 636
    .line 637
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    if-eqz v4, :cond_b

    .line 642
    .line 643
    invoke-static {v1, v6, v2}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 648
    .line 649
    .line 650
    :cond_b
    const/16 v2, 0x2a

    .line 651
    .line 652
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    const/4 v5, 0x0

    .line 657
    if-eq v4, v8, :cond_c

    .line 658
    .line 659
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 664
    .line 665
    .line 666
    :cond_c
    const/16 v7, 0x21

    .line 667
    .line 668
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    const/16 v4, 0x1c

    .line 673
    .line 674
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    const/16 v7, 0x1d

    .line 679
    .line 680
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 685
    .line 686
    .line 687
    move-result-object v9

    .line 688
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    const v14, 0x7f0d002a

    .line 693
    .line 694
    .line 695
    invoke-virtual {v9, v14, v13, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object v9

    .line 699
    check-cast v9, Lcom/google/android/material/internal/CheckableImageButton;

    .line 700
    .line 701
    iput-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 702
    .line 703
    const v14, 0x7f0a01e4

    .line 704
    .line 705
    .line 706
    invoke-virtual {v9, v14}, Landroid/view/View;->setId(I)V

    .line 707
    .line 708
    .line 709
    const/16 v14, 0x8

    .line 710
    .line 711
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 712
    .line 713
    .line 714
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->d(Landroid/content/Context;)Z

    .line 715
    .line 716
    .line 717
    move-result v14

    .line 718
    if-eqz v14, :cond_d

    .line 719
    .line 720
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 721
    .line 722
    .line 723
    move-result-object v14

    .line 724
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 725
    .line 726
    invoke-virtual {v14, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 727
    .line 728
    .line 729
    :cond_d
    const/16 v5, 0x1e

    .line 730
    .line 731
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 732
    .line 733
    .line 734
    move-result v14

    .line 735
    if-eqz v14, :cond_e

    .line 736
    .line 737
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/TintTypedArray;->b(I)Landroid/graphics/drawable/Drawable;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    .line 743
    .line 744
    :cond_e
    const/16 v5, 0x1f

    .line 745
    .line 746
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    if-eqz v14, :cond_f

    .line 751
    .line 752
    invoke-static {v1, v6, v5}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 757
    .line 758
    .line 759
    :cond_f
    const/16 v5, 0x20

    .line 760
    .line 761
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 762
    .line 763
    .line 764
    move-result v14

    .line 765
    const/4 v11, 0x0

    .line 766
    if-eqz v14, :cond_10

    .line 767
    .line 768
    invoke-virtual {v3, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 769
    .line 770
    .line 771
    move-result v5

    .line 772
    invoke-static {v5, v11}, Lcom/google/android/material/internal/ViewUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 773
    .line 774
    .line 775
    move-result-object v5

    .line 776
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 777
    .line 778
    .line 779
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    const v14, 0x7f110045

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 787
    .line 788
    .line 789
    move-result-object v5

    .line 790
    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 791
    .line 792
    .line 793
    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 794
    .line 795
    const/4 v5, 0x2

    .line 796
    invoke-virtual {v9, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 797
    .line 798
    .line 799
    const/4 v5, 0x0

    .line 800
    invoke-virtual {v9, v5}, Landroid/view/View;->setClickable(Z)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v9, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v9, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 807
    .line 808
    .line 809
    const/16 v14, 0x26

    .line 810
    .line 811
    invoke-virtual {v3, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 812
    .line 813
    .line 814
    move-result v14

    .line 815
    const/16 v11, 0x25

    .line 816
    .line 817
    invoke-virtual {v3, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 818
    .line 819
    .line 820
    move-result v11

    .line 821
    const/16 v8, 0x24

    .line 822
    .line 823
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 824
    .line 825
    .line 826
    move-result-object v8

    .line 827
    move-object/from16 v21, v4

    .line 828
    .line 829
    const/16 v4, 0x32

    .line 830
    .line 831
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    const/16 v5, 0x31

    .line 836
    .line 837
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    move/from16 v22, v4

    .line 842
    .line 843
    const/16 v4, 0x35

    .line 844
    .line 845
    move-object/from16 v23, v5

    .line 846
    .line 847
    const/4 v5, 0x0

    .line 848
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 849
    .line 850
    .line 851
    move-result v4

    .line 852
    const/16 v5, 0x34

    .line 853
    .line 854
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    move/from16 v24, v4

    .line 859
    .line 860
    const/16 v4, 0x3f

    .line 861
    .line 862
    move-object/from16 v25, v5

    .line 863
    .line 864
    const/4 v5, 0x0

    .line 865
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    const/16 v5, 0x3e

    .line 870
    .line 871
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    move/from16 v26, v4

    .line 876
    .line 877
    const/16 v4, 0x10

    .line 878
    .line 879
    move-object/from16 v27, v5

    .line 880
    .line 881
    const/4 v5, 0x0

    .line 882
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 883
    .line 884
    .line 885
    move-result v4

    .line 886
    const/16 v5, 0x11

    .line 887
    .line 888
    move/from16 v28, v4

    .line 889
    .line 890
    const/4 v4, -0x1

    .line 891
    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 892
    .line 893
    .line 894
    move-result v5

    .line 895
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 896
    .line 897
    .line 898
    const/16 v4, 0x14

    .line 899
    .line 900
    const/4 v5, 0x0

    .line 901
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 902
    .line 903
    .line 904
    move-result v4

    .line 905
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 906
    .line 907
    const/16 v4, 0x12

    .line 908
    .line 909
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 914
    .line 915
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    move/from16 v17, v2

    .line 924
    .line 925
    const v2, 0x7f0d002b

    .line 926
    .line 927
    .line 928
    invoke-virtual {v4, v2, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    .line 933
    .line 934
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 935
    .line 936
    const/16 v4, 0x8

    .line 937
    .line 938
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 939
    .line 940
    .line 941
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->d(Landroid/content/Context;)Z

    .line 942
    .line 943
    .line 944
    move-result v4

    .line 945
    if-eqz v4, :cond_11

    .line 946
    .line 947
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 948
    .line 949
    .line 950
    move-result-object v4

    .line 951
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 952
    .line 953
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 954
    .line 955
    .line 956
    :cond_11
    const/4 v4, 0x0

    .line 957
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 961
    .line 962
    .line 963
    const/16 v4, 0x3b

    .line 964
    .line 965
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    if-eqz v5, :cond_13

    .line 970
    .line 971
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->b(I)Landroid/graphics/drawable/Drawable;

    .line 972
    .line 973
    .line 974
    move-result-object v4

    .line 975
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    .line 977
    .line 978
    const/16 v4, 0x3a

    .line 979
    .line 980
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 981
    .line 982
    .line 983
    move-result v5

    .line 984
    if-eqz v5, :cond_12

    .line 985
    .line 986
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    .line 992
    .line 993
    :cond_12
    const/16 v4, 0x39

    .line 994
    .line 995
    const/4 v5, 0x1

    .line 996
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 997
    .line 998
    .line 999
    move-result v4

    .line 1000
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    .line 1001
    .line 1002
    .line 1003
    :cond_13
    const/16 v4, 0x3c

    .line 1004
    .line 1005
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v5

    .line 1009
    if-eqz v5, :cond_14

    .line 1010
    .line 1011
    invoke-static {v1, v6, v4}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v4

    .line 1015
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1016
    .line 1017
    .line 1018
    :cond_14
    const/16 v4, 0x3d

    .line 1019
    .line 1020
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v5

    .line 1024
    if-eqz v5, :cond_15

    .line 1025
    .line 1026
    const/4 v5, -0x1

    .line 1027
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1028
    .line 1029
    .line 1030
    move-result v4

    .line 1031
    const/4 v5, 0x0

    .line 1032
    invoke-static {v4, v5}, Lcom/google/android/material/internal/ViewUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1037
    .line 1038
    .line 1039
    :cond_15
    const/4 v4, 0x6

    .line 1040
    const/4 v5, 0x0

    .line 1041
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1042
    .line 1043
    .line 1044
    move-result v4

    .line 1045
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v4

    .line 1052
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v4

    .line 1056
    move/from16 v18, v7

    .line 1057
    .line 1058
    const v7, 0x7f0d002a

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v4, v7, v15, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v4

    .line 1065
    check-cast v4, Lcom/google/android/material/internal/CheckableImageButton;

    .line 1066
    .line 1067
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1068
    .line 1069
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1070
    .line 1071
    .line 1072
    const/16 v7, 0x8

    .line 1073
    .line 1074
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->d(Landroid/content/Context;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v7

    .line 1081
    if-eqz v7, :cond_16

    .line 1082
    .line 1083
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v4

    .line 1087
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1088
    .line 1089
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1090
    .line 1091
    .line 1092
    :cond_16
    new-instance v4, Lcom/google/android/material/textfield/CustomEndIconDelegate;

    .line 1093
    .line 1094
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1095
    .line 1096
    .line 1097
    const/4 v7, -0x1

    .line 1098
    invoke-virtual {v10, v7, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1099
    .line 1100
    .line 1101
    new-instance v4, Lcom/google/android/material/textfield/NoEndIconDelegate;

    .line 1102
    .line 1103
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1107
    .line 1108
    .line 1109
    new-instance v4, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 1110
    .line 1111
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1112
    .line 1113
    .line 1114
    const/4 v5, 0x1

    .line 1115
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1116
    .line 1117
    .line 1118
    new-instance v4, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 1119
    .line 1120
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1121
    .line 1122
    .line 1123
    const/4 v5, 0x2

    .line 1124
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1125
    .line 1126
    .line 1127
    new-instance v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 1128
    .line 1129
    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 1130
    .line 1131
    .line 1132
    const/4 v5, 0x3

    .line 1133
    invoke-virtual {v10, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1134
    .line 1135
    .line 1136
    const/16 v4, 0x19

    .line 1137
    .line 1138
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v5

    .line 1142
    const/16 v7, 0x2e

    .line 1143
    .line 1144
    if-eqz v5, :cond_19

    .line 1145
    .line 1146
    const/4 v5, 0x0

    .line 1147
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1148
    .line 1149
    .line 1150
    move-result v4

    .line 1151
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 1152
    .line 1153
    .line 1154
    const/16 v4, 0x18

    .line 1155
    .line 1156
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v5

    .line 1160
    if-eqz v5, :cond_17

    .line 1161
    .line 1162
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->b(I)Landroid/graphics/drawable/Drawable;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v4

    .line 1166
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    .line 1168
    .line 1169
    :cond_17
    const/16 v4, 0x17

    .line 1170
    .line 1171
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    if-eqz v5, :cond_18

    .line 1176
    .line 1177
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v4

    .line 1181
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 1182
    .line 1183
    .line 1184
    :cond_18
    const/16 v4, 0x16

    .line 1185
    .line 1186
    const/4 v5, 0x1

    .line 1187
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v4

    .line 1191
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_3

    .line 1195
    :cond_19
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v4

    .line 1199
    if-eqz v4, :cond_1b

    .line 1200
    .line 1201
    const/4 v5, 0x0

    .line 1202
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v4

    .line 1206
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 1207
    .line 1208
    .line 1209
    const/16 v4, 0x2d

    .line 1210
    .line 1211
    invoke-virtual {v6, v4}, Landroidx/appcompat/widget/TintTypedArray;->b(I)Landroid/graphics/drawable/Drawable;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1216
    .line 1217
    .line 1218
    const/16 v4, 0x2c

    .line 1219
    .line 1220
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 1225
    .line 1226
    .line 1227
    const/16 v4, 0x2f

    .line 1228
    .line 1229
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v5

    .line 1233
    if-eqz v5, :cond_1a

    .line 1234
    .line 1235
    invoke-static {v1, v6, v4}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v4

    .line 1239
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1240
    .line 1241
    .line 1242
    :cond_1a
    const/16 v4, 0x30

    .line 1243
    .line 1244
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v5

    .line 1248
    if-eqz v5, :cond_1b

    .line 1249
    .line 1250
    const/4 v5, -0x1

    .line 1251
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1252
    .line 1253
    .line 1254
    move-result v4

    .line 1255
    const/4 v5, 0x0

    .line 1256
    invoke-static {v4, v5}, Lcom/google/android/material/internal/ViewUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v4

    .line 1260
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1261
    .line 1262
    .line 1263
    :cond_1b
    :goto_3
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v4

    .line 1267
    if-nez v4, :cond_1d

    .line 1268
    .line 1269
    const/16 v4, 0x1a

    .line 1270
    .line 1271
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v5

    .line 1275
    if-eqz v5, :cond_1c

    .line 1276
    .line 1277
    invoke-static {v1, v6, v4}, Lcom/google/android/material/resources/MaterialResources;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 1282
    .line 1283
    .line 1284
    :cond_1c
    const/16 v4, 0x1b

    .line 1285
    .line 1286
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v5

    .line 1290
    if-eqz v5, :cond_1d

    .line 1291
    .line 1292
    const/4 v5, -0x1

    .line 1293
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1294
    .line 1295
    .line 1296
    move-result v4

    .line 1297
    const/4 v5, 0x0

    .line 1298
    invoke-static {v4, v5}, Lcom/google/android/material/internal/ViewUtils;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_4

    .line 1306
    :cond_1d
    const/4 v5, 0x0

    .line 1307
    :goto_4
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1308
    .line 1309
    invoke-direct {v4, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1310
    .line 1311
    .line 1312
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1313
    .line 1314
    const v7, 0x7f0a01ea

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 1318
    .line 1319
    .line 1320
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1321
    .line 1322
    const/4 v10, -0x2

    .line 1323
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    .line 1328
    .line 1329
    const/4 v7, 0x1

    .line 1330
    invoke-virtual {v4, v7}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1337
    .line 1338
    .line 1339
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1340
    .line 1341
    invoke-direct {v2, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1342
    .line 1343
    .line 1344
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1345
    .line 1346
    const v1, 0x7f0a01eb

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 1350
    .line 1351
    .line 1352
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1353
    .line 1354
    const/16 v4, 0x50

    .line 1355
    .line 1356
    const/4 v10, -0x2

    .line 1357
    invoke-direct {v1, v10, v10, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    .line 1362
    .line 1363
    const/4 v5, 0x1

    .line 1364
    invoke-virtual {v2, v5}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 1383
    .line 1384
    .line 1385
    move/from16 v1, v18

    .line 1386
    .line 1387
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1388
    .line 1389
    .line 1390
    move/from16 v1, v17

    .line 1391
    .line 1392
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 1393
    .line 1394
    .line 1395
    move-object/from16 v1, v21

    .line 1396
    .line 1397
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 1398
    .line 1399
    .line 1400
    iget v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 1401
    .line 1402
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 1403
    .line 1404
    .line 1405
    iget v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 1406
    .line 1407
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 1408
    .line 1409
    .line 1410
    move-object/from16 v1, v23

    .line 1411
    .line 1412
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 1413
    .line 1414
    .line 1415
    move/from16 v1, v22

    .line 1416
    .line 1417
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 1418
    .line 1419
    .line 1420
    move-object/from16 v1, v25

    .line 1421
    .line 1422
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    .line 1423
    .line 1424
    .line 1425
    move/from16 v1, v24

    .line 1426
    .line 1427
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextAppearance(I)V

    .line 1428
    .line 1429
    .line 1430
    move-object/from16 v1, v27

    .line 1431
    .line 1432
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    .line 1433
    .line 1434
    .line 1435
    move/from16 v1, v26

    .line 1436
    .line 1437
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V

    .line 1438
    .line 1439
    .line 1440
    const/16 v1, 0x22

    .line 1441
    .line 1442
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v2

    .line 1446
    if-eqz v2, :cond_1e

    .line 1447
    .line 1448
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v1

    .line 1452
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 1453
    .line 1454
    .line 1455
    :cond_1e
    const/16 v1, 0x27

    .line 1456
    .line 1457
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    if-eqz v2, :cond_1f

    .line 1462
    .line 1463
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v1

    .line 1467
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 1468
    .line 1469
    .line 1470
    :cond_1f
    const/16 v1, 0x2b

    .line 1471
    .line 1472
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v2

    .line 1476
    if-eqz v2, :cond_20

    .line 1477
    .line 1478
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v1

    .line 1482
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1483
    .line 1484
    .line 1485
    :cond_20
    const/16 v1, 0x15

    .line 1486
    .line 1487
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v2

    .line 1491
    if-eqz v2, :cond_21

    .line 1492
    .line 1493
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v1

    .line 1497
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 1498
    .line 1499
    .line 1500
    :cond_21
    const/16 v1, 0x13

    .line 1501
    .line 1502
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v2

    .line 1506
    if-eqz v2, :cond_22

    .line 1507
    .line 1508
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v1

    .line 1512
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 1513
    .line 1514
    .line 1515
    :cond_22
    const/16 v1, 0x33

    .line 1516
    .line 1517
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1518
    .line 1519
    .line 1520
    move-result v2

    .line 1521
    if-eqz v2, :cond_23

    .line 1522
    .line 1523
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v1

    .line 1527
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 1528
    .line 1529
    .line 1530
    :cond_23
    const/16 v1, 0x36

    .line 1531
    .line 1532
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v2

    .line 1536
    if-eqz v2, :cond_24

    .line 1537
    .line 1538
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v1

    .line 1542
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    .line 1543
    .line 1544
    .line 1545
    :cond_24
    const/16 v1, 0x40

    .line 1546
    .line 1547
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1548
    .line 1549
    .line 1550
    move-result v2

    .line 1551
    if-eqz v2, :cond_25

    .line 1552
    .line 1553
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v1

    .line 1557
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    .line 1558
    .line 1559
    .line 1560
    :cond_25
    move/from16 v1, v28

    .line 1561
    .line 1562
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 1563
    .line 1564
    .line 1565
    const/4 v5, 0x0

    .line 1566
    const/4 v7, 0x1

    .line 1567
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 1568
    .line 1569
    .line 1570
    move-result v1

    .line 1571
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v6}, Landroidx/appcompat/widget/TintTypedArray;->e()V

    .line 1575
    .line 1576
    .line 1577
    const/4 v5, 0x2

    .line 1578
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1579
    .line 1580
    .line 1581
    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->p(Landroid/view/ViewGroup;I)V

    .line 1582
    .line 1583
    .line 1584
    return-void
.end method

.method public static d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/material/textfield/EndIconDelegate;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/google/android/material/textfield/EndIconDelegate;

    .line 20
    .line 21
    return-object p0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static j(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/view/ViewGroup;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public static l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    :cond_1
    move v1, v2

    .line 19
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v2, 0x2

    .line 35
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "TextInputLayout"

    .line 15
    .line 16
    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 22
    .line 23
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->v:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iput-boolean v3, v2, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    .line 58
    .line 59
    :cond_1
    iget-object v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    if-eq v2, v0, :cond_2

    .line 63
    .line 64
    iput-object v0, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 65
    .line 66
    move v2, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v2, v4

    .line 69
    :goto_0
    iget-object v5, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 70
    .line 71
    if-eq v5, v0, :cond_3

    .line 72
    .line 73
    iput-object v0, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 74
    .line 75
    move v0, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v0, v4

    .line 78
    :goto_1
    if-nez v2, :cond_4

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 92
    .line 93
    cmpl-float v2, v2, v0

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    iput v0, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 100
    .line 101
    .line 102
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    and-int/lit8 v2, v0, -0x71

    .line 109
    .line 110
    or-int/lit8 v2, v2, 0x30

    .line 111
    .line 112
    iget v5, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 113
    .line 114
    if-eq v5, v2, :cond_7

    .line 115
    .line 116
    iput v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 119
    .line 120
    .line 121
    :cond_7
    iget v2, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 122
    .line 123
    if-eq v2, v0, :cond_8

    .line 124
    .line 125
    iput v0, v1, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 128
    .line 129
    .line 130
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 131
    .line 132
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$1;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 141
    .line 142
    if-nez v0, :cond_9

    .line 143
    .line 144
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 151
    .line 152
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 153
    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 157
    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Ljava/lang/CharSequence;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 176
    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 182
    .line 183
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    if-eqz v0, :cond_c

    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    .line 198
    .line 199
    .line 200
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->b()V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Ljava/util/LinkedHashSet;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_d

    .line 239
    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 245
    .line 246
    invoke-interface {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_e

    .line 261
    .line 262
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 263
    .line 264
    .line 265
    :cond_e
    invoke-virtual {p0, v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_f
    const-string p0, "We already have an EditText, can only have one"

    .line 270
    .line 271
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method private setErrorIconVisible(Z)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :cond_0
    iput-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    .line 34
    .line 35
    iput-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const v0, 0x7f0a01e9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    const/16 v2, 0x8

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 4
    .line 5
    cmpl-float v1, v1, p1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    const-wide/16 v2, 0xa7

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$4;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    iget v0, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    new-array v2, v2, [F

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    aput v0, v2, v3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    aput p1, v2, v0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    .line 12
    and-int/lit8 v0, v0, -0x71

    .line 13
    .line 14
    or-int/lit8 v0, v0, 0x10

    .line 15
    .line 16
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 27
    .line 28
    .line 29
    check-cast p1, Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 18
    .line 19
    if-le v0, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->v(F)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v3, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->u(Landroid/content/res/ColorStateList;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 39
    .line 40
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne v1, v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f0400dd

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->b(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :cond_3
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Landroid/content/res/ColorStateList;)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 99
    .line 100
    if-le v1, v2, :cond_6

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Landroid/content/res/ColorStateList;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Ljava/lang/CharSequence;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ge v2, v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 89
    .line 90
    if-ne v1, v4, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U0:Z

    .line 9
    .line 10
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->b:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Landroid/text/TextPaint;

    .line 32
    .line 33
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:F

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    iget v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->q:F

    .line 39
    .line 40
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    .line 41
    .line 42
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:F

    .line 43
    .line 44
    const/high16 v5, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpl-float v5, v4, v5

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    .line 74
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 75
    .line 76
    sub-int/2addr v1, v2

    .line 77
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T0:Z

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    iput-object v1, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->C:[I

    .line 22
    .line 23
    iget-object v1, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v1, v3, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 44
    .line 45
    .line 46
    move v1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v1, v2

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 76
    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 81
    .line 82
    .line 83
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T0:Z

    .line 84
    .line 85
    return-void
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    neg-float p0, p0

    .line 42
    const/high16 v0, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float/2addr p0, v0

    .line 45
    :goto_1
    float-to-int p0, p0

    .line 46
    return p0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 48
    .line 49
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    .line 58
    .line 59
    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    neg-float p0, p0

    .line 69
    goto :goto_1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 14
    .line 15
    instance-of p0, p0, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public getBaseline()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr p0, v1

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 16
    .line 17
    return-object p0
.end method

.method public getBoxBackgroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxBackgroundMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->g()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->m()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->l()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getBoxStrokeColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBoxStrokeWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 2
    .line 3
    return p0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 2
    .line 3
    return p0
.end method

.method public getCounterMaxLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getEndIconMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 2
    .line 3
    return p0
.end method

.method public getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->j:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->m:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public getErrorCurrentTextColors()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getErrorTextCurrentColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->p:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getHintCollapsedTextHeight()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    neg-float p0, p0

    .line 25
    return p0
.end method

.method public final getHintCurrentCollapsedTextColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 2
    .line 3
    return p0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-ne v0, v4, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 19
    .line 20
    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 25
    .line 26
    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 33
    .line 34
    invoke-direct {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 38
    .line 39
    :goto_0
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 48
    .line 49
    const-string v1, " is illegal; only @BoxBackgroundMode constants are supported."

    .line 50
    .line 51
    invoke-static {v0, p0, v1}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 60
    .line 61
    invoke-direct {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 65
    .line 66
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    .line 76
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 77
    .line 78
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 99
    .line 100
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 106
    .line 107
    .line 108
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 109
    .line 110
    const/high16 v2, 0x40000000    # 2.0f

    .line 111
    .line 112
    if-ne v0, v1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 127
    .line 128
    cmpl-float v0, v0, v2

    .line 129
    .line 130
    if-ltz v0, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const v3, 0x7f0700d6

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->d(Landroid/content/Context;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const v3, 0x7f0700d5

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 168
    .line 169
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 170
    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 174
    .line 175
    if-eq v0, v1, :cond_7

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 191
    .line 192
    cmpl-float v0, v0, v2

    .line 193
    .line 194
    if-ltz v0, :cond_8

    .line 195
    .line 196
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 197
    .line 198
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const v3, 0x7f0700d4

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 216
    .line 217
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const v5, 0x7f0700d3

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->d(Landroid/content/Context;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 247
    .line 248
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    const v3, 0x7f0700d2

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 266
    .line 267
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    const v5, 0x7f0700d1

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 283
    .line 284
    .line 285
    :cond_9
    :goto_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 286
    .line 287
    if-eqz v0, :cond_a

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 290
    .line 291
    .line 292
    :cond_a
    return-void
.end method

.method public final i()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

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
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 23
    .line 24
    iget-object v4, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 25
    .line 26
    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v4, v5, :cond_1

    .line 34
    .line 35
    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->d:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 39
    .line 40
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-interface {v4, v3, v6}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;I)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput-boolean v3, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 49
    .line 50
    iget-object v4, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 51
    .line 52
    const/high16 v6, 0x40000000    # 2.0f

    .line 53
    .line 54
    const/4 v7, 0x5

    .line 55
    const v8, 0x800005

    .line 56
    .line 57
    .line 58
    const/16 v9, 0x11

    .line 59
    .line 60
    if-eq v1, v9, :cond_7

    .line 61
    .line 62
    and-int/lit8 v10, v1, 0x7

    .line 63
    .line 64
    if-ne v10, v5, :cond_2

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_2
    and-int v10, v1, v8

    .line 68
    .line 69
    if-eq v10, v8, :cond_5

    .line 70
    .line 71
    and-int/lit8 v10, v1, 0x5

    .line 72
    .line 73
    if-ne v10, v7, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 77
    .line 78
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    int-to-float v3, v3

    .line 81
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    :goto_1
    sub-float/2addr v3, v10

    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    :goto_2
    int-to-float v3, v3

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 92
    .line 93
    iget v3, v4, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    int-to-float v3, v3

    .line 99
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    :goto_4
    int-to-float v3, v0

    .line 105
    div-float/2addr v3, v6

    .line 106
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    div-float/2addr v10, v6

    .line 111
    goto :goto_1

    .line 112
    :goto_5
    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/graphics/RectF;

    .line 113
    .line 114
    iput v3, v10, Landroid/graphics/RectF;->left:F

    .line 115
    .line 116
    iget v11, v4, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    int-to-float v11, v11

    .line 119
    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 120
    .line 121
    if-eq v1, v9, :cond_d

    .line 122
    .line 123
    and-int/lit8 v9, v1, 0x7

    .line 124
    .line 125
    if-ne v9, v5, :cond_8

    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_8
    and-int v0, v1, v8

    .line 129
    .line 130
    if-eq v0, v8, :cond_b

    .line 131
    .line 132
    and-int/lit8 v0, v1, 0x5

    .line 133
    .line 134
    if-ne v0, v7, :cond_9

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_9
    iget-boolean v0, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 138
    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    :goto_6
    int-to-float v0, v0

    .line 144
    goto :goto_a

    .line 145
    :cond_a
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    :goto_7
    add-float/2addr v0, v3

    .line 150
    goto :goto_a

    .line 151
    :cond_b
    :goto_8
    iget-boolean v0, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 152
    .line 153
    if-eqz v0, :cond_c

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    goto :goto_7

    .line 160
    :cond_c
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_d
    :goto_9
    int-to-float v0, v0

    .line 164
    div-float/2addr v0, v6

    .line 165
    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b()F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    div-float/2addr v1, v6

    .line 170
    add-float/2addr v0, v1

    .line 171
    :goto_a
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 172
    .line 173
    iget-object v0, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 174
    .line 175
    iget v1, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    .line 184
    .line 185
    iget v1, v2, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 191
    .line 192
    .line 193
    iget v0, v10, Landroid/graphics/RectF;->left:F

    .line 194
    .line 195
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 196
    .line 197
    int-to-float v1, v1

    .line 198
    sub-float/2addr v0, v1

    .line 199
    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 200
    .line 201
    iget v0, v10, Landroid/graphics/RectF;->right:F

    .line 202
    .line 203
    add-float/2addr v0, v1

    .line 204
    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 205
    .line 206
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 207
    .line 208
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 209
    .line 210
    const/4 v1, 0x0

    .line 211
    iput v1, v10, Landroid/graphics/RectF;->top:F

    .line 212
    .line 213
    int-to-float v0, v0

    .line 214
    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    neg-int v0, v0

    .line 221
    int-to-float v0, v0

    .line 222
    invoke-virtual {v10, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 223
    .line 224
    .line 225
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 226
    .line 227
    check-cast p0, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    iget v0, v10, Landroid/graphics/RectF;->left:F

    .line 233
    .line 234
    iget v1, v10, Landroid/graphics/RectF;->top:F

    .line 235
    .line 236
    iget v2, v10, Landroid/graphics/RectF;->right:F

    .line 237
    .line 238
    iget v3, v10, Landroid/graphics/RectF;->bottom:F

    .line 239
    .line 240
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/CutoutDrawable;->z(FFFF)V

    .line 241
    .line 242
    .line 243
    return-void
.end method

.method public final k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v2, p0

    .line 29
    array-length v3, p0

    .line 30
    array-length v4, v1

    .line 31
    add-int/2addr v3, v4

    .line 32
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/4 v3, 0x0

    .line 37
    array-length v4, v1

    .line 38
    invoke-static {v1, v3, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 9
    .line 10
    .line 11
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const v0, -0xff01

    .line 13
    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :catch_0
    :goto_0
    const p2, 0x7f120157

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const p2, 0x7f060058

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final n(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    if-le p1, v1, :cond_1

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v4

    .line 34
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 43
    .line 44
    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    const v7, 0x7f110029

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const v7, 0x7f110028

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    filled-new-array {v8, v6}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 75
    .line 76
    if-eq v0, v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 79
    .line 80
    .line 81
    :cond_3
    sget-object v1, Landroidx/core/text/BidiFormatter;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne v1, v2, :cond_4

    .line 92
    .line 93
    sget-object v1, Landroidx/core/text/BidiFormatter;->e:Landroidx/core/text/BidiFormatter;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    sget-object v1, Landroidx/core/text/BidiFormatter;->d:Landroidx/core/text/BidiFormatter;

    .line 97
    .line 98
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 109
    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    filled-new-array {p1, v6}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const v6, 0x7f11002a

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v5, Landroidx/core/text/TextDirectionHeuristicsCompat;->a:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 129
    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    invoke-virtual {v1, p1}, Landroidx/core/text/BidiFormatter;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :goto_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 145
    .line 146
    if-eqz p1, :cond_6

    .line 147
    .line 148
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 149
    .line 150
    if-eq v0, p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {p0, v4, v4}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 159
    .line 160
    .line 161
    :cond_6
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz p1, :cond_13

    .line 7
    .line 8
    sget-object p2, Lcom/google/android/material/internal/DescendantOffsetUtils;->a:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 p5, 0x0

    .line 21
    invoke-virtual {p4, p5, p5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    .line 23
    .line 24
    sget-object p2, Lcom/google/android/material/internal/DescendantOffsetUtils;->a:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/graphics/Matrix;

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    new-instance p3, Landroid/graphics/Matrix;

    .line 35
    .line 36
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/google/android/material/internal/DescendantOffsetUtils;->a(Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/google/android/material/internal/DescendantOffsetUtils;->b:Ljava/lang/ThreadLocal;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/graphics/RectF;

    .line 56
    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    new-instance p2, Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p2, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 71
    .line 72
    .line 73
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    const/high16 p3, 0x3f000000    # 0.5f

    .line 76
    .line 77
    add-float/2addr p1, p3

    .line 78
    float-to-int p1, p1

    .line 79
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    add-float/2addr v0, p3

    .line 82
    float-to-int v0, v0

    .line 83
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    add-float/2addr v1, p3

    .line 86
    float-to-int v1, v1

    .line 87
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 88
    .line 89
    add-float/2addr p2, p3

    .line 90
    float-to-int p2, p2

    .line 91
    invoke-virtual {p4, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 99
    .line 100
    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 101
    .line 102
    sub-int p3, p2, p3

    .line 103
    .line 104
    iget v0, p4, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 112
    .line 113
    if-eqz p1, :cond_13

    .line 114
    .line 115
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 122
    .line 123
    iget p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 124
    .line 125
    cmpl-float p3, p3, p1

    .line 126
    .line 127
    if-eqz p3, :cond_3

    .line 128
    .line 129
    iput p1, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    and-int/lit8 p3, p1, -0x71

    .line 141
    .line 142
    or-int/lit8 p3, p3, 0x30

    .line 143
    .line 144
    iget v0, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 145
    .line 146
    if-eq v0, p3, :cond_4

    .line 147
    .line 148
    iput p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 154
    .line 155
    if-eq p3, p1, :cond_5

    .line 156
    .line 157
    iput p1, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 160
    .line 161
    .line 162
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 163
    .line 164
    if-eqz p1, :cond_12

    .line 165
    .line 166
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    const/4 p3, 0x1

    .line 173
    if-ne p1, p3, :cond_6

    .line 174
    .line 175
    move p5, p3

    .line 176
    :cond_6
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/graphics/Rect;

    .line 179
    .line 180
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 181
    .line 182
    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 183
    .line 184
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    if-eq p1, p3, :cond_a

    .line 189
    .line 190
    const/4 v3, 0x2

    .line 191
    if-eq p1, v3, :cond_9

    .line 192
    .line 193
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    add-int/2addr p1, v1

    .line 200
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 201
    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    if-nez p5, :cond_7

    .line 205
    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    sub-int/2addr p1, v1

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    add-int/2addr p1, v1

    .line 216
    :cond_7
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 223
    .line 224
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 225
    .line 226
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    sub-int/2addr p1, v1

    .line 233
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 234
    .line 235
    if-eqz v1, :cond_8

    .line 236
    .line 237
    if-eqz p5, :cond_8

    .line 238
    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 240
    .line 241
    .line 242
    move-result p5

    .line 243
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    sub-int/2addr p5, v1

    .line 248
    add-int/2addr p1, p5

    .line 249
    :cond_8
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    add-int/2addr p1, v1

    .line 259
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    iget p1, p4, Landroid/graphics/Rect;->top:I

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    .line 264
    .line 265
    .line 266
    move-result p5

    .line 267
    sub-int/2addr p1, p5

    .line 268
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 269
    .line 270
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 271
    .line 272
    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 273
    .line 274
    invoke-virtual {p5}, Landroid/view/View;->getPaddingRight()I

    .line 275
    .line 276
    .line 277
    move-result p5

    .line 278
    sub-int/2addr p1, p5

    .line 279
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    add-int/2addr p1, v1

    .line 289
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 290
    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    if-nez p5, :cond_b

    .line 294
    .line 295
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    sub-int/2addr p1, v1

    .line 300
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    add-int/2addr p1, v1

    .line 305
    :cond_b
    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 306
    .line 307
    iget p1, p4, Landroid/graphics/Rect;->top:I

    .line 308
    .line 309
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    .line 310
    .line 311
    add-int/2addr p1, v1

    .line 312
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 313
    .line 314
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 315
    .line 316
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    sub-int/2addr p1, v1

    .line 323
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 324
    .line 325
    if-eqz v1, :cond_c

    .line 326
    .line 327
    if-eqz p5, :cond_c

    .line 328
    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 330
    .line 331
    .line 332
    move-result p5

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    sub-int/2addr p5, v1

    .line 338
    add-int/2addr p1, p5

    .line 339
    :cond_c
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 340
    .line 341
    :goto_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 342
    .line 343
    iget p5, v0, Landroid/graphics/Rect;->top:I

    .line 344
    .line 345
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 346
    .line 347
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 348
    .line 349
    iget-object v3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 350
    .line 351
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 352
    .line 353
    if-ne v4, p1, :cond_d

    .line 354
    .line 355
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 356
    .line 357
    if-ne v4, p5, :cond_d

    .line 358
    .line 359
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 360
    .line 361
    if-ne v4, v1, :cond_d

    .line 362
    .line 363
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 364
    .line 365
    if-ne v4, v2, :cond_d

    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_d
    invoke-virtual {v3, p1, p5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 369
    .line 370
    .line 371
    iput-boolean p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Z

    .line 372
    .line 373
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->f()V

    .line 374
    .line 375
    .line 376
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 377
    .line 378
    if-eqz p1, :cond_11

    .line 379
    .line 380
    iget-object p1, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 381
    .line 382
    iget p5, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 383
    .line 384
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 385
    .line 386
    .line 387
    iget-object p5, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 388
    .line 389
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 390
    .line 391
    .line 392
    const/4 p5, 0x0

    .line 393
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    neg-float p1, p1

    .line 401
    iget p5, p4, Landroid/graphics/Rect;->left:I

    .line 402
    .line 403
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 404
    .line 405
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    add-int/2addr v1, p5

    .line 410
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 411
    .line 412
    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 413
    .line 414
    if-ne p5, p3, :cond_e

    .line 415
    .line 416
    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 417
    .line 418
    invoke-virtual {p5}, Landroid/widget/TextView;->getMinLines()I

    .line 419
    .line 420
    .line 421
    move-result p5

    .line 422
    if-gt p5, p3, :cond_e

    .line 423
    .line 424
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    .line 425
    .line 426
    .line 427
    move-result p5

    .line 428
    int-to-float p5, p5

    .line 429
    const/high16 v1, 0x40000000    # 2.0f

    .line 430
    .line 431
    div-float v1, p1, v1

    .line 432
    .line 433
    sub-float/2addr p5, v1

    .line 434
    float-to-int p5, p5

    .line 435
    goto :goto_3

    .line 436
    :cond_e
    iget p5, p4, Landroid/graphics/Rect;->top:I

    .line 437
    .line 438
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    add-int/2addr p5, v1

    .line 445
    :goto_3
    iput p5, v0, Landroid/graphics/Rect;->top:I

    .line 446
    .line 447
    iget p5, p4, Landroid/graphics/Rect;->right:I

    .line 448
    .line 449
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 450
    .line 451
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    sub-int/2addr p5, v1

    .line 456
    iput p5, v0, Landroid/graphics/Rect;->right:I

    .line 457
    .line 458
    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 459
    .line 460
    if-ne p5, p3, :cond_f

    .line 461
    .line 462
    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 463
    .line 464
    invoke-virtual {p5}, Landroid/widget/TextView;->getMinLines()I

    .line 465
    .line 466
    .line 467
    move-result p5

    .line 468
    if-gt p5, p3, :cond_f

    .line 469
    .line 470
    iget p4, v0, Landroid/graphics/Rect;->top:I

    .line 471
    .line 472
    int-to-float p4, p4

    .line 473
    add-float/2addr p4, p1

    .line 474
    float-to-int p1, p4

    .line 475
    goto :goto_4

    .line 476
    :cond_f
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    .line 477
    .line 478
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 479
    .line 480
    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 481
    .line 482
    .line 483
    move-result p4

    .line 484
    sub-int/2addr p1, p4

    .line 485
    :goto_4
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 486
    .line 487
    iget p4, v0, Landroid/graphics/Rect;->left:I

    .line 488
    .line 489
    iget p5, v0, Landroid/graphics/Rect;->top:I

    .line 490
    .line 491
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 492
    .line 493
    iget-object v1, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 494
    .line 495
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 496
    .line 497
    if-ne v2, p4, :cond_10

    .line 498
    .line 499
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 500
    .line 501
    if-ne v2, p5, :cond_10

    .line 502
    .line 503
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 504
    .line 505
    if-ne v2, v0, :cond_10

    .line 506
    .line 507
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 508
    .line 509
    if-ne v2, p1, :cond_10

    .line 510
    .line 511
    goto :goto_5

    .line 512
    :cond_10
    invoke-virtual {v1, p4, p5, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 513
    .line 514
    .line 515
    iput-boolean p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Z

    .line 516
    .line 517
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->f()V

    .line 518
    .line 519
    .line 520
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    if-eqz p1, :cond_13

    .line 528
    .line 529
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 530
    .line 531
    if-nez p1, :cond_13

    .line 532
    .line 533
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 534
    .line 535
    .line 536
    return-void

    .line 537
    :cond_11
    invoke-static {}, Lio/sentry/d;->d()V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :cond_12
    invoke-static {}, Lio/sentry/d;->d()V

    .line 542
    .line 543
    .line 544
    :cond_13
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v0, p1, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 49
    .line 50
    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$3;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->j:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->l:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->m:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->n:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->o:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->p:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->l:Ljava/lang/CharSequence;

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 29
    .line 30
    iget-boolean v0, v0, Lcom/google/android/material/internal/CheckableImageButton;->m:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->m:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->n:Ljava/lang/CharSequence;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->o:Ljava/lang/CharSequence;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iput-object p0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->p:Ljava/lang/CharSequence;

    .line 56
    .line 57
    return-object v1
.end method

.method public final p()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-lez v6, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    sub-int/2addr v0, v6

    .line 40
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 45
    .line 46
    if-eq v6, v0, :cond_3

    .line 47
    .line 48
    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 49
    .line 50
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    .line 54
    .line 55
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    .line 56
    .line 57
    invoke-virtual {v6, v1, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    aget-object v6, v0, v1

    .line 67
    .line 68
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    .line 69
    .line 70
    if-eq v6, v7, :cond_5

    .line 71
    .line 72
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 73
    .line 74
    aget-object v8, v0, v5

    .line 75
    .line 76
    aget-object v9, v0, v3

    .line 77
    .line 78
    aget-object v0, v0, v4

    .line 79
    .line 80
    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 95
    .line 96
    aget-object v7, v0, v5

    .line 97
    .line 98
    aget-object v8, v0, v3

    .line 99
    .line 100
    aget-object v0, v0, v4

    .line 101
    .line 102
    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    .line 106
    .line 107
    :goto_0
    move v0, v5

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v0, v1

    .line 110
    :goto_1
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_7

    .line 117
    .line 118
    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 119
    .line 120
    if-eqz v6, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_7

    .line 127
    .line 128
    :cond_6
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    .line 129
    .line 130
    if-eqz v6, :cond_b

    .line 131
    .line 132
    :cond_7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:Landroid/widget/LinearLayout;

    .line 133
    .line 134
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-lez v6, :cond_b

    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    sub-int/2addr v2, v6

    .line 153
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_8

    .line 158
    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    add-int/2addr v7, v2

    .line 164
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    .line 170
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    add-int/2addr v2, v7

    .line 175
    :cond_8
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 176
    .line 177
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 182
    .line 183
    if-eqz v7, :cond_9

    .line 184
    .line 185
    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    .line 186
    .line 187
    if-eq v8, v2, :cond_9

    .line 188
    .line 189
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    .line 190
    .line 191
    invoke-virtual {v7, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 195
    .line 196
    aget-object v1, v6, v1

    .line 197
    .line 198
    aget-object v2, v6, v5

    .line 199
    .line 200
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 201
    .line 202
    aget-object v3, v6, v4

    .line 203
    .line 204
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    .line 207
    return v5

    .line 208
    :cond_9
    if-nez v7, :cond_a

    .line 209
    .line 210
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 211
    .line 212
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 216
    .line 217
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    .line 218
    .line 219
    invoke-virtual {v7, v1, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .line 221
    .line 222
    :cond_a
    aget-object v2, v6, v3

    .line 223
    .line 224
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 225
    .line 226
    if-eq v2, v3, :cond_d

    .line 227
    .line 228
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 231
    .line 232
    aget-object v0, v6, v1

    .line 233
    .line 234
    aget-object v1, v6, v5

    .line 235
    .line 236
    aget-object v2, v6, v4

    .line 237
    .line 238
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    .line 240
    .line 241
    return v5

    .line 242
    :cond_b
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 243
    .line 244
    if-eqz v6, :cond_d

    .line 245
    .line 246
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 247
    .line 248
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    aget-object v3, v6, v3

    .line 253
    .line 254
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 255
    .line 256
    if-ne v3, v7, :cond_c

    .line 257
    .line 258
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 259
    .line 260
    aget-object v1, v6, v1

    .line 261
    .line 262
    aget-object v3, v6, v5

    .line 263
    .line 264
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:Landroid/graphics/drawable/Drawable;

    .line 265
    .line 266
    aget-object v4, v6, v4

    .line 267
    .line 268
    invoke-virtual {v0, v1, v3, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_c
    move v5, v0

    .line 273
    :goto_2
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:Landroid/graphics/drawable/ColorDrawable;

    .line 274
    .line 275
    return v5

    .line 276
    :cond_d
    return v0
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->a:[I

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object p0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, -0x1

    .line 41
    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    invoke-static {p0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 19
    .line 20
    if-eq p0, v2, :cond_0

    .line 21
    .line 22
    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final s(ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v4, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v8, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    iget-object v9, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    if-eq v9, v7, :cond_2

    .line 57
    .line 58
    iput-object v7, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 v7, 0x0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const v6, -0x101009e

    .line 73
    .line 74
    .line 75
    filled-new-array {v6}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v0, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    :cond_3
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v5, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    if-eq v5, v0, :cond_8

    .line 97
    .line 98
    iput-object v0, v8, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    if-eqz v6, :cond_6

    .line 105
    .line 106
    iget-object v0, v5, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move-object v0, v7

    .line 116
    :goto_2
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    if-eqz v4, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_3
    if-nez v1, :cond_f

    .line 146
    .line 147
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q0:Z

    .line 148
    .line 149
    if-eqz v0, :cond_f

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_9
    if-nez p2, :cond_a

    .line 161
    .line 162
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 163
    .line 164
    if-nez p2, :cond_10

    .line 165
    .line 166
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 167
    .line 168
    if-eqz p2, :cond_b

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_b

    .line 175
    .line 176
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 179
    .line 180
    .line 181
    :cond_b
    const/4 p2, 0x0

    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R0:Z

    .line 185
    .line 186
    if-eqz p1, :cond_c

    .line 187
    .line 188
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_c
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->j(F)V

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 202
    .line 203
    check-cast p1, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/google/android/material/textfield/CutoutDrawable;->H:Landroid/graphics/RectF;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_d

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_d

    .line 218
    .line 219
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 220
    .line 221
    check-cast p1, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 222
    .line 223
    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/material/textfield/CutoutDrawable;->z(FFFF)V

    .line 224
    .line 225
    .line 226
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 227
    .line 228
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    if-eqz p1, :cond_e

    .line 231
    .line 232
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 233
    .line 234
    if-eqz p2, :cond_e

    .line 235
    .line 236
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 240
    .line 241
    const/4 p2, 0x4

    .line 242
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_f
    :goto_5
    if-nez p2, :cond_11

    .line 253
    .line 254
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 255
    .line 256
    if-eqz p2, :cond_10

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_10
    return-void

    .line 260
    :cond_11
    :goto_6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 261
    .line 262
    if-eqz p2, :cond_12

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_12

    .line 269
    .line 270
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S0:Landroid/animation/ValueAnimator;

    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 273
    .line 274
    .line 275
    :cond_12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 276
    .line 277
    if-eqz p1, :cond_13

    .line 278
    .line 279
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R0:Z

    .line 280
    .line 281
    if-eqz p1, :cond_13

    .line 282
    .line 283
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_13
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->j(F)V

    .line 288
    .line 289
    .line 290
    :goto_7
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_14

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 299
    .line 300
    .line 301
    :cond_14
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 302
    .line 303
    if-nez p1, :cond_15

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_15
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    :goto_8
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 321
    .line 322
    .line 323
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 8
    .line 9
    const v0, -0x101009e

    .line 10
    .line 11
    .line 12
    filled-new-array {v0}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:I

    .line 22
    .line 23
    const v0, 0x101009c

    .line 24
    .line 25
    .line 26
    const v2, 0x101009e

    .line 27
    .line 28
    .line 29
    filled-new-array {v0, v2}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 38
    .line 39
    const v0, 0x1010367

    .line 40
    .line 41
    .line 42
    filled-new-array {v0, v2}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 12
    .line 13
    const v0, -0x101009e

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

    .line 26
    .line 27
    const v0, 0x1010367

    .line 28
    .line 29
    .line 30
    const v2, 0x101009e

    .line 31
    .line 32
    .line 33
    filled-new-array {v0, v2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 42
    .line 43
    const v0, 0x101009c

    .line 44
    .line 45
    .line 46
    filled-new-array {v0, v2}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-direct {v3, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const v2, 0x7f0a01e6

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/Typeface;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->a(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const v2, 0x7f07019b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 78
    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {v1, v3, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->h(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    .line 12
    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Z

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->j(Landroid/view/ViewGroup;Z)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEndIconMode(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 22
    .line 23
    invoke-interface {v2, p0, v0}, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/EndIconDelegate;->b(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->a()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "The current box background mode "

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, " is not supported by the end icon mode "

    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->c()V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->j:Ljava/lang/CharSequence;

    .line 28
    .line 29
    iget-object p0, v0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget p0, v0, Lcom/google/android/material/textfield/IndicatorViewController;->h:I

    .line 35
    .line 36
    if-eq p0, v2, :cond_2

    .line 37
    .line 38
    iput v2, v0, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 39
    .line 40
    :cond_2
    iget v1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 41
    .line 42
    iget-object v2, v0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-virtual {v0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->i(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->j(IIZ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->g()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->m:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const v2, 0x7f0a01e7

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->u:Landroid/graphics/Typeface;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->n:I

    .line 48
    .line 49
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->n:I

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    .line 57
    invoke-virtual {v3, v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->o:Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->o:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->m:Ljava/lang/CharSequence;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->m:Ljava/lang/CharSequence;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->a(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->g()V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->h(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 116
    .line 117
    .line 118
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    .line 119
    .line 120
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 26
    iget-boolean p1, p1, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->n:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->o:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q0:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->q:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    iget-boolean v0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->q:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->c()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->p:Ljava/lang/CharSequence;

    .line 30
    .line 31
    iget-object p0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget p0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->h:I

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-eq p0, v0, :cond_3

    .line 40
    .line 41
    iput v0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 42
    .line 43
    :cond_3
    iget v0, v1, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 44
    .line 45
    iget-object v2, v1, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v1, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->i(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v1, p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->j(IIZ)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->t:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->q:Z

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const v2, 0x7f0a01e8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->u:Landroid/graphics/Typeface;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->s:I

    .line 59
    .line 60
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->s:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->t:Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->t:Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->a(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->c()V

    .line 89
    .line 90
    .line 91
    iget v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->h:I

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    if-ne v3, v4, :cond_5

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    iput v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 98
    .line 99
    :cond_5
    iget v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->i:I

    .line 100
    .line 101
    iget-object v5, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {p0, v5, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->i(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->j(IIZ)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->h(Landroidx/appcompat/widget/AppCompatTextView;I)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 121
    .line 122
    .line 123
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->q:Z

    .line 124
    .line 125
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->s:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Ljava/lang/CharSequence;

    .line 57
    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 74
    .line 75
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->h(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->s(ZZ)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->t(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->l(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/graphics/PorterDuff$Mode;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    .line 16
    invoke-static {p0, v0, p1, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    .line 16
    invoke-static {p0, v1, v2, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->d(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    if-eq v1, p1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/16 v2, 0x8

    .line 19
    .line 20
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:Landroid/graphics/Typeface;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P0:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-boolean v2, v1, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    iput-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, v3

    .line 26
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 27
    .line 28
    if-eq v4, p1, :cond_2

    .line 29
    .line 30
    iput-object p1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v2, v3

    .line 34
    :goto_1
    if-nez v1, :cond_3

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->u:Landroid/graphics/Typeface;

    .line 44
    .line 45
    if-eq p1, v1, :cond_6

    .line 46
    .line 47
    iput-object p1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->u:Landroid/graphics/Typeface;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget-object v0, v0, Lcom/google/android/material/textfield/IndicatorViewController;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    .line 62
    .line 63
    :cond_6
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    if-eqz p0, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    .line 69
    .line 70
    :cond_7
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 45
    .line 46
    const/4 p1, 0x4

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 17
    .line 18
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x7f0700da

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sget-object v4, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x8

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final w(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    const v2, 0x1010367

    .line 10
    .line 11
    .line 12
    const v3, 0x101009e

    .line 13
    .line 14
    .line 15
    filled-new-array {v2, v3}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    const v4, 0x10102fe

    .line 26
    .line 27
    .line 28
    filled-new-array {v4, v3}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 47
    .line 48
    return-void
.end method

.method public final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 22
    .line 23
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const v2, 0x7f0700da

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sget-object v4, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Ljava/lang/CharSequence;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 v3, 0x8

    .line 23
    .line 24
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v1, v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->c(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final z()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v0, v2

    .line 33
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/widget/EditText;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move v3, v1

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    :goto_2
    move v3, v2

    .line 53
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, -0x1

    .line 58
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->N0:I

    .line 63
    .line 64
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_8

    .line 72
    .line 73
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 78
    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_6
    iget-object v4, v6, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    if-eqz v4, :cond_7

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto :goto_4

    .line 90
    :cond_7
    move v4, v5

    .line 91
    :goto_4
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_8
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Z

    .line 95
    .line 96
    if-eqz v4, :cond_a

    .line 97
    .line 98
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    if-eqz v4, :cond_a

    .line 101
    .line 102
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->I0:Landroid/content/res/ColorStateList;

    .line 103
    .line 104
    if-eqz v7, :cond_9

    .line 105
    .line 106
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->w(ZZ)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_9
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_a
    if-eqz v0, :cond_b

    .line 118
    .line 119
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:I

    .line 120
    .line 121
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_b
    if-eqz v3, :cond_c

    .line 125
    .line 126
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:I

    .line 127
    .line 128
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_c
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:I

    .line 132
    .line 133
    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:I

    .line 134
    .line 135
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_d

    .line 140
    .line 141
    iget-boolean v4, v6, Lcom/google/android/material/textfield/IndicatorViewController;->k:Z

    .line 142
    .line 143
    if-eqz v4, :cond_d

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_d

    .line 150
    .line 151
    move v1, v2

    .line 152
    :cond_d
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Landroid/content/res/ColorStateList;

    .line 158
    .line 159
    invoke-virtual {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    invoke-virtual {p0, v1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:Landroid/content/res/ColorStateList;

    .line 170
    .line 171
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 172
    .line 173
    invoke-virtual {p0, v4, v1}, Lcom/google/android/material/textfield/TextInputLayout;->k(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    instance-of v1, v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 184
    .line 185
    if-eqz v1, :cond_10

    .line 186
    .line 187
    invoke-virtual {v6}, Lcom/google/android/material/textfield/IndicatorViewController;->e()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_f

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_f

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v6, v6, Lcom/google/android/material/textfield/IndicatorViewController;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    if-eqz v6, :cond_e

    .line 210
    .line 211
    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    :cond_e
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 223
    .line 224
    .line 225
    :cond_10
    :goto_6
    if-eqz v0, :cond_11

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_11

    .line 232
    .line 233
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:I

    .line 234
    .line 235
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_11
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    .line 239
    .line 240
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 241
    .line 242
    :goto_7
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 243
    .line 244
    const/4 v4, 0x2

    .line 245
    if-ne v1, v4, :cond_13

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_13

    .line 252
    .line 253
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O0:Z

    .line 254
    .line 255
    if-nez v1, :cond_13

    .line 256
    .line 257
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    .line 258
    .line 259
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    .line 260
    .line 261
    if-eq v1, v4, :cond_13

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_12

    .line 268
    .line 269
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 270
    .line 271
    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    .line 272
    .line 273
    const/4 v4, 0x0

    .line 274
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/google/android/material/textfield/CutoutDrawable;->z(FFFF)V

    .line 275
    .line 276
    .line 277
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 278
    .line 279
    .line 280
    :cond_13
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    .line 281
    .line 282
    if-ne v1, v2, :cond_17

    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_14

    .line 289
    .line 290
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K0:I

    .line 291
    .line 292
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_14
    if-eqz v3, :cond_15

    .line 296
    .line 297
    if-nez v0, :cond_15

    .line 298
    .line 299
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M0:I

    .line 300
    .line 301
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_15
    if-eqz v0, :cond_16

    .line 305
    .line 306
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 307
    .line 308
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_16
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J0:I

    .line 312
    .line 313
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:I

    .line 314
    .line 315
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    .line 316
    .line 317
    .line 318
    :cond_18
    :goto_9
    return-void
.end method
