.class public final synthetic Lv7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    iput p4, p0, Lv7;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv7;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lv7;->k:Z

    .line 10
    .line 11
    iput-object p3, p0, Lv7;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/runtime/MutableState;Lnet/blip/libblip/Peer;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lv7;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv7;->k:Z

    iput-object p2, p0, Lv7;->l:Ljava/lang/Object;

    iput-object p3, p0, Lv7;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 15
    const/4 p4, 0x2

    iput p4, p0, Lv7;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv7;->k:Z

    iput-object p2, p0, Lv7;->l:Ljava/lang/Object;

    iput-object p3, p0, Lv7;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lv7;->j:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lv7;->k:Z

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lv7;->m:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lv7;->l:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v5, Lnet/blip/libblip/PeerPickerViewModel;

    .line 16
    .line 17
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {v1, v5, v4, p1, p0}, Lnet/blip/android/ui/transfer/TransferCreationScreenKt;->a(ZLnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :pswitch_0
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    check-cast v4, Lnet/blip/libblip/Peer;

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    and-int/lit8 v0, p2, 0x3

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v0, v1, :cond_0

    .line 50
    .line 51
    move v0, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    and-int/2addr p2, v3

    .line 55
    move-object v10, p1

    .line 56
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 57
    .line 58
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    new-instance p1, Lbd;

    .line 75
    .line 76
    invoke-direct {p1, v4, v3}, Lbd;-><init>(Lnet/blip/libblip/Peer;I)V

    .line 77
    .line 78
    .line 79
    const p2, -0x3974a8dd

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    const/16 v11, 0xc00

    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 90
    .line 91
    iget-boolean v8, p0, Lv7;->k:Z

    .line 92
    .line 93
    invoke-static/range {v6 .. v12}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->a(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-object v2

    .line 101
    :pswitch_1
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 106
    .line 107
    check-cast p2, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/16 p0, 0x181

    .line 113
    .line 114
    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-static {v5, v1, v4, p1, p0}, Lnet/blip/shared/DisabledContentKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    .line 121
    return-object v2

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
