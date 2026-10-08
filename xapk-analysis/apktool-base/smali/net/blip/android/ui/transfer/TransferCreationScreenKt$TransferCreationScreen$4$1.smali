.class final Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;
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
    c = "net.blip.android.ui.transfer.TransferCreationScreenKt$TransferCreationScreen$4$1"
    f = "TransferCreationScreen.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lnet/blip/android/ui/util/NuancedPermissionState;

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->n:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->o:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->p:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->q:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;

    .line 2
    .line 3
    iget-object v3, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->p:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iget-object v4, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->q:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->n:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->o:Landroid/content/Context;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->q:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->n:Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 29
    .line 30
    iget-boolean p1, p1, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->o:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "Enable notifications for Blip to see transfer progress"

    .line 37
    .line 38
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lnet/blip/android/ui/transfer/TransferCreationScreenKt$TransferCreationScreen$4$1;->p:Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method
