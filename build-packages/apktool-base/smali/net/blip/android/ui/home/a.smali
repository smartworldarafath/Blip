.class public final synthetic Lnet/blip/android/ui/home/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lnet/blip/libblip/Flavor;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lnet/blip/libblip/Flavor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/a;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/a;->k:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/a;->l:Lnet/blip/libblip/Flavor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/blip/android/ui/home/a;->k:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lnet/blip/android/ui/home/a;->l:Lnet/blip/libblip/Flavor;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, p1, v2, v3}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;-><init>(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    iget-object p0, p0, Lnet/blip/android/ui/home/a;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    invoke-static {p0, v3, v3, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method
