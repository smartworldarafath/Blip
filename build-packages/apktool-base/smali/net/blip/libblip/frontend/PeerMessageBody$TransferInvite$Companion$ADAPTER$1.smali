.class public final Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 5

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
    const-string p0, ""

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, -0x1

    .line 16
    if-eq v3, v4, :cond_2

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v3, v4, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v2, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Lbsarchive/Metadata$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

    .line 50
    .line 51
    check-cast v2, Lbsarchive/Metadata;

    .line 52
    .line 53
    invoke-direct {v0, p0, v2, p1}, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;-><init>(Ljava/lang/String;Lbsarchive/Metadata;Lokio/ByteString;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->m:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->n:Lbsarchive/Metadata;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p2, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->n:Lbsarchive/Metadata;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    sget-object v0, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string p2, ""

    .line 29
    .line 30
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;

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
    iget-object v0, p1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->m:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr p0, v0

    .line 32
    :cond_0
    iget-object p1, p1, Lnet/blip/libblip/frontend/PeerMessageBody$TransferInvite;->n:Lbsarchive/Metadata;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    sget-object v0, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/2addr p1, p0

    .line 44
    return p1

    .line 45
    :cond_1
    return p0
.end method
