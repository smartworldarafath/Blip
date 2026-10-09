.class public final synthetic Lo4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic l:J

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Landroidx/compose/ui/graphics/drawscope/Stroke;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/graphics/SolidColor;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lo4;->j:Z

    .line 5
    .line 6
    iput-object p2, p0, Lo4;->k:Landroidx/compose/ui/graphics/Brush;

    .line 7
    .line 8
    iput-wide p3, p0, Lo4;->l:J

    .line 9
    .line 10
    iput p5, p0, Lo4;->m:F

    .line 11
    .line 12
    iput p6, p0, Lo4;->n:F

    .line 13
    .line 14
    iput-wide p7, p0, Lo4;->o:J

    .line 15
    .line 16
    iput-wide p9, p0, Lo4;->p:J

    .line 17
    .line 18
    iput-object p11, p0, Lo4;->q:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 14
    .line 15
    iget-boolean v3, v0, Lo4;->j:Z

    .line 16
    .line 17
    move v4, v3

    .line 18
    iget-object v3, v0, Lo4;->k:Landroidx/compose/ui/graphics/Brush;

    .line 19
    .line 20
    iget-wide v8, v0, Lo4;->l:J

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/16 v11, 0xf6

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->k(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const/16 v4, 0x20

    .line 37
    .line 38
    shr-long v5, v8, v4

    .line 39
    .line 40
    long-to-int v5, v5

    .line 41
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget v6, v0, Lo4;->m:F

    .line 46
    .line 47
    cmpg-float v5, v5, v6

    .line 48
    .line 49
    if-gez v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    shr-long v4, v5, v4

    .line 56
    .line 57
    long-to-int v4, v4

    .line 58
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget v11, v0, Lo4;->n:F

    .line 63
    .line 64
    sub-float v13, v4, v11

    .line 65
    .line 66
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    const-wide v6, 0xffffffffL

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    and-long/2addr v4, v6

    .line 76
    long-to-int v0, v4

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    sub-float v14, v0, v11

    .line 82
    .line 83
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 94
    .line 95
    .line 96
    :try_start_0
    iget-object v0, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 97
    .line 98
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    const/4 v15, 0x0

    .line 105
    move v12, v11

    .line 106
    invoke-interface/range {v10 .. v15}, Landroidx/compose/ui/graphics/Canvas;->n(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const/16 v11, 0xf6

    .line 111
    .line 112
    move-wide v6, v4

    .line 113
    const-wide/16 v4, 0x0

    .line 114
    .line 115
    move-wide v12, v6

    .line 116
    const-wide/16 v6, 0x0

    .line 117
    .line 118
    :try_start_1
    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->k(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v12, v13}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_0

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    move-wide v12, v4

    .line 129
    :goto_0
    invoke-static {v1, v12, v13}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_1
    invoke-static {v8, v9, v6}, Landroidx/compose/foundation/BorderKt;->a(JF)J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    const/16 v11, 0xd0

    .line 138
    .line 139
    iget-wide v4, v0, Lo4;->o:J

    .line 140
    .line 141
    iget-wide v6, v0, Lo4;->p:J

    .line 142
    .line 143
    iget-object v10, v0, Lo4;->q:Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 144
    .line 145
    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->k(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object v0
.end method
