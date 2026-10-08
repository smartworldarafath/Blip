.class public interface abstract Lio/sentry/IConnectionStatusProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;,
        Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    }
.end annotation


# virtual methods
.method public abstract B()Ljava/lang/String;
.end method

.method public abstract L0(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
.end method

.method public abstract p0()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
.end method

.method public abstract s0(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
.end method
