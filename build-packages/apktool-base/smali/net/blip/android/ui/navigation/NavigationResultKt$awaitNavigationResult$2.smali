.class final Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.navigation.NavigationResultKt$awaitNavigationResult$2"
    f = "NavigationResult.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/navigation/NavController;

.field public final synthetic p:I

.field public final synthetic q:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;ILandroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->o:Landroidx/navigation/NavController;

    .line 2
    .line 3
    iput p2, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->p:I

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->q:Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;

    .line 2
    .line 3
    iget v0, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->p:I

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->q:Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->o:Landroidx/navigation/NavController;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;-><init>(Landroidx/navigation/NavController;ILandroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->o:Landroidx/navigation/NavController;

    .line 25
    .line 26
    iget-object v1, p1, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/navigation/internal/NavControllerImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lkotlinx/coroutines/flow/CancellableFlow;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->e(Lkotlinx/coroutines/flow/CancellableFlow;)Lkotlinx/coroutines/flow/CancellableFlow;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v4, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1;

    .line 41
    .line 42
    iget-object v5, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->q:Landroidx/navigation/NavBackStackEntry;

    .line 43
    .line 44
    invoke-direct {v4, v1, p1, v5}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/CancellableFlow;Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1;

    .line 48
    .line 49
    invoke-direct {p1, v4, v5}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1;-><init>(Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1;Landroidx/navigation/NavBackStackEntry;)V

    .line 50
    .line 51
    .line 52
    iput v3, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->n:I

    .line 53
    .line 54
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->n(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Lnet/blip/android/ui/navigation/NavigationResultStore;->a:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    sget-object p1, Lnet/blip/android/ui/navigation/NavigationResultStore;->a:Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    iget p0, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;->p:I

    .line 74
    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-nez p0, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return-object p0

    .line 87
    :cond_4
    :goto_1
    return-object v2
.end method
