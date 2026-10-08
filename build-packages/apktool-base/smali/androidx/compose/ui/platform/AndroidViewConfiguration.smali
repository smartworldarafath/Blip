.class public final Landroidx/compose/ui/platform/AndroidViewConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/platform/ViewConfiguration;


# instance fields
.field public final a:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->a:Landroid/view/ViewConfiguration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public final c()F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->a:Landroid/view/ViewConfiguration;

    .line 8
    .line 9
    invoke-static {p0}, Ld1;->b(Landroid/view/ViewConfiguration;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-float p0, p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    .line 16
    .line 17
    return p0
.end method

.method public final e()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->a:Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final f()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->a:Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final g()F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidViewConfiguration;->a:Landroid/view/ViewConfiguration;

    .line 8
    .line 9
    invoke-static {p0}, Ld1;->v(Landroid/view/ViewConfiguration;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    int-to-float p0, p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/high16 p0, 0x41800000    # 16.0f

    .line 16
    .line 17
    return p0
.end method
