.class final Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;
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
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3"
    f = "DataStoreImpl.kt"
    l = {
        0x183,
        0x184,
        0x186
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:Ljava/io/Serializable;

.field public o:I

.field public final synthetic p:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic q:Landroidx/datastore/core/DataStoreImpl;

.field public final synthetic r:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->q:Landroidx/datastore/core/DataStoreImpl;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->r:Lkotlin/jvm/internal/Ref$IntRef;

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
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->q:Landroidx/datastore/core/DataStoreImpl;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->r:Lkotlin/jvm/internal/Ref$IntRef;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->o:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->r:Lkotlin/jvm/internal/Ref$IntRef;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    iget-object v6, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->q:Landroidx/datastore/core/DataStoreImpl;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    if-eq v1, v7, :cond_2

    .line 17
    .line 18
    if-eq v1, v5, :cond_1

    .line 19
    .line 20
    if-ne v1, v4, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 23
    .line 24
    move-object v2, p0

    .line 25
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 39
    .line 40
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :try_start_2
    iput-object v3, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 58
    .line 59
    iput v7, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->o:I

    .line 60
    .line 61
    invoke-virtual {v6, p0}, Landroidx/datastore/core/DataStoreImpl;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v1, v3

    .line 69
    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v6}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object v2, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 76
    .line 77
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->o:I

    .line 78
    .line 79
    check-cast p1, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessCoordinator;->a()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move-object v1, v2

    .line 89
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->j:I
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :catch_0
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v2, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->n:Ljava/io/Serializable;

    .line 101
    .line 102
    iput v4, p0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->o:I

    .line 103
    .line 104
    invoke-virtual {v6, p1, v7, p0}, Landroidx/datastore/core/DataStoreImpl;->k(Ljava/lang/Object;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_6

    .line 109
    .line 110
    :goto_2
    return-object v0

    .line 111
    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    iput p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 118
    .line 119
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method
