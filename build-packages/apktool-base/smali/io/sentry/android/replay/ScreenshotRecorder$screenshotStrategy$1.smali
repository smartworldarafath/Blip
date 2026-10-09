.class final Lio/sentry/android/replay/ScreenshotRecorder$screenshotStrategy$1;
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
.field public final synthetic k:Lio/sentry/android/replay/ScreenshotRecorder;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ScreenshotRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/ScreenshotRecorder$screenshotStrategy$1;->k:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder$screenshotStrategy$1;->k:Lio/sentry/android/replay/ScreenshotRecorder;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/android/replay/ScreenshotRecorder;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method
