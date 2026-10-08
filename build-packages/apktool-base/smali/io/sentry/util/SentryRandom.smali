.class public abstract Lio/sentry/util/SentryRandom;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;
    }
.end annotation


# static fields
.field public static final a:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/util/SentryRandom;->a:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lio/sentry/util/Random;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/util/SentryRandom;->a:Lio/sentry/util/SentryRandom$SentryRandomThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/util/Random;

    .line 8
    .line 9
    return-object v0
.end method
