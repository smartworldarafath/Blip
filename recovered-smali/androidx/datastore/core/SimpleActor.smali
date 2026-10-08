.class public final Landroidx/datastore/core/SimpleActor;
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
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlin/jvm/functions/Function2;

.field public final c:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final d:Landroidx/datastore/core/AtomicInt;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/datastore/core/SimpleActor;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor;->b:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x6

    .line 10
    const v1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0, p2}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 18
    .line 19
    new-instance p2, Landroidx/datastore/core/AtomicInt;

    .line 20
    .line 21
    invoke-direct {p2}, Landroidx/datastore/core/AtomicInt;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor;->d:Landroidx/datastore/core/AtomicInt;

    .line 25
    .line 26
    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget-object p3, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 31
    .line 32
    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lkotlinx/coroutines/Job;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    new-instance p3, Landroidx/datastore/core/SimpleActor$1;

    .line 41
    .line 42
    invoke-direct {p3, p1, p0}, Landroidx/datastore/core/SimpleActor$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/datastore/core/SimpleActor;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p3}, Lkotlinx/coroutines/Job;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
