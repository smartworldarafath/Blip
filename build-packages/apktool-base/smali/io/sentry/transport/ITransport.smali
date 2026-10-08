.class public interface abstract Lio/sentry/transport/ITransport;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract N(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(J)V
.end method

.method public abstract d()Lio/sentry/transport/RateLimiter;
.end method

.method public f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
