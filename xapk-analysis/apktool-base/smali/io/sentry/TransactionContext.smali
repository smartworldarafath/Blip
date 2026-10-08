.class public final Lio/sentry/TransactionContext;
.super Lio/sentry/SpanContext;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final B:Lio/sentry/protocol/TransactionNameSource;


# instance fields
.field public A:Lio/sentry/TracesSamplingDecision;

.field public y:Ljava/lang/String;

.field public z:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 2
    .line 3
    sput-object v0, Lio/sentry/TransactionContext;->B:Lio/sentry/protocol/TransactionNameSource;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
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
    invoke-direct {p0, v0, v1, p3, v2}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/TransactionContext;->y:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p0, Lio/sentry/TransactionContext;->z:Lio/sentry/protocol/TransactionNameSource;

    .line 18
    .line 19
    invoke-virtual {p0, p4}, Lio/sentry/SpanContext;->a(Lio/sentry/TracesSamplingDecision;)V

    .line 20
    .line 21
    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    move-object p1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p4, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 27
    .line 28
    :goto_0
    if-nez p4, :cond_1

    .line 29
    .line 30
    move-object p2, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p2, p4, Lio/sentry/TracesSamplingDecision;->b:Ljava/lang/Double;

    .line 33
    .line 34
    :goto_1
    if-nez p4, :cond_2

    .line 35
    .line 36
    move-object p3, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    iget-object p3, p4, Lio/sentry/TracesSamplingDecision;->c:Ljava/lang/Double;

    .line 39
    .line 40
    :goto_2
    invoke-static {v2, p1, p2, p3}, Lio/sentry/util/TracingUtils;->a(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/PropagationContext;->c:Lio/sentry/Baggage;

    .line 5
    .line 6
    iget-object v1, v0, Lio/sentry/Baggage;->c:Ljava/lang/Double;

    .line 7
    .line 8
    new-instance v1, Lio/sentry/TransactionContext;

    .line 9
    .line 10
    iget-object v2, p0, Lio/sentry/PropagationContext;->a:Lio/sentry/protocol/SentryId;

    .line 11
    .line 12
    iget-object p0, p0, Lio/sentry/PropagationContext;->b:Lio/sentry/SpanId;

    .line 13
    .line 14
    const-string v3, "default"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-direct {v1, v2, p0, v3, v4}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "<unlabeled transaction>"

    .line 21
    .line 22
    iput-object p0, v1, Lio/sentry/TransactionContext;->y:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v4, v1, Lio/sentry/TransactionContext;->A:Lio/sentry/TracesSamplingDecision;

    .line 25
    .line 26
    sget-object p0, Lio/sentry/TransactionContext;->B:Lio/sentry/protocol/TransactionNameSource;

    .line 27
    .line 28
    iput-object p0, v1, Lio/sentry/TransactionContext;->z:Lio/sentry/protocol/TransactionNameSource;

    .line 29
    .line 30
    invoke-static {v0, v4, v4, v4}, Lio/sentry/util/TracingUtils;->a(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput-object p0, v1, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 35
    .line 36
    return-object v1
.end method
