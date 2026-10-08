.class public final Landroidx/datastore/core/DataStoreInMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/datastore/core/UnInitialized;->b:Landroidx/datastore/core/UnInitialized;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/core/State;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/core/State;

    .line 8
    .line 9
    return-object p0
.end method

.method public final b(Landroidx/datastore/core/State;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/datastore/core/DataStoreInMemoryCache;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Landroidx/datastore/core/State;

    .line 12
    .line 13
    instance-of v3, v2, Landroidx/datastore/core/ReadException;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v3, Landroidx/datastore/core/UnInitialized;->b:Landroidx/datastore/core/UnInitialized;

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    :goto_0
    if-eqz v3, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    instance-of v3, v2, Landroidx/datastore/core/Data;

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget v3, p1, Landroidx/datastore/core/State;->a:I

    .line 33
    .line 34
    iget v4, v2, Landroidx/datastore/core/State;->a:I

    .line 35
    .line 36
    if-le v3, v4, :cond_4

    .line 37
    .line 38
    :goto_1
    move-object v2, p1

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    instance-of v3, v2, Landroidx/datastore/core/Final;

    .line 41
    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    :cond_4
    :goto_2
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    return-void

    .line 51
    :cond_5
    invoke-static {}, Lk8;->e()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
