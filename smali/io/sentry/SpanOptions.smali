.class public Lio/sentry/SpanOptions;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Lio/sentry/SentryDate;

.field public final b:Lio/sentry/ScopeBindingMode;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/SpanOptions;->a:Lio/sentry/SentryDate;

    .line 6
    .line 7
    sget-object v0, Lio/sentry/ScopeBindingMode;->AUTO:Lio/sentry/ScopeBindingMode;

    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SpanOptions;->b:Lio/sentry/ScopeBindingMode;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/sentry/SpanOptions;->c:Z

    .line 13
    .line 14
    const-string v0, "manual"

    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
