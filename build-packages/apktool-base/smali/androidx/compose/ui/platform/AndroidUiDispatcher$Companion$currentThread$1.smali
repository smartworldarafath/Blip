.class public final Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion$currentThread$1;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidUiDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    .line 2
    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidUiDispatcher;-><init>(Landroid/view/Choreographer;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->u:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "no Looper on this thread"

    .line 28
    .line 29
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method
