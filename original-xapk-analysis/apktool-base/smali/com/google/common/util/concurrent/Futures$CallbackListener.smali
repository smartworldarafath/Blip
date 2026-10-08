.class final Lcom/google/common/util/concurrent/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/concurrent/Future;

.field public final k:Lcom/google/common/util/concurrent/FutureCallback;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->j:Ljava/util/concurrent/Future;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->k:Lcom/google/common/util/concurrent/FutureCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->k:Lcom/google/common/util/concurrent/FutureCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->j:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v0, p0}, Lcom/google/common/util/concurrent/FutureCallback;->a(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/FutureCallback;->b()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/google/common/util/concurrent/FutureCallback;->b()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->k:Lcom/google/common/util/concurrent/FutureCallback;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->a(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
