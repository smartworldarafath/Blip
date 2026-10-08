.class final Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/ui/geometry/Offset;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.AbstractScrollableNode$setScrollSemanticsActions$2"
    f = "AbstractScrollableNode.kt"
    l = {
        0xbc
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:J

.field public final synthetic p:Landroidx/compose/foundation/gestures/AbstractScrollableNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/AbstractScrollableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->p:Landroidx/compose/foundation/gestures/AbstractScrollableNode;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 4
    .line 5
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;

    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->p:Landroidx/compose/foundation/gestures/AbstractScrollableNode;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;-><init>(Landroidx/compose/foundation/gestures/AbstractScrollableNode;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 9
    .line 10
    iget-wide p0, p1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 11
    .line 12
    iput-wide p0, v0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->o:J

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-wide v3, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->o:J

    .line 25
    .line 26
    iput v2, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->n:I

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode$setScrollSemanticsActions$2;->p:Landroidx/compose/foundation/gestures/AbstractScrollableNode;

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 33
    .line 34
    invoke-static {p1, v3, v4, p0}, Landroidx/compose/foundation/gestures/ScrollableKt;->a(Landroidx/compose/foundation/gestures/ScrollingLogic;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    return-object p0
.end method
