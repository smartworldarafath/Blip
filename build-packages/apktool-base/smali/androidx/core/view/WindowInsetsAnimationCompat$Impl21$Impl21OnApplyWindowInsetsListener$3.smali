.class Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroidx/core/view/WindowInsetsAnimationCompat;

.field public final synthetic l:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

.field public final synthetic m:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->j:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->k:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->l:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->m:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->k:Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->l:Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->j:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->i(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21$Impl21OnApplyWindowInsetsListener$3;->m:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
