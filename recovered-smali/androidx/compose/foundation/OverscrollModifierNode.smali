.class final Landroidx/compose/foundation/OverscrollModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public z:Landroidx/compose/ui/node/DelegatableNode;


# virtual methods
.method public final Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/OverscrollModifierNode;->z:Landroidx/compose/ui/node/DelegatableNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 9
    .line 10
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/OverscrollModifierNode;->z:Landroidx/compose/ui/node/DelegatableNode;

    .line 20
    .line 21
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/OverscrollModifierNode;->z:Landroidx/compose/ui/node/DelegatableNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Z0(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
