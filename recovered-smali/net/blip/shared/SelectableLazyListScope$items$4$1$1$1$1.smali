.class final Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/shared/SelectableLazyItemScope;

.field public final synthetic k:Ljava/lang/Integer;

.field public final synthetic l:Lnet/blip/shared/SelectableLazyListScope;


# direct methods
.method public constructor <init>(Lnet/blip/shared/SelectableLazyItemScope;Ljava/lang/Integer;Lnet/blip/shared/SelectableLazyListScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->j:Lnet/blip/shared/SelectableLazyItemScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->k:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->l:Lnet/blip/shared/SelectableLazyListScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    iget-object p1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->j:Lnet/blip/shared/SelectableLazyItemScope;

    .line 4
    .line 5
    iget-object p1, p1, Lnet/blip/shared/SelectableLazyItemScope;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 6
    .line 7
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->k:Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;->l:Lnet/blip/shared/SelectableLazyListScope;

    .line 27
    .line 28
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope;->b:Lma;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lma;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-object p2
.end method
