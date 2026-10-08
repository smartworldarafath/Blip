.class public abstract Lnet/blip/libblip/DispatcherKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerId;Ljava/util/List;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lnet/blip/libblip/event/TransferCreateRequested;

    .line 28
    .line 29
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 30
    .line 31
    invoke-direct {v1, v0, p1, v2}, Lnet/blip/libblip/event/TransferCreateRequested;-><init>(Ljava/lang/String;Lnet/blip/libblip/PeerId;Lokio/ByteString;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Lnet/blip/libblip/event/TransferAddContentRequested;

    .line 44
    .line 45
    invoke-direct {v1, v0, p2, v2}, Lnet/blip/libblip/event/TransferAddContentRequested;-><init>(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    .line 53
    new-instance p2, Lnet/blip/libblip/event/TransferInviteRequested;

    .line 54
    .line 55
    invoke-direct {p2, v0, p1}, Lnet/blip/libblip/event/TransferInviteRequested;-><init>(Ljava/lang/String;Lnet/blip/libblip/PeerId;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    const-string p2, "TransferCreate"

    .line 62
    .line 63
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "transfer_id"

    .line 69
    .line 70
    invoke-virtual {v1, v3, v0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v3, "origin"

    .line 74
    .line 75
    invoke-virtual {v1, v3, p3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    const-string p3, "peer_user_id"

    .line 81
    .line 82
    iget-object v3, p1, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, p3, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p3, "peer_device_id"

    .line 88
    .line 89
    iget-object p1, p1, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, p3, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->b()Lkotlin/collections/builders/MapBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p3, Lnet/blip/libblip/event/InsertAnalyticsEvent;

    .line 99
    .line 100
    invoke-direct {p3, p2, p1, v2}, Lnet/blip/libblip/event/InsertAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string p1, "locations must not be empty"

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    new-instance p1, Lkotlin/Result$Failure;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method
