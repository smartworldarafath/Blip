.class public final Lio/sentry/NoOpScopesStorage;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IScopesStorage;


# static fields
.field public static final a:Lio/sentry/NoOpScopesStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/NoOpScopesStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/NoOpScopesStorage;->a:Lio/sentry/NoOpScopesStorage;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpScopesLifecycleToken;->j:Lio/sentry/NoOpScopesLifecycleToken;

    .line 2
    .line 3
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final get()Lio/sentry/IScopes;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 2
    .line 3
    return-object p0
.end method
