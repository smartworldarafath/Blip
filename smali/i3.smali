.class public final synthetic Li3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p2, p0, Li3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Li3;->k:Landroidx/navigation/NavHostController;

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
    iget v0, p0, Li3;->j:I

    .line 2
    .line 3
    const-string v1, "help/sendToOtherPeople"

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object p0, p0, Li3;->k:Landroidx/navigation/NavHostController;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :pswitch_0
    const-string v0, "settings/profile"

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :pswitch_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :pswitch_2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :pswitch_3
    const-string v0, "help/sendToYourDevices"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_4
    invoke-static {p0, v1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :pswitch_5
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->d()Z

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :pswitch_7
    invoke-virtual {p0}, Landroidx/navigation/NavController;->d()Z

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :pswitch_8
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :pswitch_9
    invoke-static {p0, v1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_a
    invoke-virtual {p0}, Landroidx/navigation/NavController;->c()V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
