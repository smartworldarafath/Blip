.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$EmptyLazyGridLayoutInfo$1;

    .line 2
    .line 3
    invoke-direct {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt$EmptyLazyGridLayoutInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/DensityKt;->b(F)Landroidx/compose/ui/unit/Density;

    .line 11
    .line 12
    .line 13
    move-result-object v9

    .line 14
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 21
    .line 22
    new-instance v11, La7;

    .line 23
    .line 24
    const/16 v1, 0x1a

    .line 25
    .line 26
    invoke-direct {v11, v1}, La7;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v12, La7;

    .line 30
    .line 31
    const/16 v1, 0x1b

    .line 32
    .line 33
    invoke-direct {v12, v1}, La7;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    const/16 v20, 0x0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    sget-object v14, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 59
    .line 60
    return-void
.end method
