.class final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic"
    f = "MouseWheelScrollingLogic.kt"
    l = {
        0xdb,
        0x111
    }
    m = "dispatchMouseWheelScroll"
    v = 0x1
.end annotation


# instance fields
.field public m:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public n:Lkotlin/jvm/internal/Ref$FloatRef;

.field public o:F

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public r:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->q:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

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
    .locals 6

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->q:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->c(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
