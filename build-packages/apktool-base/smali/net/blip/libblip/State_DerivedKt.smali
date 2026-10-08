.class public abstract Lnet/blip/libblip/State_DerivedKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Config;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lnet/blip/libblip/frontend/Config;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lokio/ByteString;->m:Lokio/ByteString;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct/range {v0 .. v6}, Lnet/blip/libblip/frontend/Config;-><init>(ZZLjava/lang/String;IILokio/ByteString;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    return-object p0
.end method

.method public static final b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lnet/blip/libblip/frontend/Users;->m:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v0, v0, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lnet/blip/libblip/User;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final c(Lnet/blip/libblip/frontend/State;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    sget-object v0, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->u:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 17
    .line 18
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static final d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lnet/blip/libblip/frontend/Users;

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 21
    .line 22
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/blip/libblip/frontend/Users;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lokio/ByteString;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p0
.end method
