.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public A:F

.field public B:F

.field public C:[I

.field public D:Z

.field public final E:Landroid/text/TextPaint;

.field public final F:Landroid/text/TextPaint;

.field public G:Landroid/animation/TimeInterpolator;

.field public H:Landroid/animation/TimeInterpolator;

.field public I:F

.field public J:F

.field public K:F

.field public L:Landroid/content/res/ColorStateList;

.field public M:F

.field public N:Landroid/text/StaticLayout;

.field public O:Ljava/lang/CharSequence;

.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public b:Z

.field public c:F

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroid/graphics/RectF;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Landroid/graphics/Typeface;

.field public t:Landroid/graphics/Typeface;

.field public u:Landroid/graphics/Typeface;

.field public v:Lcom/google/android/material/resources/CancelableFontCallback;

.field public w:Ljava/lang/CharSequence;

.field public x:Ljava/lang/CharSequence;

.field public y:Z

.field public z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 9
    .line 10
    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 17
    .line 18
    new-instance p1, Landroid/text/TextPaint;

    .line 19
    .line 20
    const/16 v0, 0x81

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Landroid/text/TextPaint;

    .line 26
    .line 27
    new-instance v0, Landroid/text/TextPaint;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 33
    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/RectF;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:Landroid/graphics/RectF;

    .line 54
    .line 55
    return-void
.end method

.method public static a(FII)I
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p0

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float/2addr v1, v0

    .line 10
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p0

    .line 16
    add-float/2addr v2, v1

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    mul-float/2addr v1, v0

    .line 23
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p0

    .line 29
    add-float/2addr v3, v1

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    mul-float/2addr v1, v0

    .line 36
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    int-to-float v4, v4

    .line 41
    mul-float/2addr v4, p0

    .line 42
    add-float/2addr v4, v1

    .line 43
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    mul-float/2addr p1, v0

    .line 49
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    int-to-float p2, p2

    .line 54
    mul-float/2addr p2, p0

    .line 55
    add-float/2addr p2, p1

    .line 56
    float-to-int p0, v2

    .line 57
    float-to-int p1, v3

    .line 58
    float-to-int v0, v4

    .line 59
    float-to-int p2, p2

    .line 60
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
.end method

.method public static e(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Landroid/text/TextPaint;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, p0, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final c(F)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 22
    .line 23
    sub-float v2, p1, v2

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const v3, 0x3a83126f    # 0.001f

    .line 30
    .line 31
    .line 32
    cmpg-float v2, v2, v3

    .line 33
    .line 34
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x1

    .line 38
    if-gez v2, :cond_2

    .line 39
    .line 40
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 41
    .line 42
    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:F

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:Landroid/graphics/Typeface;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:Landroid/graphics/Typeface;

    .line 47
    .line 48
    if-eq v1, v2, :cond_1

    .line 49
    .line 50
    iput-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:Landroid/graphics/Typeface;

    .line 51
    .line 52
    move v1, v6

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    move v1, v5

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 57
    .line 58
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:Landroid/graphics/Typeface;

    .line 59
    .line 60
    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:Landroid/graphics/Typeface;

    .line 61
    .line 62
    if-eq v7, v8, :cond_3

    .line 63
    .line 64
    iput-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:Landroid/graphics/Typeface;

    .line 65
    .line 66
    move v7, v6

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v7, v5

    .line 69
    :goto_0
    sub-float v8, p1, v2

    .line 70
    .line 71
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    cmpg-float v3, v8, v3

    .line 76
    .line 77
    if-gez v3, :cond_4

    .line 78
    .line 79
    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:F

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 83
    .line 84
    div-float/2addr p1, v3

    .line 85
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:F

    .line 86
    .line 87
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 88
    .line 89
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 90
    .line 91
    div-float/2addr p1, v3

    .line 92
    mul-float v3, v1, p1

    .line 93
    .line 94
    cmpl-float v3, v3, v0

    .line 95
    .line 96
    if-lez v3, :cond_5

    .line 97
    .line 98
    div-float/2addr v0, p1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    move v0, p1

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v0, v1

    .line 106
    :goto_2
    move p1, v2

    .line 107
    move v1, v7

    .line 108
    :goto_3
    const/4 v2, 0x0

    .line 109
    cmpl-float v3, v0, v2

    .line 110
    .line 111
    if-lez v3, :cond_8

    .line 112
    .line 113
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:F

    .line 114
    .line 115
    cmpl-float v3, v3, p1

    .line 116
    .line 117
    if-nez v3, :cond_7

    .line 118
    .line 119
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Z

    .line 120
    .line 121
    if-nez v3, :cond_7

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    move v1, v5

    .line 127
    goto :goto_5

    .line 128
    :cond_7
    :goto_4
    move v1, v6

    .line 129
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:F

    .line 130
    .line 131
    iput-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Z

    .line 132
    .line 133
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_9
    :goto_6
    return-void

    .line 141
    :cond_a
    :goto_7
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:F

    .line 142
    .line 143
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Landroid/text/TextPaint;

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:Landroid/graphics/Typeface;

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:F

    .line 154
    .line 155
    cmpl-float p1, p1, v4

    .line 156
    .line 157
    if-eqz p1, :cond_b

    .line 158
    .line 159
    move p1, v6

    .line 160
    goto :goto_8

    .line 161
    :cond_b
    move p1, v5

    .line 162
    :goto_8
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 166
    .line 167
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 168
    .line 169
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-ne v3, v6, :cond_c

    .line 176
    .line 177
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->d:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_c
    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->c:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 181
    .line 182
    :goto_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    invoke-interface {v3, p1, v7}, Landroidx/core/text/TextDirectionHeuristicCompat;->a(Ljava/lang/CharSequence;I)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 191
    .line 192
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:Ljava/lang/CharSequence;

    .line 193
    .line 194
    float-to-int v0, v0

    .line 195
    new-instance v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    .line 196
    .line 197
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 198
    .line 199
    .line 200
    iput-object v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a:Ljava/lang/CharSequence;

    .line 201
    .line 202
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    iput v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->b:I

    .line 207
    .line 208
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 209
    .line 210
    iput-object v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->c:Landroid/text/Layout$Alignment;

    .line 211
    .line 212
    const v3, 0x7fffffff

    .line 213
    .line 214
    .line 215
    iput v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 216
    .line 217
    iput v4, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->e:F

    .line 218
    .line 219
    iput v6, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->f:I

    .line 220
    .line 221
    iput-boolean v6, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->g:Z

    .line 222
    .line 223
    const/4 v3, 0x0

    .line 224
    iput-object v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->i:Landroid/text/TextUtils$TruncateAt;

    .line 225
    .line 226
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 227
    .line 228
    iput-object v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->i:Landroid/text/TextUtils$TruncateAt;

    .line 229
    .line 230
    iput-boolean p1, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->h:Z

    .line 231
    .line 232
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 233
    .line 234
    iput-object p1, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->c:Landroid/text/Layout$Alignment;

    .line 235
    .line 236
    iput-boolean v5, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->g:Z

    .line 237
    .line 238
    iput v6, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 239
    .line 240
    iput v4, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->e:F

    .line 241
    .line 242
    iput v6, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->f:I

    .line 243
    .line 244
    iget-object p1, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a:Ljava/lang/CharSequence;

    .line 245
    .line 246
    if-nez p1, :cond_d

    .line 247
    .line 248
    const-string p1, ""

    .line 249
    .line 250
    iput-object p1, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a:Ljava/lang/CharSequence;

    .line 251
    .line 252
    :cond_d
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iget-object v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->a:Ljava/lang/CharSequence;

    .line 257
    .line 258
    iget v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 259
    .line 260
    if-ne v3, v6, :cond_e

    .line 261
    .line 262
    int-to-float v3, p1

    .line 263
    iget-object v8, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->i:Landroid/text/TextUtils$TruncateAt;

    .line 264
    .line 265
    invoke-static {v0, v1, v3, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    :cond_e
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    iget v8, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->b:I

    .line 274
    .line 275
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    iput v3, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->b:I

    .line 280
    .line 281
    iget-boolean v8, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->h:Z

    .line 282
    .line 283
    if-eqz v8, :cond_f

    .line 284
    .line 285
    iget v8, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 286
    .line 287
    if-ne v8, v6, :cond_f

    .line 288
    .line 289
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 290
    .line 291
    iput-object v8, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->c:Landroid/text/Layout$Alignment;

    .line 292
    .line 293
    :cond_f
    invoke-static {v0, v5, v3, v1, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->c:Landroid/text/Layout$Alignment;

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 300
    .line 301
    .line 302
    iget-boolean v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->g:Z

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 305
    .line 306
    .line 307
    iget-boolean v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->h:Z

    .line 308
    .line 309
    if-eqz v0, :cond_10

    .line 310
    .line 311
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_10
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 315
    .line 316
    :goto_a
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 317
    .line 318
    .line 319
    iget-object v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->i:Landroid/text/TextUtils$TruncateAt;

    .line 320
    .line 321
    if-eqz v0, :cond_11

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 324
    .line 325
    .line 326
    :cond_11
    iget v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 329
    .line 330
    .line 331
    iget v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->e:F

    .line 332
    .line 333
    cmpl-float v1, v0, v4

    .line 334
    .line 335
    if-eqz v1, :cond_12

    .line 336
    .line 337
    invoke-virtual {p1, v2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 338
    .line 339
    .line 340
    :cond_12
    iget v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->d:I

    .line 341
    .line 342
    if-le v0, v6, :cond_13

    .line 343
    .line 344
    iget v0, v7, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->f:I

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 347
    .line 348
    .line 349
    :cond_13
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 363
    .line 364
    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:[I

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->b:Z

    .line 33
    .line 34
    return-void
.end method

.method public final g()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lez v2, :cond_11

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_9

    .line 18
    .line 19
    :cond_0
    iget v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:F

    .line 20
    .line 21
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(F)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Landroid/text/TextPaint;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-object v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    int-to-float v5, v5

    .line 41
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 42
    .line 43
    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iput-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:Ljava/lang/CharSequence;

    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:Ljava/lang/CharSequence;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v4, v3, v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v5

    .line 65
    :goto_0
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:I

    .line 66
    .line 67
    iget-boolean v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 68
    .line 69
    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    and-int/lit8 v8, v7, 0x70

    .line 74
    .line 75
    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 76
    .line 77
    const/16 v10, 0x50

    .line 78
    .line 79
    const/16 v11, 0x30

    .line 80
    .line 81
    const/high16 v12, 0x40000000    # 2.0f

    .line 82
    .line 83
    if-eq v8, v11, :cond_4

    .line 84
    .line 85
    if-eq v8, v10, :cond_3

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    sub-float/2addr v8, v13

    .line 96
    div-float/2addr v8, v12

    .line 97
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    int-to-float v13, v13

    .line 102
    sub-float/2addr v13, v8

    .line 103
    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    int-to-float v8, v8

    .line 109
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    add-float/2addr v13, v8

    .line 114
    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 118
    .line 119
    int-to-float v8, v8

    .line 120
    iput v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 121
    .line 122
    :goto_1
    const v8, 0x800007

    .line 123
    .line 124
    .line 125
    and-int/2addr v7, v8

    .line 126
    const/4 v13, 0x5

    .line 127
    const/4 v14, 0x1

    .line 128
    if-eq v7, v14, :cond_6

    .line 129
    .line 130
    if-eq v7, v13, :cond_5

    .line 131
    .line 132
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 133
    .line 134
    int-to-float v3, v3

    .line 135
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:F

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 139
    .line 140
    int-to-float v7, v7

    .line 141
    sub-float/2addr v7, v3

    .line 142
    iput v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:F

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    int-to-float v7, v7

    .line 150
    div-float/2addr v3, v12

    .line 151
    sub-float/2addr v7, v3

    .line 152
    iput v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:F

    .line 153
    .line 154
    :goto_2
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(F)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 160
    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    int-to-float v3, v3

    .line 168
    goto :goto_3

    .line 169
    :cond_7
    move v3, v5

    .line 170
    :goto_3
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Ljava/lang/CharSequence;

    .line 171
    .line 172
    if-eqz v7, :cond_8

    .line 173
    .line 174
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    invoke-virtual {v4, v7, v6, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    move v7, v5

    .line 184
    :goto_4
    iget-object v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:Landroid/text/StaticLayout;

    .line 185
    .line 186
    if-eqz v15, :cond_9

    .line 187
    .line 188
    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineLeft(I)F

    .line 189
    .line 190
    .line 191
    :cond_9
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    .line 192
    .line 193
    move/from16 v16, v8

    .line 194
    .line 195
    iget-boolean v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Z

    .line 196
    .line 197
    invoke-static {v15, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    and-int/lit8 v15, v8, 0x70

    .line 202
    .line 203
    move/from16 v17, v12

    .line 204
    .line 205
    iget-object v12, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 206
    .line 207
    if-eq v15, v11, :cond_b

    .line 208
    .line 209
    if-eq v15, v10, :cond_a

    .line 210
    .line 211
    div-float v3, v3, v17

    .line 212
    .line 213
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    int-to-float v10, v10

    .line 218
    sub-float/2addr v10, v3

    .line 219
    iput v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    .line 223
    .line 224
    int-to-float v10, v10

    .line 225
    sub-float/2addr v10, v3

    .line 226
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    add-float/2addr v3, v10

    .line 231
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_b
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 235
    .line 236
    int-to-float v3, v3

    .line 237
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 238
    .line 239
    :goto_5
    and-int v3, v8, v16

    .line 240
    .line 241
    if-eq v3, v14, :cond_d

    .line 242
    .line 243
    if-eq v3, v13, :cond_c

    .line 244
    .line 245
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 246
    .line 247
    int-to-float v3, v3

    .line 248
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:F

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_c
    iget v3, v12, Landroid/graphics/Rect;->right:I

    .line 252
    .line 253
    int-to-float v3, v3

    .line 254
    sub-float/2addr v3, v7

    .line 255
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:F

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    int-to-float v3, v3

    .line 263
    div-float v7, v7, v17

    .line 264
    .line 265
    sub-float/2addr v3, v7

    .line 266
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:F

    .line 267
    .line 268
    :goto_6
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Bitmap;

    .line 269
    .line 270
    if-eqz v3, :cond_e

    .line 271
    .line 272
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    .line 274
    .line 275
    const/4 v3, 0x0

    .line 276
    iput-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Bitmap;

    .line 277
    .line 278
    :cond_e
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->k(F)V

    .line 279
    .line 280
    .line 281
    iget v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 282
    .line 283
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 284
    .line 285
    int-to-float v3, v3

    .line 286
    iget v7, v9, Landroid/graphics/Rect;->left:I

    .line 287
    .line 288
    int-to-float v7, v7

    .line 289
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 290
    .line 291
    invoke-static {v3, v7, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:Landroid/graphics/RectF;

    .line 296
    .line 297
    iput v3, v7, Landroid/graphics/RectF;->left:F

    .line 298
    .line 299
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 300
    .line 301
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 302
    .line 303
    iget-object v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 304
    .line 305
    invoke-static {v3, v8, v2, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    iput v3, v7, Landroid/graphics/RectF;->top:F

    .line 310
    .line 311
    iget v3, v12, Landroid/graphics/Rect;->right:I

    .line 312
    .line 313
    int-to-float v3, v3

    .line 314
    iget v8, v9, Landroid/graphics/Rect;->right:I

    .line 315
    .line 316
    int-to-float v8, v8

    .line 317
    iget-object v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 318
    .line 319
    invoke-static {v3, v8, v2, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iput v3, v7, Landroid/graphics/RectF;->right:F

    .line 324
    .line 325
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    .line 326
    .line 327
    int-to-float v3, v3

    .line 328
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 329
    .line 330
    int-to-float v8, v8

    .line 331
    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 332
    .line 333
    invoke-static {v3, v8, v2, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 338
    .line 339
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:F

    .line 340
    .line 341
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:F

    .line 342
    .line 343
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 344
    .line 345
    invoke-static {v3, v7, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->q:F

    .line 350
    .line 351
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 352
    .line 353
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 354
    .line 355
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 356
    .line 357
    invoke-static {v3, v7, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iput v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    .line 362
    .line 363
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 364
    .line 365
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 366
    .line 367
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Landroid/animation/TimeInterpolator;

    .line 368
    .line 369
    invoke-static {v3, v7, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->k(F)V

    .line 374
    .line 375
    .line 376
    const/high16 v3, 0x3f800000    # 1.0f

    .line 377
    .line 378
    sub-float v7, v3, v2

    .line 379
    .line 380
    sget-object v8, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 381
    .line 382
    invoke-static {v5, v3, v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 383
    .line 384
    .line 385
    sget-object v7, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 386
    .line 387
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 388
    .line 389
    .line 390
    invoke-static {v3, v5, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 394
    .line 395
    .line 396
    iget-object v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 397
    .line 398
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 399
    .line 400
    if-eq v3, v7, :cond_f

    .line 401
    .line 402
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 407
    .line 408
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    invoke-static {v2, v3, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(FII)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_f
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    .line 426
    .line 427
    :goto_7
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 428
    .line 429
    cmpl-float v7, v3, v5

    .line 430
    .line 431
    if-eqz v7, :cond_10

    .line 432
    .line 433
    invoke-static {v5, v3, v2, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 438
    .line 439
    .line 440
    goto :goto_8

    .line 441
    :cond_10
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 442
    .line 443
    .line 444
    :goto_8
    iget v3, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:F

    .line 445
    .line 446
    invoke-static {v5, v3, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:F

    .line 451
    .line 452
    invoke-static {v5, v7, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:F

    .line 457
    .line 458
    invoke-static {v5, v8, v2}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:Landroid/content/res/ColorStateList;

    .line 463
    .line 464
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    invoke-static {v2, v6, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(FII)I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    invoke-virtual {v4, v3, v7, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 476
    .line 477
    .line 478
    :cond_11
    :goto_9
    return-void
.end method

.method public final h(I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->a:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    :cond_0
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->k:F

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v2, p1, v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 26
    .line 27
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->b:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->f:F

    .line 34
    .line 35
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:F

    .line 36
    .line 37
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->g:F

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:F

    .line 40
    .line 41
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->h:F

    .line 42
    .line 43
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:F

    .line 44
    .line 45
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->j:F

    .line 46
    .line 47
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p1, Lcom/google/android/material/resources/CancelableFontCallback;->c:Z

    .line 55
    .line 56
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    .line 57
    .line 58
    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->a()V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/google/android/material/resources/TextAppearance;->n:Landroid/graphics/Typeface;

    .line 67
    .line 68
    invoke-direct {p1, v2, v3}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 78
    .line 79
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->c(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j(F)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-gez v1, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    cmpl-float v1, p1, v2

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    move p1, v2

    .line 15
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 16
    .line 17
    cmpl-float v1, p1, v1

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    int-to-float v5, v5

    .line 33
    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 34
    .line 35
    invoke-static {v3, v5, p1, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:Landroid/graphics/RectF;

    .line 40
    .line 41
    iput v3, v5, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 44
    .line 45
    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 46
    .line 47
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 48
    .line 49
    invoke-static {v3, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iput v3, v5, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    int-to-float v6, v6

    .line 61
    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 62
    .line 63
    invoke-static {v3, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 68
    .line 69
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    int-to-float v1, v1

    .line 72
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 76
    .line 77
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    .line 82
    .line 83
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:F

    .line 84
    .line 85
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:F

    .line 86
    .line 87
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 88
    .line 89
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q:F

    .line 94
    .line 95
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 96
    .line 97
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 98
    .line 99
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Landroid/animation/TimeInterpolator;

    .line 100
    .line 101
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    .line 106
    .line 107
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:F

    .line 108
    .line 109
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:F

    .line 110
    .line 111
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Landroid/animation/TimeInterpolator;

    .line 112
    .line 113
    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->k(F)V

    .line 118
    .line 119
    .line 120
    sub-float v1, v2, p1

    .line 121
    .line 122
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 123
    .line 124
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 125
    .line 126
    .line 127
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v0, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 141
    .line 142
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:Landroid/content/res/ColorStateList;

    .line 143
    .line 144
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Landroid/text/TextPaint;

    .line 145
    .line 146
    if-eq v2, v4, :cond_2

    .line 147
    .line 148
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:Landroid/content/res/ColorStateList;

    .line 153
    .line 154
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-static {p1, v2, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(FII)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    .line 172
    .line 173
    :goto_1
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 174
    .line 175
    cmpl-float v4, v2, v0

    .line 176
    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    invoke-static {v0, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_3
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 188
    .line 189
    .line 190
    :goto_2
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:F

    .line 191
    .line 192
    invoke-static {v0, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:F

    .line 197
    .line 198
    invoke-static {v0, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:F

    .line 203
    .line 204
    invoke-static {v0, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:Landroid/content/res/ColorStateList;

    .line 209
    .line 210
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    const/4 v4, 0x0

    .line 215
    invoke-static {p1, v4, p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(FII)I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-virtual {v5, v2, v3, v0, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 223
    .line 224
    .line 225
    :cond_4
    return-void
.end method

.method public final k(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(F)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
