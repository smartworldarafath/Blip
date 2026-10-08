.class public final synthetic Lnet/blip/android/ui/help/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Landroidx/compose/ui/platform/Clipboard;

.field public final synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnet/blip/android/ui/help/a;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/blip/android/ui/help/a;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/blip/android/ui/help/a;->l:Landroidx/compose/ui/platform/Clipboard;

    .line 6
    .line 7
    iput-object p3, p0, Lnet/blip/android/ui/help/a;->m:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lnet/blip/android/ui/help/a;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lnet/blip/android/ui/help/a;->m:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v5, p0, Lnet/blip/android/ui/help/a;->l:Landroidx/compose/ui/platform/Clipboard;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/blip/android/ui/help/a;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    new-instance v0, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;

    .line 26
    .line 27
    invoke-direct {v0, v5, p1, v4, v3}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1;-><init>(Landroidx/compose/ui/platform/Clipboard;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    new-instance v0, Lnet/blip/android/ui/help/HelpScreenSendToOtherPeopleKt$HelpScreenSendToOtherPeople$2$1$1$1$1;

    .line 42
    .line 43
    invoke-direct {v0, v5, p1, v4, v3}, Lnet/blip/android/ui/help/HelpScreenSendToOtherPeopleKt$HelpScreenSendToOtherPeople$2$1$1$1$1;-><init>(Landroidx/compose/ui/platform/Clipboard;Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
