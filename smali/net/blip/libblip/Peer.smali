.class public abstract Lnet/blip/libblip/Peer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/Peer$Device;,
        Lnet/blip/libblip/Peer$User;
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x2a

    .line 15
    .line 16
    const/16 v1, 0x2022

    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;CC)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    instance-of v0, p0, Lnet/blip/libblip/Peer$Device;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, Lnet/blip/libblip/Peer$Device;

    .line 28
    .line 29
    iget-object p0, p0, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lnet/blip/libblip/Device;->r:Z

    .line 35
    .line 36
    iget-object p0, p0, Lnet/blip/libblip/Device;->n:Lnet/blip/libblip/DeviceKind;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-static {p0}, Lnet/blip/libblip/Device_DerivedKt;->b(Lnet/blip/libblip/DeviceKind;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "This "

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-static {p0}, Lnet/blip/libblip/Device_DerivedKt;->b(Lnet/blip/libblip/DeviceKind;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "Your "

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 8
    .line 9
    invoke-static {p0}, Lnet/blip/libblip/User_DerivedKt;->a(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v0, p0, Lnet/blip/libblip/Peer$Device;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p0, Lnet/blip/libblip/Peer$Device;

    .line 19
    .line 20
    iget-object p0, p0, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 21
    .line 22
    invoke-static {p0}, Lnet/blip/libblip/Device_DerivedKt;->a(Lnet/blip/libblip/Device;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final c()Lnet/blip/libblip/PeerId;
    .locals 3

    .line 1
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/blip/libblip/PeerId;

    .line 6
    .line 7
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-direct {v0, p0, v2, v1}, Lnet/blip/libblip/PeerId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    instance-of v0, p0, Lnet/blip/libblip/Peer$Device;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lnet/blip/libblip/PeerId;

    .line 24
    .line 25
    check-cast p0, Lnet/blip/libblip/Peer$Device;

    .line 26
    .line 27
    iget-object v1, p0, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 28
    .line 29
    iget-object v1, v1, Lnet/blip/libblip/Device;->m:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    iget-object p0, p0, Lnet/blip/libblip/Peer$Device;->k:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, p0, v2, v1}, Lnet/blip/libblip/PeerId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 8
    .line 9
    invoke-static {p0}, Lnet/blip/libblip/User_DerivedKt;->c(Lnet/blip/libblip/User;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    instance-of v0, p0, Lnet/blip/libblip/Peer$Device;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p0, Lnet/blip/libblip/Peer$Device;

    .line 19
    .line 20
    iget-object p0, p0, Lnet/blip/libblip/Peer$Device;->j:Lnet/blip/libblip/Device;

    .line 21
    .line 22
    invoke-static {p0}, Lnet/blip/libblip/Device_DerivedKt;->a(Lnet/blip/libblip/Device;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final e()Lnet/blip/libblip/User;
    .locals 2

    .line 1
    instance-of v0, p0, Lnet/blip/libblip/Peer$User;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lnet/blip/libblip/Peer$User;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p0, v1

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    return-object v1
.end method
