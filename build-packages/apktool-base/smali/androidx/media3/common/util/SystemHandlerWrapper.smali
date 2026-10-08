.class final Landroidx/media3/common/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/ArrayList;


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/media3/common/util/SystemHandlerWrapper;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method

.method public static l()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/SystemHandlerWrapper;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 29
    .line 30
    :goto_0
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method


# virtual methods
.method public final a(III)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->l()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->a:Landroid/os/Message;

    .line 12
    .line 13
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->l()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 6
    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->a:Landroid/os/Message;

    .line 15
    .line 16
    return-object v0
.end method

.method public final c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z
    .locals 1

    .line 1
    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->a:Landroid/os/Message;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->b()V

    .line 15
    .line 16
    .line 17
    return p0
.end method

.method public final d(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(I)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->l()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->a:Landroid/os/Message;

    .line 12
    .line 13
    return-object v0
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(J)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 3
    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final h(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final i(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final j(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->l()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iput-object p0, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->a:Landroid/os/Message;

    .line 12
    .line 13
    return-object v0
.end method
