.class public final synthetic Lio/sentry/android/core/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic l:Lio/sentry/ISpan;

.field public final synthetic m:Lio/sentry/ISpan;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;I)V
    .locals 0

    .line 1
    iput p4, p0, Lio/sentry/android/core/d;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/core/d;->k:Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 4
    .line 5
    iput-object p2, p0, Lio/sentry/android/core/d;->l:Lio/sentry/ISpan;

    .line 6
    .line 7
    iput-object p3, p0, Lio/sentry/android/core/d;->m:Lio/sentry/ISpan;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lio/sentry/android/core/d;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/d;->m:Lio/sentry/ISpan;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/android/core/d;->l:Lio/sentry/ISpan;

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/core/d;->k:Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->v(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->v(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
