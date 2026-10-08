.class public abstract Lio/sentry/kotlin/multiplatform/Sentry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lio/sentry/kotlin/multiplatform/SentryBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/kotlin/multiplatform/SentryBridge;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lio/sentry/kotlin/multiplatform/SentryBridge$logger$1;->r:I

    .line 7
    .line 8
    sget-object v1, Lio/sentry/kotlin/multiplatform/log/DefaultSentryLogBuilderKt;->a:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/sentry/kotlin/multiplatform/Sentry;->a:Lio/sentry/kotlin/multiplatform/SentryBridge;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;Lle;)V
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/kotlin/multiplatform/Sentry;->a:Lio/sentry/kotlin/multiplatform/SentryBridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Llh;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-direct {v0, v1, p1}, Llh;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lp;

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    invoke-direct {p1, v1, v0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    invoke-interface {v0, p0, v1, p1}, Lio/sentry/IScopes;->p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance p1, Lio/sentry/kotlin/multiplatform/protocol/SentryId;

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Lio/sentry/kotlin/multiplatform/protocol/SentryId;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
