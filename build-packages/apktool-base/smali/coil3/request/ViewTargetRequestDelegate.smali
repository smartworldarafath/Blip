.class public final Lcoil3/request/ViewTargetRequestDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/request/RequestDelegate;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final j:Lcoil3/RealImageLoader;

.field public final k:Lcoil3/request/ImageRequest;

.field public final l:Lcoil3/target/ViewTarget;

.field public final m:Landroidx/lifecycle/Lifecycle;

.field public final n:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/request/ViewTargetRequestDelegate;->j:Lcoil3/RealImageLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/request/ViewTargetRequestDelegate;->k:Lcoil3/request/ImageRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/request/ViewTargetRequestDelegate;->l:Lcoil3/target/ViewTarget;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/request/ViewTargetRequestDelegate;->m:Landroidx/lifecycle/Lifecycle;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/request/ViewTargetRequestDelegate;->n:Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetRequestDelegate;->m:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcoil3/util/LifecyclesKt;->a(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->l:Lcoil3/target/ViewTarget;

    .line 2
    .line 3
    invoke-interface {v0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcoil3/request/ViewTargetRequestDelegate;->d()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object p0, v0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 30
    .line 31
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 32
    .line 33
    const-string v0, "\'ViewTarget.view\' must be attached to a window."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->n:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->l:Lcoil3/target/ViewTarget;

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/lifecycle/LifecycleObserver;

    .line 10
    .line 11
    iget-object v2, p0, Lcoil3/request/ViewTargetRequestDelegate;->m:Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcoil3/request/ViewTargetRequestDelegate;->l:Lcoil3/target/ViewTarget;

    .line 2
    .line 3
    invoke-interface {p0}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->l:Lkotlinx/coroutines/Job;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast p1, Lkotlinx/coroutines/JobSupport;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->j:Lkotlinx/coroutines/GlobalScope;

    .line 23
    .line 24
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 25
    .line 26
    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 27
    .line 28
    iget-object v1, v1, Lkotlinx/coroutines/android/HandlerContext;->o:Lkotlinx/coroutines/android/HandlerContext;

    .line 29
    .line 30
    new-instance v2, Lcoil3/request/ViewTargetRequestManager$dispose$1;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcoil3/request/ViewTargetRequestManager$dispose$1;-><init>(Lcoil3/request/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-static {p1, v1, v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcoil3/request/ViewTargetRequestManager;->l:Lkotlinx/coroutines/Job;

    .line 41
    .line 42
    iput-object v0, p0, Lcoil3/request/ViewTargetRequestManager;->k:Lcoil3/request/ViewTargetDisposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/request/ViewTargetRequestDelegate;->m:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcoil3/request/ViewTargetRequestDelegate;->l:Lcoil3/target/ViewTarget;

    .line 9
    .line 10
    instance-of v2, v1, Landroidx/lifecycle/LifecycleObserver;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v1}, Lcoil3/target/ViewTarget;->getView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcoil3/request/ViewTargetRequestManagerKt;->a(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcoil3/request/ViewTargetRequestDelegate;->d()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iput-object p0, v0, Lcoil3/request/ViewTargetRequestManager;->m:Lcoil3/request/ViewTargetRequestDelegate;

    .line 41
    .line 42
    return-void
.end method
