.class public final synthetic Lk5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lk5;->j:I

    .line 2
    .line 3
    iput-object p3, p0, Lk5;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lk5;->l:I

    .line 6
    .line 7
    iput-object p4, p0, Lk5;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lk5;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lk5;->m:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lk5;->l:I

    .line 6
    .line 7
    iget-object p0, p0, Lk5;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 15
    .line 16
    invoke-interface {p0, v2, v1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 21
    .line 22
    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v2, v1, v0}, Landroidx/activity/result/ActivityResultRegistry;->b(IILandroid/content/Intent;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 47
    .line 48
    check-cast v1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;

    .line 49
    .line 50
    iget-object v0, v1, Landroidx/activity/result/contract/ActivityResultContract$SynchronousResult;->a:Ljava/io/Serializable;

    .line 51
    .line 52
    invoke-virtual {p0, v2, v0}, Landroidx/activity/result/ActivityResultRegistry;->a(ILjava/io/Serializable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
