.class Landroidx/media3/ui/PlayerControlViewLayoutManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$2;->a:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move v1, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/4 v1, 0x4

    .line 36
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->k:Landroid/view/View;

    .line 40
    .line 41
    instance-of v1, p1, Landroidx/media3/ui/DefaultTimeBar;

    .line 42
    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->B:Z

    .line 46
    .line 47
    if-nez p0, :cond_6

    .line 48
    .line 49
    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    .line 50
    .line 51
    iget-object p0, p1, Landroidx/media3/ui/DefaultTimeBar;->N:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 60
    .line 61
    .line 62
    :cond_5
    iput-boolean v0, p1, Landroidx/media3/ui/DefaultTimeBar;->P:Z

    .line 63
    .line 64
    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    new-array v1, v1, [F

    .line 68
    .line 69
    aput p1, v1, v0

    .line 70
    .line 71
    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput p1, v1, v0

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, 0xfa

    .line 80
    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    :cond_6
    return-void
.end method
