.class public final synthetic Luh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p6, p0, Luh;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Luh;->k:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Luh;->l:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Luh;->m:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p4, p0, Luh;->n:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p5, p0, Luh;->o:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Luh;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, " deleted"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x4

    .line 10
    iget-object v6, p0, Luh;->o:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v7, p0, Luh;->n:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v8, p0, Luh;->m:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    iget-object v9, p0, Luh;->l:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Luh;->k:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    new-instance v0, Lnet/blip/libblip/event/TransferRemoveRequested;

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    invoke-direct {v0, v5, v9, v10}, Lnet/blip/libblip/event/TransferRemoveRequested;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-interface {v8, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v7, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :pswitch_0
    new-instance v0, Lnet/blip/libblip/event/TransferRemoveRequested;

    .line 48
    .line 49
    invoke-direct {v0, v5, v9, v2}, Lnet/blip/libblip/event/TransferRemoveRequested;-><init>(ILjava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-interface {v8, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v7, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
