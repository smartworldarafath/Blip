.class public abstract Lnet/blip/libblip/Users_DerivedKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 10
    .line 11
    iget-object p1, p1, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lnet/blip/libblip/User;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-boolean v2, p0, Lnet/blip/libblip/User;->s:Z

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-lez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lnet/blip/libblip/Device;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    new-instance v0, Lnet/blip/libblip/Peer$Device;

    .line 51
    .line 52
    iget-object p0, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, p1, p0}, Lnet/blip/libblip/Peer$Device;-><init>(Lnet/blip/libblip/Device;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    new-instance p1, Lnet/blip/libblip/Peer$User;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lnet/blip/libblip/Peer$User;-><init>(Lnet/blip/libblip/User;)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method
