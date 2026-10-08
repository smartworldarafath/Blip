.class final Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;
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
    c = "net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$1$1"
    f = "AudioPickerScreen.kt"
    l = {
        0x52,
        0x57
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/util/List;

.field public o:I

.field public final synthetic p:Lnet/blip/android/ui/util/NuancedPermissionState;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->p:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->q:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->r:Landroidx/compose/runtime/MutableState;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->q:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->r:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->p:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v5, :cond_1

    .line 13
    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->n:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->p:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 36
    .line 37
    iget-boolean v1, p1, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    iget-object p0, p1, Lnet/blip/android/ui/util/NuancedPermissionState;->b:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 50
    .line 51
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 52
    .line 53
    new-instance v1, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1$newFiles$1;

    .line 54
    .line 55
    iget-object v6, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->q:Landroid/content/Context;

    .line 56
    .line 57
    invoke-direct {v1, v6, v2}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1$newFiles$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    iput v5, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->o:I

    .line 61
    .line 62
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 70
    .line 71
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->n:Ljava/util/List;

    .line 72
    .line 73
    iput v4, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->o:I

    .line 74
    .line 75
    const-wide/16 v1, 0x15e

    .line 76
    .line 77
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-ne v1, v0, :cond_5

    .line 82
    .line 83
    :goto_1
    return-object v0

    .line 84
    :cond_5
    move-object v0, p1

    .line 85
    :goto_2
    iget-object p0, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$1$1;->r:Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v3
.end method
