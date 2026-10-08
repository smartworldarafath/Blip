.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)I
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 14
    .line 15
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-int/2addr v1, p1

    .line 28
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-int/2addr p0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 38
    .line 39
    if-ne v2, v1, :cond_4

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/2addr p0, v3

    .line 48
    move v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-int v1, v3, p1

    .line 55
    .line 56
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sub-int v1, v3, v0

    .line 64
    .line 65
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    add-int/2addr p0, p1

    .line 72
    :goto_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final b(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final c(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final e(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 2
    .line 3
    int-to-float p3, p3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 10
    .line 11
    iget v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    .line 12
    .line 13
    mul-float/2addr v0, v2

    .line 14
    add-float/2addr v0, p3

    .line 15
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 16
    .line 17
    int-to-float p0, p0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    int-to-float p3, p3

    .line 23
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    .line 24
    .line 25
    mul-float/2addr p3, v1

    .line 26
    add-float/2addr p3, p0

    .line 27
    int-to-float p0, p2

    .line 28
    cmpg-float p2, p0, v0

    .line 29
    .line 30
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-gtz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    cmpl-float p2, p0, p3

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    if-ltz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sub-float/2addr p0, v0

    .line 48
    sub-float/2addr p3, v0

    .line 49
    div-float/2addr p0, p3

    .line 50
    sub-float p0, v1, p0

    .line 51
    .line 52
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final h(Landroid/view/View;FF)V
    .locals 8

    .line 1
    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    cmpl-float v1, p2, v0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    sget-object v5, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-ne v5, v4, :cond_0

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v5, v2

    .line 28
    :goto_0
    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    if-ne v6, v7, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-nez v6, :cond_3

    .line 35
    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    cmpg-float p2, p2, v0

    .line 39
    .line 40
    if-gez p2, :cond_7

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-lez v1, :cond_7

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    if-ne v6, v4, :cond_7

    .line 47
    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    if-lez v1, :cond_7

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    cmpg-float p2, p2, v0

    .line 54
    .line 55
    if-gez p2, :cond_7

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 63
    .line 64
    sub-int/2addr p2, v0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    int-to-float v0, v0

    .line 70
    const/high16 v1, 0x3f000000    # 0.5f

    .line 71
    .line 72
    mul-float/2addr v0, v1

    .line 73
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-lt p2, v0, :cond_7

    .line 82
    .line 83
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 88
    .line 89
    if-ge p2, p0, :cond_6

    .line 90
    .line 91
    sub-int/2addr p0, p3

    .line 92
    goto :goto_2

    .line 93
    :cond_6
    add-int/2addr p0, p3

    .line 94
    :goto_2
    move v2, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_7
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:I

    .line 97
    .line 98
    :goto_3
    iget-object p2, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Landroidx/customview/widget/ViewDragHelper;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {p2, p0, p3}, Landroidx/customview/widget/ViewDragHelper;->o(II)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_8

    .line 109
    .line 110
    new-instance p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    .line 111
    .line 112
    invoke-direct {p0, v3, p1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    return-void
.end method

.method public final i(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    if-ne v0, p2, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method
