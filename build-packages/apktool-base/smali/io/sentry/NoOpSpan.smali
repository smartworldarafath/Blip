.class public final Lio/sentry/NoOpSpan;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISpan;


# static fields
.field public static final a:Lio/sentry/NoOpSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpSpan;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpSpan;->a:Lio/sentry/NoOpSpan;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/SpanStatus;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpSpan;->a:Lio/sentry/NoOpSpan;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final f(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lio/sentry/SpanStatus;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()Lio/sentry/SpanContext;
    .locals 4

    .line 1
    new-instance p0, Lio/sentry/SpanContext;

    .line 2
    .line 3
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    sget-object v1, Lio/sentry/SpanId;->k:Lio/sentry/SpanId;

    .line 6
    .line 7
    const-string v2, "op"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final s()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final u()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
