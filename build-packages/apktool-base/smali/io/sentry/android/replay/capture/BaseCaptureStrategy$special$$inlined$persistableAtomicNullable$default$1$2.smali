.class public final Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->l:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 13
    .line 14
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget v2, v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "config.height"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Lio/sentry/android/replay/ReplayCache;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget v2, v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "config.width"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Lio/sentry/android/replay/ReplayCache;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget v2, v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->e:I

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "config.frame-rate"

    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Lio/sentry/android/replay/ReplayCache;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    iget v0, v0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->f:I

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "config.bit-rate"

    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Lio/sentry/android/replay/ReplayCache;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method
