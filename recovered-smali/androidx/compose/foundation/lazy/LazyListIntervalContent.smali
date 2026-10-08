.class public final Landroidx/compose/foundation/lazy/LazyListIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent<",
        "Landroidx/compose/foundation/lazy/LazyListInterval;",
        ">;",
        "Landroidx/compose/foundation/lazy/LazyListScope;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 2
    .line 3
    new-instance v1, La7;

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    invoke-direct {v1, v2}, La7;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lfa;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, p1, v3}, Lfa;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    const v4, -0x331bf287

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v4, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, v2, v1, p1}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 29
    .line 30
    invoke-virtual {p0, v3, v0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final e()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 2
    .line 3
    return-object p0
.end method
