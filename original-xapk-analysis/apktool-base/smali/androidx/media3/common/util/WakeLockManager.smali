.class public final Landroidx/media3/common/util/WakeLockManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public final c:Landroidx/media3/common/util/HandlerWrapper;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p3, p2, p1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Landroidx/media3/common/util/WakeLockManager;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p3, p2, p1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/media3/common/util/WakeLockManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/WakeLockManager;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/media3/common/util/e;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/common/util/e;-><init>(Landroidx/media3/common/util/WakeLockManager;ZZ)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lf3;

    .line 25
    .line 26
    const/16 v3, 0x1b

    .line 27
    .line 28
    invoke-direct {v2, v3, p0, v1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/common/util/WakeLockManager;->c:Landroidx/media3/common/util/HandlerWrapper;

    .line 32
    .line 33
    check-cast v3, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 34
    .line 35
    const-wide/16 v4, 0x3e8

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    new-instance v2, Landroidx/media3/common/util/f;

    .line 43
    .line 44
    invoke-direct {v2, p0, v1, p1, p2}, Landroidx/media3/common/util/f;-><init>(Landroidx/media3/common/util/WakeLockManager;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->e:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/common/util/WakeLockManager;->e:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/common/util/WakeLockManager;->d:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/WakeLockManager;->a(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method
