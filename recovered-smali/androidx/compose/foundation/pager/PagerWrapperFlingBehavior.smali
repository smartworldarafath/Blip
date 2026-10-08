.class final Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/FlingBehavior;


# instance fields
.field public final a:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final b:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->a:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;

    .line 21
    .line 22
    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->o:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Landroidx/compose/foundation/pager/g;

    .line 53
    .line 54
    invoke-direct {p3, p0, p1}, Landroidx/compose/foundation/pager/g;-><init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V

    .line 55
    .line 56
    .line 57
    iput v4, v0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior$performFling$1;->o:I

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->a:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    .line 60
    .line 61
    check-cast v2, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 62
    .line 63
    invoke-virtual {v2, p1, p2, p3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->d(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    if-ne p3, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->b:Landroidx/compose/foundation/pager/PagerState;

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 79
    .line 80
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/4 v0, 0x0

    .line 87
    cmpg-float p2, p2, v0

    .line 88
    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    float-to-double v1, p2

    .line 101
    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    cmpg-double p2, v1, v4

    .line 107
    .line 108
    if-gez p2, :cond_6

    .line 109
    .line 110
    invoke-virtual {p3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 115
    .line 116
    invoke-interface {p3}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_5

    .line 121
    .line 122
    iget-object p3, p0, Landroidx/compose/foundation/pager/PagerState;->m:Landroidx/compose/runtime/MutableState;

    .line 123
    .line 124
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    check-cast p3, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 131
    .line 132
    iget-object p3, p3, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Lkotlinx/coroutines/CoroutineScope;

    .line 133
    .line 134
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;

    .line 135
    .line 136
    invoke-direct {v1, p0, v3}, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    const/4 v2, 0x3

    .line 140
    invoke-static {p3, v3, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 141
    .line 142
    .line 143
    :cond_5
    const/4 p3, 0x0

    .line 144
    invoke-virtual {p0, p2, v0, p3}, Landroidx/compose/foundation/pager/PagerState;->r(IFZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    :goto_2
    invoke-virtual {p3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->b()F

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    new-instance p2, Ljava/lang/Float;

    .line 153
    .line 154
    invoke-direct {p2, p0}, Ljava/lang/Float;-><init>(F)V

    .line 155
    .line 156
    .line 157
    :goto_3
    new-instance p0, Ljava/lang/Float;

    .line 158
    .line 159
    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 160
    .line 161
    .line 162
    return-object p0
.end method
