.class public final synthetic Lg9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/navigation/NavController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg9;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lg9;->k:Landroidx/navigation/NavController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lg9;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lg9;->k:Landroidx/navigation/NavController;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/navigation/NavInflater;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Landroidx/navigation/NavController;->f:Landroidx/navigation/NavController$onBackPressedCallback$1;

    .line 29
    .line 30
    iget-boolean v2, p0, Landroidx/navigation/NavController;->g:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/navigation/NavController;->a()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-le p0, v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->e(Z)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :pswitch_1
    const-string v0, "help/sendToYourDevices"

    .line 48
    .line 49
    invoke-static {p0, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_2
    const-string v0, "settings"

    .line 54
    .line 55
    invoke-static {p0, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
