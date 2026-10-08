.class final Lnet/blip/shared/SelectionListKt$SelectionList$1$1;
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
    c = "net.blip.shared.SelectionListKt$SelectionList$1$1"
    f = "SelectionList.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lnet/blip/shared/SelectionListState;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->n:Lnet/blip/shared/SelectionListState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->n:Lnet/blip/shared/SelectionListState;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;-><init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->o:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lnet/blip/shared/SelectableLazyListScope;

    .line 13
    .line 14
    iget-object p0, p0, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;->n:Lnet/blip/shared/SelectionListState;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method
