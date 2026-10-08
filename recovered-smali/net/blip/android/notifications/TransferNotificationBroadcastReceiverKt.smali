.class public abstract Lnet/blip/android/notifications/TransferNotificationBroadcastReceiverKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ZLandroid/content/Intent;)Lnet/blip/libblip/event/TransferRespondFromNotification;
    .locals 6

    .line 1
    sget-object v0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    sget-object v2, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->g:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-static {v2}, Lnet/blip/libblip/PeerId_DerivedKt;->a(Ljava/lang/String;)Lnet/blip/libblip/PeerId;

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    sget-object v3, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->i:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    :try_start_1
    sget-object v3, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    array-length v4, p1

    .line 36
    new-instance v5, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 37
    .line 38
    invoke-direct {v5, v4, p1}, Lcom/squareup/wire/ByteArrayProtoReader32;-><init>(I[B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lbsarchive/Metadata;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    new-instance v1, Lnet/blip/libblip/event/TransferRespondFromNotification;

    .line 48
    .line 49
    new-instance v3, Lnet/blip/libblip/frontend/TransferNotificationResponse;

    .line 50
    .line 51
    sget-object v4, Lokio/ByteString;->m:Lokio/ByteString;

    .line 52
    .line 53
    invoke-direct {v3, p0, v2, p1, v4}, Lnet/blip/libblip/frontend/TransferNotificationResponse;-><init>(ZLnet/blip/libblip/PeerId;Lbsarchive/Metadata;Lokio/ByteString;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v0, v3, v4}, Lnet/blip/libblip/event/TransferRespondFromNotification;-><init>(Ljava/lang/String;Lnet/blip/libblip/frontend/TransferNotificationResponse;Lokio/ByteString;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "parsing KEY_EXPECTED_STUB bytes: "

    .line 66
    .line 67
    invoke-static {p1, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_0
    const-string p0, "Intent.KEY_EXPECTED_STUB missing or not ByteArray"

    .line 76
    .line 77
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :catch_1
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, "parsing Intent.KEY_SENDER_ID: "

    .line 87
    .line 88
    invoke-static {p1, p0}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_1
    const-string p0, "Intent.KEY_SENDER_ID missing or not String"

    .line 97
    .line 98
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_2
    const-string p0, "Intent.KEY_TRANSFER_ID missing or not String"

    .line 103
    .line 104
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v1
.end method
