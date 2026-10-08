.class public final synthetic Lp8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp8;->b:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lp8;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lp8;->b:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroidx/core/app/PictureInPictureModeChangedInfo;

    .line 10
    .line 11
    iget-boolean p1, p1, Landroidx/core/app/PictureInPictureModeChangedInfo;->a:Z

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->d(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p1, Landroidx/core/app/MultiWindowModeChangedInfo;

    .line 18
    .line 19
    iget-boolean p1, p1, Landroidx/core/app/MultiWindowModeChangedInfo;->a:Z

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->c(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x50

    .line 32
    .line 33
    if-ne p1, v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->b(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->a(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
