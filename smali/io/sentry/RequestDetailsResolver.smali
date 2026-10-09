.class public final Lio/sentry/RequestDetailsResolver;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/Dsn;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lio/sentry/RequestDetailsResolver;->a:Lio/sentry/Dsn;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSentryClientName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/sentry/RequestDetailsResolver;->b:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
