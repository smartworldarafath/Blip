.class public final synthetic Ln8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/notifications/FirebaseNotificationService;

.field public final synthetic l:Lnet/blip/libblip/Peer;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/notifications/FirebaseNotificationService;Lnet/blip/libblip/Peer;I)V
    .locals 0

    .line 1
    iput p3, p0, Ln8;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ln8;->k:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 4
    .line 5
    iput-object p2, p0, Ln8;->l:Lnet/blip/libblip/Peer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ln8;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ln8;->l:Lnet/blip/libblip/Peer;

    .line 5
    .line 6
    iget-object p0, p0, Ln8;->k:Lnet/blip/android/notifications/FirebaseNotificationService;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lnet/blip/android/notifications/FirebaseNotificationService;->v:I

    .line 12
    .line 13
    invoke-virtual {v2}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Transfer declined on "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget v0, Lnet/blip/android/notifications/FirebaseNotificationService;->v:I

    .line 40
    .line 41
    invoke-virtual {v2}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "Transfer accepted on "

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
