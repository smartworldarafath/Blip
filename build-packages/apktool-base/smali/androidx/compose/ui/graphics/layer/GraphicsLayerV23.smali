.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# static fields
.field public static final K:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:Landroidx/compose/ui/graphics/RenderEffect;

.field public final b:Landroidx/compose/ui/graphics/CanvasHolder;

.field public final c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public final d:Landroid/view/RenderNode;

.field public e:J

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Matrix;

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:Landroidx/compose/ui/graphics/ColorFilter;

.field public m:F

.field public n:Z

.field public o:J

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:J

.field public v:J

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->b:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 7
    .line 8
    const-string p2, "Compose"

    .line 9
    .line 10
    invoke-static {p2, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 15
    .line 16
    const-wide/16 p2, 0x0

    .line 17
    .line 18
    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 19
    .line 20
    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->i:J

    .line 21
    .line 22
    sget-object p2, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleX()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleY()F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationX()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationY()F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/RenderNode;->getElevation()F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotation()F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationX()F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationY()F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/RenderNode;->getCameraDistance()F

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotX()F

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotY()F

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/RenderNode;->getClipToOutline()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/RenderNode;->getAlpha()F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/RenderNode;->isValid()Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->a(Landroid/view/RenderNode;)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->c(Landroid/view/RenderNode;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->b(Landroid/view/RenderNode;)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->d(Landroid/view/RenderNode;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;->a(Landroid/view/RenderNode;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/RenderNode;->hasOverlappingRendering()Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 162
    .line 163
    .line 164
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->R(I)V

    .line 168
    .line 169
    .line 170
    iput p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->j:I

    .line 171
    .line 172
    const/4 p1, 0x3

    .line 173
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->k:I

    .line 174
    .line 175
    const/high16 p1, 0x3f800000    # 1.0f

    .line 176
    .line 177
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->m:F

    .line 178
    .line 179
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->o:J

    .line 185
    .line 186
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->p:F

    .line 187
    .line 188
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->q:F

    .line 189
    .line 190
    sget-wide p1, Landroidx/compose/ui/graphics/Color;->b:J

    .line 191
    .line 192
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->u:J

    .line 193
    .line 194
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->v:J

    .line 195
    .line 196
    const/high16 p1, 0x41000000    # 8.0f

    .line 197
    .line 198
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->z:F

    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public final A(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->p:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final B()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->z:F

    .line 2
    .line 3
    return p0
.end method

.method public final C(Landroidx/compose/ui/graphics/RenderEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->J:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-void
.end method

.method public final D()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->r:F

    .line 2
    .line 3
    return p0
.end method

.method public final E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->A:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->Q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->w:F

    .line 2
    .line 3
    return p0
.end method

.method public final G(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->S()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final H(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->r:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->v:J

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->d(Landroid/view/RenderNode;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final J()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->g:Landroid/graphics/Matrix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->g:Landroid/graphics/Matrix;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final K(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->z:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    neg-float p1, p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final L()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->t:F

    .line 2
    .line 3
    return p0
.end method

.method public final M()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public final N(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->w:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final O()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public final P(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/view/DisplayListCanvas;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->h:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->h:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->F:Z

    .line 22
    .line 23
    if-eq v3, v0, :cond_2

    .line 24
    .line 25
    iput-boolean v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->F:Z

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->G:Z

    .line 33
    .line 34
    if-eq v1, v0, :cond_3

    .line 35
    .line 36
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->G:Z

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public final R(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final S()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->k:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->l:Landroidx/compose/ui/graphics/ColorFilter;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->R(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->R(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final T()V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->o:J

    .line 2
    .line 3
    const-wide v2, 0x7fffffff7fffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr v2, v0

    .line 9
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    const-wide v3, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/16 v5, 0x20

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->n:Z

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 29
    .line 30
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 31
    .line 32
    shr-long/2addr v1, v5

    .line 33
    long-to-int v1, v1

    .line 34
    int-to-float v1, v1

    .line 35
    const/high16 v2, 0x40000000    # 2.0f

    .line 36
    .line 37
    div-float/2addr v1, v2

    .line 38
    iget v5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 39
    .line 40
    int-to-float v5, v5

    .line 41
    add-float/2addr v1, v5

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 46
    .line 47
    iget-wide v5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 48
    .line 49
    and-long/2addr v3, v5

    .line 50
    long-to-int v1, v3

    .line 51
    int-to-float v1, v1

    .line 52
    div-float/2addr v1, v2

    .line 53
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 54
    .line 55
    int-to-float p0, p0

    .line 56
    add-float/2addr v1, p0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->n:Z

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 65
    .line 66
    shr-long/2addr v0, v5

    .line 67
    long-to-int v0, v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 73
    .line 74
    int-to-float v1, v1

    .line 75
    add-float/2addr v0, v1

    .line 76
    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 80
    .line 81
    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->o:J

    .line 82
    .line 83
    and-long/2addr v1, v3

    .line 84
    long-to-int v1, v1

    .line 85
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 90
    .line 91
    int-to-float p0, p0

    .line 92
    add-float/2addr v1, p0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final U()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->H:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 6
    .line 7
    sub-int v2, v1, v2

    .line 8
    .line 9
    iget v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->I:I

    .line 10
    .line 11
    iget v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 12
    .line 13
    sub-int v4, v3, v4

    .line 14
    .line 15
    iget-wide v5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 16
    .line 17
    const/16 v7, 0x20

    .line 18
    .line 19
    shr-long v7, v5, v7

    .line 20
    .line 21
    long-to-int v7, v7

    .line 22
    add-int/2addr v1, v7

    .line 23
    iget v7, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->D:I

    .line 24
    .line 25
    add-int/2addr v1, v7

    .line 26
    const-wide v7, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v5, v7

    .line 32
    long-to-int v5, v5

    .line 33
    add-int/2addr v3, v5

    .line 34
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->E:I

    .line 35
    .line 36
    add-int/2addr v3, p0

    .line 37
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final a()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->m:F

    .line 2
    .line 3
    return p0
.end method

.method public final b(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->x:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->p:F

    .line 2
    .line 3
    return p0
.end method

.method public final d(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->t:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->J:Landroidx/compose/ui/graphics/RenderEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->y:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->s:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 10
    .line 11
    iget-object v5, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 14
    .line 15
    iget-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 16
    .line 17
    const/16 v9, 0x20

    .line 18
    .line 19
    shr-long/2addr v7, v9

    .line 20
    long-to-int v7, v7

    .line 21
    iget v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 22
    .line 23
    add-int/2addr v7, v8

    .line 24
    iget v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->D:I

    .line 25
    .line 26
    add-int/2addr v7, v8

    .line 27
    iget-wide v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->i:J

    .line 28
    .line 29
    shr-long/2addr v10, v9

    .line 30
    long-to-int v8, v10

    .line 31
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-wide v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 36
    .line 37
    const-wide v12, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr v10, v12

    .line 43
    long-to-int v8, v10

    .line 44
    iget v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 45
    .line 46
    add-int/2addr v8, v10

    .line 47
    iget v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->E:I

    .line 48
    .line 49
    add-int/2addr v8, v10

    .line 50
    iget-wide v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->i:J

    .line 51
    .line 52
    and-long/2addr v10, v12

    .line 53
    long-to-int v10, v10

    .line 54
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-virtual {v6, v7, v8}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 63
    .line 64
    int-to-float v7, v7

    .line 65
    iget v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 66
    .line 67
    int-to-float v8, v8

    .line 68
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    int-to-long v10, v7

    .line 73
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    int-to-long v7, v7

    .line 78
    shl-long/2addr v10, v9

    .line 79
    and-long/2addr v7, v12

    .line 80
    or-long/2addr v7, v10

    .line 81
    :try_start_0
    iget-object v10, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->b:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 82
    .line 83
    iget-object v10, v10, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 84
    .line 85
    move-object v11, v6

    .line 86
    check-cast v11, Landroid/graphics/Canvas;

    .line 87
    .line 88
    iget-object v14, v10, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 89
    .line 90
    iput-object v11, v10, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 91
    .line 92
    iget v11, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 93
    .line 94
    int-to-float v11, v11

    .line 95
    const/4 v15, 0x0

    .line 96
    cmpl-float v11, v11, v15

    .line 97
    .line 98
    if-gtz v11, :cond_0

    .line 99
    .line 100
    iget v11, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 101
    .line 102
    int-to-float v11, v11

    .line 103
    cmpl-float v11, v11, v15

    .line 104
    .line 105
    if-lez v11, :cond_1

    .line 106
    .line 107
    :cond_0
    move-object/from16 v16, v14

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 111
    .line 112
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    move-object v15, v14

    .line 129
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 130
    .line 131
    .line 132
    move-result-wide v13

    .line 133
    move-object/from16 v16, v15

    .line 134
    .line 135
    iget-object v15, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 136
    .line 137
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v7, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 147
    .line 148
    .line 149
    iput-object v3, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 150
    .line 151
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_1
    move-object/from16 v0, p4

    .line 155
    .line 156
    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .line 160
    .line 161
    :try_start_2
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 174
    .line 175
    .line 176
    iput-object v15, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 177
    .line 178
    move-object v15, v6

    .line 179
    :goto_0
    move-object/from16 v0, v16

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :catchall_0
    move-exception v0

    .line 184
    move-object v15, v6

    .line 185
    goto/16 :goto_3

    .line 186
    .line 187
    :catchall_1
    move-exception v0

    .line 188
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 201
    .line 202
    .line 203
    iput-object v15, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 204
    .line 205
    throw v0

    .line 206
    :goto_1
    shr-long v14, v7, v9

    .line 207
    .line 208
    long-to-int v9, v14

    .line 209
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    and-long/2addr v7, v12

    .line 214
    long-to-int v7, v7

    .line 215
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    invoke-virtual {v10, v11, v8}, Landroidx/compose/ui/graphics/AndroidCanvas;->o(FF)V

    .line 220
    .line 221
    .line 222
    iget-wide v11, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 223
    .line 224
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 225
    .line 226
    .line 227
    move-result-wide v11

    .line 228
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 237
    .line 238
    .line 239
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    move-object v15, v6

    .line 241
    move/from16 v17, v7

    .line 242
    .line 243
    :try_start_3
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 244
    .line 245
    .line 246
    move-result-wide v6

    .line 247
    move/from16 v18, v9

    .line 248
    .line 249
    iget-object v9, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 250
    .line 251
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 261
    .line 262
    .line 263
    iput-object v3, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 264
    .line 265
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 266
    .line 267
    .line 268
    :try_start_4
    move-object/from16 v0, p4

    .line 269
    .line 270
    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;

    .line 271
    .line 272
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 273
    .line 274
    .line 275
    :try_start_5
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 288
    .line 289
    .line 290
    iput-object v9, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 291
    .line 292
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    neg-float v0, v0

    .line 297
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    neg-float v2, v2

    .line 302
    invoke-virtual {v10, v0, v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->o(FF)V

    .line 303
    .line 304
    .line 305
    goto :goto_0

    .line 306
    :goto_2
    iput-object v0, v10, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 307
    .line 308
    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 309
    .line 310
    invoke-virtual {v0, v15}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :catchall_2
    move-exception v0

    .line 315
    goto :goto_3

    .line 316
    :catchall_3
    move-exception v0

    .line 317
    :try_start_6
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 330
    .line 331
    .line 332
    iput-object v9, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 333
    .line 334
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 335
    :goto_3
    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 336
    .line 337
    invoke-virtual {v1, v15}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 338
    .line 339
    .line 340
    throw v0
.end method

.method public final i(Landroid/graphics/Outline;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->i:J

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->h:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->Q()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->k:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->k:I

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 18
    .line 19
    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidBlendMode_androidKt;->b(I)Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->S()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper24;->a(Landroid/view/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public final m()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->l:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->q:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(IIJ)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->H:I

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->I:I

    .line 4
    .line 5
    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 6
    .line 7
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->e:J

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->U()V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->n:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->o:J

    .line 23
    .line 24
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 36
    .line 37
    const/16 p2, 0x20

    .line 38
    .line 39
    shr-long v0, p3, p2

    .line 40
    .line 41
    long-to-int p2, v0

    .line 42
    int-to-float p2, p2

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr p2, v0

    .line 46
    iget v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    add-float/2addr p2, v1

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 54
    .line 55
    const-wide v1, 0xffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    and-long p2, p3, v1

    .line 61
    .line 62
    long-to-int p2, p2

    .line 63
    int-to-float p2, p2

    .line 64
    div-float/2addr p2, v0

    .line 65
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 66
    .line 67
    int-to-float p0, p0

    .line 68
    add-float/2addr p2, p0

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final p()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->x:F

    .line 2
    .line 3
    return p0
.end method

.method public final q(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->l:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->R(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->f:Landroid/graphics/Paint;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p1, Landroidx/compose/ui/graphics/ColorFilter;->a:Landroid/graphics/ColorFilter;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->S()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final r()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/RenderNode;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final s()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->y:F

    .line 2
    .line 3
    return p0
.end method

.method public final t(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->o:J

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->T()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final v(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->m:F

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(IIII)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    if-ltz p3, :cond_0

    .line 8
    .line 9
    if-ltz p4, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-string v2, ", Top: "

    .line 17
    .line 18
    const-string v3, ", Right: "

    .line 19
    .line 20
    const-string v4, "Outsets cannot be negative! Left: "

    .line 21
    .line 22
    invoke-static {v4, p1, v2, p2, v3}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", Bottom: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 45
    .line 46
    if-ne p1, v2, :cond_2

    .line 47
    .line 48
    iget v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 49
    .line 50
    if-ne p2, v3, :cond_2

    .line 51
    .line 52
    iget v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->D:I

    .line 53
    .line 54
    if-ne p3, v3, :cond_2

    .line 55
    .line 56
    iget v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->E:I

    .line 57
    .line 58
    if-eq p4, v3, :cond_5

    .line 59
    .line 60
    :cond_2
    if-ne p1, v2, :cond_3

    .line 61
    .line 62
    iget v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 63
    .line 64
    if-eq p2, v2, :cond_4

    .line 65
    .line 66
    :cond_3
    move v0, v1

    .line 67
    :cond_4
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->B:I

    .line 68
    .line 69
    iput p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->C:I

    .line 70
    .line 71
    iput p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->D:I

    .line 72
    .line 73
    iput p4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->E:I

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->U()V

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->T()V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method public final x()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->s:F

    .line 2
    .line 3
    return p0
.end method

.method public final y()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final z(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->u:J

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV23;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/layer/RenderNodeVerificationHelper28;->c(Landroid/view/RenderNode;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
