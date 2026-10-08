.class Lio/sentry/android/core/AndroidMetricsBatchProcessor$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lio/sentry/android/core/AndroidMetricsBatchProcessor;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/AndroidMetricsBatchProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AndroidMetricsBatchProcessor$1;->j:Lio/sentry/android/core/AndroidMetricsBatchProcessor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/AndroidMetricsBatchProcessor$1;->j:Lio/sentry/android/core/AndroidMetricsBatchProcessor;

    .line 2
    .line 3
    const-wide/16 v0, 0x1388

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lio/sentry/metrics/MetricsBatchProcessor;->c(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
