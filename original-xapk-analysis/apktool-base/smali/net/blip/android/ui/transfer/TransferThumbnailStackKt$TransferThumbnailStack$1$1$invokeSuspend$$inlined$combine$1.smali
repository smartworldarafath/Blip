.class public final Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/util/List<",
        "+",
        "Lnet/blip/android/filetypes/FileIcon;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic j:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;->j:[Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;-><init>(Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v4

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$2;

    .line 51
    .line 52
    iget-object p0, p0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1;->j:[Lkotlinx/coroutines/flow/Flow;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$3;

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    invoke-direct {v2, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    iput v3, v0, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt$TransferThumbnailStack$1$1$invokeSuspend$$inlined$combine$1$1;->n:I

    .line 64
    .line 65
    invoke-static {v0, p2, v2, p1, p0}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-ne p0, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p0
.end method
