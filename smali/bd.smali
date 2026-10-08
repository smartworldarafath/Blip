.class public final synthetic Lbd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/Peer;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbd;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lbd;->k:Lnet/blip/libblip/Peer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lbd;->j:I

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    move v3, v5

    .line 26
    :cond_0
    and-int/2addr p2, v5

    .line 27
    move-object v8, p1

    .line 28
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v8, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/high16 p1, 0x42c00000    # 96.0f

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v9, 0x6

    .line 43
    const/16 v10, 0xa

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    iget-object v6, p0, Lbd;->k:Lnet/blip/libblip/Peer;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v4 .. v10}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object v2

    .line 57
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 58
    .line 59
    if-eq v0, v4, :cond_2

    .line 60
    .line 61
    move v3, v5

    .line 62
    :cond_2
    and-int/2addr p2, v5

    .line 63
    move-object v8, p1

    .line 64
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    invoke-virtual {v8, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    const/16 v10, 0xb

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    iget-object v6, p0, Lbd;->k:Lnet/blip/libblip/Peer;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static/range {v4 .. v10}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-object v2

    .line 88
    :pswitch_1
    and-int/lit8 v0, p2, 0x3

    .line 89
    .line 90
    if-eq v0, v4, :cond_4

    .line 91
    .line 92
    move v3, v5

    .line 93
    :cond_4
    and-int/2addr p2, v5

    .line 94
    move-object v8, p1

    .line 95
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 96
    .line 97
    invoke-virtual {v8, p2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    const/high16 p1, 0x42700000    # 60.0f

    .line 104
    .line 105
    invoke-static {v1, p1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const/4 v9, 0x6

    .line 110
    const/16 v10, 0xa

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    iget-object v6, p0, Lbd;->k:Lnet/blip/libblip/Peer;

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v4 .. v10}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-object v2

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
