.class final Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt"
    f = "Channels.kt"
    l = {
        0x20,
        0x21
    }
    m = "emitAllImpl$FlowKt__ChannelsKt"
    v = 0x1
.end annotation


# instance fields
.field public m:Lkotlinx/coroutines/flow/FlowCollector;

.field public n:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public o:Lkotlinx/coroutines/channels/ChannelIterator;

.field public p:Z

.field public synthetic q:Ljava/lang/Object;

.field public r:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->r:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->r:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
