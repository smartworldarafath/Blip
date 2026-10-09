.class Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/metrics/MetricsBatchProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchRunnable"
.end annotation


# instance fields
.field public final synthetic j:Lio/sentry/metrics/MetricsBatchProcessor;


# direct methods
.method public constructor <init>(Lio/sentry/metrics/MetricsBatchProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;->j:Lio/sentry/metrics/MetricsBatchProcessor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;->j:Lio/sentry/metrics/MetricsBatchProcessor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/metrics/MetricsBatchProcessor;->d()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lio/sentry/metrics/MetricsBatchProcessor;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, v0, Lio/sentry/metrics/MetricsBatchProcessor;->n:Lio/sentry/util/AutoClosableReentrantLock;

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    iget-object v1, v0, Lio/sentry/metrics/MetricsBatchProcessor;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lio/sentry/metrics/MetricsBatchProcessor;->e(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    throw v0
.end method
