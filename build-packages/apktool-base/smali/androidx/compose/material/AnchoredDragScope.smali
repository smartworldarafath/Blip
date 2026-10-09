.class public interface abstract Landroidx/compose/material/AnchoredDragScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;F)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDragScope$1;->a:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableState;->j:Landroidx/compose/runtime/MutableFloatState;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState;->k:Landroidx/compose/runtime/MutableFloatState;

    .line 11
    .line 12
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
