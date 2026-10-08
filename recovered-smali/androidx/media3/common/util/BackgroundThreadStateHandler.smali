.class public final Landroidx/media3/common/util/BackgroundThreadStateHandler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
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
.field public final a:Landroidx/media3/common/util/HandlerWrapper;

.field public final b:Landroidx/media3/common/util/HandlerWrapper;

.field public final c:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p4, p2, v0}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a:Landroidx/media3/common/util/HandlerWrapper;

    .line 10
    .line 11
    invoke-virtual {p4, p3, v0}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p5, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    .line 39
    .line 40
    return-object p0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->e:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v0, Lb4;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lb4;-><init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 10
    .line 11
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d(Ld7;Ld7;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    .line 26
    .line 27
    add-int/2addr v0, v3

    .line 28
    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    .line 29
    .line 30
    new-instance v0, Landroidx/media3/common/util/a;

    .line 31
    .line 32
    invoke-direct {v0, v2, p0, p2}, Landroidx/media3/common/util/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->b(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ld7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 55
    .line 56
    invoke-interface {p0, p2, p1}, Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method
