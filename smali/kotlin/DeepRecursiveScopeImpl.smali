.class final Lkotlin/DeepRecursiveScopeImpl;
.super Lkotlin/DeepRecursiveScope;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/DeepRecursiveScope<",
        "TT;TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public j:Lkotlin/jvm/functions/Function3;

.field public k:Lkotlin/Unit;

.field public l:Lkotlin/coroutines/Continuation;

.field public m:Ljava/lang/Object;


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->l:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->k:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlin/DeepRecursiveScopeImpl;->l:Lkotlin/coroutines/Continuation;

    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->m:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public final o()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    .line 3
    return-object p0
.end method
