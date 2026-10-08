.class public final Lio/sentry/featureflags/SpanFeatureFlagBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/featureflags/IFeatureFlagBuffer;


# instance fields
.field public final a:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->a:Lio/sentry/util/AutoClosableReentrantLock;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()Lio/sentry/protocol/FeatureFlags;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;->a:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final clone()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 7
    new-instance p0, Lio/sentry/featureflags/SpanFeatureFlagBuffer;

    invoke-direct {p0}, Lio/sentry/featureflags/SpanFeatureFlagBuffer;-><init>()V

    return-object p0
.end method
