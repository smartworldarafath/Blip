.class public abstract Lcoil3/RealImageLoader_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcoil3/request/ImageRequest;Lkotlinx/coroutines/Deferred;)Lcoil3/request/Disposable;
    .locals 3

    .line 1
    iget-object p0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 2
    .line 3
    instance-of v0, p0, Lcoil3/target/ViewTarget;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    check-cast p0, Lcoil3/target/ViewTarget;

    .line 8
    .line 9
    invoke-interface {p0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->k:Lcoil3/request/ViewTargetDisposable;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v1, Lcoil3/util/Utils_androidKt;->a:[Landroid/graphics/Bitmap$Config;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-boolean v1, p0, Lcoil3/request/ViewTargetRequestManager;->n:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcoil3/request/ViewTargetRequestManager;->n:Z

    .line 44
    .line 45
    iput-object p1, v0, Lcoil3/request/ViewTargetDisposable;->b:Lkotlinx/coroutines/Deferred;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-object v0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->l:Lkotlinx/coroutines/Job;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iput-object v1, p0, Lcoil3/request/ViewTargetRequestManager;->l:Lkotlinx/coroutines/Job;

    .line 62
    .line 63
    new-instance v0, Lcoil3/request/ViewTargetDisposable;

    .line 64
    .line 65
    iget-object v1, p0, Lcoil3/request/ViewTargetRequestManager;->j:Landroid/view/View;

    .line 66
    .line 67
    invoke-direct {v0, v1, p1}, Lcoil3/request/ViewTargetDisposable;-><init>(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->k:Lcoil3/request/ViewTargetDisposable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-object v0

    .line 74
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p1

    .line 76
    :cond_2
    new-instance p0, Lcoil3/request/OneShotDisposable;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcoil3/request/OneShotDisposable;-><init>(Lkotlinx/coroutines/Deferred;)V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method
