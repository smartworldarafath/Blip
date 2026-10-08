.class public final synthetic Lnet/blip/android/shortcuts/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic l:Lnet/blip/android/MainActivity;

.field public final synthetic m:Lnet/blip/libblip/Peer;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lnet/blip/android/MainActivity;Lnet/blip/libblip/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/shortcuts/a;->j:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/shortcuts/a;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/shortcuts/a;->l:Lnet/blip/android/MainActivity;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/shortcuts/a;->m:Lnet/blip/libblip/Peer;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/blip/android/shortcuts/a;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/blip/android/shortcuts/a;->l:Lnet/blip/android/MainActivity;

    .line 9
    .line 10
    iget-object v2, p0, Lnet/blip/android/shortcuts/a;->m:Lnet/blip/libblip/Peer;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;-><init>(Lnet/blip/android/MainActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    iget-object p0, p0, Lnet/blip/android/shortcuts/a;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    .line 19
    invoke-static {p0, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method
