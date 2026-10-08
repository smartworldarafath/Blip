.class public final Landroidx/media3/common/util/ListenerSet;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;,
        Landroidx/media3/common/util/ListenerSet$ListenerHolder;,
        Landroidx/media3/common/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Thread;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public final c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public final g:Ljava/lang/Object;

.field public h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 7

    .line 58
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ljava/lang/Thread;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->f:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    if-eqz p5, :cond_0

    .line 36
    .line 37
    new-instance p1, Landroidx/media3/common/util/b;

    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-direct {p1, p3, p0}, Landroidx/media3/common/util/b;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p4, Landroidx/media3/common/util/SystemClock;

    .line 44
    .line 45
    invoke-virtual {p4, p2, p1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 54
    .line 55
    :goto_0
    iput-boolean p6, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/common/util/ListenerSet;->h:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    new-instance v1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Landroidx/media3/common/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 19
    .line 20
    .line 21
    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->f:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 40
    .line 41
    iget-object v3, v2, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->e:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 66
    .line 67
    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    :goto_3
    return-void
.end method

.method public final c(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 18
    .line 19
    .line 20
    :goto_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroidx/media3/common/util/c;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/common/util/c;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->f:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 13
    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 20
    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->g:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/common/util/ListenerSet;->h:Z

    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 47
    .line 48
    iput-boolean v2, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    iget-boolean v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    iput-boolean v1, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 57
    .line 58
    iget-object v5, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v3, v3, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v4, v5, v3}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->f(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public final e(Landroidx/media3/common/Player$Listener;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/ListenerSet;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 13
    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 20
    .line 21
    .line 22
    :goto_1
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_4

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    .line 39
    .line 40
    iget-object v5, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iput-boolean v2, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->d:Z

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/media3/common/util/ListenerSet;->c:Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    .line 51
    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    iget-boolean v6, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    iput-boolean v1, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->c:Z

    .line 59
    .line 60
    iget-object v6, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->a:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v7, v4, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->b:Landroidx/media3/common/FlagSet$Builder;

    .line 63
    .line 64
    invoke-virtual {v7}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-interface {v5, v6, v7}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->f(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    return-void
.end method

.method public final f(ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
