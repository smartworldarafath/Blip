.class public final Lnet/blip/libblip/messaging/MessageFromServer$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/messaging/MessageFromServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/messaging/MessageFromServer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 11

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
    move-object v2, p0

    .line 10
    move-object v3, v2

    .line 11
    move-object v4, v3

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/4 v6, -0x1

    .line 17
    if-eq v5, v6, :cond_4

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v5, v6, :cond_3

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    if-eq v5, v6, :cond_2

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-eq v5, v6, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x5

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v3, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lnet/blip/libblip/User$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v2, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p0, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    new-instance v5, Lnet/blip/libblip/messaging/MessageFromServer;

    .line 68
    .line 69
    move-object v6, p0

    .line 70
    check-cast v6, Lcom/squareup/wire/AnyMessage;

    .line 71
    .line 72
    move-object v7, v2

    .line 73
    check-cast v7, Lnet/blip/libblip/PeerId;

    .line 74
    .line 75
    move-object v8, v3

    .line 76
    check-cast v8, Lnet/blip/libblip/User;

    .line 77
    .line 78
    move-object v9, v4

    .line 79
    check-cast v9, Ljava/time/Instant;

    .line 80
    .line 81
    invoke-direct/range {v5 .. v10}, Lnet/blip/libblip/messaging/MessageFromServer;-><init>(Lcom/squareup/wire/AnyMessage;Lnet/blip/libblip/PeerId;Lnet/blip/libblip/User;Ljava/time/Instant;Lokio/ByteString;)V

    .line 82
    .line 83
    .line 84
    return-object v5
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/messaging/MessageFromServer;

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
    iget-object p0, p2, Lnet/blip/libblip/messaging/MessageFromServer;->m:Lcom/squareup/wire/AnyMessage;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    iget-object v1, p2, Lnet/blip/libblip/messaging/MessageFromServer;->n:Lnet/blip/libblip/PeerId;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    iget-object v1, p2, Lnet/blip/libblip/messaging/MessageFromServer;->o:Lnet/blip/libblip/User;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p2, Lnet/blip/libblip/messaging/MessageFromServer;->p:Ljava/time/Instant;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/messaging/MessageFromServer;

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
    iget-object p0, p2, Lnet/blip/libblip/messaging/MessageFromServer;->p:Ljava/time/Instant;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    iget-object v1, p2, Lnet/blip/libblip/messaging/MessageFromServer;->o:Lnet/blip/libblip/User;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    iget-object v1, p2, Lnet/blip/libblip/messaging/MessageFromServer;->n:Lnet/blip/libblip/PeerId;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p2, Lnet/blip/libblip/messaging/MessageFromServer;->m:Lcom/squareup/wire/AnyMessage;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    sget-object p2, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lnet/blip/libblip/messaging/MessageFromServer;

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
    iget-object v0, p1, Lnet/blip/libblip/messaging/MessageFromServer;->m:Lcom/squareup/wire/AnyMessage;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/squareup/wire/AnyMessage;->o:Lcom/squareup/wire/AnyMessage$Companion$ADAPTER$1;

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
    sget-object v0, Lnet/blip/libblip/PeerId;->o:Lnet/blip/libblip/PeerId$Companion$ADAPTER$1;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    iget-object v2, p1, Lnet/blip/libblip/messaging/MessageFromServer;->n:Lnet/blip/libblip/PeerId;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, p0

    .line 36
    sget-object p0, Lnet/blip/libblip/User;->y:Lnet/blip/libblip/User$Companion$ADAPTER$1;

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    iget-object v2, p1, Lnet/blip/libblip/messaging/MessageFromServer;->o:Lnet/blip/libblip/User;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-int/2addr p0, v0

    .line 46
    iget-object p1, p1, Lnet/blip/libblip/messaging/MessageFromServer;->p:Ljava/time/Instant;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 51
    .line 52
    const/4 v1, 0x5

    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, p0

    .line 58
    return p1

    .line 59
    :cond_1
    return p0
.end method
