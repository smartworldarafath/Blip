.class public interface abstract Landroidx/compose/foundation/lazy/grid/LazyGridScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 5

    .line 1
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->b:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 4
    .line 5
    new-instance v1, Lea;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lea;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 9
    .line 10
    .line 11
    new-instance p1, La7;

    .line 12
    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    invoke-direct {p1, v3}, La7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lfa;

    .line 19
    .line 20
    invoke-direct {v3, p2, v2}, Lfa;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 24
    .line 25
    const v2, -0x116221cb

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {p2, v2, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v3, v1, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4, v2}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->c:Z

    .line 42
    .line 43
    return-void
.end method
