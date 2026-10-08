.class final Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2"
    f = "Scrollable.kt"
    l = {
        0x31f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public o:Lkotlin/jvm/internal/Ref$LongRef;

.field public p:J

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic t:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic u:J


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->s:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->u:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->u:J

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->s:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->r:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->q:I

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
    iget-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->p:J

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->n:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->r:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->r:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 37
    .line 38
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 39
    .line 40
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->s:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 41
    .line 42
    invoke-direct {v1, v4, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/NestedScrollScope;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->c:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->t:Lkotlin/jvm/internal/Ref$LongRef;

    .line 48
    .line 49
    iget-wide v5, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 50
    .line 51
    iget-object v7, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 54
    .line 55
    iget-wide v9, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->u:J

    .line 56
    .line 57
    if-ne v7, v8, :cond_2

    .line 58
    .line 59
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    :goto_0
    invoke-virtual {v4, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    iput-object v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->r:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v4, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->n:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 75
    .line 76
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 77
    .line 78
    iput-wide v5, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->p:J

    .line 79
    .line 80
    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2;->q:I

    .line 81
    .line 82
    invoke-interface {p1, v1, v7, p0}, Landroidx/compose/foundation/gestures/FlingBehavior;->a(Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    move-object p0, v4

    .line 90
    move-wide v0, v5

    .line 91
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 102
    .line 103
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    if-ne p1, v4, :cond_4

    .line 107
    .line 108
    const/4 p1, 0x2

    .line 109
    invoke-static {v0, v1, p0, v5, p1}, Landroidx/compose/ui/unit/Velocity;->a(JFFI)J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v0, v1, v5, p0, v2}, Landroidx/compose/ui/unit/Velocity;->a(JFFI)J

    .line 115
    .line 116
    .line 117
    move-result-wide p0

    .line 118
    :goto_2
    iput-wide p0, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 119
    .line 120
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p0
.end method
