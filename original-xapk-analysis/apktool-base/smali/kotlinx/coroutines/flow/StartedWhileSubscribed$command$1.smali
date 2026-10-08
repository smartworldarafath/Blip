.class final Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        ">;",
        "Ljava/lang/Integer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1"
    f = "SharingStarted.kt"
    l = {
        0xaf,
        0xb1,
        0xb3,
        0xb4,
        0xb6
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic p:I

.field public final synthetic q:Lkotlinx/coroutines/flow/StartedWhileSubscribed;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->q:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    .line 11
    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->q:Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 14
    .line 15
    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;-><init>(Lkotlinx/coroutines/flow/StartedWhileSubscribed;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 19
    .line 20
    iput p2, v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x5

    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v7, 0x3

    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x1

    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    if-eq v3, v9, :cond_4

    .line 18
    .line 19
    if-eq v3, v8, :cond_3

    .line 20
    .line 21
    if-eq v3, v7, :cond_2

    .line 22
    .line 23
    if-eq v3, v6, :cond_1

    .line 24
    .line 25
    if-ne v3, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v4

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_5

    .line 50
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    if-lez v1, :cond_6

    .line 54
    .line 55
    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->j:Lkotlinx/coroutines/flow/SharingCommand;

    .line 56
    .line 57
    iput-object v4, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 58
    .line 59
    iput v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 60
    .line 61
    iput v9, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 62
    .line 63
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-ne p0, v2, :cond_a

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_6
    iput-object v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 71
    .line 72
    iput v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 73
    .line 74
    iput v8, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 75
    .line 76
    const-wide/16 v8, 0x0

    .line 77
    .line 78
    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v2, :cond_7

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    :goto_1
    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->k:Lkotlinx/coroutines/flow/SharingCommand;

    .line 86
    .line 87
    iput-object v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 88
    .line 89
    iput v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 90
    .line 91
    iput v7, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 92
    .line 93
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-ne p1, v2, :cond_8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    :goto_2
    iput-object v0, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 101
    .line 102
    iput v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 103
    .line 104
    iput v6, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 105
    .line 106
    const-wide v6, 0x7fffffffffffffffL

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, v2, :cond_9

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_9
    :goto_3
    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->l:Lkotlinx/coroutines/flow/SharingCommand;

    .line 119
    .line 120
    iput-object v4, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 121
    .line 122
    iput v1, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->p:I

    .line 123
    .line 124
    iput v5, p0, Lkotlinx/coroutines/flow/StartedWhileSubscribed$command$1;->n:I

    .line 125
    .line 126
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-ne p0, v2, :cond_a

    .line 131
    .line 132
    :goto_4
    return-object v2

    .line 133
    :cond_a
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0
.end method
