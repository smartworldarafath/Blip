.class public Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;


# instance fields
.field public A:Z

.field public final B:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

.field public z:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->z:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1;-><init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, v1, v1, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->B:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->B:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final L()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->B:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->L()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j0(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->A:Z

    .line 6
    .line 7
    return-void
.end method

.method public final t()J
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->a:Landroidx/compose/ui/node/DpTouchBoundsExpansion;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v0, Landroidx/compose/ui/node/TouchBoundsExpansion;->b:I

    .line 13
    .line 14
    const/high16 v0, 0x41200000    # 10.0f

    .line 15
    .line 16
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/high16 v2, 0x42200000    # 40.0f

    .line 21
    .line 22
    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {v1, v3, v0, p0}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->b(IIII)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    return-wide v0
.end method
