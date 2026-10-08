.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnknownNullness"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final L:[I

.field public static final M:Landroidx/core/view/WindowInsetsCompat;

.field public static final N:Landroid/graphics/Rect;


# instance fields
.field public A:Landroidx/core/view/WindowInsetsCompat;

.field public B:Landroidx/core/view/WindowInsetsCompat;

.field public C:Landroidx/core/view/WindowInsetsCompat;

.field public D:Landroidx/core/view/WindowInsetsCompat;

.field public E:Landroid/widget/OverScroller;

.field public F:Landroid/view/ViewPropertyAnimator;

.field public final G:Landroid/animation/AnimatorListenerAdapter;

.field public final H:Ljava/lang/Runnable;

.field public final I:Ljava/lang/Runnable;

.field public final J:Landroidx/core/view/NestedScrollingParentHelper;

.field public final K:Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;

.field public j:I

.field public k:Landroidx/appcompat/widget/ContentFrameLayout;

.field public l:Landroidx/appcompat/widget/ActionBarContainer;

.field public m:Landroidx/appcompat/widget/DecorToolbar;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public final t:Landroid/graphics/Rect;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/Rect;

.field public final x:Landroid/graphics/Rect;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x7f040004

    .line 2
    .line 3
    .line 4
    const v1, 0x1010059

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->L:[I

    .line 12
    .line 13
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v2, v1, v2}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->b(Landroidx/core/graphics/Insets;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->M:Landroidx/core/view/WindowInsetsCompat;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->N:Landroid/graphics/Rect;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p2, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance p2, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance p2, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/graphics/Rect;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 44
    .line 45
    sget-object v0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/WindowInsetsCompat;

    .line 48
    .line 49
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/WindowInsetsCompat;

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroidx/core/view/WindowInsetsCompat;

    .line 54
    .line 55
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->G:Landroid/animation/AnimatorListenerAdapter;

    .line 61
    .line 62
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    .line 68
    .line 69
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Ljava/lang/Runnable;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->J:Landroidx/core/view/NestedScrollingParentHelper;

    .line 85
    .line 86
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->K:Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static j(Landroid/view/View;IIII)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 6
    .line 7
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    .line 19
    if-eq v0, p2, :cond_1

    .line 20
    .line 21
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    .line 23
    move p1, v1

    .line 24
    :cond_1
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    .line 26
    if-eq p2, p3, :cond_2

    .line 27
    .line 28
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    move p1, v1

    .line 31
    :cond_2
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    if-eq p2, p4, :cond_3

    .line 34
    .line 35
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->F:Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->L:[I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/widget/OverScroller;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/widget/OverScroller;

    .line 44
    .line 45
    return-void
.end method

.method public final c(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d(Landroid/view/View;IIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final d(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    if-nez p6, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-float/2addr v2, v0

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    .line 32
    .line 33
    add-float/2addr v2, v0

    .line 34
    float-to-int v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v0, v1

    .line 37
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v0

    .line 50
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

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

.method public final f(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 11
    new-instance p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 12
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getActionBarHideOffset()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    float-to-int p0, p0

    .line 10
    neg-int p0, p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->J:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    iget v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->a:I

    .line 4
    .line 5
    iget p0, p0, Landroidx/core/view/NestedScrollingParentHelper;->b:I

    .line 6
    .line 7
    or-int/2addr p0, v0

    .line 8
    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final h(Landroid/view/View;II[II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const v0, 0x7f0a0031

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 15
    .line 16
    const v0, 0x7f0a0032

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 26
    .line 27
    const v0, 0x7f0a0030

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v1, v0, Landroidx/appcompat/widget/DecorToolbar;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    check-cast v0, Landroidx/appcompat/widget/DecorToolbar;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "Can\'t make a decor toolbar out of "

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit16 v1, v0, 0x100

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    and-int/lit16 v0, v0, 0x600

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->K:Landroidx/appcompat/widget/ActionBarOverlayLayout$NoSystemUiLayoutFlagView;

    .line 25
    .line 26
    sget-object v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->M:Landroidx/core/view/WindowInsetsCompat;

    .line 27
    .line 28
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-static {v4, v5, v6}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    sget-object v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->N:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    xor-int/lit8 v5, v4, 0x1

    .line 40
    .line 41
    iput-boolean v5, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Z

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v0, v3

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    :goto_2
    move v0, v2

    .line 53
    :goto_3
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsCompat;->s(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->l()Landroidx/core/graphics/Insets;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v1, v0, Landroidx/core/graphics/Insets;->a:I

    .line 64
    .line 65
    iget v4, v0, Landroidx/core/graphics/Insets;->a:I

    .line 66
    .line 67
    iget v5, v0, Landroidx/core/graphics/Insets;->b:I

    .line 68
    .line 69
    iget v6, v0, Landroidx/core/graphics/Insets;->c:I

    .line 70
    .line 71
    iget v0, v0, Landroidx/core/graphics/Insets;->d:I

    .line 72
    .line 73
    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v7, v1, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v1, v0, Landroidx/core/graphics/Insets;->a:I

    .line 88
    .line 89
    iget v7, v0, Landroidx/core/graphics/Insets;->c:I

    .line 90
    .line 91
    sub-int/2addr v4, v1

    .line 92
    sub-int/2addr v6, v7

    .line 93
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 94
    .line 95
    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 99
    .line 100
    iget v0, v0, Landroidx/core/graphics/Insets;->a:I

    .line 101
    .line 102
    invoke-static {v1, v0, v3, v7, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(Landroid/view/View;IIII)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 108
    .line 109
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 113
    .line 114
    invoke-static {v0, v4, v5, v6, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(Landroid/view/View;IIII)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    :goto_4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-static {p0, p1, v1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)V

    .line 121
    .line 122
    .line 123
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 128
    .line 129
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 130
    .line 131
    invoke-virtual {p1, v3, v4, v5, v6}, Landroidx/core/view/WindowInsetsCompat;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/WindowInsetsCompat;

    .line 136
    .line 137
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/WindowInsetsCompat;

    .line 138
    .line 139
    invoke-virtual {v4, v3}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/WindowInsetsCompat;

    .line 146
    .line 147
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->B:Landroidx/core/view/WindowInsetsCompat;

    .line 148
    .line 149
    move v0, v2

    .line 150
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->u:Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_6
    move v2, v0

    .line 163
    :goto_5
    if-eqz v2, :cond_7

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->c()Landroidx/core/view/WindowInsetsCompat;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->b()Landroidx/core/view/WindowInsetsCompat;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->r()Landroid/view/WindowInsets;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    const/4 p4, 0x0

    .line 14
    :goto_0
    if-ge p4, p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 33
    .line 34
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    .line 44
    add-int/2addr v3, p2

    .line 45
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    .line 47
    add-int/2addr v0, p3

    .line 48
    add-int/2addr v1, v3

    .line 49
    add-int/2addr v2, v0

    .line 50
    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move v2, p1

    .line 10
    move v4, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 21
    .line 22
    iget-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 32
    .line 33
    add-int/2addr p1, p2

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    .line 47
    add-int/2addr v1, v3

    .line 48
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    .line 50
    add-int/2addr v1, p0

    .line 51
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {p2, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    and-int/lit16 v3, v3, 0x100

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v3, p2

    .line 78
    :goto_0
    if-eqz v3, :cond_2

    .line 79
    .line 80
    iget v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:I

    .line 81
    .line 82
    iget-boolean v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 83
    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 89
    .line 90
    add-int/2addr v5, v6

    .line 91
    :cond_1
    iget-boolean v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Z

    .line 92
    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 96
    .line 97
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    if-eqz v6, :cond_4

    .line 102
    .line 103
    iget v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:I

    .line 104
    .line 105
    add-int/2addr v5, v6

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    const/16 v6, 0x8

    .line 114
    .line 115
    if-eq v5, v6, :cond_3

    .line 116
    .line 117
    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move v5, p2

    .line 125
    :cond_4
    :goto_1
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->t:Landroid/graphics/Rect;

    .line 126
    .line 127
    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->v:Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->A:Landroidx/core/view/WindowInsetsCompat;

    .line 133
    .line 134
    iput-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 135
    .line 136
    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Z

    .line 137
    .line 138
    if-nez v8, :cond_6

    .line 139
    .line 140
    if-nez v3, :cond_6

    .line 141
    .line 142
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Z

    .line 143
    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 147
    .line 148
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    if-eqz v3, :cond_5

    .line 151
    .line 152
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 159
    .line 160
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    add-int/2addr v6, v5

    .line 168
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 169
    .line 170
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 173
    .line 174
    :goto_2
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 175
    .line 176
    invoke-virtual {v3, p2, v5, p2, p2}, Landroidx/core/view/WindowInsetsCompat;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iput-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Z

    .line 184
    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 192
    .line 193
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->k()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 202
    .line 203
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->j()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    iget-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 208
    .line 209
    invoke-virtual {v8}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    invoke-static {v8, p2}, Ljava/lang/Math;->max(II)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-static {v3, v5, v6, p2}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    goto :goto_3

    .line 222
    :cond_7
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 227
    .line 228
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat;->k()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    add-int/2addr v3, v5

    .line 233
    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 234
    .line 235
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat;->j()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    iget-object v6, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 240
    .line 241
    invoke-virtual {v6}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    invoke-static {p2, v3, v5, v6}, Landroidx/core/graphics/Insets;->b(IIII)Landroidx/core/graphics/Insets;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    :goto_3
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 250
    .line 251
    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 252
    .line 253
    invoke-direct {v3, v5}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;->b(Landroidx/core/graphics/Insets;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->a()Landroidx/core/view/WindowInsetsCompat;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    iput-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 264
    .line 265
    :goto_4
    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 266
    .line 267
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 268
    .line 269
    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 270
    .line 271
    iget v6, v7, Landroid/graphics/Rect;->right:I

    .line 272
    .line 273
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 274
    .line 275
    invoke-static {p2, v3, v5, v6, v7}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(Landroid/view/View;IIII)Z

    .line 276
    .line 277
    .line 278
    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroidx/core/view/WindowInsetsCompat;

    .line 279
    .line 280
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 281
    .line 282
    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-nez p2, :cond_8

    .line 287
    .line 288
    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->C:Landroidx/core/view/WindowInsetsCompat;

    .line 289
    .line 290
    iput-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->D:Landroidx/core/view/WindowInsetsCompat;

    .line 291
    .line 292
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 293
    .line 294
    invoke-static {v3, p2}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    .line 295
    .line 296
    .line 297
    :cond_8
    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v11, 0x0

    .line 301
    move-object v6, v0

    .line 302
    move v8, v2

    .line 303
    move v10, v4

    .line 304
    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 305
    .line 306
    .line 307
    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 314
    .line 315
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 316
    .line 317
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 322
    .line 323
    add-int/2addr v3, v5

    .line 324
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 325
    .line 326
    add-int/2addr v3, v5

    .line 327
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 332
    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    iget v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    .line 339
    add-int/2addr v3, v5

    .line 340
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    .line 342
    add-int/2addr v3, p2

    .line 343
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k:Landroidx/appcompat/widget/ContentFrameLayout;

    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredState()I

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    invoke-static {v1, p2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    add-int/2addr v3, v1

    .line 366
    add-int/2addr v3, p1

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    add-int/2addr v1, p1

    .line 376
    add-int/2addr v1, p0

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    invoke-static {p1, v2, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    shl-int/lit8 p2, p2, 0x10

    .line 398
    .line 399
    invoke-static {p0, v4, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 400
    .line 401
    .line 402
    move-result p0

    .line 403
    invoke-virtual {v0, p1, p0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 404
    .line 405
    .line 406
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/widget/OverScroller;

    .line 9
    .line 10
    float-to-int v4, p3

    .line 11
    const/high16 v7, -0x80000000

    .line 12
    .line 13
    const v8, 0x7fffffff

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Landroid/widget/OverScroller;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-le p1, p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Ljava/lang/Runnable;

    .line 42
    .line 43
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$3;->run()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    .line 53
    .line 54
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout$2;->run()V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Z

    .line 61
    .line 62
    return p1

    .line 63
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:I

    .line 2
    .line 3
    add-int/2addr p1, p3

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->J:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    iput p3, p1, Landroidx/core/view/NestedScrollingParentHelper;->a:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    and-int/lit8 p1, p3, 0x2

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->r:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->s:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-wide/16 v1, 0x258

    .line 18
    .line 19
    if-gt p1, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->H:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->I:Ljava/lang/Runnable;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final onWindowSystemUiVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Landroidx/appcompat/widget/ActionBarContainer;

    .line 20
    .line 21
    neg-int p1, p1

    .line 22
    int-to-float p1, p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 29
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 30
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->c()V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->e:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->i()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->m:Landroidx/appcompat/widget/DecorToolbar;

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->g:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->a:Landroidx/appcompat/widget/Toolbar;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->h:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iget v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->b:I

    .line 17
    .line 18
    and-int/lit8 v1, v1, 0x8

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->g:Z

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
