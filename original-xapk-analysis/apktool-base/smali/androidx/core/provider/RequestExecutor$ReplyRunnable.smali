.class Landroidx/core/provider/RequestExecutor$ReplyRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public j:Ljava/util/concurrent/Callable;

.field public k:Landroidx/core/util/Consumer;

.field public l:Landroid/os/Handler;


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->j:Ljava/util/concurrent/Callable;

    .line 2
    .line 3
    check-cast v0, Landroidx/core/provider/FontRequestWorker$3;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/provider/FontRequestWorker$3;->call()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->k:Landroidx/core/util/Consumer;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable;->l:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v2, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;

    .line 16
    .line 17
    invoke-direct {v2, v1, v0}, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;-><init>(Landroidx/core/util/Consumer;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
