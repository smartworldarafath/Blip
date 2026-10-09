.class public final synthetic Lnet/blip/android/ui/home/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Landroidx/navigation/NavController;

.field public final synthetic n:Lnet/blip/libblip/Flavor;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/Flavor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/e;->j:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/e;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/e;->l:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/home/e;->m:Landroidx/navigation/NavController;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/ui/home/e;->n:Lnet/blip/libblip/Flavor;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Lnet/blip/libblip/frontend/Transfer;

    .line 3
    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {v3}, Lnet/blip/libblip/Transfer_DerivedKt;->c(Lnet/blip/libblip/frontend/Transfer;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, v3, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lnet/blip/android/ui/home/e;->j:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$3$1$1;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    iget-object v1, p0, Lnet/blip/android/ui/home/e;->l:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Lnet/blip/android/ui/home/e;->m:Landroidx/navigation/NavController;

    .line 27
    .line 28
    iget-object v4, p0, Lnet/blip/android/ui/home/e;->n:Lnet/blip/libblip/Flavor;

    .line 29
    .line 30
    invoke-direct/range {v0 .. v5}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$3$1$1;-><init>(Landroid/content/Context;Landroidx/navigation/NavController;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    iget-object p0, p0, Lnet/blip/android/ui/home/e;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method
