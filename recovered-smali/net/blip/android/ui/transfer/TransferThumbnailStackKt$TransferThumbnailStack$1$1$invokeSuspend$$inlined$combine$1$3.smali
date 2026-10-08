.class public final Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lnet/blip/android/filetypes/FileIcon;",
        ">;>;[",
        "Lnet/blip/android/filetypes/FileIcon;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.transfer.TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3"
    f = "TransferThumbnailStack.kt"
    l = {
        0x120
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic p:[Ljava/lang/Object;


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->p:[Ljava/lang/Object;

    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->p:[Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->n:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    if-ne v3, v5, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v4

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    check-cast v1, [Lnet/blip/android/filetypes/FileIcon;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object v4, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 35
    .line 36
    iput-object v4, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->p:[Ljava/lang/Object;

    .line 37
    .line 38
    iput v5, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;->n:I

    .line 39
    .line 40
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p0, v2, :cond_2

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method
