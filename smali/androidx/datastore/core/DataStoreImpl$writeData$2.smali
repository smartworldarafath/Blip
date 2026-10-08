.class final Landroidx/datastore/core/DataStoreImpl$writeData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/core/WriteScope<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$writeData$2"
    f = "DataStoreImpl.kt"
    l = {
        0x160,
        0x161
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$IntRef;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic r:Landroidx/datastore/core/DataStoreImpl;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/datastore/core/DataStoreImpl;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->q:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->r:Landroidx/datastore/core/DataStoreImpl;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->s:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->t:Z

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
    check-cast p1, Landroidx/datastore/core/WriteScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$writeData$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$writeData$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeData$2;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->s:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v4, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->t:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->q:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->r:Landroidx/datastore/core/DataStoreImpl;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/core/DataStoreImpl$writeData$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/datastore/core/DataStoreImpl;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->p:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->s:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->r:Landroidx/datastore/core/DataStoreImpl;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->q:Lkotlin/jvm/internal/Ref$IntRef;

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-eq v1, v7, :cond_1

    .line 17
    .line 18
    if-ne v1, v6, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->n:Lkotlin/jvm/internal/Ref$IntRef;

    .line 31
    .line 32
    iget-object v7, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->p:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v7, Landroidx/datastore/core/WriteScope;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->p:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroidx/datastore/core/WriteScope;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->p:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object v5, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->n:Lkotlin/jvm/internal/Ref$IntRef;

    .line 54
    .line 55
    iput v7, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->o:I

    .line 56
    .line 57
    check-cast v1, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/datastore/core/SingleProcessCoordinator;->b:Landroidx/datastore/core/AtomicInt;

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/datastore/core/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    new-instance v7, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 70
    .line 71
    .line 72
    if-ne v7, v0, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v1, v7

    .line 76
    move-object v7, p1

    .line 77
    move-object p1, v1

    .line 78
    move-object v1, v5

    .line 79
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 86
    .line 87
    iput-object v2, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->p:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v2, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->n:Lkotlin/jvm/internal/Ref$IntRef;

    .line 90
    .line 91
    iput v6, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->o:I

    .line 92
    .line 93
    check-cast v7, Landroidx/datastore/core/FileWriteScope;

    .line 94
    .line 95
    invoke-virtual {v7, v3, p0}, Landroidx/datastore/core/FileWriteScope;->b(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    .line 101
    :goto_1
    return-object v0

    .line 102
    :cond_4
    :goto_2
    iget-boolean p0, p0, Landroidx/datastore/core/DataStoreImpl$writeData$2;->t:Z

    .line 103
    .line 104
    if-eqz p0, :cond_6

    .line 105
    .line 106
    iget-object p0, v4, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 107
    .line 108
    new-instance p1, Landroidx/datastore/core/Data;

    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const/4 v0, 0x0

    .line 118
    :goto_3
    iget v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 119
    .line 120
    invoke-direct {p1, v0, v1, v3}, Landroidx/datastore/core/Data;-><init>(IILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreInMemoryCache;->b(Landroidx/datastore/core/State;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p0
.end method
