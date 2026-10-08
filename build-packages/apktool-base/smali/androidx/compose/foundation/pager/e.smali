.class public final synthetic Landroidx/compose/foundation/pager/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Landroidx/compose/foundation/pager/PagerCacheWindowScope;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerCacheWindowScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/e;->j:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/e;->k:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchResultScope;->getIndex()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/pager/e;->k:Landroidx/compose/foundation/pager/PagerCacheWindowScope;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerCacheWindowScope;->e()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object p0, p0, Landroidx/compose/foundation/pager/e;->j:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
