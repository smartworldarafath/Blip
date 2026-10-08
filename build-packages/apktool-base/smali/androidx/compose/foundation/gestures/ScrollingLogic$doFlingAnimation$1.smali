.class final Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.ScrollingLogic"
    f = "Scrollable.kt"
    l = {
        0x2fe
    }
    m = "doFlingAnimation-QWom1Mo"
    v = 0x1
.end annotation


# instance fields
.field public m:Lkotlin/jvm/internal/Ref$LongRef;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public p:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

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
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->p:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$1;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/foundation/gestures/ScrollingLogic;->a(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
