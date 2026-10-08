.class public abstract Lkotlinx/coroutines/CompletableDeferredKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobSupport;->M(Lkotlinx/coroutines/Job;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->T(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CompletableDeferredImpl;->C0(Ljava/lang/Throwable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
