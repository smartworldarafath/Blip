.class final Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/hints/Cached;
.implements Lio/sentry/hints/Retryable;
.implements Lio/sentry/hints/SubmissionResult;
.implements Lio/sentry/hints/Flushable;
.implements Lio/sentry/hints/Enqueable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DirectoryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendCachedEnvelopeHint"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/util/concurrent/CountDownLatch;

.field public final d:J

.field public final e:Lio/sentry/ILogger;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Queue;


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->b:Z

    .line 8
    .line 9
    iput-wide p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->d:J

    .line 10
    .line 11
    iput-object p4, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->g:Ljava/util/Queue;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->c:Ljava/util/concurrent/CountDownLatch;

    .line 22
    .line 23
    iput-object p3, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->e:Lio/sentry/ILogger;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->b:Z

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->c:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->g:Ljava/util/Queue;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->c:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->d:J

    .line 4
    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 21
    .line 22
    const-string v2, "Exception while awaiting on lock."

    .line 23
    .line 24
    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->e:Lio/sentry/ILogger;

    .line 25
    .line 26
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->b:Z

    .line 2
    .line 3
    return p0
.end method
