.class public abstract Lkotlinx/coroutines/channels/ChannelKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 12
    .line 13
    :cond_1
    const/4 p1, -0x2

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, p1, :cond_8

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    if-eq p0, p1, :cond_6

    .line 19
    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    const p1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-eq p0, p1, :cond_3

    .line 26
    .line 27
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 28
    .line 29
    if-ne p2, p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    new-instance p1, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 38
    .line 39
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 50
    .line 51
    if-ne p2, p0, :cond_5

    .line 52
    .line 53
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_5
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 66
    .line 67
    if-ne p2, p0, :cond_7

    .line 68
    .line 69
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 70
    .line 71
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->k:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 72
    .line 73
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_7
    const-string p0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 78
    .line 79
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :cond_8
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 85
    .line 86
    if-ne p2, p0, :cond_9

    .line 87
    .line 88
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 89
    .line 90
    sget-object p1, Lkotlinx/coroutines/channels/Channel;->i:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget p1, Lkotlinx/coroutines/channels/Channel$Factory;->b:I

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_9
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 102
    .line 103
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method
