.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field public static final z:I


# instance fields
.field public final j:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field public final k:Landroid/view/animation/AccelerateInterpolator;

.field public final l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

.field public m:Ljava/lang/Runnable;

.field public final n:[F

.field public final o:[F

.field public final p:I

.field public final q:I

.field public final r:[F

.field public final s:[F

.field public final t:[F

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Landroidx/core/widget/AutoScrollHelper;->z:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/high16 v1, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->e:J

    .line 12
    .line 13
    const-wide/16 v1, -0x1

    .line 14
    .line 15
    iput-wide v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->g:J

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->f:J

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->j:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 22
    .line 23
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->k:Landroid/view/animation/AccelerateInterpolator;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    new-array v2, v1, [F

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->n:[F

    .line 37
    .line 38
    new-array v3, v1, [F

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->o:[F

    .line 44
    .line 45
    new-array v4, v1, [F

    .line 46
    .line 47
    fill-array-data v4, :array_2

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->r:[F

    .line 51
    .line 52
    new-array v5, v1, [F

    .line 53
    .line 54
    fill-array-data v5, :array_3

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Landroidx/core/widget/AutoScrollHelper;->s:[F

    .line 58
    .line 59
    new-array v1, v1, [F

    .line 60
    .line 61
    fill-array-data v1, :array_4

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->t:[F

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 67
    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    .line 78
    const v6, 0x44c4e000    # 1575.0f

    .line 79
    .line 80
    .line 81
    mul-float/2addr v6, p1

    .line 82
    const/high16 v7, 0x3f000000    # 0.5f

    .line 83
    .line 84
    add-float/2addr v6, v7

    .line 85
    float-to-int v6, v6

    .line 86
    const v8, 0x439d8000    # 315.0f

    .line 87
    .line 88
    .line 89
    mul-float/2addr p1, v8

    .line 90
    add-float/2addr p1, v7

    .line 91
    float-to-int p1, p1

    .line 92
    int-to-float v6, v6

    .line 93
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 94
    .line 95
    div-float/2addr v6, v7

    .line 96
    const/4 v8, 0x0

    .line 97
    aput v6, v1, v8

    .line 98
    .line 99
    const/4 v9, 0x1

    .line 100
    aput v6, v1, v9

    .line 101
    .line 102
    int-to-float p1, p1

    .line 103
    div-float/2addr p1, v7

    .line 104
    aput p1, v5, v8

    .line 105
    .line 106
    aput p1, v5, v9

    .line 107
    .line 108
    iput v9, p0, Landroidx/core/widget/AutoScrollHelper;->p:I

    .line 109
    .line 110
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 111
    .line 112
    .line 113
    aput p1, v3, v8

    .line 114
    .line 115
    aput p1, v3, v9

    .line 116
    .line 117
    const p1, 0x3e4ccccd    # 0.2f

    .line 118
    .line 119
    .line 120
    aput p1, v2, v8

    .line 121
    .line 122
    aput p1, v2, v9

    .line 123
    .line 124
    const p1, 0x3a83126f    # 0.001f

    .line 125
    .line 126
    .line 127
    aput p1, v4, v8

    .line 128
    .line 129
    aput p1, v4, v9

    .line 130
    .line 131
    sget p1, Landroidx/core/widget/AutoScrollHelper;->z:I

    .line 132
    .line 133
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->q:I

    .line 134
    .line 135
    const/16 p0, 0x1f4

    .line 136
    .line 137
    iput p0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->a:I

    .line 138
    .line 139
    iput p0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->b:I

    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method public static b(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    cmpg-float p2, p0, p1

    .line 7
    .line 8
    if-gez p2, :cond_1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_1
    return p0
.end method


# virtual methods
.method public final a(FFFI)F
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->n:[F

    .line 2
    .line 3
    aget v0, v0, p4

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->o:[F

    .line 6
    .line 7
    aget v1, v1, p4

    .line 8
    .line 9
    mul-float/2addr v0, p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v2, v1}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/AutoScrollHelper;->c(FF)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-float/2addr p2, p1

    .line 20
    invoke-virtual {p0, p2, v0}, Landroidx/core/widget/AutoScrollHelper;->c(FF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-float/2addr p1, v1

    .line 25
    cmpg-float p2, p1, v2

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->k:Landroid/view/animation/AccelerateInterpolator;

    .line 28
    .line 29
    if-gez p2, :cond_0

    .line 30
    .line 31
    neg-float p1, p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    neg-float p1, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    cmpl-float p2, p1, v2

    .line 39
    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-static {p1, p2, v0}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move p1, v2

    .line 56
    :goto_1
    cmpl-float p2, p1, v2

    .line 57
    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    return v2

    .line 61
    :cond_2
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->r:[F

    .line 62
    .line 63
    aget v0, v0, p4

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->s:[F

    .line 66
    .line 67
    aget v1, v1, p4

    .line 68
    .line 69
    iget-object p0, p0, Landroidx/core/widget/AutoScrollHelper;->t:[F

    .line 70
    .line 71
    aget p0, p0, p4

    .line 72
    .line 73
    mul-float/2addr v0, p3

    .line 74
    if-lez p2, :cond_3

    .line 75
    .line 76
    mul-float/2addr p1, v0

    .line 77
    invoke-static {p1, v1, p0}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_3
    neg-float p1, p1

    .line 83
    mul-float/2addr p1, v0

    .line 84
    invoke-static {p1, v1, p0}, Landroidx/core/widget/AutoScrollHelper;->b(FFF)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    neg-float p0, p0

    .line 89
    return p0
.end method

.method public final c(FF)F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Landroidx/core/widget/AutoScrollHelper;->p:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-eq v2, v1, :cond_2

    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    if-eq v2, p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    cmpg-float p0, p1, v0

    .line 19
    .line 20
    if-gez p0, :cond_4

    .line 21
    .line 22
    neg-float p0, p2

    .line 23
    div-float/2addr p1, p0

    .line 24
    return p1

    .line 25
    :cond_2
    cmpg-float v3, p1, p2

    .line 26
    .line 27
    if-gez v3, :cond_4

    .line 28
    .line 29
    cmpl-float v3, p1, v0

    .line 30
    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-ltz v3, :cond_3

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    sub-float/2addr v4, p1

    .line 37
    return v4

    .line 38
    :cond_3
    iget-boolean p0, p0, Landroidx/core/widget/AutoScrollHelper;->x:Z

    .line 39
    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    if-ne v2, v1, :cond_4

    .line 43
    .line 44
    return v4

    .line 45
    :cond_4
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->x:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object p0, p0, Landroidx/core/widget/AutoScrollHelper;->j:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 14
    .line 15
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->e:J

    .line 16
    .line 17
    sub-long v4, v2, v4

    .line 18
    .line 19
    long-to-int v0, v4

    .line 20
    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->b:I

    .line 21
    .line 22
    if-le v0, v4, :cond_1

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-gez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v1, v0

    .line 30
    :goto_0
    iput v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->i:I

    .line 31
    .line 32
    invoke-virtual {p0, v2, v3}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->a(J)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->h:F

    .line 37
    .line 38
    iput-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->g:J

    .line 39
    .line 40
    return-void
.end method

.method public final e()Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->j:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 2
    .line 3
    iget v1, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->d:F

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    div-float/2addr v1, v2

    .line 10
    float-to-int v1, v1

    .line 11
    iget v0, v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->c:F

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    check-cast p0, Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->A:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    add-int v5, v4, v3

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-lez v1, :cond_1

    .line 42
    .line 43
    if-lt v5, v2, :cond_2

    .line 44
    .line 45
    sub-int/2addr v3, v6

    .line 46
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-gt v1, p0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-gez v1, :cond_3

    .line 62
    .line 63
    if-gtz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-ltz p0, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return v6

    .line 77
    :cond_3
    :goto_0
    return v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_1

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v0, v3, :cond_3

    .line 19
    .line 20
    const/4 p1, 0x3

    .line 21
    if-eq v0, p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->d()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->w:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->u:Z

    .line 31
    .line 32
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->l:Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    int-to-float v5, v5

    .line 48
    invoke-virtual {p0, v0, v3, v5, v1}, Landroidx/core/widget/AutoScrollHelper;->a(FFFI)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-float p1, p1

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    int-to-float v3, v3

    .line 66
    invoke-virtual {p0, p2, p1, v3, v2}, Landroidx/core/widget/AutoScrollHelper;->a(FFFI)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->j:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 71
    .line 72
    iput v0, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->c:F

    .line 73
    .line 74
    iput p1, p2, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->d:F

    .line 75
    .line 76
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->x:Z

    .line 77
    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->e()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->m:Ljava/lang/Runnable;

    .line 87
    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    new-instance p1, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->m:Ljava/lang/Runnable;

    .line 96
    .line 97
    :cond_4
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->x:Z

    .line 98
    .line 99
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->v:Z

    .line 100
    .line 101
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->u:Z

    .line 102
    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    iget p1, p0, Landroidx/core/widget/AutoScrollHelper;->q:I

    .line 106
    .line 107
    if-lez p1, :cond_5

    .line 108
    .line 109
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->m:Ljava/lang/Runnable;

    .line 110
    .line 111
    int-to-long v5, p1

    .line 112
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 113
    .line 114
    invoke-virtual {v4, p2, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    iget-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->m:Ljava/lang/Runnable;

    .line 119
    .line 120
    check-cast p1, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->run()V

    .line 123
    .line 124
    .line 125
    :goto_0
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->u:Z

    .line 126
    .line 127
    :cond_6
    :goto_1
    return v1
.end method
