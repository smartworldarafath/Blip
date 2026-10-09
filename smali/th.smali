.class public final synthetic Lth;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lth;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lth;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p2, p0, Lth;->l:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lth;->m:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p4, p0, Lth;->n:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lth;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Transfers deleted"

    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    iget-object v5, p0, Lth;->n:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iget-object v6, p0, Lth;->m:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    iget-object v7, p0, Lth;->l:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p0, p0, Lth;->k:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Ljava/lang/String;

    .line 41
    .line 42
    new-instance v8, Lnet/blip/libblip/event/TransferRemoveRequested;

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-direct {v8, v4, v6, v9}, Lnet/blip/libblip/event/TransferRemoveRequested;-><init>(ILjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v5, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v7, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_0
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/lang/String;

    .line 86
    .line 87
    new-instance v8, Lnet/blip/libblip/event/TransferRemoveRequested;

    .line 88
    .line 89
    invoke-direct {v8, v4, v6, v2}, Lnet/blip/libblip/event/TransferRemoveRequested;-><init>(ILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v5, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v7, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
