.class public abstract Landroidx/compose/ui/layout/LookaheadLayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/node/LookaheadDelegate;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-object p0
.end method
