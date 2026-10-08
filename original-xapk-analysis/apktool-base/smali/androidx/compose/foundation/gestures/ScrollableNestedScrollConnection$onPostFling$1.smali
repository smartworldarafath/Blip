.class final Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.ScrollableNestedScrollConnection"
    f = "AbstractScrollableNode.kt"
    l = {
        0xe2
    }
    m = "onPostFling-RZ2iAVY"
    v = 0x1
.end annotation


# instance fields
.field public m:J

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

.field public p:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->o:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

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
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->p:I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection$onPostFling$1;->o:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->u(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
