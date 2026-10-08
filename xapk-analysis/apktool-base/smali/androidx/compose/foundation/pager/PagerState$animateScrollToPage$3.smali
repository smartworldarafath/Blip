.class final Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.pager.PagerState$animateScrollToPage$3"
    f = "PagerState.kt"
    l = {
        0x2a7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic q:I

.field public final synthetic r:F

.field public final synthetic s:Landroidx/compose/animation/core/AnimationSpec;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->p:Landroidx/compose/foundation/pager/PagerState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->q:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->r:F

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->s:Landroidx/compose/animation/core/AnimationSpec;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;

    .line 2
    .line 3
    iget v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->r:F

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->s:Landroidx/compose/animation/core/AnimationSpec;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->p:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->q:I

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;-><init>(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->o:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->p:Landroidx/compose/foundation/pager/PagerState;

    .line 33
    .line 34
    invoke-direct {v1, p1, v4}, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/pager/PagerState;)V

    .line 35
    .line 36
    .line 37
    iput v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->n:I

    .line 38
    .line 39
    sget-object p1, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/Integer;

    .line 42
    .line 43
    iget v5, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->q:I

    .line 44
    .line 45
    invoke-direct {p1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v4, p1}, Landroidx/compose/foundation/pager/PagerState;->j(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v6, v4, Landroidx/compose/foundation/pager/PagerState;->q:Landroidx/compose/runtime/MutableIntState;

    .line 57
    .line 58
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 59
    .line 60
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 61
    .line 62
    .line 63
    iget p1, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    if-le v5, p1, :cond_2

    .line 67
    .line 68
    move p1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move p1, v6

    .line 71
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iget v8, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 76
    .line 77
    sub-int/2addr v7, v8

    .line 78
    add-int/2addr v7, v3

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->b()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-gt v5, v3, :cond_4

    .line 86
    .line 87
    :cond_3
    if-nez p1, :cond_8

    .line 88
    .line 89
    iget v3, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 90
    .line 91
    if-ge v5, v3, :cond_8

    .line 92
    .line 93
    :cond_4
    iget v3, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 94
    .line 95
    sub-int v3, v5, v3

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/4 v8, 0x3

    .line 102
    if-lt v3, v8, :cond_8

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    sub-int p1, v5, v7

    .line 107
    .line 108
    iget v3, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 109
    .line 110
    if-ge p1, v3, :cond_7

    .line 111
    .line 112
    move p1, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    add-int/2addr v7, v5

    .line 115
    iget p1, v4, Landroidx/compose/foundation/pager/PagerState;->e:I

    .line 116
    .line 117
    if-le v7, p1, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    move p1, v7

    .line 121
    :cond_7
    :goto_1
    invoke-virtual {v1, p1, v6}, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->c(II)V

    .line 122
    .line 123
    .line 124
    :cond_8
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->e(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    int-to-float p1, p1

    .line 129
    iget v3, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->r:F

    .line 130
    .line 131
    add-float v8, p1, v3

    .line 132
    .line 133
    new-instance p1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v10, Lzc;

    .line 139
    .line 140
    invoke-direct {v10, v6, p1, v1}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    const/4 v12, 0x4

    .line 144
    const/4 v7, 0x0

    .line 145
    iget-object v9, p0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3;->s:Landroidx/compose/animation/core/AnimationSpec;

    .line 146
    .line 147
    move-object v11, p0

    .line 148
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-ne p0, v0, :cond_9

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    move-object p0, v2

    .line 156
    :goto_2
    if-ne p0, v0, :cond_a

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_a
    return-object v2
.end method
