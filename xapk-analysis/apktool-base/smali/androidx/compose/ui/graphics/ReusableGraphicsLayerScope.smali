.class public final Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/graphics/GraphicsLayerScope;


# instance fields
.field public A:J

.field public B:Landroidx/compose/ui/graphics/LayerOutsets;

.field public C:Landroidx/compose/ui/unit/Density;

.field public D:Landroidx/compose/ui/unit/LayoutDirection;

.field public E:Landroidx/compose/ui/graphics/RenderEffect;

.field public F:Landroidx/compose/ui/graphics/ColorFilter;

.field public G:I

.field public H:Landroidx/compose/ui/graphics/Outline;

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:J

.field public r:J

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:J

.field public x:Landroidx/compose/ui/graphics/Shape;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    .line 9
    .line 10
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    .line 11
    .line 12
    sget-wide v1, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 13
    .line 14
    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:J

    .line 15
    .line 16
    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:J

    .line 17
    .line 18
    const/high16 v1, 0x41000000    # 8.0f

    .line 19
    .line 20
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 21
    .line 22
    sget-wide v1, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 23
    .line 24
    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:J

    .line 25
    .line 26
    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 27
    .line 28
    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 32
    .line 33
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    iput-wide v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->A:J

    .line 39
    .line 40
    sget-object v1, Landroidx/compose/ui/graphics/LayerOutsets;->a:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 41
    .line 42
    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/unit/DensityKt;->b(F)Landroidx/compose/ui/unit/Density;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 49
    .line 50
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->D:Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->g(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->h(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->b(F)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j(F)V

    .line 20
    .line 21
    .line 22
    sget-wide v1, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->c(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m(J)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 31
    .line 32
    cmpg-float v1, v1, v0

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 38
    .line 39
    or-int/lit16 v1, v1, 0x100

    .line 40
    .line 41
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 42
    .line 43
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 44
    .line 45
    :goto_0
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 46
    .line 47
    cmpg-float v1, v1, v0

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 53
    .line 54
    or-int/lit16 v1, v1, 0x200

    .line 55
    .line 56
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 57
    .line 58
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 59
    .line 60
    :goto_1
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 61
    .line 62
    cmpg-float v1, v1, v0

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 68
    .line 69
    or-int/lit16 v1, v1, 0x400

    .line 70
    .line 71
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 72
    .line 73
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 74
    .line 75
    :goto_2
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 76
    .line 77
    const/high16 v1, 0x41000000    # 8.0f

    .line 78
    .line 79
    cmpg-float v0, v0, v1

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 85
    .line 86
    or-int/lit16 v0, v0, 0x800

    .line 87
    .line 88
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 89
    .line 90
    iput v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 91
    .line 92
    :goto_3
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n(J)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l(Landroidx/compose/ui/graphics/Shape;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d(Z)V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->F:Landroidx/compose/ui/graphics/ColorFilter;

    .line 111
    .line 112
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    iget v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 119
    .line 120
    const/high16 v3, 0x40000

    .line 121
    .line 122
    or-int/2addr v2, v3

    .line 123
    iput v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 124
    .line 125
    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->F:Landroidx/compose/ui/graphics/ColorFilter;

    .line 126
    .line 127
    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 128
    .line 129
    const/4 v3, 0x3

    .line 130
    if-ne v2, v3, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 134
    .line 135
    const/high16 v4, 0x80000

    .line 136
    .line 137
    or-int/2addr v2, v4

    .line 138
    iput v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 139
    .line 140
    iput v3, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 141
    .line 142
    :goto_4
    iget v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 143
    .line 144
    if-nez v2, :cond_6

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 148
    .line 149
    const v3, 0x8000

    .line 150
    .line 151
    .line 152
    or-int/2addr v2, v3

    .line 153
    iput v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 154
    .line 155
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 156
    .line 157
    :goto_5
    sget-object v2, Landroidx/compose/ui/graphics/LayerOutsets;->a:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 158
    .line 159
    iget-object v3, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 160
    .line 161
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_7

    .line 166
    .line 167
    iget v3, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 168
    .line 169
    const/high16 v4, 0x100000

    .line 170
    .line 171
    or-int/2addr v3, v4

    .line 172
    iput v3, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 173
    .line 174
    iput-object v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 175
    .line 176
    :cond_7
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    iput-wide v2, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->A:J

    .line 182
    .line 183
    iput-object v1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 184
    .line 185
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 186
    .line 187
    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    .line 15
    .line 16
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    or-int/lit8 v0, v0, 0x40

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 6
    .line 7
    or-int/lit16 v0, v0, 0x4000

    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->E:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    const/high16 v1, 0x20000

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->E:Landroidx/compose/ui/graphics/RenderEffect;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final g(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    .line 15
    .line 16
    return-void
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    .line 15
    .line 16
    return-void
.end method

.method public final j(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x20

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:F

    .line 15
    .line 16
    return-void
.end method

.method public final l(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x2000

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->x:Landroidx/compose/ui/graphics/Shape;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final m(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final n(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x1000

    .line 12
    .line 13
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final o(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    .line 15
    .line 16
    return-void
.end method

.method public final p(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x10

    .line 11
    .line 12
    iput v0, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 13
    .line 14
    iput p1, p0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:F

    .line 15
    .line 16
    return-void
.end method
