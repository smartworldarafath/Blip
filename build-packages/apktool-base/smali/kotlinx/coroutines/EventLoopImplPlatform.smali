.class public abstract Lkotlinx/coroutines/EventLoopImplPlatform;
.super Lkotlinx/coroutines/EventLoop;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public abstract k1()Ljava/lang/Thread;
.end method

.method public l1(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->s:Lkotlinx/coroutines/DefaultExecutor;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->q1(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
