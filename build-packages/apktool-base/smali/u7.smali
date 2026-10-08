.class public final synthetic Lu7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu7;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lu7;->k:Landroidx/compose/runtime/State;

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
    .locals 12

    .line 1
    iget v0, p0, Lu7;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lu7;->k:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    move-object v2, p1

    .line 32
    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 33
    .line 34
    sget p1, Landroidx/compose/material/SwitchKt;->a:F

    .line 35
    .line 36
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 41
    .line 42
    iget-wide v4, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 43
    .line 44
    const/high16 p0, 0x42080000    # 34.0f

    .line 45
    .line 46
    invoke-interface {v2, p0}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    const/high16 p1, 0x41600000    # 14.0f

    .line 51
    .line 52
    invoke-interface {v2, p1}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/high16 p1, 0x40000000    # 2.0f

    .line 57
    .line 58
    div-float p1, v3, p1

    .line 59
    .line 60
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    const-wide v8, 0xffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    and-long/2addr v6, v8

    .line 70
    long-to-int v0, v6

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    int-to-long v6, v6

    .line 80
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    int-to-long v10, v0

    .line 85
    const/16 v0, 0x20

    .line 86
    .line 87
    shl-long/2addr v6, v0

    .line 88
    and-long/2addr v10, v8

    .line 89
    or-long/2addr v6, v10

    .line 90
    sub-float/2addr p0, p1

    .line 91
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->B0()J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    and-long/2addr v10, v8

    .line 96
    long-to-int p1, v10

    .line 97
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    int-to-long v10, p0

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    int-to-long p0, p0

    .line 111
    shl-long/2addr v10, v0

    .line 112
    and-long/2addr p0, v8

    .line 113
    or-long v8, v10, p0

    .line 114
    .line 115
    invoke-interface/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->v(FJJJ)V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 120
    .line 121
    sget-object v0, Lnet/blip/shared/DisabledContentKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    check-cast p0, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 139
    .line 140
    .line 141
    return-object v1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
