.class public final synthetic Llb;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Llb;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Llb;->k:F

    .line 8
    .line 9
    iput-wide p2, p0, Llb;->l:J

    .line 10
    .line 11
    iput-object p4, p0, Llb;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide p5, p0, Llb;->m:J

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;JJF)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Llb;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb;->n:Ljava/lang/Object;

    iput-wide p2, p0, Llb;->l:J

    iput-wide p4, p0, Llb;->m:J

    iput p6, p0, Llb;->k:F

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Llb;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Llb;->n:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Llb;->k:F

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v9, v2

    .line 13
    check-cast v9, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    check-cast v4, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 17
    .line 18
    const/high16 p1, 0x43b40000    # 360.0f

    .line 19
    .line 20
    mul-float/2addr v3, p1

    .line 21
    const/4 v5, 0x0

    .line 22
    const/high16 v6, 0x43b40000    # 360.0f

    .line 23
    .line 24
    iget-wide v7, p0, Llb;->l:J

    .line 25
    .line 26
    invoke-static/range {v4 .. v9}, Landroidx/compose/material/ProgressIndicatorKt;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 27
    .line 28
    .line 29
    const/high16 v5, 0x43870000    # 270.0f

    .line 30
    .line 31
    iget-wide v7, p0, Llb;->m:J

    .line 32
    .line 33
    move v6, v3

    .line 34
    invoke-static/range {v4 .. v9}, Landroidx/compose/material/ProgressIndicatorKt;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_0
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-wide v4, p0, Llb;->l:J

    .line 46
    .line 47
    const/16 v0, 0x20

    .line 48
    .line 49
    shr-long v6, v4, v0

    .line 50
    .line 51
    long-to-int v6, v6

    .line 52
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-wide v7, p0, Llb;->m:J

    .line 57
    .line 58
    shr-long v9, v7, v0

    .line 59
    .line 60
    long-to-int p0, v9

    .line 61
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    sub-float/2addr v6, p0

    .line 66
    const/high16 p0, 0x40000000    # 2.0f

    .line 67
    .line 68
    div-float/2addr v6, p0

    .line 69
    const-wide v9, 0xffffffffL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    and-long/2addr v4, v9

    .line 75
    long-to-int v0, v4

    .line 76
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    and-long v4, v7, v9

    .line 81
    .line 82
    long-to-int v4, v4

    .line 83
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    sub-float/2addr v0, v4

    .line 88
    div-float/2addr v0, p0

    .line 89
    new-instance p0, Lmb;

    .line 90
    .line 91
    invoke-direct {p0, v3}, Lmb;-><init>(F)V

    .line 92
    .line 93
    .line 94
    sget-object v3, Lnet/blip/libblip/Platform;->j:Lnet/blip/libblip/Platform$Companion;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v6}, Lkotlin/math/MathKt;->b(F)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p1, v2, v3, v0, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->m(Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    return-object v1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
