.class final Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;
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
    c = "net.blip.android.ui.help.HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1"
    f = "HelpScreenSendToYourDevices.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/ui/platform/Clipboard;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/Clipboard;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->o:Landroidx/compose/ui/platform/Clipboard;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->p:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->q:Landroid/content/Context;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->p:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->q:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->o:Landroidx/compose/ui/platform/Clipboard;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;-><init>(Landroidx/compose/ui/platform/Clipboard;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->p:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v4, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroidx/compose/ui/platform/ClipEntry;

    .line 29
    .line 30
    invoke-static {v3, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v1}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    .line 38
    .line 39
    .line 40
    iput v4, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->n:I

    .line 41
    .line 42
    iget-object v1, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->o:Landroidx/compose/ui/platform/Clipboard;

    .line 43
    .line 44
    check-cast v1, Landroidx/compose/ui/platform/AndroidClipboardImpl;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/compose/ui/platform/AndroidClipboardImpl;->a(Landroidx/compose/ui/platform/ClipEntry;)V

    .line 47
    .line 48
    .line 49
    if-ne v2, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v0, 0x21

    .line 55
    .line 56
    if-ge p1, v0, :cond_3

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "Copied "

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " to clipboard"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object p0, p0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;->q:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-object v2
.end method
