.class public final Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic k:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field public final synthetic l:Landroidx/compose/runtime/RememberedCoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;Landroidx/compose/runtime/RememberedCoroutineScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->k:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->l:Landroidx/compose/runtime/RememberedCoroutineScope;

    .line 4
    .line 5
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->j:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final Z0(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    .line 1
    new-instance v0, Lp0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->k:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;->l:Landroidx/compose/runtime/RememberedCoroutineScope;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler$Key;->j:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/runtime/RememberedCoroutineScope;->j:Lkotlin/coroutines/CoroutineContext;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/CoroutineExceptionHandler;->Z0(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    throw p1
.end method
