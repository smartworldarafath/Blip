.class public final Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.transferworker.TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1"
    f = "TransferService.kt"
    l = {
        0x70
    }
    m = "collect"
    v = 0x2
.end annotation


# instance fields
.field public synthetic m:Ljava/lang/Object;

.field public n:I

.field public final synthetic o:Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;->o:Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1$1;->o:Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
