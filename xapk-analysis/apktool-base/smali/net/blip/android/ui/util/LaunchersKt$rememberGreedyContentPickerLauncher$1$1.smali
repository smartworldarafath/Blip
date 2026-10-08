.class final Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lnet/blip/shared/ContentPicker$Options;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.LaunchersKt$rememberGreedyContentPickerLauncher$1$1"
    f = "Launchers.kt"
    l = {
        0x46,
        0x48
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lnet/blip/android/ui/util/SuspendingPermissionState;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->p:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

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
    check-cast p1, Lnet/blip/shared/ContentPicker$Options;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->p:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;-><init>(Lnet/blip/android/ui/util/SuspendingPermissionState;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/blip/shared/ContentPicker$Options;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->n:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v3

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
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v2, 0x21

    .line 38
    .line 39
    if-ge p1, v2, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->p:Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 42
    .line 43
    iget-object v2, p1, Lnet/blip/android/ui/util/SuspendingPermissionState;->a:Lcom/google/accompanist/permissions/PermissionStatus;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v6, Lcom/google/accompanist/permissions/PermissionStatus$Granted;->a:Lcom/google/accompanist/permissions/PermissionStatus$Granted;

    .line 49
    .line 50
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    iget-object p1, p1, Lnet/blip/android/ui/util/SuspendingPermissionState;->b:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    iput-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 59
    .line 60
    iput v5, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->n:I

    .line 61
    .line 62
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    iput-object v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->o:Ljava/lang/Object;

    .line 70
    .line 71
    iput v4, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->n:I

    .line 72
    .line 73
    iget-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberGreedyContentPickerLauncher$1$1;->q:Lkotlin/jvm/functions/Function2;

    .line 74
    .line 75
    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v1, :cond_4

    .line 80
    .line 81
    :goto_1
    return-object v1

    .line 82
    :cond_4
    return-object p0
.end method
