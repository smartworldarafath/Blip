.class Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/tombstone/TombstoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleAccumulator"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# virtual methods
.method public final a()Lio/sentry/protocol/DebugImage;
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->c:J

    .line 2
    .line 3
    iget-object v2, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v3, Lio/sentry/protocol/DebugImage;

    .line 14
    .line 15
    invoke-direct {v3}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lio/sentry/protocol/DebugImage;->setCodeId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lio/sentry/protocol/DebugImage;->setCodeFile(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lio/sentry/android/core/internal/util/NativeEventUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    move-object v2, v4

    .line 33
    :cond_1
    invoke-virtual {v3, v2}, Lio/sentry/protocol/DebugImage;->setDebugId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v4, "0x%x"

    .line 45
    .line 46
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v3, v2}, Lio/sentry/protocol/DebugImage;->setImageAddr(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v4, p0, Lio/sentry/android/core/internal/tombstone/TombstoneParser$ModuleAccumulator;->d:J

    .line 54
    .line 55
    sub-long/2addr v4, v0

    .line 56
    invoke-virtual {v3, v4, v5}, Lio/sentry/protocol/DebugImage;->setImageSize(J)V

    .line 57
    .line 58
    .line 59
    const-string p0, "elf"

    .line 60
    .line 61
    invoke-virtual {v3, p0}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v3
.end method
