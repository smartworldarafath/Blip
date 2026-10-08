.class public final synthetic Landroidx/compose/foundation/layout/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/ui/Modifier$Node;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/foundation/layout/d;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/layout/d;->l:Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/layout/d;->k:Landroidx/compose/ui/layout/Placeable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/d;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/compose/foundation/layout/d;->k:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/compose/foundation/layout/d;->l:Landroidx/compose/ui/Modifier$Node;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v4, Landroidx/compose/foundation/layout/PaddingNode;

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 16
    .line 17
    iget-boolean p0, v4, Landroidx/compose/foundation/layout/PaddingNode;->B:Z

    .line 18
    .line 19
    iget v0, v4, Landroidx/compose/foundation/layout/PaddingNode;->x:F

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iget v0, v4, Landroidx/compose/foundation/layout/PaddingNode;->y:F

    .line 28
    .line 29
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p1, v2, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iget v0, v4, Landroidx/compose/foundation/layout/PaddingNode;->y:F

    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v2, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object v3

    .line 51
    :pswitch_0
    check-cast v4, Landroidx/compose/foundation/layout/OffsetPxNode;

    .line 52
    .line 53
    move-object v5, p1

    .line 54
    check-cast v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 55
    .line 56
    iget-object p1, v4, Landroidx/compose/foundation/layout/OffsetPxNode;->x:Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 63
    .line 64
    iget-wide v0, p1, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 65
    .line 66
    iget-boolean p1, v4, Landroidx/compose/foundation/layout/OffsetPxNode;->y:Z

    .line 67
    .line 68
    iget-object v6, p0, Landroidx/compose/foundation/layout/d;->k:Landroidx/compose/ui/layout/Placeable;

    .line 69
    .line 70
    const-wide v7, 0xffffffffL

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/16 p0, 0x20

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    shr-long p0, v0, p0

    .line 80
    .line 81
    long-to-int p0, p0

    .line 82
    and-long/2addr v0, v7

    .line 83
    long-to-int p1, v0

    .line 84
    invoke-static {v5, v6, p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    shr-long p0, v0, p0

    .line 89
    .line 90
    long-to-int p0, p0

    .line 91
    and-long/2addr v0, v7

    .line 92
    long-to-int v8, v0

    .line 93
    const/4 v9, 0x0

    .line 94
    const/16 v10, 0xc

    .line 95
    .line 96
    move v7, p0

    .line 97
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-object v3

    .line 101
    :pswitch_1
    check-cast v4, Landroidx/compose/foundation/layout/OffsetNode;

    .line 102
    .line 103
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 104
    .line 105
    iget-boolean p0, v4, Landroidx/compose/foundation/layout/OffsetNode;->z:Z

    .line 106
    .line 107
    iget v0, v4, Landroidx/compose/foundation/layout/OffsetNode;->x:F

    .line 108
    .line 109
    if-eqz p0, :cond_2

    .line 110
    .line 111
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    iget v0, v4, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    .line 116
    .line 117
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-static {p1, v2, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    iget v0, v4, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    .line 130
    .line 131
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v2, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-object v3

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
