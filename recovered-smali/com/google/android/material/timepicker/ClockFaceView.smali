.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/RadialViewGroup;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;


# instance fields
.field public final B:Lcom/google/android/material/timepicker/ClockHandView;

.field public final C:Landroid/graphics/Rect;

.field public final D:Landroid/graphics/RectF;

.field public final E:Landroid/util/SparseArray;

.field public final F:Landroidx/core/view/AccessibilityDelegateCompat;

.field public final G:[I

.field public final H:[F

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:[Ljava/lang/String;

.field public N:F

.field public final O:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->C:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->D:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->E:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    new-array v1, v1, [F

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->H:[F

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/material/R$styleable;->d:[I

    .line 34
    .line 35
    const v2, 0x7f1202ea

    .line 36
    .line 37
    .line 38
    const v3, 0x7f040265

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-static {p1, p2, v2}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->O:Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const v5, 0x7f0d003e

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    const v4, 0x7f0a0120

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/google/android/material/timepicker/ClockHandView;

    .line 74
    .line 75
    iput-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->B:Lcom/google/android/material/timepicker/ClockHandView;

    .line 76
    .line 77
    const v5, 0x7f0700c4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iput v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->I:I

    .line 85
    .line 86
    const v5, 0x10100a1

    .line 87
    .line 88
    .line 89
    filled-new-array {v5}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    filled-new-array {v5, v5, v3}, [I

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->G:[I

    .line 110
    .line 111
    iget-object v3, v4, Lcom/google/android/material/timepicker/ClockHandView;->j:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const v5, 0x7f060093

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v5, v4}, Landroidx/core/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-static {p1, p2, v4}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_0

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/RadialViewGroup;->setBackgroundColor(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v3, Lcom/google/android/material/timepicker/ClockFaceView$1;

    .line 155
    .line 156
    invoke-direct {v3, p0}, Lcom/google/android/material/timepicker/ClockFaceView$1;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/google/android/material/timepicker/ClockFaceView$2;

    .line 169
    .line 170
    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ClockFaceView$2;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 171
    .line 172
    .line 173
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->F:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 174
    .line 175
    const/16 p1, 0xc

    .line 176
    .line 177
    new-array p1, p1, [Ljava/lang/String;

    .line 178
    .line 179
    const-string p2, ""

    .line 180
    .line 181
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:[Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    move v2, v4

    .line 199
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:[Ljava/lang/String;

    .line 200
    .line 201
    array-length v3, v3

    .line 202
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-ge v2, v3, :cond_3

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Landroid/widget/TextView;

    .line 213
    .line 214
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:[Ljava/lang/String;

    .line 215
    .line 216
    array-length v5, v5

    .line 217
    if-lt v2, v5, :cond_1

    .line 218
    .line 219
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_1
    if-nez v3, :cond_2

    .line 227
    .line 228
    const v3, 0x7f0d003d

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Landroid/widget/TextView;

    .line 236
    .line 237
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:[Ljava/lang/String;

    .line 247
    .line 248
    aget-object v5, v5, v2

    .line 249
    .line 250
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    const v5, 0x7f0a0130

    .line 254
    .line 255
    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v3, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->F:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 264
    .line 265
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 266
    .line 267
    .line 268
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->O:Landroid/content/res/ColorStateList;

    .line 269
    .line 270
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 271
    .line 272
    .line 273
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_3
    const p1, 0x7f0700e0

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 284
    .line 285
    const p1, 0x7f0700e1

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:I

    .line 293
    .line 294
    const p1, 0x7f0700ca

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:I

    .line 302
    .line 303
    return-void

    .line 304
    nop

    .line 305
    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->B:Lcom/google/android/material/timepicker/ClockHandView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/timepicker/ClockHandView;->n:Landroid/graphics/RectF;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->E:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/widget/TextView;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->C:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->D:Landroid/graphics/RectF;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v3, v4

    .line 56
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 63
    .line 64
    sub-float/2addr v5, v6

    .line 65
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 70
    .line 71
    sub-float/2addr v6, v3

    .line 72
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/high16 v7, 0x3f000000    # 0.5f

    .line 77
    .line 78
    mul-float/2addr v7, v3

    .line 79
    iget-object v9, p0, Lcom/google/android/material/timepicker/ClockFaceView;->H:[F

    .line 80
    .line 81
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 82
    .line 83
    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockFaceView;->G:[I

    .line 84
    .line 85
    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 86
    .line 87
    .line 88
    move-object v3, v4

    .line 89
    :goto_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:[Ljava/lang/String;

    .line 10
    .line 11
    array-length p0, p0

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p1, p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->a(III)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->j(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:I

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    div-float/2addr v1, p2

    .line 22
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:I

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    div-float/2addr p2, p1

    .line 26
    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    div-float/2addr v0, p1

    .line 37
    float-to-int p1, v0

    .line 38
    const/high16 p2, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 45
    .line 46
    .line 47
    invoke-super {p0, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
