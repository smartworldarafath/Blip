.class public final synthetic Loh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/TransferChoosePeerViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/TransferChoosePeerViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Loh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Loh;->k:Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Loh;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Loh;->k:Lnet/blip/libblip/TransferChoosePeerViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lnet/blip/libblip/PeerId;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->a:Lnet/blip/libblip/Core;

    .line 17
    .line 18
    iget-object v0, v0, Lnet/blip/libblip/Core;->b:Lc;

    .line 19
    .line 20
    new-instance v1, Lnet/blip/libblip/event/TransferInviteRequested;

    .line 21
    .line 22
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lnet/blip/libblip/event/TransferInviteRequested;-><init>(Ljava/lang/String;Lnet/blip/libblip/PeerId;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 39
    .line 40
    iget-object p0, p0, Lnet/blip/libblip/TransferChoosePeerViewModel;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lnet/blip/libblip/frontend/Transfer;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
