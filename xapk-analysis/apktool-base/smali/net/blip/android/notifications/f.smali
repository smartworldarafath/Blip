.class public final synthetic Lnet/blip/android/notifications/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/Peer;

.field public final synthetic k:Lbsarchive/Metadata;

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/core/app/NotificationCompat$Action;

.field public final synthetic n:Landroidx/core/app/NotificationCompat$Action;

.field public final synthetic o:Landroid/app/PendingIntent;

.field public final synthetic p:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Lbsarchive/Metadata;ZLandroidx/core/app/NotificationCompat$Action;Landroidx/core/app/NotificationCompat$Action;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/notifications/f;->j:Lnet/blip/libblip/Peer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/notifications/f;->k:Lbsarchive/Metadata;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/blip/android/notifications/f;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lnet/blip/android/notifications/f;->m:Landroidx/core/app/NotificationCompat$Action;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/blip/android/notifications/f;->n:Landroidx/core/app/NotificationCompat$Action;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/blip/android/notifications/f;->o:Landroid/app/PendingIntent;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/blip/android/notifications/f;->p:Landroid/app/PendingIntent;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 7
    .line 8
    iget-object v1, p0, Lnet/blip/android/notifications/f;->j:Lnet/blip/libblip/Peer;

    .line 9
    .line 10
    instance-of v2, v1, Lnet/blip/libblip/Peer$User;

    .line 11
    .line 12
    iget-object v3, p0, Lnet/blip/android/notifications/f;->k:Lbsarchive/Metadata;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    check-cast v2, Lnet/blip/libblip/Peer$User;

    .line 18
    .line 19
    iget-object v2, v2, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 20
    .line 21
    iget-object v2, v2, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v2, v1, Lnet/blip/libblip/Peer$Device;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-static {v3}, Lnet/blip/libblip/Metadata_DerivedKt;->d(Lbsarchive/Metadata;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-static {v4, v5}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v3, Lbsarchive/Metadata;->m:Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {v1}, Lnet/blip/shared/StringsKt;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f08013c

    .line 58
    .line 59
    .line 60
    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    sget v1, Lnet/blip/android/notifications/Colors;->a:I

    .line 63
    .line 64
    iput v1, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 65
    .line 66
    iget-boolean v1, p0, Lnet/blip/android/notifications/f;->l:Z

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    iget-object v2, p0, Lnet/blip/android/notifications/f;->m:Landroidx/core/app/NotificationCompat$Action;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lnet/blip/android/notifications/f;->n:Landroidx/core/app/NotificationCompat$Action;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lnet/blip/android/notifications/f;->o:Landroid/app/PendingIntent;

    .line 81
    .line 82
    iput-object v2, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 83
    .line 84
    :cond_1
    iget-object p0, p0, Lnet/blip/android/notifications/f;->p:Landroid/app/PendingIntent;

    .line 85
    .line 86
    iput-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->d(Z)V

    .line 89
    .line 90
    .line 91
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method
