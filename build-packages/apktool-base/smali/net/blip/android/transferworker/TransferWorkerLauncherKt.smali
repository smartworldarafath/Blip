.class public abstract Lnet/blip/android/transferworker/TransferWorkerLauncherKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/frontend/Transfer;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :pswitch_0
    return v1

    .line 17
    :pswitch_1
    iget-object p0, p0, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 18
    .line 19
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    return v2

    .line 25
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
