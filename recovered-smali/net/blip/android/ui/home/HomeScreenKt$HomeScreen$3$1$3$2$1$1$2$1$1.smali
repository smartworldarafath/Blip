.class final Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;
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
    c = "net.blip.android.ui.home.HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1"
    f = "HomeScreen.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Lnet/blip/libblip/PeerId;

.field public final synthetic s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lnet/blip/android/ui/util/UmbrellaContentPickerType;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->p:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->q:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->r:Lnet/blip/libblip/PeerId;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->s:Landroid/content/Context;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->r:Lnet/blip/libblip/PeerId;

    .line 4
    .line 5
    iget-object v5, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->s:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->p:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->q:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lnet/blip/android/ui/util/UmbrellaContentPickerType;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v2, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->n:I

    .line 25
    .line 26
    iget-object p1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget-object v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->p:Lnet/blip/android/ui/util/UmbrellaContentPickerType;

    .line 29
    .line 30
    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->q:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    iget-object v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->r:Lnet/blip/libblip/PeerId;

    .line 48
    .line 49
    const-string v2, "home_peer_tray"

    .line 50
    .line 51
    invoke-static {v0, v1, p1, v2}, Lnet/blip/libblip/DispatcherKt;->a(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/List;Ljava/lang/String;)Ljava/io/Serializable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 62
    .line 63
    new-instance v1, Lkotlin/Pair;

    .line 64
    .line 65
    const-string v3, "origin"

    .line 66
    .line 67
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lkotlin/Pair;

    .line 71
    .line 72
    const-string v3, "err"

    .line 73
    .line 74
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    filled-new-array {v1, v2}, [Lkotlin/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v0, "unable to start transfer"

    .line 85
    .line 86
    invoke-static {v0, p1}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "Unable to start transfer"

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object p0, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1;->s:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 99
    .line 100
    .line 101
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p0
.end method
