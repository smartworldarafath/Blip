.class public abstract Lkotlin/sequences/SequenceScope;
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


# virtual methods
.method public abstract a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
.end method

.method public final b(Landroidx/core/view/ViewGroupKt$special$$inlined$Sequence$1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/ViewGroupKt$special$$inlined$Sequence$1;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroidx/core/view/TreeIterator;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/core/view/TreeIterator;->k:Ljava/util/Iterator;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    iput-object p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->l:Ljava/util/Iterator;

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->j:I

    .line 25
    .line 26
    iput-object p2, p0, Lkotlin/sequences/SequenceBuilderIterator;->m:Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    .line 30
    return-object p0
.end method
