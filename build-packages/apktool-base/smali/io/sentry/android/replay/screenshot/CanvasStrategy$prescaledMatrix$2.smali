.class final Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/screenshot/CanvasStrategy;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;->k:Lio/sentry/android/replay/screenshot/CanvasStrategy;

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
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;->k:Lio/sentry/android/replay/screenshot/CanvasStrategy;

    .line 7
    .line 8
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->d:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 9
    .line 10
    iget v1, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->c:F

    .line 11
    .line 12
    iget p0, p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;->d:F

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
