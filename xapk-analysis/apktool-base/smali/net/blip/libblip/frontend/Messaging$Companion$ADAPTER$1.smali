.class public final Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Messaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Messaging;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lnet/blip/libblip/frontend/MessagingStatus;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v0, 0x0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move v6, v0

    .line 15
    move-wide v7, v3

    .line 16
    move-object v3, v5

    .line 17
    move v5, v6

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v0, -0x1

    .line 23
    if-eq v4, v0, :cond_5

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq v4, v0, :cond_4

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 30
    .line 31
    if-eq v4, v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    if-eq v4, v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    if-eq v4, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x3e7

    .line 40
    .line 41
    if-eq v4, v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v3, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v9, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    move v6, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v9, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    move v5, v0

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :try_start_0
    sget-object v0, Lnet/blip/libblip/frontend/MessagingStatus;->l:Lnet/blip/libblip/frontend/MessagingStatus$Companion$ADAPTER$1;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v9, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 98
    .line 99
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 100
    .line 101
    int-to-long v10, v0

    .line 102
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v4, v9, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    move-object p1, v3

    .line 115
    new-instance v3, Lnet/blip/libblip/frontend/Messaging;

    .line 116
    .line 117
    move-object v4, p0

    .line 118
    check-cast v4, Lnet/blip/libblip/frontend/MessagingStatus;

    .line 119
    .line 120
    move-object v9, p1

    .line 121
    check-cast v9, Lnet/blip/libblip/frontend/Err;

    .line 122
    .line 123
    invoke-direct/range {v3 .. v10}, Lnet/blip/libblip/frontend/Messaging;-><init>(Lnet/blip/libblip/frontend/MessagingStatus;ZZJLnet/blip/libblip/frontend/Err;Lokio/ByteString;)V

    .line 124
    .line 125
    .line 126
    return-object v3
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Messaging;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 10
    .line 11
    sget-object v0, Lnet/blip/libblip/frontend/MessagingStatus;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lnet/blip/libblip/frontend/MessagingStatus;->l:Lnet/blip/libblip/frontend/MessagingStatus$Companion$ADAPTER$1;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 22
    .line 23
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-wide v0, p2, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    cmp-long p0, v0, v2

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    const/4 p0, 0x4

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 61
    .line 62
    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p0, p2, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 70
    .line 71
    const/16 v1, 0x3e7

    .line 72
    .line 73
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Messaging;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 21
    .line 22
    const/16 v1, 0x3e7

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-wide v0, p2, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long p0, v0, v2

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x4

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 41
    .line 42
    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 46
    .line 47
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p0, p2, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 72
    .line 73
    sget-object p2, Lnet/blip/libblip/frontend/MessagingStatus;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 74
    .line 75
    if-eq p0, p2, :cond_4

    .line 76
    .line 77
    sget-object p2, Lnet/blip/libblip/frontend/MessagingStatus;->l:Lnet/blip/libblip/frontend/MessagingStatus$Companion$ADAPTER$1;

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Messaging;

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
    iget-object v0, p1, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 15
    .line 16
    sget-object v1, Lnet/blip/libblip/frontend/MessagingStatus;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lnet/blip/libblip/frontend/MessagingStatus;->l:Lnet/blip/libblip/frontend/MessagingStatus$Companion$ADAPTER$1;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr p0, v0

    .line 28
    :cond_0
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Messaging;->n:Z

    .line 29
    .line 30
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    :cond_1
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :cond_2
    iget-wide v0, p1, Lnet/blip/libblip/frontend/Messaging;->p:J

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    cmp-long v2, v0, v2

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 62
    .line 63
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr p0, v0

    .line 68
    :cond_3
    iget-object p1, p1, Lnet/blip/libblip/frontend/Messaging;->q:Lnet/blip/libblip/frontend/Err;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 73
    .line 74
    const/16 v1, 0x3e7

    .line 75
    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    add-int/2addr p1, p0

    .line 81
    return p1

    .line 82
    :cond_4
    return p0
.end method
