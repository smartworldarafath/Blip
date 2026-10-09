.class public final Lio/sentry/NoOpContinuousProfiler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IContinuousProfiler;


# static fields
.field public static final j:Lio/sentry/NoOpContinuousProfiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpContinuousProfiler;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpContinuousProfiler;->j:Lio/sentry/NoOpContinuousProfiler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lio/sentry/ProfileLifecycle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method
