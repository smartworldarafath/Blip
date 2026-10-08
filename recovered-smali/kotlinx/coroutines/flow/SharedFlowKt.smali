.class public abstract Lkotlinx/coroutines/flow/SharedFlowKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    const-string v1, "NO_VALUE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    .line 10
    return-void
.end method

.method public static a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move p0, v1

    .line 14
    :cond_1
    and-int/lit8 p1, p1, 0x4

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 19
    .line 20
    :cond_2
    const/4 p1, 0x0

    .line 21
    if-ltz p0, :cond_6

    .line 22
    .line 23
    if-gtz v0, :cond_4

    .line 24
    .line 25
    if-gtz p0, :cond_4

    .line 26
    .line 27
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 28
    .line 29
    if-ne p2, v1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const-string p0, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    .line 33
    .line 34
    invoke-static {p2, p0}, Lfe;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    :goto_1
    add-int/2addr p0, v0

    .line 39
    if-gez p0, :cond_5

    .line 40
    .line 41
    const p0, 0x7fffffff

    .line 42
    .line 43
    .line 44
    :cond_5
    new-instance p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 45
    .line 46
    invoke-direct {p1, v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;-><init>(IILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_6
    const-string p2, "extraBufferCapacity cannot be negative, but was "

    .line 51
    .line 52
    invoke-static {p0, p2}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-object p1
.end method

.method public static final b([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    array-length p2, p0

    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    and-int/2addr p1, p2

    .line 6
    aput-object p3, p0, p1

    .line 7
    .line 8
    return-void
.end method

.method public static final c(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, -0x3

    .line 4
    if-ne p2, v0, :cond_1

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    if-ne p3, v0, :cond_1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
