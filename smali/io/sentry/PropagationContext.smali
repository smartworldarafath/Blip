.class public final Lio/sentry/PropagationContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/protocol/SentryId;

.field public final b:Lio/sentry/SpanId;

.field public final c:Lio/sentry/Baggage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/SpanId;

    .line 7
    .line 8
    invoke-direct {v1}, Lio/sentry/SpanId;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/Baggage;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lio/sentry/PropagationContext;)V
    .locals 2

    .line 20
    iget-object v0, p1, Lio/sentry/PropagationContext;->a:Lio/sentry/protocol/SentryId;

    .line 21
    iget-object v1, p1, Lio/sentry/PropagationContext;->b:Lio/sentry/SpanId;

    .line 22
    iget-object p1, p1, Lio/sentry/PropagationContext;->c:Lio/sentry/Baggage;

    .line 23
    invoke-direct {p0, v0, v1, p1}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/Baggage;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/Baggage;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/sentry/PropagationContext;->a:Lio/sentry/protocol/SentryId;

    .line 18
    iput-object p2, p0, Lio/sentry/PropagationContext;->b:Lio/sentry/SpanId;

    const/4 p1, 0x0

    .line 19
    invoke-static {p3, p1, p1, p1}, Lio/sentry/util/TracingUtils;->a(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/PropagationContext;->c:Lio/sentry/Baggage;

    return-void
.end method
