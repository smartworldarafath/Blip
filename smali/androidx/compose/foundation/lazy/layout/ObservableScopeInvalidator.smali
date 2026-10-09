.class public abstract Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a()Landroidx/compose/runtime/MutableState;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
