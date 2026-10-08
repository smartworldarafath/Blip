.class public final Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;
.super Lcom/squareup/wire/EnumAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/NotificationPermissionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lnet/blip/libblip/frontend/NotificationPermissionStatus;",
        ">;"
    }
.end annotation


# virtual methods
.method public final j(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 1
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->k:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    if-eq p1, p0, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    if-eq p1, p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->p:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->o:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->n:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 29
    .line 30
    return-object p0
.end method
