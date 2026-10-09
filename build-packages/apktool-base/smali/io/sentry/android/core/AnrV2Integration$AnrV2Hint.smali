.class public final Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/AbnormalExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnrV2Hint"
.end annotation


# instance fields
.field public final d:J

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->d:J

    .line 5
    .line 6
    iput-boolean p6, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->e:Z

    .line 7
    .line 8
    iput-boolean p7, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->f:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->d:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d(Lio/sentry/protocol/SentryId;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->f:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "anr_background"

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "anr_foreground"

    .line 9
    .line 10
    return-object p0
.end method

.method public final g(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 1
    return-void
.end method
