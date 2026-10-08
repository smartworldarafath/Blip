.class Lio/sentry/android/core/LifecycleWatcher$1;
.super Ljava/util/TimerTask;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic j:Lio/sentry/android/core/LifecycleWatcher;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/LifecycleWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher$1;->j:Lio/sentry/android/core/LifecycleWatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->j:Lio/sentry/android/core/LifecycleWatcher;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher;->o:Lio/sentry/ScopesAdapter;

    .line 4
    .line 5
    iget-boolean p0, p0, Lio/sentry/android/core/LifecycleWatcher;->p:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->l()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Lio/sentry/ReplayController;->stop()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-interface {p0, v0}, Lio/sentry/IContinuousProfiler;->b(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
