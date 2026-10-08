.class public final Lnet/blip/libblip/event/RegistrationRequested$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/event/RegistrationRequested;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/event/RegistrationRequested;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-string v0, ""

    .line 11
    .line 12
    move-object v4, v0

    .line 13
    move-object v5, v4

    .line 14
    move-object v6, v5

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v0, -0x1

    .line 20
    if-eq v3, v0, :cond_4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 24
    .line 25
    if-eq v3, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq v3, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    if-eq v3, v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    if-eq v3, v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    sget-object v0, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 49
    .line 50
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 51
    .line 52
    int-to-long v8, v0

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v3, v7, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v6, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v5, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v4, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    new-instance v3, Lnet/blip/libblip/event/RegistrationRequested;

    .line 93
    .line 94
    move-object v7, p0

    .line 95
    check-cast v7, Lnet/blip/libblip/DeviceKind;

    .line 96
    .line 97
    invoke-direct/range {v3 .. v8}, Lnet/blip/libblip/event/RegistrationRequested;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Lokio/ByteString;)V

    .line 98
    .line 99
    .line 100
    return-object v3
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lnet/blip/libblip/event/RegistrationRequested;

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
    iget-object p0, p2, Lnet/blip/libblip/event/RegistrationRequested;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/event/RegistrationRequested;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/event/RegistrationRequested;->m:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {v4, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-virtual {v4, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p0, p2, Lnet/blip/libblip/event/RegistrationRequested;->p:Lnet/blip/libblip/DeviceKind;

    .line 50
    .line 51
    sget-object v0, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 52
    .line 53
    if-eq p0, v0, :cond_3

    .line 54
    .line 55
    sget-object v0, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/event/RegistrationRequested;

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
    iget-object p0, p2, Lnet/blip/libblip/event/RegistrationRequested;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/event/RegistrationRequested;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/event/RegistrationRequested;->o:Ljava/lang/String;

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
    iget-object p2, p2, Lnet/blip/libblip/event/RegistrationRequested;->p:Lnet/blip/libblip/DeviceKind;

    .line 23
    .line 24
    sget-object v2, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 25
    .line 26
    if-eq p2, v2, :cond_0

    .line 27
    .line 28
    sget-object v2, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-virtual {v2, p1, v3, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string p2, ""

    .line 35
    .line 36
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-virtual {v3, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v3, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-virtual {v3, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lnet/blip/libblip/event/RegistrationRequested;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/event/RegistrationRequested;->o:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/blip/libblip/event/RegistrationRequested;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lokio/ByteString;->e()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p1, Lnet/blip/libblip/event/RegistrationRequested;->m:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-virtual {v5, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v1, v2

    .line 36
    :cond_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v5, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v1, v0

    .line 48
    :cond_1
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    invoke-virtual {v5, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr v1, p0

    .line 60
    :cond_2
    iget-object p0, p1, Lnet/blip/libblip/event/RegistrationRequested;->p:Lnet/blip/libblip/DeviceKind;

    .line 61
    .line 62
    sget-object p1, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 63
    .line 64
    if-eq p0, p1, :cond_3

    .line 65
    .line 66
    sget-object p1, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-virtual {p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    add-int/2addr p0, v1

    .line 74
    return p0

    .line 75
    :cond_3
    return v1
.end method
