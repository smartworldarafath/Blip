.class public final synthetic Lkotlinx/coroutines/internal/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    .line 5
    instance-of p0, p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lkotlinx/coroutines/ThreadContextElement;

    .line 10
    .line 11
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->a:Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    invoke-interface {p2}, Lkotlinx/coroutines/ThreadContextElement;->o0()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object v0, p1, Lkotlinx/coroutines/internal/ThreadState;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v1, p1, Lkotlinx/coroutines/internal/ThreadState;->d:I

    .line 20
    .line 21
    aput-object p0, v0, v1

    .line 22
    .line 23
    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->c:[Lkotlinx/coroutines/ThreadContextElement;

    .line 24
    .line 25
    add-int/lit8 v0, v1, 0x1

    .line 26
    .line 27
    iput v0, p1, Lkotlinx/coroutines/internal/ThreadState;->d:I

    .line 28
    .line 29
    aput-object p2, p0, v1

    .line 30
    .line 31
    :cond_0
    return-object p1
.end method
