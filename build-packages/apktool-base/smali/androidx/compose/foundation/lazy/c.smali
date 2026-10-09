.class public final synthetic Landroidx/compose/foundation/lazy/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/State;

.field public final synthetic k:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic l:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/c;->j:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/c;->k:Landroidx/compose/foundation/lazy/LazyListState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/c;->l:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/c;->j:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/foundation/lazy/c;->k:Landroidx/compose/foundation/lazy/LazyListState;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lkotlin/ranges/IntRange;

    .line 22
    .line 23
    invoke-direct {v1, v3, v0}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/foundation/lazy/c;->l:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 29
    .line 30
    invoke-direct {v3, v2, v0, p0, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)V

    .line 31
    .line 32
    .line 33
    return-object v3
.end method
