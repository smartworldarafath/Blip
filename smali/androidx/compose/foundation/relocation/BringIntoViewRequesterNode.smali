.class public final Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public x:Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# virtual methods
.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->x:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    instance-of v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->x:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 28
    .line 29
    return-void
.end method

.method public final R0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->x:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
