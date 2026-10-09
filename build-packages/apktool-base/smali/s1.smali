.class public final synthetic Ls1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/window/PopupLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/PopupLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ls1;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Ls1;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/window/PopupLayout;->N:Lwc;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    new-instance v0, Lq0;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v0, v2, p1}, Lq0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    return-object v1

    .line 52
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 53
    .line 54
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 55
    .line 56
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->L()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->q(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 68
    .line 69
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/PopupLayout;->setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/compose/ui/window/PopupLayout;->r()V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
