.class Lio/sentry/android/core/performance/AppStartMetrics$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/performance/AppStartMetrics;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/performance/AppStartMetrics$2;->a:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics$2;->a:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lio/sentry/android/core/performance/AppStartMetrics;->l:J

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics$2;->a:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 10
    .line 11
    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->a(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method
