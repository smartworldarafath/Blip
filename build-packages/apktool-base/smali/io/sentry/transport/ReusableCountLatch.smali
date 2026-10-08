.class public final Lio/sentry/transport/ReusableCountLatch;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/ReusableCountLatch$Sync;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/transport/ReusableCountLatch$Sync;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/transport/ReusableCountLatch$Sync;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lio/sentry/transport/ReusableCountLatch$Sync;->j:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lio/sentry/transport/ReusableCountLatch;->a:Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->releaseShared(I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
