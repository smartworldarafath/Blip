.class public final Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Auth;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    move-object v4, p0

    .line 13
    move-object v5, v2

    .line 14
    move-object v6, v5

    .line 15
    move-object v7, v6

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-eq p0, v2, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 24
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    move-object v7, p0

    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    move-object v6, p0

    .line 49
    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    move-object v5, p0

    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->k()Lokio/ByteString;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    move-object v4, p0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    new-instance v3, Lnet/blip/libblip/frontend/Auth;

    .line 75
    .line 76
    invoke-direct/range {v3 .. v8}, Lnet/blip/libblip/frontend/Auth;-><init>(Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Auth;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Auth;->p:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Auth;->o:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Lnet/blip/libblip/frontend/Auth;->m:Lokio/ByteString;

    .line 16
    .line 17
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 26
    .line 27
    const/16 v4, 0xc9

    .line 28
    .line 29
    invoke-virtual {v3, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v2, ""

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const/16 v3, 0xca

    .line 43
    .line 44
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const/16 v1, 0xcb

    .line 54
    .line 55
    invoke-virtual {v4, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    const/16 v0, 0xcc

    .line 65
    .line 66
    invoke-virtual {v4, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Auth;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Auth;->m:Lokio/ByteString;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/frontend/Auth;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p2, Lnet/blip/libblip/frontend/Auth;->p:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    const/16 v3, 0xcc

    .line 35
    .line 36
    invoke-virtual {v4, p1, v3, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const/16 p2, 0xcb

    .line 46
    .line 47
    invoke-virtual {v4, p1, p2, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_2

    .line 55
    .line 56
    const/16 p2, 0xca

    .line 57
    .line 58
    invoke-virtual {v4, p1, p2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-object p2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 62
    .line 63
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 70
    .line 71
    const/16 v0, 0xc9

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Auth;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/Auth;->p:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/blip/libblip/frontend/Auth;->o:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Lnet/blip/libblip/frontend/Auth;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lokio/ByteString;->e()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object p1, p1, Lnet/blip/libblip/frontend/Auth;->m:Lokio/ByteString;

    .line 21
    .line 22
    sget-object v3, Lokio/ByteString;->m:Lokio/ByteString;

    .line 23
    .line 24
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 31
    .line 32
    const/16 v4, 0xc9

    .line 33
    .line 34
    invoke-virtual {v3, v4, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    add-int/2addr v2, p1

    .line 39
    :cond_0
    const-string p1, ""

    .line 40
    .line 41
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    const/16 v3, 0xca

    .line 50
    .line 51
    invoke-virtual {v4, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v2, v1

    .line 56
    :cond_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    const/16 v1, 0xcb

    .line 63
    .line 64
    invoke-virtual {v4, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v2, v0

    .line 69
    :cond_2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    const/16 p1, 0xcc

    .line 76
    .line 77
    invoke-virtual {v4, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    add-int/2addr p0, v2

    .line 82
    return p0

    .line 83
    :cond_3
    return v2
.end method
