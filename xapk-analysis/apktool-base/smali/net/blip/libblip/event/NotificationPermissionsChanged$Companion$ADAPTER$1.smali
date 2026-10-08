.class public final Lnet/blip/libblip/event/NotificationPermissionsChanged$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/event/NotificationPermissionsChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/event/NotificationPermissionsChanged;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    :try_start_0
    sget-object v3, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 29
    .line 30
    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 31
    .line 32
    int-to-long v5, v3

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1, v2, v4, v3}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1, v2}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lnet/blip/libblip/event/NotificationPermissionsChanged;

    .line 50
    .line 51
    check-cast p0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lnet/blip/libblip/event/NotificationPermissionsChanged;-><init>(Lnet/blip/libblip/frontend/NotificationPermissionStatus;Lokio/ByteString;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lnet/blip/libblip/event/NotificationPermissionsChanged;

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
    iget-object p0, p2, Lnet/blip/libblip/event/NotificationPermissionsChanged;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 10
    .line 11
    sget-object v0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lnet/blip/libblip/event/NotificationPermissionsChanged;

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
    iget-object p0, p2, Lnet/blip/libblip/event/NotificationPermissionsChanged;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 17
    .line 18
    sget-object p2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 19
    .line 20
    if-eq p0, p2, :cond_0

    .line 21
    .line 22
    sget-object p2, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, p1, v0, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lnet/blip/libblip/event/NotificationPermissionsChanged;

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
    iget-object p1, p1, Lnet/blip/libblip/event/NotificationPermissionsChanged;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 15
    .line 16
    sget-object v0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->m:Lnet/blip/libblip/frontend/NotificationPermissionStatus;

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lnet/blip/libblip/frontend/NotificationPermissionStatus;->l:Lnet/blip/libblip/frontend/NotificationPermissionStatus$Companion$ADAPTER$1;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr p1, p0

    .line 28
    return p1

    .line 29
    :cond_0
    return p0
.end method
