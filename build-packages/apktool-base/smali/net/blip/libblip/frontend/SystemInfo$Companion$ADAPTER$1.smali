.class public final Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/SystemInfo;",
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
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 p0, 0x0

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    move v6, p0

    .line 14
    move v7, v6

    .line 15
    move-object v8, v2

    .line 16
    move-wide v9, v3

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p0, v2, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 26
    .line 27
    if-eq p0, v2, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-eq p0, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq p0, v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    if-eq p0, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->q()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    move-wide v9, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move-object v8, p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    move v7, p0

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    move v6, p0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    new-instance v5, Lnet/blip/libblip/frontend/SystemInfo;

    .line 93
    .line 94
    invoke-direct/range {v5 .. v11}, Lnet/blip/libblip/frontend/SystemInfo;-><init>(ZZLjava/lang/String;JLokio/ByteString;)V

    .line 95
    .line 96
    .line 97
    return-object v5
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/SystemInfo;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/SystemInfo;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v0, p2, Lnet/blip/libblip/frontend/SystemInfo;->m:Z

    .line 12
    .line 13
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p2, Lnet/blip/libblip/frontend/SystemInfo;->n:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const-string v0, ""

    .line 38
    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-wide v0, p2, Lnet/blip/libblip/frontend/SystemInfo;->p:J

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmp-long p0, v0, v2

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    const/4 p0, 0x4

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 65
    .line 66
    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

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
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/SystemInfo;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/SystemInfo;->o:Ljava/lang/String;

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
    iget-wide v0, p2, Lnet/blip/libblip/frontend/SystemInfo;->p:J

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const-string v0, ""

    .line 37
    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/SystemInfo;->n:Z

    .line 51
    .line 52
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/SystemInfo;->m:Z

    .line 65
    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/SystemInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/SystemInfo;->o:Ljava/lang/String;

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
    iget-boolean v1, p1, Lnet/blip/libblip/frontend/SystemInfo;->m:Z

    .line 17
    .line 18
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v1, v2, v3, v0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    iget-boolean v1, p1, Lnet/blip/libblip/frontend/SystemInfo;->n:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v1, v2, v3, v0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :cond_1
    const-string v1, ""

    .line 37
    .line 38
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/2addr v0, p0

    .line 52
    :cond_2
    iget-wide p0, p1, Lnet/blip/libblip/frontend/SystemInfo;->p:J

    .line 53
    .line 54
    const-wide/16 v1, 0x0

    .line 55
    .line 56
    cmp-long v1, p0, v1

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 66
    .line 67
    invoke-virtual {p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/2addr p0, v0

    .line 72
    return p0

    .line 73
    :cond_3
    return v0
.end method
