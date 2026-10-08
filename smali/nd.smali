.class public final synthetic Lnd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Lnet/blip/android/ui/home/PeerTrayItem;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lnet/blip/android/ui/home/PeerTrayItem;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lnd;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lnd;->k:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lnd;->l:Lnet/blip/android/ui/home/PeerTrayItem;

    .line 6
    .line 7
    iput-object p3, p0, Lnd;->m:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lnd;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnd;->m:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lnd;->l:Lnet/blip/android/ui/home/PeerTrayItem;

    .line 8
    .line 9
    iget-object p0, p0, Lnd;->k:Landroid/content/Context;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 15
    .line 16
    iget-object v0, v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 26
    .line 27
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->e()Lnet/blip/libblip/User;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "onBlock invoked with non-user"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    .line 48
    :pswitch_0
    check-cast v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 49
    .line 50
    iget-object v0, v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 51
    .line 52
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p0, v0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, v3, Lnet/blip/android/ui/home/PeerTrayItem$Peer;->a:Lnet/blip/libblip/Peer;

    .line 60
    .line 61
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
