.class public final synthetic Lf2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf2;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lf2;->k:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

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
    iget v0, p0, Lf2;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lf2;->k:Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->e:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 13
    .line 14
    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->d:Ld;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Lkotlin/jvm/functions/Function2;)Lp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->h:Lp;

    .line 21
    .line 22
    new-instance p1, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt$platformTextContextMenuToolbarProvider$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v1

    .line 36
    :pswitch_1
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ActionMode;->invalidate()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v1

    .line 44
    :pswitch_2
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->a:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-ne v0, v2, :cond_3

    .line 65
    .line 66
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    new-instance v0, Lq0;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v0, v2, p1}, Lq0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    return-object v1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
