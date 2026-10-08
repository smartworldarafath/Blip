.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->a:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$Impl;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;->e(F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$2;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->f(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
