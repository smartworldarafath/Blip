.class public final Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/NativeCrashExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/TombstoneIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TombstoneHint"
.end annotation


# instance fields
.field public final d:J

.field public final e:Z


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->d:J

    .line 5
    .line 6
    iput-boolean p6, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->e:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public final d(Lio/sentry/protocol/SentryId;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final g(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 1
    return-void
.end method
