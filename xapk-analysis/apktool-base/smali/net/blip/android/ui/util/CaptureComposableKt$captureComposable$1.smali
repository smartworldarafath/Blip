.class final Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.CaptureComposableKt"
    f = "CaptureComposable.kt"
    l = {
        0x30,
        0x3b
    }
    m = "captureComposable-YuIfr8w"
    v = 0x2
.end annotation


# instance fields
.field public m:Landroidx/activity/ComponentActivity;

.field public n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public o:J

.field public p:J

.field public q:Z

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->r:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/ui/util/CaptureComposableKt$captureComposable$1;->s:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v0, 0x0

    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v6, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/util/CaptureComposableKt;->a(Landroidx/activity/ComponentActivity;JLandroidx/compose/ui/unit/Density;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
