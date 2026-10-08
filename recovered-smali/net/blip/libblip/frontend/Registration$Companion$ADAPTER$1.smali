.class public final Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Registration;",
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
    sget-object p0, Lnet/blip/libblip/frontend/Registration$registration_status;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

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
    const/4 v3, 0x0

    .line 13
    move-object v5, v0

    .line 14
    move-object v6, v5

    .line 15
    move-object v4, v3

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v0, -0x1

    .line 21
    if-eq v7, v0, :cond_5

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq v7, v0, :cond_4

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 28
    .line 29
    if-eq v7, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-eq v7, v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    if-eq v7, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x3e7

    .line 38
    .line 39
    if-eq v7, v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v4, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v6, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v3, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    :cond_4
    :try_start_0
    sget-object v0, Lnet/blip/libblip/frontend/Registration$registration_status;->l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 88
    .line 89
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 90
    .line 91
    int-to-long v9, v0

    .line 92
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    move-object p1, v3

    .line 105
    new-instance v3, Lnet/blip/libblip/frontend/Registration;

    .line 106
    .line 107
    check-cast p0, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 108
    .line 109
    move-object v7, p1

    .line 110
    check-cast v7, Ljava/time/Instant;

    .line 111
    .line 112
    move-object v8, v4

    .line 113
    check-cast v8, Lnet/blip/libblip/frontend/Err;

    .line 114
    .line 115
    move-object v4, p0

    .line 116
    invoke-direct/range {v3 .. v9}, Lnet/blip/libblip/frontend/Registration;-><init>(Lnet/blip/libblip/frontend/Registration$registration_status;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lnet/blip/libblip/frontend/Err;Lokio/ByteString;)V

    .line 117
    .line 118
    .line 119
    return-object v3
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Registration;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Registration;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Registration;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p2, Lnet/blip/libblip/frontend/Registration;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 14
    .line 15
    sget-object v2, Lnet/blip/libblip/frontend/Registration$registration_status;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    sget-object v2, Lnet/blip/libblip/frontend/Registration$registration_status;->l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v1, ""

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v3, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    invoke-virtual {v3, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p0, p2, Lnet/blip/libblip/frontend/Registration;->p:Ljava/time/Instant;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object p0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 60
    .line 61
    const/16 v0, 0x3e7

    .line 62
    .line 63
    iget-object v1, p2, Lnet/blip/libblip/frontend/Registration;->q:Lnet/blip/libblip/frontend/Err;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Registration;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Registration;->n:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/Registration;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 21
    .line 22
    const/16 v2, 0x3e7

    .line 23
    .line 24
    iget-object v3, p2, Lnet/blip/libblip/frontend/Registration;->q:Lnet/blip/libblip/frontend/Err;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p2, Lnet/blip/libblip/frontend/Registration;->p:Ljava/time/Instant;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    const-string v1, ""

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    invoke-virtual {v3, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-virtual {v3, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p0, p2, Lnet/blip/libblip/frontend/Registration;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 64
    .line 65
    sget-object p2, Lnet/blip/libblip/frontend/Registration$registration_status;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 66
    .line 67
    if-eq p0, p2, :cond_3

    .line 68
    .line 69
    sget-object p2, Lnet/blip/libblip/frontend/Registration$registration_status;->l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Registration;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/Registration;->o:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lnet/blip/libblip/frontend/Registration;->n:Ljava/lang/String;

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
    iget-object v2, p1, Lnet/blip/libblip/frontend/Registration;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 19
    .line 20
    sget-object v3, Lnet/blip/libblip/frontend/Registration$registration_status;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 21
    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    sget-object v3, Lnet/blip/libblip/frontend/Registration$registration_status;->l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v3, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v1, v2

    .line 32
    :cond_0
    const-string v2, ""

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    const/4 v3, 0x2

    .line 43
    invoke-virtual {v4, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr v1, v0

    .line 48
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    invoke-virtual {v4, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr v1, p0

    .line 60
    :cond_2
    iget-object p0, p1, Lnet/blip/libblip/frontend/Registration;->p:Ljava/time/Instant;

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-virtual {v0, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/2addr v1, p0

    .line 72
    :cond_3
    sget-object p0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 73
    .line 74
    const/16 v0, 0x3e7

    .line 75
    .line 76
    iget-object p1, p1, Lnet/blip/libblip/frontend/Registration;->q:Lnet/blip/libblip/frontend/Err;

    .line 77
    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    add-int/2addr p0, v1

    .line 83
    return p0
.end method
