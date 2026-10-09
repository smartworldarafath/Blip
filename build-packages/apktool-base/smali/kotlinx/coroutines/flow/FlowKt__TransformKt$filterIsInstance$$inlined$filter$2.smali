.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic k:Lkotlin/jvm/internal/ClassReference;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlin/jvm/internal/ClassReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;->j:Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;->k:Lkotlin/jvm/internal/ClassReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;->k:Lkotlin/jvm/internal/ClassReference;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/ClassReference;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;->j:Lkotlinx/coroutines/flow/Flow;

    .line 9
    .line 10
    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method
