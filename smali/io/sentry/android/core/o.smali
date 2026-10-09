.class public final synthetic Lio/sentry/android/core/o;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic j:Lio/sentry/android/core/SentryUserFeedbackForm;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryUserFeedbackForm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/o;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    sget p1, Lio/sentry/android/core/SentryUserFeedbackForm;->p:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/android/core/o;->j:Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
