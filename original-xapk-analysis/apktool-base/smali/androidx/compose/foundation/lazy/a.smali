.class public final synthetic Landroidx/compose/foundation/lazy/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/a;->j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/a;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v3

    .line 20
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/compose/foundation/lazy/a;->j:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 29
    .line 30
    iget-object v0, p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->a:Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    .line 33
    .line 34
    iget p0, p0, Landroidx/compose/foundation/lazy/a;->k:I

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->b(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->a:I

    .line 41
    .line 42
    sub-int/2addr p0, v1

    .line 43
    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListInterval;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 48
    .line 49
    iget-object p2, p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->c:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, p2, p0, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 64
    .line 65
    .line 66
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method
