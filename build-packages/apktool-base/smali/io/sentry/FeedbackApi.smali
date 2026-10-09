.class final Lio/sentry/FeedbackApi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IFeedbackApi;


# instance fields
.field public final a:Lio/sentry/Scopes;


# direct methods
.method public constructor <init>(Lio/sentry/Scopes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/FeedbackApi;->a:Lio/sentry/Scopes;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/FeedbackApi;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/sentry/IScopes;->i(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/FeedbackApi;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/FeedbackApi;->a:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/Scopes;->w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
