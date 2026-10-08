.class public final Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Onboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/Onboarding;",
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
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 p0, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v4, v2

    .line 11
    move v5, v4

    .line 12
    move v6, v5

    .line 13
    move v7, v6

    .line 14
    move v8, v7

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_0
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    move v8, v2

    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    move v7, v2

    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    move v6, v2

    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    move v5, v2

    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    move v4, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    sget-object p0, Lnet/blip/libblip/frontend/Onboarding$Step;->p:Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-instance v2, Lnet/blip/libblip/frontend/Onboarding;

    .line 106
    .line 107
    move-object v3, p0

    .line 108
    check-cast v3, Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 109
    .line 110
    invoke-direct/range {v2 .. v9}, Lnet/blip/libblip/frontend/Onboarding;-><init>(Lnet/blip/libblip/frontend/Onboarding$Step;ZZZZZLokio/ByteString;)V

    .line 111
    .line 112
    .line 113
    return-object v2

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x64
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
    check-cast p2, Lnet/blip/libblip/frontend/Onboarding;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lnet/blip/libblip/frontend/Onboarding$Step;->p:Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 20
    .line 21
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x64

    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x65

    .line 39
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
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    const/16 v1, 0x66

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    const/16 v1, 0x67

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    const/16 v1, 0x68

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/Onboarding;

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
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 17
    .line 18
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x68

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x67

    .line 36
    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x66

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    const/16 v1, 0x65

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    const/16 v1, 0x64

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p0, p2, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    sget-object p2, Lnet/blip/libblip/frontend/Onboarding$Step;->p:Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Onboarding;

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
    iget-object v0, p1, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v1, Lnet/blip/libblip/frontend/Onboarding$Step;->p:Lnet/blip/libblip/frontend/Onboarding$Step$Companion$ADAPTER$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr p0, v0

    .line 26
    :cond_0
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 27
    .line 28
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v2, 0x64

    .line 33
    .line 34
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :cond_1
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/16 v2, 0x65

    .line 43
    .line 44
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :cond_2
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/16 v2, 0x66

    .line 53
    .line 54
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    :cond_3
    iget-boolean v0, p1, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/16 v2, 0x67

    .line 63
    .line 64
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    :cond_4
    iget-boolean p1, p1, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    const/16 v0, 0x68

    .line 73
    .line 74
    invoke-static {p1, v1, v0, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    :cond_5
    return p0
.end method
