.class public final synthetic Landroidx/compose/foundation/pager/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/g;->j:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/pager/g;->j:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->n()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    div-float/2addr p1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Lkotlin/math/MathKt;->b(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, p1

    .line 36
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->j(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState;->q:Landroidx/compose/runtime/MutableIntState;

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method
