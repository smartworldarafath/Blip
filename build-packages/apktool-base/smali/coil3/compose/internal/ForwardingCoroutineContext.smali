.class public abstract Lcoil3/compose/internal/ForwardingCoroutineContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext;


# instance fields
.field public final j:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 8
    .line 9
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor$Key;->j:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcoil3/compose/internal/ForwardingCoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of v1, p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p0, v2

    .line 24
    :goto_0
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    .line 35
    :cond_1
    instance-of v0, p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    if-eq p0, v2, :cond_2

    .line 40
    .line 41
    check-cast p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;->m:I

    .line 45
    .line 46
    :cond_2
    new-instance p0, Lcoil3/compose/internal/DeferredDispatchCoroutineContext;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcoil3/compose/internal/ForwardingCoroutineContext;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final P0(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lkotlin/coroutines/CoroutineContext;->P0(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final g0(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->g0(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 8
    .line 9
    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor$Key;->j:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcoil3/compose/internal/ForwardingCoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    instance-of v1, p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p0, v2

    .line 24
    :goto_0
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 34
    .line 35
    :cond_1
    instance-of v0, p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    if-eq p0, v2, :cond_2

    .line 40
    .line 41
    check-cast p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcoil3/compose/internal/DeferredDispatchCoroutineDispatcher;->m:I

    .line 45
    .line 46
    :cond_2
    new-instance p0, Lcoil3/compose/internal/DeferredDispatchCoroutineContext;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcoil3/compose/internal/ForwardingCoroutineContext;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ForwardingCoroutineContext(delegate="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ForwardingCoroutineContext;->j:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
