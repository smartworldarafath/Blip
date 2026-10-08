.class public abstract Lcom/google/common/util/concurrent/Futures;
.super Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$CallbackListener;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lu3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    :cond_1
    throw p0

    .line 33
    :catch_0
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "Future was expected to be done: %s"

    .line 40
    .line 41
    invoke-static {v0, p0}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method
