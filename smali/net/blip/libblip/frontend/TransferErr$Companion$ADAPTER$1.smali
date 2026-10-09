.class public final Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/TransferErr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/TransferErr;",
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
    sget-object p0, Lnet/blip/libblip/frontend/TransferErr$Code;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

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
    move v6, v3

    .line 15
    move v7, v6

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v0, -0x1

    .line 21
    if-eq v3, v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq v3, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq v3, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 31
    .line 32
    if-eq v3, v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    if-eq v3, v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    move v7, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    move v6, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v5, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :try_start_0
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr$Code;->l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 85
    .line 86
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 87
    .line 88
    int-to-long v8, v0

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v3, v4, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    new-instance v3, Lnet/blip/libblip/frontend/TransferErr;

    .line 102
    .line 103
    move-object v4, p0

    .line 104
    check-cast v4, Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 105
    .line 106
    invoke-direct/range {v3 .. v8}, Lnet/blip/libblip/frontend/TransferErr;-><init>(Lnet/blip/libblip/frontend/TransferErr$Code;Ljava/lang/String;ZZLokio/ByteString;)V

    .line 107
    .line 108
    .line 109
    return-object v3
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/TransferErr;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 12
    .line 13
    sget-object v1, Lnet/blip/libblip/frontend/TransferErr$Code;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lnet/blip/libblip/frontend/TransferErr$Code;->l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string v0, ""

    .line 24
    .line 25
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 38
    .line 39
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/TransferErr;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

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
    iget-boolean v0, p2, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 19
    .line 20
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-boolean v0, p2, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-string v0, ""

    .line 45
    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, p2, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 59
    .line 60
    sget-object p2, Lnet/blip/libblip/frontend/TransferErr$Code;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 61
    .line 62
    if-eq p0, p2, :cond_3

    .line 63
    .line 64
    sget-object p2, Lnet/blip/libblip/frontend/TransferErr$Code;->l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/TransferErr;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lokio/ByteString;->e()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p1, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 17
    .line 18
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr$Code;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lnet/blip/libblip/frontend/TransferErr$Code;->l:Lnet/blip/libblip/frontend/TransferErr$Code$Companion$ADAPTER$1;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    :cond_0
    const-string v1, ""

    .line 31
    .line 32
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-int/2addr v0, p0

    .line 46
    :cond_1
    iget-boolean p0, p1, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 47
    .line 48
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x3

    .line 53
    invoke-static {p0, v1, v2, v0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_2
    iget-boolean p0, p1, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    const/4 p1, 0x4

    .line 62
    invoke-static {p0, v1, p1, v0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_3
    return v0
.end method
