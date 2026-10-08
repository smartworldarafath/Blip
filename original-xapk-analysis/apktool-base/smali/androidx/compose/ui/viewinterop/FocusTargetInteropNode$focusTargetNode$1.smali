.class final synthetic Landroidx/compose/ui/viewinterop/FocusTargetInteropNode$focusTargetNode$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/focus/FocusState;

    .line 4
    .line 5
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p2, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne p2, p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroidx/compose/ui/viewinterop/b;

    .line 38
    .line 39
    invoke-direct {v0, p2, p0}, Landroidx/compose/ui/viewinterop/b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Landroidx/compose/ui/layout/PinnableContainer;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    invoke-interface {p2}, Landroidx/compose/ui/layout/PinnableContainer;->b()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 59
    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;->a()V

    .line 63
    .line 64
    .line 65
    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/FocusTargetInteropNode;->A:Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    .line 66
    .line 67
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method
