.class public final Landroidx/work/impl/background/greedy/TimeLimiter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/work/RunnableScheduler;

.field public final b:Landroidx/work/impl/WorkLauncherImpl;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroidx/work/impl/DefaultRunnableScheduler;Landroidx/work/impl/WorkLauncherImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->a:Landroidx/work/RunnableScheduler;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->b:Landroidx/work/impl/WorkLauncherImpl;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->c:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->d:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/impl/StartStopToken;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->d:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->a:Landroidx/work/RunnableScheduler;

    .line 19
    .line 20
    check-cast p0, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/work/impl/DefaultRunnableScheduler;->a:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0

    .line 30
    throw p0
.end method

.method public final b(Landroidx/work/impl/StartStopToken;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf3;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->c:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->d:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->a:Landroidx/work/RunnableScheduler;

    .line 24
    .line 25
    check-cast p0, Landroidx/work/impl/DefaultRunnableScheduler;

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/work/impl/DefaultRunnableScheduler;->a:Landroid/os/Handler;

    .line 28
    .line 29
    const-wide/32 v1, 0x5265c0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1

    .line 38
    throw p0
.end method
