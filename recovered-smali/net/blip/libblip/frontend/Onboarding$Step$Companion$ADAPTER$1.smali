.class public final Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Onboarding$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Onboarding$Step;",
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
    sget-object p0, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

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
    sget-object v3, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :try_start_0
    sget-object v5, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->l:Lnet/blip/libblip/frontend/Onboarding$Step$Kind$Companion$ADAPTER$1;

    .line 53
    .line 54
    invoke-virtual {v5, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v5

    .line 60
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 61
    .line 62
    iget v5, v5, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 63
    .line 64
    int-to-long v7, v5

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p1, v4, v6, v5}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 78
    .line 79
    check-cast p0, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 80
    .line 81
    check-cast v3, Lnet/blip/libblip/frontend/Err;

    .line 82
    .line 83
    invoke-direct {v0, p0, v2, v3, p1}, Lnet/blip/libblip/frontend/Onboarding$Step;-><init>(Lnet/blip/libblip/frontend/Onboarding$Step$Kind;ZLnet/blip/libblip/frontend/Err;Lokio/ByteString;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Onboarding$Step;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 10
    .line 11
    sget-object v0, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->l:Lnet/blip/libblip/frontend/Onboarding$Step$Kind$Companion$ADAPTER$1;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->n:Z

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->o:Lnet/blip/libblip/frontend/Err;

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
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
    check-cast p2, Lnet/blip/libblip/frontend/Onboarding$Step;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->o:Lnet/blip/libblip/frontend/Err;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->n:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 36
    .line 37
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 41
    .line 42
    sget-object p2, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 43
    .line 44
    if-eq p0, p2, :cond_2

    .line 45
    .line 46
    sget-object p2, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->l:Lnet/blip/libblip/frontend/Onboarding$Step$Kind$Companion$ADAPTER$1;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Onboarding$Step;

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
    iget-object v0, p1, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 15
    .line 16
    sget-object v1, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lnet/blip/libblip/frontend/Onboarding$Step$Kind;->l:Lnet/blip/libblip/frontend/Onboarding$Step$Kind$Companion$ADAPTER$1;

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
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Onboarding$Step;->n:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

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
    iget-object p1, p1, Lnet/blip/libblip/frontend/Onboarding$Step;->o:Lnet/blip/libblip/frontend/Err;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget-object v0, Lnet/blip/libblip/frontend/Err;->o:Lnet/blip/libblip/frontend/Err$Companion$ADAPTER$1;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/2addr p1, p0

    .line 51
    return p1

    .line 52
    :cond_2
    return p0
.end method
