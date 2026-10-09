.class public abstract Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lbsarchive/Metadata;Lnet/blip/libblip/PeerId;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->g:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p5}, Lnet/blip/libblip/PeerId_DerivedKt;->b(Lnet/blip/libblip/PeerId;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    sget-object p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    sget-object p0, Lnet/blip/android/notifications/TransferNotificationBroadcastReceiver;->i:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p4, Lcom/squareup/wire/Message;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 37
    .line 38
    new-instance p2, Lokio/Buffer;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance p3, Lcom/squareup/wire/ReverseProtoWriter;

    .line 47
    .line 48
    invoke-direct {p3}, Lcom/squareup/wire/ReverseProtoWriter;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3, p4}, Lcom/squareup/wire/ProtoAdapter;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/squareup/wire/ReverseProtoWriter;->a()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p3, Lcom/squareup/wire/ReverseProtoWriter;->a:Lokio/Buffer;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 60
    .line 61
    .line 62
    iget-wide p3, p2, Lokio/Buffer;->k:J

    .line 63
    .line 64
    invoke-virtual {p2, p3, p4}, Lokio/Buffer;->A(J)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    return-object v0
.end method
