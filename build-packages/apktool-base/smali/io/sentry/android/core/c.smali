.class public final synthetic Lio/sentry/android/core/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/android/core/ActivityFramesTracker;

.field public final synthetic l:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lio/sentry/android/core/c;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/core/c;->k:Lio/sentry/android/core/ActivityFramesTracker;

    .line 4
    .line 5
    iput-object p2, p0, Lio/sentry/android/core/c;->l:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lio/sentry/android/core/c;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/c;->l:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/c;->k:Lio/sentry/android/core/ActivityFramesTracker;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/core/app/FrameMetricsAggregator;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/core/app/FrameMetricsAggregator;->c(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 23
    .line 24
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroidx/core/app/FrameMetricsAggregator;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/core/app/FrameMetricsAggregator;->a(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
