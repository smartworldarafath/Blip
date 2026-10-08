.class public final synthetic Lwe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/gestures/ScrollableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwe;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lwe;->k:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lwe;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lwe;->k:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->c0:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p0

    .line 22
    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->b1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->b1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    :goto_0
    return-object v1

    .line 73
    :pswitch_0
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 74
    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
