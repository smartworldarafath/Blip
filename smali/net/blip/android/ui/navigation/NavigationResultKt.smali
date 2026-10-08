.class public abstract Lnet/blip/android/ui/navigation/NavigationResultKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/navigation/NavController;Llh;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/random/Random;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/navigation/internal/NavControllerImpl;->f:Lkotlin/collections/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v3, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Llh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->k:Lkotlinx/coroutines/NonCancellable;

    .line 29
    .line 30
    new-instance v3, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;

    .line 31
    .line 32
    invoke-direct {v3, p0, v0, v1, v2}, Lnet/blip/android/ui/navigation/NavigationResultKt$awaitNavigationResult$2;-><init>(Landroidx/navigation/NavController;ILandroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3, p2}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const-string p0, "navController missing back stack"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v2
.end method
