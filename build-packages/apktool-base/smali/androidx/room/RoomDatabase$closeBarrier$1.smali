.class final synthetic Landroidx/room/RoomDatabase$closeBarrier$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/room/RoomDatabase;->a:Lkotlinx/coroutines/internal/ContextScope;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->b(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->f()Landroidx/room/InvalidationTracker;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/RoomConnectionManager;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "connectionManager"

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    const-string p0, "coroutineScope"

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method
