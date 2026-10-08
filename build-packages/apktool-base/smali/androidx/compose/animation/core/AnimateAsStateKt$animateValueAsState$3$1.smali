.class final Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.AnimateAsStateKt$animateValueAsState$3$1"
    f = "AnimateAsState.kt"
    l = {
        0x1ae
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/channels/ChannelIterator;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lkotlinx/coroutines/channels/Channel;

.field public final synthetic r:Landroidx/compose/animation/core/Animatable;

.field public final synthetic s:Landroidx/compose/runtime/MutableState;

.field public final synthetic t:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->q:Lkotlinx/coroutines/channels/Channel;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->r:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->s:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->t:Landroidx/compose/runtime/MutableState;

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
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->s:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->t:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->q:Lkotlinx/coroutines/channels/Channel;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->r:Landroidx/compose/animation/core/Animatable;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->p:Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->q:Lkotlinx/coroutines/channels/Channel;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v4, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->n:Lkotlinx/coroutines/channels/ChannelIterator;

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->p:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 35
    .line 36
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v5, p1

    .line 41
    :goto_0
    iput-object v5, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->p:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object v1, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->n:Lkotlinx/coroutines/channels/ChannelIterator;

    .line 44
    .line 45
    iput v4, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->o:I

    .line 46
    .line 47
    invoke-interface {v1, p0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->c()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Lkotlinx/coroutines/channels/ChannelResult;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    move-object v8, p1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move-object v8, v6

    .line 79
    :goto_2
    new-instance v7, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1$1;

    .line 80
    .line 81
    iget-object v11, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->t:Landroidx/compose/runtime/MutableState;

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    iget-object v9, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->r:Landroidx/compose/animation/core/Animatable;

    .line 85
    .line 86
    iget-object v10, p0, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1;->s:Landroidx/compose/runtime/MutableState;

    .line 87
    .line 88
    invoke-direct/range {v7 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3$1$1;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x3

    .line 92
    invoke-static {v5, v2, v2, v7, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method
