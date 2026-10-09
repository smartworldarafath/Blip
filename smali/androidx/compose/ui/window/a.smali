.class public final synthetic Landroidx/compose/ui/window/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/window/DialogWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/DialogWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/window/a;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/window/a;->k:Landroidx/compose/ui/window/DialogWrapper;

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
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/window/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/window/a;->k:Landroidx/compose/ui/window/DialogWrapper;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->p:Landroidx/compose/ui/window/DialogProperties;

    .line 11
    .line 12
    iget-boolean p1, p1, Landroidx/compose/ui/window/DialogProperties;->a:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->o:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
