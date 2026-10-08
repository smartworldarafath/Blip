.class public final synthetic Landroidx/compose/foundation/lazy/layout/j;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public final synthetic k:Landroidx/compose/runtime/saveable/SaveableStateHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/j;->j:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/j;->k:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/j;->j:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/j;->k:Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
