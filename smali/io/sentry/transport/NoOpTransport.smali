.class public final Lio/sentry/transport/NoOpTransport;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/transport/ITransport;


# static fields
.field public static final j:Lio/sentry/transport/NoOpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/transport/NoOpTransport;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/transport/NoOpTransport;->j:Lio/sentry/transport/NoOpTransport;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
