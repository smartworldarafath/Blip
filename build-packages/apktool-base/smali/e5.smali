.class public final synthetic Le5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Le5;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Le5;->k:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Le5;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Le5;->k:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-static {p0}, Landroidx/activity/ComponentActivity;->h(Landroidx/activity/ComponentActivity;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
