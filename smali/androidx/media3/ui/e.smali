.class public final synthetic Landroidx/media3/ui/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/ui/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/ui/e;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/e;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/ui/e;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c:Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/Float;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a(F)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a(F)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Float;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->c:Landroid/view/ViewGroup;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->d:Landroid/view/ViewGroup;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f:Landroid/view/ViewGroup;

    .line 107
    .line 108
    if-eqz p0, :cond_7

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    :cond_7
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
