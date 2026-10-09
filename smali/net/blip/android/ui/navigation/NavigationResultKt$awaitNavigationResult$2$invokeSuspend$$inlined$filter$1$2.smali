.class public final Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic k:Landroidx/navigation/NavController;

.field public final synthetic l:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->k:Landroidx/navigation/NavController;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->l:Landroidx/navigation/NavBackStackEntry;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;-><init>(Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object p2, p1

    .line 51
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 52
    .line 53
    iget-object v2, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->k:Landroidx/navigation/NavController;

    .line 54
    .line 55
    iget-object v2, v2, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 56
    .line 57
    iget-object v2, v2, Landroidx/navigation/internal/NavControllerImpl;->h:Lkotlinx/coroutines/flow/StateFlow;

    .line 58
    .line 59
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/List;

    .line 64
    .line 65
    iget-object v4, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->l:Landroidx/navigation/NavBackStackEntry;

    .line 66
    .line 67
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_3

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    :cond_3
    iput v3, v0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2$1;->n:I

    .line 80
    .line 81
    iget-object p0, p0, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 82
    .line 83
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_4

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method
