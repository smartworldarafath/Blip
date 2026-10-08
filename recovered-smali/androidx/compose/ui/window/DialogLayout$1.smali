.class public final Landroidx/compose/ui/window/DialogLayout$1;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic l:Landroidx/compose/ui/window/DialogLayout;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/window/DialogLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/DialogLayout$1;->l:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->l:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    iget-boolean p2, p0, Landroidx/compose/ui/window/DialogLayout;->w:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    sub-int/2addr v3, v4

    .line 38
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr p0, v0

    .line 51
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    :goto_0
    return-object p1

    .line 64
    :cond_1
    invoke-virtual {p1, v1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public final d(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->l:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/compose/ui/window/DialogLayout;->w:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    sub-int/2addr v3, v4

    .line 38
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr p0, v0

    .line 51
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    :goto_0
    return-object p2

    .line 64
    :cond_1
    invoke-static {v1, v2, v3, p0}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget p1, p0, Landroidx/core/graphics/Insets;->a:I

    .line 69
    .line 70
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 71
    .line 72
    iget-object v1, p2, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->a:Landroidx/core/graphics/Insets;

    .line 73
    .line 74
    iget v2, p0, Landroidx/core/graphics/Insets;->b:I

    .line 75
    .line 76
    iget v3, p0, Landroidx/core/graphics/Insets;->c:I

    .line 77
    .line 78
    iget p0, p0, Landroidx/core/graphics/Insets;->d:I

    .line 79
    .line 80
    invoke-static {v1, p1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat;->o(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object p2, p2, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->b:Landroidx/core/graphics/Insets;

    .line 85
    .line 86
    invoke-static {p2, p1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat;->o(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {v0, v1, p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method
