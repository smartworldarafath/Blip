.class public final synthetic Lio/sentry/android/core/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;
.implements Lio/sentry/ScopeCallback;
.implements Lio/sentry/android/core/SentryShakeDetector$Listener;


# instance fields
.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    iput-object p2, p0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    sget v1, Lio/sentry/android/core/SentryUserFeedbackForm;->p:I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lio/sentry/android/core/g;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, v2, v0, p0}, Lio/sentry/android/core/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public c(Lio/sentry/ITransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/ITransaction;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lio/sentry/IScope;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lio/sentry/IScope;->o()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public i(Lio/sentry/IScope;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/e;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/e;->j:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lio/sentry/ITransaction;

    .line 8
    .line 9
    new-instance v1, Lio/sentry/android/core/f;

    .line 10
    .line 11
    invoke-direct {v1, v0, p1, p0}, Lio/sentry/android/core/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Lio/sentry/IScope;->E(Lio/sentry/Scope$IWithTransaction;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
