.class final Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;->k:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;->l:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;->k:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 7
    .line 8
    iget-object v1, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->v:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v0, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move-object v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    check-cast v2, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 30
    .line 31
    :goto_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-static {v2, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    move-object v2, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_2
    check-cast v2, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 49
    .line 50
    const-wide/16 v5, 0x64

    .line 51
    .line 52
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    instance-of v1, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    check-cast p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a:Lio/sentry/SentryReplayEvent;

    .line 66
    .line 67
    iget-object p1, p1, Lio/sentry/SentryReplayEvent;->D:Ljava/util/Date;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$captureReplay$2;->l:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method
