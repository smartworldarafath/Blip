.class public final Lnet/blip/libblip/Core;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlinx/coroutines/flow/StateFlow;

.field public final b:Lc;

.field public final c:Lj6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/blip/libblip/UserAgent;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/blip/libblip/Client;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lnet/blip/libblip/Client;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x800000

    .line 10
    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v3, v2, [Lkotlin/Pair;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v1, "waiting for initial state"

    .line 24
    .line 25
    invoke-static {v1, v3}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 32
    .line 33
    iget-wide v3, v0, Lnet/blip/libblip/Client;->a:J

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4, p1}, Lnet/blip/libblip/LibBlip$Companion;->clientGetState(JLjava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lnet/blip/libblip/ByteBufferInputStream;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lnet/blip/libblip/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v4, Lokio/RealBufferedSource;

    .line 53
    .line 54
    invoke-direct {v4, v1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/squareup/wire/ProtoReader;

    .line 58
    .line 59
    invoke-direct {v1, v4}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lnet/blip/libblip/frontend/State;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 73
    .line 74
    const-string v1, "received initial state"

    .line 75
    .line 76
    new-array v2, v2, [Lkotlin/Pair;

    .line 77
    .line 78
    invoke-static {v1, v2}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lnet/blip/libblip/Core$4;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-direct {v1, v0, p0, p1, v2}, Lnet/blip/libblip/Core$4;-><init>(Lnet/blip/libblip/Client;Lnet/blip/libblip/Core;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x3

    .line 88
    sget-object v3, Lkotlinx/coroutines/GlobalScope;->j:Lkotlinx/coroutines/GlobalScope;

    .line 89
    .line 90
    invoke-static {v3, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 91
    .line 92
    .line 93
    new-instance p1, Lc;

    .line 94
    .line 95
    const/16 v1, 0xe

    .line 96
    .line 97
    invoke-direct {p1, v1, v0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lnet/blip/libblip/Core;->b:Lc;

    .line 101
    .line 102
    new-instance v0, Lj6;

    .line 103
    .line 104
    invoke-direct {v0, v1}, Lj6;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lnet/blip/libblip/Core;->c:Lj6;

    .line 108
    .line 109
    new-instance p0, Lnet/blip/libblip/event/SetUserAgent;

    .line 110
    .line 111
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 112
    .line 113
    invoke-direct {p0, p2, v0}, Lnet/blip/libblip/event/SetUserAgent;-><init>(Lnet/blip/libblip/UserAgent;Lokio/ByteString;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    return-void
.end method
