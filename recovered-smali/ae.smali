.class public final synthetic Lae;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:J

.field public final synthetic k:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic l:F

.field public final synthetic m:J

.field public final synthetic n:Landroidx/compose/runtime/State;

.field public final synthetic o:Landroidx/compose/runtime/State;

.field public final synthetic p:Landroidx/compose/runtime/State;

.field public final synthetic q:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;FJLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lae;->j:J

    .line 5
    .line 6
    iput-object p3, p0, Lae;->k:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 7
    .line 8
    iput p4, p0, Lae;->l:F

    .line 9
    .line 10
    iput-wide p5, p0, Lae;->m:J

    .line 11
    .line 12
    iput-object p7, p0, Lae;->n:Landroidx/compose/runtime/State;

    .line 13
    .line 14
    iput-object p8, p0, Lae;->o:Landroidx/compose/runtime/State;

    .line 15
    .line 16
    iput-object p9, p0, Lae;->p:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    iput-object p10, p0, Lae;->q:Landroidx/compose/runtime/State;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, 0x43b40000    # 360.0f

    .line 6
    .line 7
    iget-wide v3, p0, Lae;->j:J

    .line 8
    .line 9
    iget-object v5, p0, Lae;->k:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lae;->n:Landroidx/compose/runtime/State;

    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    int-to-float p1, p1

    .line 27
    const/high16 v1, 0x43580000    # 216.0f

    .line 28
    .line 29
    mul-float/2addr p1, v1

    .line 30
    const/high16 v1, 0x43b40000    # 360.0f

    .line 31
    .line 32
    rem-float/2addr p1, v1

    .line 33
    iget-object v1, p0, Lae;->o:Landroidx/compose/runtime/State;

    .line 34
    .line 35
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lae;->p:Landroidx/compose/runtime/State;

    .line 46
    .line 47
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-float/2addr v1, v3

    .line 58
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 63
    .line 64
    add-float/2addr p1, v3

    .line 65
    iget-object v3, p0, Lae;->q:Landroidx/compose/runtime/State;

    .line 66
    .line 67
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    add-float/2addr v3, p1

    .line 78
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-float/2addr p1, v3

    .line 89
    iget v2, v5, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    .line 90
    .line 91
    if-nez v2, :cond_0

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    .line 96
    .line 97
    iget v3, p0, Lae;->l:F

    .line 98
    .line 99
    div-float/2addr v3, v2

    .line 100
    const v2, 0x42652ee1

    .line 101
    .line 102
    .line 103
    mul-float/2addr v3, v2

    .line 104
    const/high16 v2, 0x40000000    # 2.0f

    .line 105
    .line 106
    div-float v2, v3, v2

    .line 107
    .line 108
    :goto_0
    add-float/2addr p1, v2

    .line 109
    const v2, 0x3dcccccd    # 0.1f

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget-wide v3, p0, Lae;->m:J

    .line 117
    .line 118
    move v1, p1

    .line 119
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 120
    .line 121
    .line 122
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p0
.end method
