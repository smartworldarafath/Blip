.class public final Lnet/blip/libblip/frontend/PeerInteraction$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/PeerInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/PeerInteraction;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 p0, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move-object v2, p0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v4, v5, :cond_3

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq v4, v5, :cond_2

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    if-eq v4, v5, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    if-eq v4, v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget-object v2, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 64
    .line 65
    check-cast p0, Ljava/time/Instant;

    .line 66
    .line 67
    check-cast v2, Lnet/blip/libblip/PeerId;

    .line 68
    .line 69
    invoke-direct {v0, p0, v2, v3, p1}, Lnet/blip/libblip/frontend/PeerInteraction;-><init>(Ljava/time/Instant;Lnet/blip/libblip/PeerId;ZLokio/ByteString;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->o:Z

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->o:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lokio/ByteString;->e()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iget-object v0, p1, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr p0, v0

    .line 26
    :cond_0
    iget-object v0, p1, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-object v1, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr p0, v0

    .line 38
    :cond_1
    iget-boolean p1, p1, Lnet/blip/libblip/frontend/PeerInteraction;->o:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-static {p1, v0, v1, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    :cond_2
    return p0
.end method
