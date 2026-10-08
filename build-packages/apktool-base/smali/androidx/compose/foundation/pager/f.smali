.class public final synthetic Landroidx/compose/foundation/pager/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/compose/foundation/pager/f;->j:I

    iput-object p1, p0, Landroidx/compose/foundation/pager/f;->k:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/f;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/compose/foundation/pager/f;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/pager/f;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/foundation/pager/f;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/foundation/pager/f;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, p0, Landroidx/compose/foundation/pager/f;->k:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/pager/f;->l:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroidx/compose/runtime/State;

    .line 15
    .line 16
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    .line 23
    .line 24
    iget-object v1, v5, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerScrollPosition;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lkotlin/ranges/IntRange;

    .line 33
    .line 34
    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 38
    .line 39
    invoke-direct {v1, v5, p0, v0}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->d()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;

    .line 52
    .line 53
    invoke-direct {v0, v5, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v4, v4, v0, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 57
    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->b()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;

    .line 74
    .line 75
    invoke-direct {v0, v5, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v4, v4, v0, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 79
    .line 80
    .line 81
    move v1, v2

    .line 82
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_2
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->d()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;

    .line 96
    .line 97
    invoke-direct {v0, v5, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performForwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v4, v4, v0, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 101
    .line 102
    .line 103
    move v1, v2

    .line 104
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_3
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 110
    .line 111
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->b()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;

    .line 118
    .line 119
    invoke-direct {v0, v5, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$performBackwardPaging$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v4, v4, v0, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 123
    .line 124
    .line 125
    move v1, v2

    .line 126
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
