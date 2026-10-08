.class public final Lio/sentry/featureflags/NoOpFeatureFlagBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/featureflags/IFeatureFlagBuffer;


# static fields
.field public static final a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()Lio/sentry/protocol/FeatureFlags;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final clone()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 0

    .line 4
    sget-object p0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->a:Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    .line 2
    .line 3
    return-object p0
.end method
