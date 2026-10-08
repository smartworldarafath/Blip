.class public final synthetic Lf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lf;->k:Landroidx/compose/ui/layout/Placeable;

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
    .locals 9

    .line 1
    iget v0, p0, Lf;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object p0, p0, Lf;->k:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 15
    .line 16
    .line 17
    return-object v3

    .line 18
    :pswitch_0
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 19
    .line 20
    .line 21
    return-object v3

    .line 22
    :pswitch_1
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 23
    .line 24
    .line 25
    return-object v3

    .line 26
    :pswitch_2
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :pswitch_3
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 31
    .line 32
    .line 33
    return-object v3

    .line 34
    :pswitch_4
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 35
    .line 36
    .line 37
    return-object v3

    .line 38
    :pswitch_5
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0, v2, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :pswitch_7
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :pswitch_8
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-eq v0, v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->d()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->d()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget v2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 74
    .line 75
    sub-int/2addr v0, v2

    .line 76
    int-to-long v5, v0

    .line 77
    const/16 v0, 0x20

    .line 78
    .line 79
    shl-long/2addr v5, v0

    .line 80
    invoke-static {p1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 81
    .line 82
    .line 83
    iget-wide v7, p0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 84
    .line 85
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    invoke-virtual {p0, v5, v6, v1, v4}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    invoke-static {p1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    .line 94
    .line 95
    .line 96
    iget-wide v5, p0, Landroidx/compose/ui/layout/Placeable;->n:J

    .line 97
    .line 98
    const-wide/16 v7, 0x0

    .line 99
    .line 100
    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->c(JJ)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-virtual {p0, v5, v6, v1, v4}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-object v3

    .line 108
    :pswitch_9
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 109
    .line 110
    .line 111
    return-object v3

    .line 112
    :pswitch_a
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :pswitch_b
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :pswitch_c
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 121
    .line 122
    .line 123
    return-object v3

    .line 124
    :pswitch_d
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 125
    .line 126
    .line 127
    return-object v3

    .line 128
    :pswitch_e
    invoke-static {p1, p0, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 129
    .line 130
    .line 131
    return-object v3

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
