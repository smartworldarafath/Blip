.class public interface abstract Landroidx/media3/exoplayer/util/ReleasableExecutor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public static E(Ljava/util/concurrent/ExecutorService;Lk8;)Landroidx/media3/exoplayer/util/ReleasableExecutor;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;-><init>(Ljava/util/concurrent/Executor;Lk8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method
