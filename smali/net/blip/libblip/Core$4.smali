.class final Lnet/blip/libblip/Core$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.libblip.Core$4"
    f = "Core.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lnet/blip/libblip/Client;

.field public final synthetic o:Lnet/blip/libblip/Core;

.field public final synthetic p:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/Client;Lnet/blip/libblip/Core;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/libblip/Core$4;->n:Lnet/blip/libblip/Client;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/libblip/Core$4;->o:Lnet/blip/libblip/Core;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/libblip/Core$4;->p:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/libblip/Core$4;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/libblip/Core$4;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/libblip/Core$4;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/libblip/Core$4;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/libblip/Core$4;->o:Lnet/blip/libblip/Core;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/libblip/Core$4;->p:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/libblip/Core$4;->n:Lnet/blip/libblip/Client;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/libblip/Core$4;-><init>(Lnet/blip/libblip/Client;Lnet/blip/libblip/Core;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/blip/libblip/Core$4;->n:Lnet/blip/libblip/Client;

    .line 2
    .line 3
    iget-wide v0, v0, Lnet/blip/libblip/Client;->a:J

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    sget-object p1, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lnet/blip/libblip/LibBlip$Companion;->clientExists(J)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lnet/blip/libblip/Core$4;->o:Lnet/blip/libblip/Core;

    .line 20
    .line 21
    iget-object v2, v2, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 22
    .line 23
    check-cast v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 24
    .line 25
    iget-object v4, p0, Lnet/blip/libblip/Core$4;->p:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v4}, Lnet/blip/libblip/LibBlip$Companion;->clientGetState(JLjava/nio/ByteBuffer;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lnet/blip/libblip/ByteBufferInputStream;

    .line 31
    .line 32
    invoke-direct {p1, v4}, Lnet/blip/libblip/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Lnet/blip/libblip/frontend/State;->E:Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lokio/Okio;->e(Ljava/io/InputStream;)Lokio/Source;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v5, Lokio/RealBufferedSource;

    .line 45
    .line 46
    invoke-direct {v5, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/squareup/wire/ProtoReader;

    .line 50
    .line 51
    invoke-direct {p1, v5}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 59
    .line 60
    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 64
    .line 65
    new-array v2, v3, [Lkotlin/Pair;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string p1, "got new state"

    .line 71
    .line 72
    invoke-static {p1, v2}, Lnet/blip/libblip/Logger;->c(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    sget-object p0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 77
    .line 78
    new-array p1, v3, [Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-string p0, "LibBlip client no longer exists"

    .line 84
    .line 85
    invoke-static {p0, p1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 86
    .line 87
    .line 88
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method
