.class public Landroidx/media3/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/ui/TimeBar;


# static fields
.field public static final synthetic b0:I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:Ljava/lang/StringBuilder;

.field public final E:Ljava/util/Formatter;

.field public final F:Le;

.field public final G:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final H:Landroid/graphics/Point;

.field public final I:F

.field public J:I

.field public K:J

.field public L:I

.field public M:Landroid/graphics/Rect;

.field public final N:Landroid/animation/ValueAnimator;

.field public O:F

.field public P:Z

.field public Q:Z

.field public R:J

.field public S:J

.field public T:J

.field public U:J

.field public V:I

.field public W:[J

.field public a0:[Z

.field public final j:Landroid/graphics/Rect;

.field public final k:Landroid/graphics/Rect;

.field public final l:Landroid/graphics/Rect;

.field public final m:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Paint;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/Paint;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/drawable/Drawable;

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance v4, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 23
    .line 24
    new-instance v4, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->l:Landroid/graphics/Rect;

    .line 30
    .line 31
    new-instance v4, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->m:Landroid/graphics/Rect;

    .line 37
    .line 38
    new-instance v4, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->n:Landroid/graphics/Paint;

    .line 44
    .line 45
    new-instance v5, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v5, v0, Landroidx/media3/ui/DefaultTimeBar;->o:Landroid/graphics/Paint;

    .line 51
    .line 52
    new-instance v6, Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v6, v0, Landroidx/media3/ui/DefaultTimeBar;->p:Landroid/graphics/Paint;

    .line 58
    .line 59
    new-instance v7, Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v7, v0, Landroidx/media3/ui/DefaultTimeBar;->q:Landroid/graphics/Paint;

    .line 65
    .line 66
    new-instance v8, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v8, v0, Landroidx/media3/ui/DefaultTimeBar;->r:Landroid/graphics/Paint;

    .line 72
    .line 73
    new-instance v9, Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v9, v0, Landroidx/media3/ui/DefaultTimeBar;->s:Landroid/graphics/Paint;

    .line 79
    .line 80
    const/4 v10, 0x1

    .line 81
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v11, v0, Landroidx/media3/ui/DefaultTimeBar;->G:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 90
    .line 91
    new-instance v11, Landroid/graphics/Point;

    .line 92
    .line 93
    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v11, v0, Landroidx/media3/ui/DefaultTimeBar;->H:Landroid/graphics/Point;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .line 108
    iput v3, v0, Landroidx/media3/ui/DefaultTimeBar;->I:F

    .line 109
    .line 110
    const/16 v11, -0x32

    .line 111
    .line 112
    invoke-static {v11, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    iput v11, v0, Landroidx/media3/ui/DefaultTimeBar;->C:I

    .line 117
    .line 118
    const/4 v11, 0x4

    .line 119
    invoke-static {v11, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    const/16 v13, 0x1a

    .line 124
    .line 125
    invoke-static {v13, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-static {v11, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    const/16 v14, 0xc

    .line 134
    .line 135
    invoke-static {v14, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    invoke-static {v2, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    move/from16 v16, v10

    .line 144
    .line 145
    const/16 v10, 0x10

    .line 146
    .line 147
    invoke-static {v10, v3}, Landroidx/media3/ui/DefaultTimeBar;->a(IF)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    iput v12, v0, Landroidx/media3/ui/DefaultTimeBar;->u:I

    .line 152
    .line 153
    iput v13, v0, Landroidx/media3/ui/DefaultTimeBar;->v:I

    .line 154
    .line 155
    iput v2, v0, Landroidx/media3/ui/DefaultTimeBar;->w:I

    .line 156
    .line 157
    iput v11, v0, Landroidx/media3/ui/DefaultTimeBar;->x:I

    .line 158
    .line 159
    iput v14, v0, Landroidx/media3/ui/DefaultTimeBar;->y:I

    .line 160
    .line 161
    iput v15, v0, Landroidx/media3/ui/DefaultTimeBar;->z:I

    .line 162
    .line 163
    iput v3, v0, Landroidx/media3/ui/DefaultTimeBar;->A:I

    .line 164
    .line 165
    const/4 v2, -0x1

    .line 166
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    .line 171
    .line 172
    const v2, -0x33000001    # -1.3421772E8f

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    .line 177
    .line 178
    const v2, 0x33ffffff

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    .line 183
    .line 184
    const v2, -0x4d000100

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    .line 189
    .line 190
    const v2, 0x33ffff00

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    iput-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->D:Ljava/lang/StringBuilder;

    .line 204
    .line 205
    new-instance v2, Ljava/util/Formatter;

    .line 206
    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-direct {v2, v1, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 212
    .line 213
    .line 214
    iput-object v2, v0, Landroidx/media3/ui/DefaultTimeBar;->E:Ljava/util/Formatter;

    .line 215
    .line 216
    new-instance v1, Le;

    .line 217
    .line 218
    const/16 v2, 0x8

    .line 219
    .line 220
    invoke-direct {v1, v2, v0}, Le;-><init>(ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iput-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->F:Le;

    .line 224
    .line 225
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    div-int/lit8 v1, v1, 0x2

    .line 236
    .line 237
    iput v1, v0, Landroidx/media3/ui/DefaultTimeBar;->B:I

    .line 238
    .line 239
    const/high16 v1, 0x3f800000    # 1.0f

    .line 240
    .line 241
    iput v1, v0, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 242
    .line 243
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 244
    .line 245
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 246
    .line 247
    .line 248
    iput-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->N:Landroid/animation/ValueAnimator;

    .line 249
    .line 250
    new-instance v2, Ln7;

    .line 251
    .line 252
    invoke-direct {v2, v0}, Ln7;-><init>(Landroidx/media3/ui/DefaultTimeBar;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    .line 257
    .line 258
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    iput-wide v1, v0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 264
    .line 265
    iput-wide v1, v0, Landroidx/media3/ui/DefaultTimeBar;->K:J

    .line 266
    .line 267
    const/16 v1, 0x14

    .line 268
    .line 269
    iput v1, v0, Landroidx/media3/ui/DefaultTimeBar;->J:I

    .line 270
    .line 271
    move/from16 v1, v16

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_0

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 283
    .line 284
    .line 285
    :cond_0
    return-void
.end method

.method public static a(IF)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    mul-float/2addr p0, p1

    .line 3
    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    add-float/2addr p0, p1

    .line 6
    float-to-int p0, p0

    .line 7
    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->K:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    iget p0, p0, Landroidx/media3/ui/DefaultTimeBar;->J:I

    .line 22
    .line 23
    int-to-long v2, p0

    .line 24
    div-long/2addr v0, v2

    .line 25
    :cond_1
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->E:Ljava/util/Formatter;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/ui/DefaultTimeBar;->T:J

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/ui/DefaultTimeBar;->D:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/common/util/Util;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private getScrubberPosition()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 10
    .line 11
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/DefaultTimeBar;->m:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-long v1, v1

    .line 28
    iget-wide v3, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 29
    .line 30
    mul-long/2addr v1, v3

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    int-to-long v3, p0

    .line 36
    div-long/2addr v1, v3

    .line 37
    return-wide v1

    .line 38
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    return-wide v0
.end method


# virtual methods
.method public final b(J)Z
    .locals 8

    .line 1
    iget-wide v4, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, v4, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 15
    .line 16
    :goto_0
    move-wide v6, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->T:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    add-long v0, v6, p1

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    cmp-long v0, p1, v6

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    :goto_2
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/DefaultTimeBar;->c(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/DefaultTimeBar;->f(J)V

    .line 44
    .line 45
    .line 46
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final c(J)V
    .locals 5

    .line 1
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/DefaultTimeBar;->G:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/media3/ui/TimeBar$OnScrubListener;

    .line 35
    .line 36
    check-cast v1, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 39
    .line 40
    iput-boolean v0, v1, Landroidx/media3/ui/PlayerControlView;->F0:Z

    .line 41
    .line 42
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->T:Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->V:Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object v4, v1, Landroidx/media3/ui/PlayerControlView;->W:Ljava/util/Formatter;

    .line 49
    .line 50
    invoke-static {v3, v4, p1, p2}, Landroidx/media3/common/util/Util;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    iget-boolean v3, v1, Landroidx/media3/ui/PlayerControlView;->H0:Z

    .line 67
    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    :try_start_0
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->o:Ljava/lang/reflect/Method;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 82
    .line 83
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    :try_start_1
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->r:Ljava/lang/reflect/Method;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 114
    .line 115
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_1
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v3, "Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can\'t enable scrubbing mode). player.class="

    .line 135
    .line 136
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v3, "PlayerControlView"

    .line 156
    .line 157
    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_1
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    iget-object v2, v1, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 169
    .line 170
    invoke-static {v1, v2, p1, p2}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_6
    return-void
.end method

.method public final d(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->F:Le;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/ui/DefaultTimeBar;->G:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/media3/ui/TimeBar$OnScrubListener;

    .line 41
    .line 42
    iget-wide v3, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 43
    .line 44
    check-cast v2, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 47
    .line 48
    iput-boolean v0, v2, Landroidx/media3/ui/PlayerControlView;->F0:Z

    .line 49
    .line 50
    iget-object v5, v2, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    invoke-static {v2, v5, v3, v4}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    :try_start_0
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->o:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v4, v2, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 73
    .line 74
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    :try_start_1
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->r:Ljava/lang/reflect/Method;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v4, v2, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 105
    .line 106
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    .line 108
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_1
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_3
    :goto_1
    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->l:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/ui/DefaultTimeBar;->m:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v3, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-wide v3, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v3, p0, Landroidx/media3/ui/DefaultTimeBar;->T:J

    .line 21
    .line 22
    :goto_0
    iget-wide v5, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v5, v5, v7

    .line 27
    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-long v5, v5

    .line 35
    iget-wide v7, p0, Landroidx/media3/ui/DefaultTimeBar;->U:J

    .line 36
    .line 37
    mul-long/2addr v5, v7

    .line 38
    iget-wide v7, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 39
    .line 40
    div-long/2addr v5, v7

    .line 41
    long-to-int v5, v5

    .line 42
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    add-int/2addr v6, v5

    .line 45
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-long v5, v0

    .line 58
    mul-long/2addr v5, v3

    .line 59
    iget-wide v3, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 60
    .line 61
    div-long/2addr v5, v3

    .line 62
    long-to-int v0, v5

    .line 63
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    add-int/2addr v3, v0

    .line 66
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 67
    .line 68
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    :goto_1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final f(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->R:J

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/ui/DefaultTimeBar;->G:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/media3/ui/TimeBar$OnScrubListener;

    .line 27
    .line 28
    check-cast v0, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->j:Landroidx/media3/ui/PlayerControlView;

    .line 31
    .line 32
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->V:Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/util/Formatter;

    .line 39
    .line 40
    invoke-static {v2, v3, p1, p2}, Landroidx/media3/common/util/Util;->u(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->z0:Landroidx/media3/common/Player;

    .line 56
    .line 57
    invoke-static {v0, v1, p1, p2}, Landroidx/media3/ui/PlayerControlView;->a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    return-void
.end method

.method public getPreferredUpdateDelay()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget v1, p0, Landroidx/media3/ui/DefaultTimeBar;->I:F

    .line 9
    .line 10
    div-float/2addr v0, v1

    .line 11
    float-to-int v0, v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v1, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long p0, v1, v3

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long p0, v1, v3

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    int-to-long v3, v0

    .line 33
    div-long/2addr v1, v3

    .line 34
    return-wide v1

    .line 35
    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    return-wide v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    .line 6
    iget-object v7, v0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    div-int/lit8 v3, v1, 0x2

    .line 17
    .line 18
    sub-int v8, v2, v3

    .line 19
    .line 20
    add-int v9, v8, v1

    .line 21
    .line 22
    iget-wide v1, v0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 23
    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    cmp-long v1, v1, v10

    .line 27
    .line 28
    iget-object v6, v0, Landroidx/media3/ui/DefaultTimeBar;->p:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget-object v12, v0, Landroidx/media3/ui/DefaultTimeBar;->m:Landroid/graphics/Rect;

    .line 31
    .line 32
    if-gtz v1, :cond_0

    .line 33
    .line 34
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    int-to-float v2, v1

    .line 37
    int-to-float v3, v8

    .line 38
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 39
    .line 40
    int-to-float v4, v1

    .line 41
    int-to-float v5, v9

    .line 42
    move-object/from16 v1, p1

    .line 43
    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    iget-object v1, v0, Landroidx/media3/ui/DefaultTimeBar;->l:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget v13, v1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget v2, v12, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    if-ge v1, v2, :cond_1

    .line 70
    .line 71
    int-to-float v1, v1

    .line 72
    int-to-float v3, v8

    .line 73
    int-to-float v4, v2

    .line 74
    int-to-float v5, v9

    .line 75
    move v2, v1

    .line 76
    move-object/from16 v1, p1

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget v1, v12, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-le v14, v1, :cond_2

    .line 88
    .line 89
    int-to-float v2, v1

    .line 90
    int-to-float v3, v8

    .line 91
    int-to-float v4, v14

    .line 92
    int-to-float v5, v9

    .line 93
    iget-object v6, v0, Landroidx/media3/ui/DefaultTimeBar;->o:Landroid/graphics/Paint;

    .line 94
    .line 95
    move-object/from16 v1, p1

    .line 96
    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-lez v1, :cond_3

    .line 105
    .line 106
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    int-to-float v2, v1

    .line 109
    int-to-float v3, v8

    .line 110
    iget v1, v12, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    int-to-float v4, v1

    .line 113
    int-to-float v5, v9

    .line 114
    iget-object v6, v0, Landroidx/media3/ui/DefaultTimeBar;->n:Landroid/graphics/Paint;

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    iget v1, v0, Landroidx/media3/ui/DefaultTimeBar;->V:I

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    :cond_4
    move-object/from16 v1, p1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    iget-object v13, v0, Landroidx/media3/ui/DefaultTimeBar;->W:[J

    .line 129
    .line 130
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v14, v0, Landroidx/media3/ui/DefaultTimeBar;->a0:[Z

    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget v15, v0, Landroidx/media3/ui/DefaultTimeBar;->x:I

    .line 139
    .line 140
    div-int/lit8 v16, v15, 0x2

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    move v2, v1

    .line 144
    :goto_0
    iget v3, v0, Landroidx/media3/ui/DefaultTimeBar;->V:I

    .line 145
    .line 146
    if-ge v2, v3, :cond_4

    .line 147
    .line 148
    aget-wide v17, v13, v2

    .line 149
    .line 150
    const-wide/16 v19, 0x0

    .line 151
    .line 152
    iget-wide v3, v0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 153
    .line 154
    move-wide/from16 v21, v3

    .line 155
    .line 156
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    int-to-long v5, v5

    .line 165
    mul-long/2addr v5, v3

    .line 166
    iget-wide v3, v0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 167
    .line 168
    div-long/2addr v5, v3

    .line 169
    long-to-int v3, v5

    .line 170
    sub-int v3, v3, v16

    .line 171
    .line 172
    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    sub-int/2addr v5, v15

    .line 179
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    add-int/2addr v3, v4

    .line 188
    aget-boolean v4, v14, v2

    .line 189
    .line 190
    if-eqz v4, :cond_6

    .line 191
    .line 192
    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->r:Landroid/graphics/Paint;

    .line 193
    .line 194
    :goto_1
    move-object v6, v4

    .line 195
    move v4, v2

    .line 196
    goto :goto_2

    .line 197
    :cond_6
    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->q:Landroid/graphics/Paint;

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :goto_2
    int-to-float v2, v3

    .line 201
    move v5, v3

    .line 202
    int-to-float v3, v8

    .line 203
    add-int/2addr v5, v15

    .line 204
    int-to-float v5, v5

    .line 205
    move/from16 v17, v4

    .line 206
    .line 207
    move v4, v5

    .line 208
    int-to-float v5, v9

    .line 209
    move/from16 v18, v1

    .line 210
    .line 211
    move-object/from16 v1, p1

    .line 212
    .line 213
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v2, v17, 0x1

    .line 217
    .line 218
    move/from16 v1, v18

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :goto_3
    iget-wide v2, v0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 222
    .line 223
    cmp-long v2, v2, v10

    .line 224
    .line 225
    if-gtz v2, :cond_7

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_7
    iget v2, v12, Landroid/graphics/Rect;->right:I

    .line 229
    .line 230
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 231
    .line 232
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 233
    .line 234
    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/Util;->g(III)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    iget-object v4, v0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 243
    .line 244
    if-nez v4, :cond_b

    .line 245
    .line 246
    iget-boolean v4, v0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 247
    .line 248
    if-nez v4, :cond_a

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_8

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_9

    .line 262
    .line 263
    iget v4, v0, Landroidx/media3/ui/DefaultTimeBar;->y:I

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    iget v4, v0, Landroidx/media3/ui/DefaultTimeBar;->z:I

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_a
    :goto_4
    iget v4, v0, Landroidx/media3/ui/DefaultTimeBar;->A:I

    .line 270
    .line 271
    :goto_5
    int-to-float v4, v4

    .line 272
    iget v5, v0, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 273
    .line 274
    mul-float/2addr v4, v5

    .line 275
    const/high16 v5, 0x40000000    # 2.0f

    .line 276
    .line 277
    div-float/2addr v4, v5

    .line 278
    float-to-int v4, v4

    .line 279
    int-to-float v2, v2

    .line 280
    int-to-float v3, v3

    .line 281
    int-to-float v4, v4

    .line 282
    iget-object v0, v0, Landroidx/media3/ui/DefaultTimeBar;->s:Landroid/graphics/Paint;

    .line 283
    .line 284
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    int-to-float v5, v5

    .line 293
    iget v6, v0, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 294
    .line 295
    mul-float/2addr v5, v6

    .line 296
    float-to-int v5, v5

    .line 297
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    int-to-float v6, v6

    .line 302
    iget v0, v0, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 303
    .line 304
    mul-float/2addr v6, v0

    .line 305
    float-to-int v0, v6

    .line 306
    div-int/lit8 v5, v5, 0x2

    .line 307
    .line 308
    sub-int v6, v2, v5

    .line 309
    .line 310
    div-int/lit8 v0, v0, 0x2

    .line 311
    .line 312
    sub-int v7, v3, v0

    .line 313
    .line 314
    add-int/2addr v2, v5

    .line 315
    add-int/2addr v3, v0

    .line 316
    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    .line 321
    .line 322
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p0, "android.widget.SeekBar"

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.widget.SeekBar"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long p0, v0, v2

    .line 21
    .line 22
    if-gtz p0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/16 v2, 0x42

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    neg-long v0, v0

    .line 21
    :pswitch_1
    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/DefaultTimeBar;->b(J)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->F:Le;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    sub-int p2, p4, p2

    .line 12
    .line 13
    iget-boolean p3, p0, Landroidx/media3/ui/DefaultTimeBar;->P:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    move p3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p3, p0, Landroidx/media3/ui/DefaultTimeBar;->B:I

    .line 21
    .line 22
    :goto_0
    iget v1, p0, Landroidx/media3/ui/DefaultTimeBar;->w:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iget v3, p0, Landroidx/media3/ui/DefaultTimeBar;->u:I

    .line 26
    .line 27
    iget v4, p0, Landroidx/media3/ui/DefaultTimeBar;->v:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int v1, p5, v1

    .line 36
    .line 37
    sub-int/2addr v1, v4

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int v2, p5, v2

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    div-int/lit8 v5, v3, 0x2

    .line 46
    .line 47
    sub-int v5, p3, v5

    .line 48
    .line 49
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v2, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sub-int v1, p5, v4

    .line 56
    .line 57
    div-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    sub-int v2, p5, v3

    .line 60
    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    :goto_1
    add-int/2addr v4, v1

    .line 64
    iget-object v5, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v5, p1, v1, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    add-int/2addr p1, p3

    .line 72
    iget p2, v5, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    sub-int/2addr p2, p3

    .line 75
    add-int/2addr v3, v2

    .line 76
    iget-object p3, p0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {p3, p1, v2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 79
    .line 80
    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 p2, 0x1d

    .line 84
    .line 85
    if-lt p1, p2, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->M:Landroid/graphics/Rect;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, p4, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->M:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, p5, :cond_2

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {p1, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->M:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Lx4;->q(Landroidx/media3/ui/DefaultTimeBar;Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget v1, p0, Landroidx/media3/ui/DefaultTimeBar;->v:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move p2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    float-to-int v2, v2

    .line 28
    iget-object v3, p0, Landroidx/media3/ui/DefaultTimeBar;->H:Landroid/graphics/Point;

    .line 29
    .line 30
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Point;->set(II)V

    .line 31
    .line 32
    .line 33
    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Landroidx/media3/ui/DefaultTimeBar;->k:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/media3/ui/DefaultTimeBar;->m:Landroid/graphics/Rect;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    const/4 v7, 0x3

    .line 49
    if-eq v3, v6, :cond_3

    .line 50
    .line 51
    const/4 v8, 0x2

    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    iget p1, p0, Landroidx/media3/ui/DefaultTimeBar;->C:I

    .line 62
    .line 63
    if-ge v2, p1, :cond_2

    .line 64
    .line 65
    iget p1, p0, Landroidx/media3/ui/DefaultTimeBar;->L:I

    .line 66
    .line 67
    sub-int/2addr v0, p1

    .line 68
    div-int/2addr v0, v7

    .line 69
    add-int/2addr v0, p1

    .line 70
    int-to-float p1, v0

    .line 71
    float-to-int p1, p1

    .line 72
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->g(III)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iput v0, p0, Landroidx/media3/ui/DefaultTimeBar;->L:I

    .line 84
    .line 85
    int-to-float p1, v0

    .line 86
    float-to-int p1, p1

    .line 87
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->g(III)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getScrubberPosition()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/DefaultTimeBar;->f(J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    return v6

    .line 111
    :cond_3
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v7, :cond_4

    .line 120
    .line 121
    move v1, v6

    .line 122
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :cond_5
    int-to-float p1, v0

    .line 127
    int-to-float v0, v2

    .line 128
    float-to-int p1, p1

    .line 129
    float-to-int v0, v0

    .line 130
    iget-object v2, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    iget v1, v4, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->g(III)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getScrubberPosition()J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/DefaultTimeBar;->c(J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 159
    .line 160
    .line 161
    return v6

    .line 162
    :cond_6
    :goto_1
    return v1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-wide v1, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long p2, v1, v3

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-gtz p2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/16 p2, 0x2000

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    neg-long p1, p1

    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/DefaultTimeBar;->b(J)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 p2, 0x1000

    .line 39
    .line 40
    if-ne p1, p2, :cond_4

    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/DefaultTimeBar;->b(J)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    return v1
.end method

.method public setAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->q:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->o:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->U:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->U:J

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->S:J

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long p1, p1, v0

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/ui/DefaultTimeBar;->Q:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/ui/DefaultTimeBar;->J:I

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->K:J

    .line 17
    .line 18
    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroidx/media3/ui/DefaultTimeBar;->J:I

    .line 15
    .line 16
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->K:J

    .line 17
    .line 18
    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPosition(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/ui/DefaultTimeBar;->T:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Landroidx/media3/ui/DefaultTimeBar;->T:J

    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/ui/DefaultTimeBar;->e()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->s:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/DefaultTimeBar;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
