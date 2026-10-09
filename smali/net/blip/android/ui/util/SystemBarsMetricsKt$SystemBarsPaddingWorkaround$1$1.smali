.class final Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1"
    f = "SystemBarsMetrics.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->n:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->n:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->n:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-interface {p1}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    new-instance v1, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object p0, p0, Lnet/blip/android/ui/util/SystemBarsMetricsKt$SystemBarsPaddingWorkaround$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    if-lez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 29
    .line 30
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 35
    .line 36
    iget v0, v0, Lnet/blip/android/ui/util/SystemBarsMetrics;->a:F

    .line 37
    .line 38
    :goto_0
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object p1, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 52
    .line 53
    iget p1, p1, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 54
    .line 55
    :goto_1
    invoke-direct {v1, v0, p1}, Lnet/blip/android/ui/util/SystemBarsMetrics;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-interface {p0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method
