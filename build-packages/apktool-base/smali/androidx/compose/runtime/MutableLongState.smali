.class public interface abstract Landroidx/compose/runtime/MutableLongState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/State;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/runtime/MutableState<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
