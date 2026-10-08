.class public final synthetic Lio/sentry/android/core/p;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic j:Lio/sentry/android/core/SentryUserFeedbackForm;

.field public final synthetic k:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/p;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/core/p;->k:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget v0, Lio/sentry/android/core/SentryUserFeedbackForm;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/p;->k:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object p0, p0, Lio/sentry/android/core/p;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->k:Lio/sentry/protocol/SentryId;

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
