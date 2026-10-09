.class final Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.ui.platform.AndroidPlatformTextInputSession"
    f = "AndroidPlatformTextInputSession.android.kt"
    l = {
        0x47
    }
    m = "startInputMethod"
    v = 0x1
.end annotation


# instance fields
.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

.field public o:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;->n:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;->o:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession$startInputMethod$1;->n:Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->a(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method
