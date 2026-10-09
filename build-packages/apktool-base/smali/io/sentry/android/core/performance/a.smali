.class public final synthetic Lio/sentry/android/core/performance/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/android/core/performance/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/core/performance/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lio/sentry/android/core/performance/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/android/core/performance/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lio/sentry/android/core/performance/AppStartMetrics$3;

    .line 9
    .line 10
    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics$3;->k:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 11
    .line 12
    invoke-static {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->a(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lio/sentry/android/core/performance/AppStartMetrics;

    .line 17
    .line 18
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->z:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->d()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lio/sentry/android/core/performance/AppStartMetrics;

    .line 25
    .line 26
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->z:Lio/sentry/android/core/performance/AppStartMetrics;

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->d()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
