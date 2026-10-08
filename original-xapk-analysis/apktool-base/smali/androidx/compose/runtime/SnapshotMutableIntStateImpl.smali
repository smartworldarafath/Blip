.class public abstract Landroidx/compose/runtime/SnapshotMutableIntStateImpl;
.super Landroidx/compose/runtime/snapshots/StateObjectImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/MutableIntState;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/snapshots/StateObjectImpl;",
        "Landroidx/compose/runtime/MutableIntState;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;


# virtual methods
.method public final a()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 7
    .line 8
    return-void
.end method

.method public final c()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 1
    move-object p0, p2

    .line 2
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 3
    .line 4
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 5
    .line 6
    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I

    .line 7
    .line 8
    iget p1, p3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I

    .line 9
    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->s(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I

    .line 10
    .line 11
    return p0
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I

    .line 10
    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->n(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObjectImpl;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 27
    .line 28
    iput p1, v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v2

    .line 31
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->m(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v2

    .line 37
    throw p0

    .line 38
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k:Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->g(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    .line 8
    .line 9
    iget v0, v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->c:I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v1, "MutableIntState(value="

    .line 16
    .line 17
    const-string v2, ")@"

    .line 18
    .line 19
    invoke-static {v0, p0, v1, v2}, Lq;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
