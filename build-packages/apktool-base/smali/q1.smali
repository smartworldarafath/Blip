.class public final synthetic Lq1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p6, p0, Lq1;->j:I

    iput-object p1, p0, Lq1;->k:Ljava/lang/Object;

    iput-object p2, p0, Lq1;->l:Ljava/lang/Object;

    iput-object p3, p0, Lq1;->m:Ljava/lang/Object;

    iput-object p4, p0, Lq1;->n:Ljava/lang/Object;

    iput-object p5, p0, Lq1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/frontend/Transfer;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lq1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq1;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lq1;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lq1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lq1;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lq1;->k:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lq1;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lq1;->k:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lq1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lq1;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lq1;->m:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lq1;->l:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p0, Lnet/blip/libblip/frontend/Transfer;

    .line 19
    .line 20
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    check-cast v2, Landroid/content/Context;

    .line 27
    .line 28
    iget-object p0, p0, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 29
    .line 30
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Status;->p:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 31
    .line 32
    if-ne p0, v0, :cond_0

    .line 33
    .line 34
    new-instance p0, Lnet/blip/libblip/event/TransferDeclineRequested;

    .line 35
    .line 36
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 37
    .line 38
    invoke-direct {p0, v4, v0}, Lnet/blip/libblip/event/TransferDeclineRequested;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lnet/blip/libblip/event/TransferCancellationRequested;

    .line 46
    .line 47
    invoke-direct {p0, v4}, Lnet/blip/libblip/event/TransferCancellationRequested;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "Transfer cancelled"

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {v2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_0
    check-cast v2, Landroid/content/Context;

    .line 69
    .line 70
    check-cast p0, Lnet/blip/libblip/PeerId;

    .line 71
    .line 72
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    check-cast v4, Landroidx/navigation/NavHostController;

    .line 75
    .line 76
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lnet/blip/libblip/PeerId_DerivedKt;->c(Lnet/blip/libblip/PeerId;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    new-instance v0, Lnet/blip/libblip/event/RemoveContact;

    .line 93
    .line 94
    iget-object p0, p0, Lnet/blip/libblip/PeerId;->m:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lnet/blip/libblip/event/RemoveContact;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    new-instance v0, Lnet/blip/libblip/event/RemoveDevice;

    .line 104
    .line 105
    iget-object p0, p0, Lnet/blip/libblip/PeerId;->n:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lnet/blip/libblip/event/RemoveDevice;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {v4}, Landroidx/navigation/NavController;->c()V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :pswitch_1
    check-cast v2, Landroidx/compose/ui/window/PopupLayout;

    .line 118
    .line 119
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 120
    .line 121
    check-cast v5, Landroidx/compose/ui/window/PopupProperties;

    .line 122
    .line 123
    check-cast v4, Ljava/lang/String;

    .line 124
    .line 125
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 126
    .line 127
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 128
    .line 129
    invoke-virtual {v2, p0, v5, v4, v3}, Landroidx/compose/ui/window/PopupLayout;->o(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 130
    .line 131
    .line 132
    return-object v1

    .line 133
    :pswitch_2
    check-cast v2, Landroid/content/Context;

    .line 134
    .line 135
    check-cast p0, Lnet/blip/libblip/Peer;

    .line 136
    .line 137
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 138
    .line 139
    check-cast v4, Lnet/blip/libblip/User;

    .line 140
    .line 141
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 142
    .line 143
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 144
    .line 145
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lnet/blip/libblip/Peer;->c()Lnet/blip/libblip/PeerId;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->b(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, v4, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    return-object v1

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
