.class public final synthetic Lnet/blip/android/ui/home/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/home/c;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/home/c;->k:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/home/c;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/ui/home/c;->m:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lnet/blip/libblip/PeerId;

    .line 3
    .line 4
    move-object v2, p2

    .line 5
    check-cast v2, Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v1, p0, Lnet/blip/android/ui/home/c;->k:Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    iget-object v3, p0, Lnet/blip/android/ui/home/c;->l:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iget-object v5, p0, Lnet/blip/android/ui/home/c;->m:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lnet/blip/android/ui/util/UmbrellaContentPickerType;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    iget-object p0, p0, Lnet/blip/android/ui/home/c;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p0, p2, p2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
