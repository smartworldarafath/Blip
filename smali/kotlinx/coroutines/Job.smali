.class public interface abstract Lkotlinx/coroutines/Job;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/Job$Key;
    }
.end annotation


# virtual methods
.method public abstract O(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract P(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
.end method

.method public abstract R()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract X(Lkotlinx/coroutines/JobSupport;)Lkotlinx/coroutines/ChildHandle;
.end method

.method public abstract h()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract n(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract start()Z
.end method

.method public abstract v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
.end method
