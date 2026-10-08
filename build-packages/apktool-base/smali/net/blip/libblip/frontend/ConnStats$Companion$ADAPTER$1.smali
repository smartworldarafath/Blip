.class public final Lnet/blip/libblip/frontend/ConnStats$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/ConnStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/ConnStats;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 13

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
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    move v7, p0

    .line 12
    move v8, v7

    .line 13
    move v9, v8

    .line 14
    move v10, v9

    .line 15
    move v11, v10

    .line 16
    :goto_0
    move-wide v5, v2

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p0, v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 25
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :pswitch_0
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    move v9, p0

    .line 44
    goto :goto_1

    .line 45
    :pswitch_1
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    move v8, p0

    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    move v11, p0

    .line 67
    goto :goto_1

    .line 68
    :pswitch_3
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    move v10, p0

    .line 79
    goto :goto_1

    .line 80
    :pswitch_4
    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    move v7, p0

    .line 91
    goto :goto_1

    .line 92
    :pswitch_5
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/squareup/wire/DoubleProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    new-instance v4, Lnet/blip/libblip/frontend/ConnStats;

    .line 110
    .line 111
    invoke-direct/range {v4 .. v12}, Lnet/blip/libblip/frontend/ConnStats;-><init>(DZZZZILokio/ByteString;)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
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
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/ConnStats;

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
    iget-wide v0, p2, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 33
    .line 34
    invoke-virtual {v1, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 38
    .line 39
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x2

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
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    const/4 v1, 0x5

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
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    const/4 v1, 0x3

    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget p0, p2, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    const/4 v0, 0x4

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 97
    .line 98
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/ConnStats;

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
    iget-wide v0, p2, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 16
    .line 17
    .line 18
    iget p0, p2, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 28
    .line 29
    invoke-virtual {v3, p1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 33
    .line 34
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x6

    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v2, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x5

    .line 63
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v2, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    const/4 p2, 0x2

    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v2, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    const/4 p0, 0x1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 104
    .line 105
    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/ConnStats;

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
    iget-wide v0, p1, Lnet/blip/libblip/frontend/ConnStats;->m:D

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr p0, v0

    .line 44
    :cond_0
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/ConnStats;->n:Z

    .line 45
    .line 46
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    :cond_1
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/ConnStats;->o:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :cond_2
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/ConnStats;->p:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const/4 v2, 0x6

    .line 69
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    :cond_3
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/ConnStats;->q:Z

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    :cond_4
    iget p1, p1, Lnet/blip/libblip/frontend/ConnStats;->r:I

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    const/4 v0, 0x4

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 92
    .line 93
    invoke-virtual {v1, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    add-int/2addr p1, p0

    .line 98
    return p1

    .line 99
    :cond_5
    return p0
.end method
