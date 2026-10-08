.class public final Lnet/blip/libblip/Device$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/Device;",
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
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v6, v0

    .line 15
    move-object v5, v3

    .line 16
    move-object v7, v5

    .line 17
    move v9, v4

    .line 18
    move-object v4, v6

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v0, -0x1

    .line 24
    if-eq v8, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x3e8

    .line 27
    .line 28
    if-eq v8, v0, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 31
    .line 32
    packed-switch v8, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

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
    move v9, v0

    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v5, v0

    .line 60
    goto :goto_0

    .line 61
    :pswitch_2
    sget-object v0, Lnet/blip/libblip/DeviceReach;->o:Lnet/blip/libblip/DeviceReach$Companion$ADAPTER$1;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lnet/blip/libblip/DeviceReach$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v3, v0

    .line 68
    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v6, v0

    .line 77
    goto :goto_0

    .line 78
    :pswitch_4
    :try_start_0
    sget-object v0, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 87
    .line 88
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 89
    .line 90
    int-to-long v11, v0

    .line 91
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v8, v10, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v4, v0

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lnet/blip/libblip/DeviceSettings;->n:Lnet/blip/libblip/DeviceSettings$Companion$ADAPTER$1;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lnet/blip/libblip/DeviceSettings$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    move-object v7, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    move-object p1, v3

    .line 121
    new-instance v3, Lnet/blip/libblip/Device;

    .line 122
    .line 123
    check-cast p0, Lnet/blip/libblip/DeviceKind;

    .line 124
    .line 125
    check-cast p1, Lnet/blip/libblip/DeviceReach;

    .line 126
    .line 127
    move-object v8, v5

    .line 128
    check-cast v8, Ljava/time/Instant;

    .line 129
    .line 130
    move-object v10, v7

    .line 131
    check-cast v10, Lnet/blip/libblip/DeviceSettings;

    .line 132
    .line 133
    move-object v5, p0

    .line 134
    move-object v7, p1

    .line 135
    invoke-direct/range {v3 .. v11}, Lnet/blip/libblip/Device;-><init>(Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Ljava/lang/String;Lnet/blip/libblip/DeviceReach;Ljava/time/Instant;ZLnet/blip/libblip/DeviceSettings;Lokio/ByteString;)V

    .line 136
    .line 137
    .line 138
    return-object v3

    .line 139
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
    .locals 5

    .line 1
    check-cast p2, Lnet/blip/libblip/Device;

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
    iget-object p0, p2, Lnet/blip/libblip/Device;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/Device;->m:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v3, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p2, Lnet/blip/libblip/Device;->n:Lnet/blip/libblip/DeviceKind;

    .line 28
    .line 29
    sget-object v2, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    sget-object v2, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-virtual {v2, p1, v4, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

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
    const/4 v0, 0x3

    .line 46
    invoke-virtual {v3, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p0, p2, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    sget-object v0, Lnet/blip/libblip/DeviceReach;->o:Lnet/blip/libblip/DeviceReach$Companion$ADAPTER$1;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object p0, p2, Lnet/blip/libblip/Device;->q:Ljava/time/Instant;

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 64
    .line 65
    const/4 v1, 0x5

    .line 66
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-boolean p0, p2, Lnet/blip/libblip/Device;->r:Z

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 79
    .line 80
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object p0, p2, Lnet/blip/libblip/Device;->s:Lnet/blip/libblip/DeviceSettings;

    .line 84
    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    sget-object v0, Lnet/blip/libblip/DeviceSettings;->n:Lnet/blip/libblip/DeviceSettings$Companion$ADAPTER$1;

    .line 88
    .line 89
    const/16 v1, 0x3e8

    .line 90
    .line 91
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lnet/blip/libblip/Device;

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
    iget-object p0, p2, Lnet/blip/libblip/Device;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/Device;->o:Ljava/lang/String;

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
    iget-object v1, p2, Lnet/blip/libblip/Device;->s:Lnet/blip/libblip/DeviceSettings;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v2, Lnet/blip/libblip/DeviceSettings;->n:Lnet/blip/libblip/DeviceSettings$Companion$ADAPTER$1;

    .line 25
    .line 26
    const/16 v3, 0x3e8

    .line 27
    .line 28
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v1, p2, Lnet/blip/libblip/Device;->r:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 41
    .line 42
    invoke-virtual {v3, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p2, Lnet/blip/libblip/Device;->q:Ljava/time/Instant;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 50
    .line 51
    const/4 v3, 0x5

    .line 52
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, p2, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sget-object v2, Lnet/blip/libblip/DeviceReach;->o:Lnet/blip/libblip/DeviceReach$Companion$ADAPTER$1;

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-virtual {v2, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    const-string v1, ""

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-virtual {v3, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p2, p2, Lnet/blip/libblip/Device;->n:Lnet/blip/libblip/DeviceKind;

    .line 80
    .line 81
    sget-object v0, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 82
    .line 83
    if-eq p2, v0, :cond_5

    .line 84
    .line 85
    sget-object v0, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    invoke-virtual {v0, p1, v2, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_6

    .line 96
    .line 97
    const/4 p2, 0x1

    .line 98
    invoke-virtual {v3, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lnet/blip/libblip/Device;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/Device;->o:Ljava/lang/String;

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
    iget-object v1, p1, Lnet/blip/libblip/Device;->m:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v4, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_0
    iget-object v1, p1, Lnet/blip/libblip/Device;->n:Lnet/blip/libblip/DeviceKind;

    .line 35
    .line 36
    sget-object v3, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 37
    .line 38
    if-eq v1, v3, :cond_1

    .line 39
    .line 40
    sget-object v3, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    invoke-virtual {v3, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    invoke-virtual {v4, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr v0, p0

    .line 60
    :cond_2
    iget-object p0, p1, Lnet/blip/libblip/Device;->p:Lnet/blip/libblip/DeviceReach;

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    sget-object v1, Lnet/blip/libblip/DeviceReach;->o:Lnet/blip/libblip/DeviceReach$Companion$ADAPTER$1;

    .line 65
    .line 66
    const/4 v2, 0x4

    .line 67
    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    add-int/2addr v0, p0

    .line 72
    :cond_3
    iget-object p0, p1, Lnet/blip/libblip/Device;->q:Ljava/time/Instant;

    .line 73
    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 77
    .line 78
    const/4 v2, 0x5

    .line 79
    invoke-virtual {v1, v2, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    add-int/2addr v0, p0

    .line 84
    :cond_4
    iget-boolean p0, p1, Lnet/blip/libblip/Device;->r:Z

    .line 85
    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 89
    .line 90
    const/4 v2, 0x6

    .line 91
    invoke-static {p0, v1, v2, v0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :cond_5
    iget-object p0, p1, Lnet/blip/libblip/Device;->s:Lnet/blip/libblip/DeviceSettings;

    .line 96
    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    sget-object p1, Lnet/blip/libblip/DeviceSettings;->n:Lnet/blip/libblip/DeviceSettings$Companion$ADAPTER$1;

    .line 100
    .line 101
    const/16 v1, 0x3e8

    .line 102
    .line 103
    invoke-virtual {p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    add-int/2addr p0, v0

    .line 108
    return p0

    .line 109
    :cond_6
    return v0
.end method
