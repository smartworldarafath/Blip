.class public final synthetic Lnet/blip/android/notifications/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/notifications/NotificationFactory;

.field public final synthetic l:I

.field public final synthetic m:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/notifications/NotificationFactory;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/blip/android/notifications/b;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/notifications/b;->k:Lnet/blip/android/notifications/NotificationFactory;

    .line 8
    .line 9
    iput p2, p0, Lnet/blip/android/notifications/b;->l:I

    .line 10
    .line 11
    iput-object p3, p0, Lnet/blip/android/notifications/b;->m:Ljava/io/Serializable;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lnet/blip/android/notifications/b;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/blip/android/notifications/b;->m:Ljava/io/Serializable;

    iput-object p2, p0, Lnet/blip/android/notifications/b;->k:Lnet/blip/android/notifications/NotificationFactory;

    iput p3, p0, Lnet/blip/android/notifications/b;->l:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lnet/blip/android/notifications/b;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const v2, 0x7f08013c

    .line 6
    .line 7
    .line 8
    iget v3, p0, Lnet/blip/android/notifications/b;->l:I

    .line 9
    .line 10
    iget-object v4, p0, Lnet/blip/android/notifications/b;->k:Lnet/blip/android/notifications/NotificationFactory;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/android/notifications/b;->m:Ljava/io/Serializable;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lnet/blip/libblip/frontend/Transfer;

    .line 18
    .line 19
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lnet/blip/libblip/Transfer_DerivedKt;->b(Lnet/blip/libblip/frontend/Transfer;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-static {v5, v6}, Lnet/blip/shared/String_formatAsKt;->a(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->j(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->g(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "Processing content\u2026"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v3, p0}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 56
    .line 57
    .line 58
    sget p0, Lnet/blip/android/notifications/Colors;->a:I

    .line 59
    .line 60
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 63
    .line 64
    .line 65
    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 66
    .line 67
    iput v2, p0, Landroid/app/Notification;->icon:I

    .line 68
    .line 69
    return-object v1

    .line 70
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 71
    .line 72
    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-string v0, "Preparing transfer\u2026"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->f(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3, p0}, Lnet/blip/android/notifications/NotificationFactory;->a(ILjava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 87
    .line 88
    .line 89
    sget p0, Lnet/blip/android/notifications/Colors;->a:I

    .line 90
    .line 91
    iput p0, p1, Landroidx/core/app/NotificationCompat$Builder;->v:I

    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->e()V

    .line 94
    .line 95
    .line 96
    iget-object p0, p1, Landroidx/core/app/NotificationCompat$Builder;->A:Landroid/app/Notification;

    .line 97
    .line 98
    iput v2, p0, Landroid/app/Notification;->icon:I

    .line 99
    .line 100
    const/16 p0, 0x8

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->h(IZ)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x2

    .line 107
    invoke-virtual {p1, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->h(IZ)V

    .line 108
    .line 109
    .line 110
    iput v0, p1, Landroidx/core/app/NotificationCompat$Builder;->y:I

    .line 111
    .line 112
    iput v0, p1, Landroidx/core/app/NotificationCompat$Builder;->w:I

    .line 113
    .line 114
    return-object v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
