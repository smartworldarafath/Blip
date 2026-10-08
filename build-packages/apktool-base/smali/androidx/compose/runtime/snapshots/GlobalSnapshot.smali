.class public final Landroidx/compose/runtime/snapshots/GlobalSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final C(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 0

    .line 1
    new-instance p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1$1;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lc8;

    .line 7
    .line 8
    const/4 p2, 0x6

    .line 9
    invoke-direct {p1, p0, p2}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 19
    .line 20
    return-object p0
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    .line 11
    throw p0
.end method

.method public final k()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final l()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public final m()V
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->a:Lle;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1

    .line 1
    new-instance p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lc8;

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    invoke-direct {p1, p0, v0}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;

    .line 19
    .line 20
    return-object p0
.end method

.method public final w()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
