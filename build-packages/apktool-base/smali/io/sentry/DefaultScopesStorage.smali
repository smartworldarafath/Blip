.class public final Lio/sentry/DefaultScopesStorage;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IScopesStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/DefaultScopesStorage;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/DefaultScopesStorage;->get()Lio/sentry/IScopes;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lio/sentry/DefaultScopesStorage;->a:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lio/sentry/DefaultScopesStorage$DefaultScopesLifecycleToken;-><init>(Lio/sentry/IScopes;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public final close()V
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/DefaultScopesStorage;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final get()Lio/sentry/IScopes;
    .locals 0

    .line 1
    sget-object p0, Lio/sentry/DefaultScopesStorage;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/sentry/IScopes;

    .line 8
    .line 9
    return-object p0
.end method
