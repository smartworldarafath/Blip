.class final Landroidx/compose/ui/focus/FocusChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;


# instance fields
.field public x:Lkotlin/jvm/functions/Function1;

.field public y:Landroidx/compose/ui/focus/FocusStateImpl;


# virtual methods
.method public final j0(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->y:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedNode;->y:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedNode;->x:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
