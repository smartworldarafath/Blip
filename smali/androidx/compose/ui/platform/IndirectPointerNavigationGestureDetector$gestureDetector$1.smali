.class public final Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector$gestureDetector$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector$gestureDetector$1;->j:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector$gestureDetector$1;->j:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->a:Lm0;

    .line 4
    .line 5
    iget-boolean p2, p0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p0, p0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->b:I

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    cmpl-float p0, p0, p4

    .line 26
    .line 27
    if-lez p0, :cond_4

    .line 28
    .line 29
    cmpl-float p0, p3, p2

    .line 30
    .line 31
    if-lez p0, :cond_1

    .line 32
    .line 33
    move v1, v0

    .line 34
    :cond_1
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lm0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    if-ne p0, v1, :cond_4

    .line 44
    .line 45
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    cmpl-float p0, p0, p3

    .line 54
    .line 55
    if-lez p0, :cond_4

    .line 56
    .line 57
    cmpl-float p0, p4, p2

    .line 58
    .line 59
    if-lez p0, :cond_3

    .line 60
    .line 61
    move v1, v0

    .line 62
    :cond_3
    new-instance p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 63
    .line 64
    invoke-direct {p0, v1}, Landroidx/compose/ui/focus/FocusDirection;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lm0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
