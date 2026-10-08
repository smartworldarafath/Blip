.class final Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2"
    f = "DataStoreImpl.kt"
    l = {
        0x14a,
        0x14b,
        0x151
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:Ljava/lang/Object;

.field public o:I

.field public final synthetic p:Landroidx/datastore/core/DataStoreImpl;

.field public final synthetic q:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic r:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->q:Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->r:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->q:Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->r:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v6, :cond_2

    .line 14
    .line 15
    if-eq v1, v5, :cond_1

    .line 16
    .line 17
    if-ne v1, v4, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->n:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->n:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/datastore/core/Data;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput v6, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->o:I

    .line 47
    .line 48
    invoke-static {v3, v6, p0}, Landroidx/datastore/core/DataStoreImpl;->e(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_0
    move-object v1, p1

    .line 56
    check-cast v1, Landroidx/datastore/core/Data;

    .line 57
    .line 58
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2$newData$1;

    .line 59
    .line 60
    iget-object v7, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->r:Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    invoke-direct {p1, v7, v1, v2}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2$newData$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/datastore/core/Data;Lkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->n:Ljava/lang/Object;

    .line 66
    .line 67
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->o:I

    .line 68
    .line 69
    iget-object v5, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->q:Lkotlin/coroutines/CoroutineContext;

    .line 70
    .line 71
    invoke-static {v5, p1, p0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_1
    iget-object v5, v1, Landroidx/datastore/core/Data;->b:Ljava/lang/Object;

    .line 79
    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    const/4 v5, 0x0

    .line 88
    :goto_2
    iget v7, v1, Landroidx/datastore/core/Data;->c:I

    .line 89
    .line 90
    if-ne v5, v7, :cond_8

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/datastore/core/Data;->b:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->n:Ljava/lang/Object;

    .line 101
    .line 102
    iput v4, p0, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;->o:I

    .line 103
    .line 104
    invoke-virtual {v3, p1, v6, p0}, Landroidx/datastore/core/DataStoreImpl;->k(Ljava/lang/Object;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-ne p0, v0, :cond_7

    .line 109
    .line 110
    :goto_3
    return-object v0

    .line 111
    :cond_7
    return-object p1

    .line 112
    :cond_8
    const-string p0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    .line 113
    .line 114
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v2
.end method
