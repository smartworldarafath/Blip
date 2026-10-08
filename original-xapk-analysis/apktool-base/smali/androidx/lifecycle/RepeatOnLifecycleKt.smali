.class public abstract Landroidx/lifecycle/RepeatOnLifecycleKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    .line 16
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    :cond_0
    move-object p0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    :goto_0
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    if-ne p0, p1, :cond_2

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    return-object v2
.end method
