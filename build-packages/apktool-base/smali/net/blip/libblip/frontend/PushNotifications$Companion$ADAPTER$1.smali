.class public final Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/PushNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/PushNotifications;",
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
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 5
    .line 6
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, -0x1

    .line 18
    if-eq v4, v5, :cond_3

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq v4, v5, :cond_2

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq v4, v5, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->k()Lokio/ByteString;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :try_start_0
    sget-object v5, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 54
    .line 55
    invoke-virtual {v5, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v5

    .line 61
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 62
    .line 63
    iget v5, v5, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 64
    .line 65
    int-to-long v7, v5

    .line 66
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {p1, v4, v6, v5}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v1, Lnet/blip/libblip/frontend/PushNotifications;

    .line 79
    .line 80
    check-cast p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 81
    .line 82
    invoke-direct {v1, p0, v3, v0, p1}, Lnet/blip/libblip/frontend/PushNotifications;-><init>(Lnet/blip/libblip/frontend/NotificationPermissionStatus;ILokio/ByteString;Lokio/ByteString;)V

    .line 83
    .line 84
    .line 85
    return-object v1
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PushNotifications;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/PushNotifications;->o:Lokio/ByteString;

    .line 10
    .line 11
    iget-object v0, p2, Lnet/blip/libblip/frontend/PushNotifications;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 12
    .line 13
    sget-object v1, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p2, Lnet/blip/libblip/frontend/PushNotifications;->n:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 33
    .line 34
    invoke-virtual {v2, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

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
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 46
    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/PushNotifications;

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
    iget-object p0, p2, Lnet/blip/libblip/frontend/PushNotifications;->o:Lokio/ByteString;

    .line 17
    .line 18
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget p0, p2, Lnet/blip/libblip/frontend/PushNotifications;->n:I

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p0, p2, Lnet/blip/libblip/frontend/PushNotifications;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 47
    .line 48
    sget-object p2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 49
    .line 50
    if-eq p0, p2, :cond_2

    .line 51
    .line 52
    sget-object p2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/PushNotifications;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lnet/blip/libblip/frontend/PushNotifications;->o:Lokio/ByteString;

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
    iget-object v1, p1, Lnet/blip/libblip/frontend/PushNotifications;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 17
    .line 18
    sget-object v2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

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
    iget p1, p1, Lnet/blip/libblip/frontend/PushNotifications;->n:I

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 40
    .line 41
    invoke-virtual {v2, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr v0, p1

    .line 46
    :cond_1
    sget-object p1, Lokio/ByteString;->m:Lokio/ByteString;

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-virtual {p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/2addr p0, v0

    .line 62
    return p0

    .line 63
    :cond_2
    return v0
.end method
