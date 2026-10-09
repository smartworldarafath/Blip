.class public final synthetic Ln7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/DefaultTimeBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/DefaultTimeBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln7;->a:Landroidx/media3/ui/DefaultTimeBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    sget v0, Landroidx/media3/ui/DefaultTimeBar;->b0:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Ln7;->a:Landroidx/media3/ui/DefaultTimeBar;

    .line 14
    .line 15
    iput p1, p0, Landroidx/media3/ui/DefaultTimeBar;->O:F

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->j:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
