.class final Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;
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
    c = "net.blip.android.ui.home.HomeScreenKt$HomeScreen$3$1$3$2$5$1$1"
    f = "HomeScreen.kt"
    l = {
        0x132
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic q:Lnet/blip/libblip/Flavor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->p:Lnet/blip/libblip/frontend/Transfer;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->q:Lnet/blip/libblip/Flavor;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->p:Lnet/blip/libblip/frontend/Transfer;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->q:Lnet/blip/libblip/Flavor;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->o:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;-><init>(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Flavor;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->n:I

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->o:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    iget-object p0, p1, Lkotlin/Result;->j:Ljava/lang/Object;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->q:Lnet/blip/libblip/Flavor;

    .line 31
    .line 32
    check-cast p1, Lnet/blip/android/FlavorAndroid;

    .line 33
    .line 34
    iget-object p1, p1, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 35
    .line 36
    iput v3, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->n:I

    .line 37
    .line 38
    iget-object v1, p0, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$3$1$3$2$5$1$1;->p:Lnet/blip/libblip/frontend/Transfer;

    .line 39
    .line 40
    invoke-static {v2, v1, p1, p0}, Lnet/blip/android/ui/util/TransferClipboardKt;->b(Landroid/content/Context;Lnet/blip/libblip/frontend/Transfer;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p0, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v0, 0x20

    .line 54
    .line 55
    if-gt p1, v0, :cond_6

    .line 56
    .line 57
    :cond_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    check-cast p0, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-ne p0, v3, :cond_4

    .line 70
    .line 71
    const-string p1, "item"

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const-string p1, "items"

    .line 75
    .line 76
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "Copied "

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p0, " "

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const-string p0, "Couldn\'t copy transfer"

    .line 100
    .line 101
    :goto_2
    const/4 p1, 0x0

    .line 102
    invoke-static {v2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 107
    .line 108
    .line 109
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method
