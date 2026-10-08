.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object p0, p1

    .line 5
    check-cast p0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    move-object v2, v1

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->h()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    packed-switch v3, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->r()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_1

    .line 34
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :pswitch_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    :pswitch_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->m()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_1

    .line 58
    :pswitch_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/squareup/wire/DoubleProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    goto :goto_1

    .line 65
    :pswitch_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->f(I)Lokio/ByteString;

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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
    const/4 p0, 0x0

    .line 9
    :goto_0
    move-object v2, p0

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, -0x1

    .line 15
    if-eq v3, v4, :cond_0

    .line 16
    .line 17
    packed-switch v3, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->s()V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_1

    .line 31
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_1

    .line 38
    :pswitch_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_1

    .line 55
    :pswitch_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/squareup/wire/DoubleProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_1

    .line 62
    :pswitch_5
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of p0, p2, Ljava/lang/Number;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    instance-of p0, p2, Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    instance-of p0, p2, Ljava/util/Map;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    const/4 p0, 0x5

    .line 61
    check-cast p2, Ljava/util/Map;

    .line 62
    .line 63
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 64
    .line 65
    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    instance-of p0, p2, Ljava/util/List;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    const-string p0, "unexpected struct value: "

    .line 81
    .line 82
    invoke-static {p2, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of p0, p2, Ljava/lang/Number;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p2, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    instance-of p0, p2, Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    instance-of p0, p2, Ljava/util/Map;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    const/4 p0, 0x5

    .line 61
    check-cast p2, Ljava/util/Map;

    .line 62
    .line 63
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 64
    .line 65
    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    instance-of p0, p2, Ljava/util/List;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    const-string p0, "unexpected struct value: "

    .line 81
    .line 82
    invoke-static {p2, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    shl-int/lit8 p2, p2, 0x3

    .line 12
    .line 13
    iget v0, v0, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 14
    .line 15
    or-int/2addr p2, v0

    .line 16
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->h(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    sub-int/2addr p3, v0

    .line 18
    invoke-virtual {p1, p3}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    shl-int/lit8 p2, p2, 0x3

    .line 27
    .line 28
    iget p0, p0, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 29
    .line 30
    or-int/2addr p0, p2

    .line 31
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;->i(ILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    instance-of p0, p1, Ljava/lang/Number;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    instance-of p0, p1, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_3
    instance-of p0, p1, Ljava/util/Map;

    .line 58
    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x5

    .line 62
    check-cast p1, Ljava/util/Map;

    .line 63
    .line 64
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 65
    .line 66
    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_4
    instance-of p0, p1, Ljava/util/List;

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :cond_5
    const-string p0, "unexpected struct value: "

    .line 84
    .line 85
    invoke-static {p1, p0}, Lio/sentry/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return p0
.end method

.method public final i(ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->h(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    sget-object p2, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 8
    .line 9
    shl-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    invoke-static {p1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    add-int/2addr p2, p1

    .line 20
    add-int/2addr p2, p0

    .line 21
    return p2

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
