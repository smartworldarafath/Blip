.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;
    }
.end annotation


# static fields
.field public static final e0:Lla;

.field public static final f0:Lla;

.field public static final g0:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

.field public static final h0:Landroidx/compose/ui/node/LayerPositionalProperties;

.field public static final i0:[F

.field public static final j0:Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

.field public static final k0:Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;


# instance fields
.field public final D:Landroidx/compose/ui/node/LayoutNode;

.field public E:Landroidx/compose/ui/node/NodeCoordinator;

.field public F:Landroidx/compose/ui/node/NodeCoordinator;

.field public G:Z

.field public H:Z

.field public I:Lkotlin/jvm/functions/Function1;

.field public J:Landroidx/compose/ui/unit/Density;

.field public K:Landroidx/compose/ui/unit/LayoutDirection;

.field public L:F

.field public M:Landroidx/compose/ui/layout/MeasureResult;

.field public N:Landroidx/collection/MutableObjectIntMap;

.field public O:J

.field public P:F

.field public Q:Landroidx/compose/ui/geometry/MutableRect;

.field public R:Landroidx/compose/ui/node/LayerPositionalProperties;

.field public S:Landroidx/compose/ui/graphics/Shape;

.field public T:Landroidx/compose/ui/geometry/Rect;

.field public U:Landroidx/compose/ui/geometry/Rect;

.field public V:Z

.field public W:Z

.field public X:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public Y:Landroidx/compose/ui/graphics/Canvas;

.field public Z:La0;

.field public final a0:Lfc;

.field public b0:Z

.field public c0:Landroidx/compose/ui/node/OwnedLayer;

.field public d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lla;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lla;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 9
    .line 10
    new-instance v0, Lla;

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lla;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->f0:Lla;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->g0:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->h0:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->i0:[F

    .line 38
    .line 39
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->j0:Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    .line 45
    .line 46
    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->k0:Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    const p1, 0x3f4ccccd    # 0.8f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->L:F

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 22
    .line 23
    sget-object p1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->S:Landroidx/compose/ui/graphics/Shape;

    .line 26
    .line 27
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->U:Landroidx/compose/ui/geometry/Rect;

    .line 32
    .line 33
    new-instance p1, Lfc;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-direct {p1, p0, v0}, Lfc;-><init>(Landroidx/compose/ui/node/NodeCoordinator;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->a0:Lfc;

    .line 40
    .line 41
    return-void
.end method

.method public static z1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->j:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    return-object v0

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final A1()Landroidx/compose/ui/geometry/Rect;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->Q:Landroidx/compose/ui/geometry/MutableRect;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroidx/compose/ui/geometry/MutableRect;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/compose/ui/geometry/MutableRect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->Q:Landroidx/compose/ui/geometry/MutableRect;

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->c1()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->U0(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 42
    .line 43
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v4, v5

    .line 47
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_3

    .line 52
    .line 53
    iget-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 54
    .line 55
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 64
    .line 65
    iget v6, v6, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    int-to-float v6, v6

    .line 73
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_5

    .line 78
    .line 79
    iget-object v7, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 80
    .line 81
    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    int-to-float v7, v7

    .line 89
    :goto_2
    const/16 v8, 0x20

    .line 90
    .line 91
    shr-long v8, v2, v8

    .line 92
    .line 93
    long-to-int v8, v8

    .line 94
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    sub-float/2addr v4, v9

    .line 99
    iput v4, v1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 100
    .line 101
    const-wide v9, 0xffffffffL

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    and-long/2addr v2, v9

    .line 107
    long-to-int v2, v2

    .line 108
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sub-float/2addr v5, v3

    .line 113
    iput v5, v1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 114
    .line 115
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-float/2addr v3, v6

    .line 120
    iput v3, v1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-float/2addr v2, v7

    .line 127
    iput v2, v1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 128
    .line 129
    :goto_3
    if-eq p0, v0, :cond_7

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-virtual {p0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->v1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/MutableRect;->b()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    :goto_4
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_6
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 152
    .line 153
    iget v0, v1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 154
    .line 155
    iget v2, v1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 156
    .line 157
    iget v3, v1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 158
    .line 159
    iget v1, v1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 160
    .line 161
    invoke-direct {p0, v0, v2, v3, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 162
    .line 163
    .line 164
    return-object p0
.end method

.method public final B1(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 5

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->B1(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/compose/ui/node/NodeCoordinator;->i0:[F

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    shr-long v2, v0, v2

    .line 35
    .line 36
    long-to-int v2, v2

    .line 37
    int-to-float v2, v2

    .line 38
    neg-float v2, v2

    .line 39
    const-wide v3, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v0, v3

    .line 45
    long-to-int v0, v0

    .line 46
    int-to-float v0, v0

    .line 47
    neg-float v0, v0

    .line 48
    invoke-static {p1, v2, v0}, Landroidx/compose/ui/graphics/Matrix;->f([FFF)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a()[F

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {p2, p0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final C(J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 27
    .line 28
    .line 29
    iget-object v1, v1, Landroidx/compose/ui/platform/AndroidComposeView;->i0:[F

    .line 30
    .line 31
    invoke-static {p1, p2, v1}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->S(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0
.end method

.method public final C1(Landroidx/compose/ui/node/NodeCoordinator;[F)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->i0:[F

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 33
    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    shr-long v3, v0, v3

    .line 38
    .line 39
    long-to-int v3, v3

    .line 40
    int-to-float v3, v3

    .line 41
    const-wide v4, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v0, v4

    .line 47
    long-to-int v0, v0

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/graphics/Matrix;->f([FFF)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v2}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public final D1(Lkotlin/jvm/functions/Function1;Z)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "layerBlock can\'t be provided when explicitLayer is provided"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    if-nez p2, :cond_3

    .line 18
    .line 19
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    if-ne p2, p1, :cond_3

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 26
    .line 27
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/unit/LayoutDirection;

    .line 34
    .line 35
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    .line 37
    if-eq p2, v3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move p2, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_1
    move p2, v1

    .line 43
    :goto_2
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 44
    .line 45
    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 48
    .line 49
    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/unit/LayoutDirection;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->a0:Lfc;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v3, :cond_7

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 65
    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->Z:La0;

    .line 73
    .line 74
    if-nez p2, :cond_4

    .line 75
    .line 76
    new-instance p2, Lfc;

    .line 77
    .line 78
    invoke-direct {p2, p0, v0}, Lfc;-><init>(Landroidx/compose/ui/node/NodeCoordinator;I)V

    .line 79
    .line 80
    .line 81
    new-instance v0, La0;

    .line 82
    .line 83
    const/16 v3, 0x14

    .line 84
    .line 85
    invoke-direct {v0, v3, p0, p2}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->Z:La0;

    .line 89
    .line 90
    move-object p2, v0

    .line 91
    :cond_4
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 92
    .line 93
    invoke-virtual {p1, p2, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->f(Lkotlin/jvm/functions/Function2;Lfc;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/OwnedLayer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-wide v5, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 98
    .line 99
    move-object p2, p1

    .line 100
    check-cast p2, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 101
    .line 102
    invoke-virtual {p2, v5, v6}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(J)V

    .line 103
    .line 104
    .line 105
    iget-wide v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 106
    .line 107
    invoke-virtual {p2, v5, v6}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d(J)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Z)V

    .line 113
    .line 114
    .line 115
    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 116
    .line 117
    invoke-virtual {v4}, Lfc;->a()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_5
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Z)V

    .line 124
    .line 125
    .line 126
    :cond_6
    return-void

    .line 127
    :cond_7
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 130
    .line 131
    if-eqz p1, :cond_c

    .line 132
    .line 133
    check-cast p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2}, Landroidx/compose/ui/graphics/MatrixKt;->a([F)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_8

    .line 144
    .line 145
    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/LayoutNode;->R(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    iput-object v5, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    iput-object v5, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Lkotlin/jvm/functions/Function0;

    .line 151
    .line 152
    iput-boolean v1, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Z

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->f(Z)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 158
    .line 159
    if-eqz p2, :cond_b

    .line 160
    .line 161
    iget-object v3, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 162
    .line 163
    invoke-interface {p2, v3}, Landroidx/compose/ui/graphics/GraphicsContext;->a(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 167
    .line 168
    iget-object v3, p2, Landroidx/compose/ui/platform/AndroidComposeView;->y0:Landroidx/compose/ui/platform/WeakCache;

    .line 169
    .line 170
    :cond_9
    iget-object v6, v3, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    .line 171
    .line 172
    iget-object v7, v3, Landroidx/compose/ui/platform/WeakCache;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-eqz v6, :cond_a

    .line 179
    .line 180
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_a
    if-nez v6, :cond_9

    .line 184
    .line 185
    new-instance v6, Ljava/lang/ref/WeakReference;

    .line 186
    .line 187
    iget-object v3, v3, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    .line 188
    .line 189
    invoke-direct {v6, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    iget-object p2, p2, Landroidx/compose/ui/platform/AndroidComposeView;->J:Landroidx/collection/MutableObjectList;

    .line 196
    .line 197
    invoke-virtual {p2, p1}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :cond_b
    iput-object v5, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 201
    .line 202
    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 203
    .line 204
    invoke-virtual {v4}, Lfc;->a()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 212
    .line 213
    if-eqz p1, :cond_c

    .line 214
    .line 215
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_c

    .line 220
    .line 221
    iget-object p1, v2, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 222
    .line 223
    if-eqz p1, :cond_c

    .line 224
    .line 225
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 226
    .line 227
    invoke-virtual {p1, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->v(Landroidx/compose/ui/node/LayoutNode;)V

    .line 228
    .line 229
    .line 230
    :cond_c
    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->b0:Z

    .line 231
    .line 232
    return-void
.end method

.method public final E0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final E1(Z)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_14

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz v1, :cond_38

    .line 14
    .line 15
    if-eqz v2, :cond_37

    .line 16
    .line 17
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->g0:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 25
    .line 26
    iput-object v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 27
    .line 28
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 29
    .line 30
    iput-object v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->D:Landroidx/compose/ui/unit/LayoutDirection;

    .line 31
    .line 32
    iget-wide v5, v0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 33
    .line 34
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    iput-wide v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->A:J

    .line 39
    .line 40
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {v6}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v7, Ln1;

    .line 54
    .line 55
    const/4 v8, 0x7

    .line 56
    invoke-direct {v7, v2, v0, v5, v8}, Ln1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v6, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 60
    .line 61
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v6, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->R:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 67
    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    new-instance v2, Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 71
    .line 72
    invoke-direct {v2}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->R:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 76
    .line 77
    :cond_1
    sget-object v6, Landroidx/compose/ui/node/NodeCoordinator;->h0:Landroidx/compose/ui/node/LayerPositionalProperties;

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->a:F

    .line 83
    .line 84
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->a:F

    .line 85
    .line 86
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->b:F

    .line 87
    .line 88
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->b:F

    .line 89
    .line 90
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->c:F

    .line 91
    .line 92
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->c:F

    .line 93
    .line 94
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->d:F

    .line 95
    .line 96
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->d:F

    .line 97
    .line 98
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->e:F

    .line 99
    .line 100
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->e:F

    .line 101
    .line 102
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->f:F

    .line 103
    .line 104
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->f:F

    .line 105
    .line 106
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->g:F

    .line 107
    .line 108
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->g:F

    .line 109
    .line 110
    iget v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->h:F

    .line 111
    .line 112
    iput v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->h:F

    .line 113
    .line 114
    iget-wide v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->i:J

    .line 115
    .line 116
    iput-wide v7, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->i:J

    .line 117
    .line 118
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    .line 119
    .line 120
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->a:F

    .line 121
    .line 122
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    .line 123
    .line 124
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->b:F

    .line 125
    .line 126
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    .line 127
    .line 128
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->c:F

    .line 129
    .line 130
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:F

    .line 131
    .line 132
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->d:F

    .line 133
    .line 134
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 135
    .line 136
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->e:F

    .line 137
    .line 138
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 139
    .line 140
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->f:F

    .line 141
    .line 142
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 143
    .line 144
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->g:F

    .line 145
    .line 146
    iget v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 147
    .line 148
    iput v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->h:F

    .line 149
    .line 150
    iget-wide v7, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:J

    .line 151
    .line 152
    iput-wide v7, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->i:J

    .line 153
    .line 154
    check-cast v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 155
    .line 156
    iget-object v7, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 157
    .line 158
    iget v8, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 159
    .line 160
    iget v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->w:I

    .line 161
    .line 162
    or-int/2addr v8, v9

    .line 163
    iget-object v9, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->D:Landroidx/compose/ui/unit/LayoutDirection;

    .line 164
    .line 165
    iput-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->u:Landroidx/compose/ui/unit/LayoutDirection;

    .line 166
    .line 167
    iget-object v9, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 168
    .line 169
    iput-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->t:Landroidx/compose/ui/unit/Density;

    .line 170
    .line 171
    const/high16 v10, 0x100000

    .line 172
    .line 173
    and-int/2addr v10, v8

    .line 174
    const/4 v11, 0x0

    .line 175
    if-eqz v10, :cond_2

    .line 176
    .line 177
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 178
    .line 179
    iget-object v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 180
    .line 181
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    iget-object v13, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 189
    .line 190
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    iget-object v14, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 198
    .line 199
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    iget-object v15, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->B:Landroidx/compose/ui/graphics/LayerOutsets;

    .line 207
    .line 208
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    iput v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 216
    .line 217
    iput v13, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 218
    .line 219
    iput v14, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->x:I

    .line 220
    .line 221
    iput v9, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->y:I

    .line 222
    .line 223
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 224
    .line 225
    invoke-interface {v10, v12, v13, v14, v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->w(IIII)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 229
    .line 230
    .line 231
    :cond_2
    and-int/lit16 v9, v8, 0x1000

    .line 232
    .line 233
    if-eqz v9, :cond_3

    .line 234
    .line 235
    iget-wide v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->w:J

    .line 236
    .line 237
    iput-wide v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->x:J

    .line 238
    .line 239
    :cond_3
    and-int/lit8 v10, v8, 0x1

    .line 240
    .line 241
    if-eqz v10, :cond_5

    .line 242
    .line 243
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 244
    .line 245
    iget v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->k:F

    .line 246
    .line 247
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 248
    .line 249
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->c()F

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    cmpg-float v13, v13, v12

    .line 254
    .line 255
    if-nez v13, :cond_4

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_4
    invoke-interface {v10, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->A(F)V

    .line 259
    .line 260
    .line 261
    :cond_5
    :goto_0
    and-int/lit8 v10, v8, 0x2

    .line 262
    .line 263
    if-eqz v10, :cond_7

    .line 264
    .line 265
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 266
    .line 267
    iget v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l:F

    .line 268
    .line 269
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 270
    .line 271
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->M()F

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    cmpg-float v13, v13, v12

    .line 276
    .line 277
    if-nez v13, :cond_6

    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_6
    invoke-interface {v10, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->n(F)V

    .line 281
    .line 282
    .line 283
    :cond_7
    :goto_1
    and-int/lit8 v10, v8, 0x4

    .line 284
    .line 285
    if-eqz v10, :cond_8

    .line 286
    .line 287
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 288
    .line 289
    iget v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    .line 290
    .line 291
    invoke-virtual {v10, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e(F)V

    .line 292
    .line 293
    .line 294
    :cond_8
    and-int/lit8 v10, v8, 0x8

    .line 295
    .line 296
    if-eqz v10, :cond_a

    .line 297
    .line 298
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 299
    .line 300
    iget v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->n:F

    .line 301
    .line 302
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 303
    .line 304
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->D()F

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    cmpg-float v13, v13, v12

    .line 309
    .line 310
    if-nez v13, :cond_9

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_9
    invoke-interface {v10, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->H(F)V

    .line 314
    .line 315
    .line 316
    :cond_a
    :goto_2
    and-int/lit8 v10, v8, 0x10

    .line 317
    .line 318
    if-eqz v10, :cond_c

    .line 319
    .line 320
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 321
    .line 322
    iget v12, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->o:F

    .line 323
    .line 324
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 325
    .line 326
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->x()F

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    cmpg-float v13, v13, v12

    .line 331
    .line 332
    if-nez v13, :cond_b

    .line 333
    .line 334
    goto :goto_3

    .line 335
    :cond_b
    invoke-interface {v10, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->g(F)V

    .line 336
    .line 337
    .line 338
    :cond_c
    :goto_3
    and-int/lit8 v10, v8, 0x20

    .line 339
    .line 340
    const/4 v12, 0x1

    .line 341
    if-eqz v10, :cond_e

    .line 342
    .line 343
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 344
    .line 345
    iget v13, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:F

    .line 346
    .line 347
    iget-object v14, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 348
    .line 349
    invoke-interface {v14}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->L()F

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    cmpg-float v15, v15, v13

    .line 354
    .line 355
    if-nez v15, :cond_d

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_d
    invoke-interface {v14, v13}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->d(F)V

    .line 359
    .line 360
    .line 361
    iput-boolean v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 362
    .line 363
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 364
    .line 365
    .line 366
    :goto_4
    iget v10, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->p:F

    .line 367
    .line 368
    cmpl-float v10, v10, v11

    .line 369
    .line 370
    if-lez v10, :cond_e

    .line 371
    .line 372
    iget-boolean v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->C:Z

    .line 373
    .line 374
    if-nez v10, :cond_e

    .line 375
    .line 376
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Lkotlin/jvm/functions/Function0;

    .line 377
    .line 378
    if-eqz v10, :cond_e

    .line 379
    .line 380
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_e
    and-int/lit8 v10, v8, 0x40

    .line 384
    .line 385
    if-eqz v10, :cond_f

    .line 386
    .line 387
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 388
    .line 389
    iget-wide v13, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->q:J

    .line 390
    .line 391
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 392
    .line 393
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->u()J

    .line 394
    .line 395
    .line 396
    move-result-wide v11

    .line 397
    invoke-static {v13, v14, v11, v12}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 398
    .line 399
    .line 400
    move-result v11

    .line 401
    if-nez v11, :cond_f

    .line 402
    .line 403
    invoke-interface {v10, v13, v14}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->z(J)V

    .line 404
    .line 405
    .line 406
    :cond_f
    and-int/lit16 v10, v8, 0x80

    .line 407
    .line 408
    if-eqz v10, :cond_10

    .line 409
    .line 410
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 411
    .line 412
    iget-wide v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->r:J

    .line 413
    .line 414
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 415
    .line 416
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->y()J

    .line 417
    .line 418
    .line 419
    move-result-wide v13

    .line 420
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    if-nez v13, :cond_10

    .line 425
    .line 426
    invoke-interface {v10, v11, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->I(J)V

    .line 427
    .line 428
    .line 429
    :cond_10
    and-int/lit16 v10, v8, 0x400

    .line 430
    .line 431
    if-eqz v10, :cond_12

    .line 432
    .line 433
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 434
    .line 435
    iget v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->u:F

    .line 436
    .line 437
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 438
    .line 439
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->s()F

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    cmpg-float v12, v12, v11

    .line 444
    .line 445
    if-nez v12, :cond_11

    .line 446
    .line 447
    goto :goto_5

    .line 448
    :cond_11
    invoke-interface {v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->f(F)V

    .line 449
    .line 450
    .line 451
    :cond_12
    :goto_5
    and-int/lit16 v10, v8, 0x100

    .line 452
    .line 453
    if-eqz v10, :cond_14

    .line 454
    .line 455
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 456
    .line 457
    iget v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->s:F

    .line 458
    .line 459
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 460
    .line 461
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->F()F

    .line 462
    .line 463
    .line 464
    move-result v12

    .line 465
    cmpg-float v12, v12, v11

    .line 466
    .line 467
    if-nez v12, :cond_13

    .line 468
    .line 469
    goto :goto_6

    .line 470
    :cond_13
    invoke-interface {v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->N(F)V

    .line 471
    .line 472
    .line 473
    :cond_14
    :goto_6
    and-int/lit16 v10, v8, 0x200

    .line 474
    .line 475
    if-eqz v10, :cond_16

    .line 476
    .line 477
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 478
    .line 479
    iget v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->t:F

    .line 480
    .line 481
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 482
    .line 483
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->p()F

    .line 484
    .line 485
    .line 486
    move-result v12

    .line 487
    cmpg-float v12, v12, v11

    .line 488
    .line 489
    if-nez v12, :cond_15

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_15
    invoke-interface {v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->b(F)V

    .line 493
    .line 494
    .line 495
    :cond_16
    :goto_7
    and-int/lit16 v10, v8, 0x800

    .line 496
    .line 497
    if-eqz v10, :cond_18

    .line 498
    .line 499
    iget-object v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 500
    .line 501
    iget v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->v:F

    .line 502
    .line 503
    iget-object v10, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 504
    .line 505
    invoke-interface {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->B()F

    .line 506
    .line 507
    .line 508
    move-result v12

    .line 509
    cmpg-float v12, v12, v11

    .line 510
    .line 511
    if-nez v12, :cond_17

    .line 512
    .line 513
    goto :goto_8

    .line 514
    :cond_17
    invoke-interface {v10, v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->K(F)V

    .line 515
    .line 516
    .line 517
    :cond_18
    :goto_8
    if-eqz v9, :cond_1a

    .line 518
    .line 519
    const/16 v9, 0x20

    .line 520
    .line 521
    const-wide v16, 0xffffffffL

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    iget-wide v10, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->x:J

    .line 527
    .line 528
    sget-wide v13, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 529
    .line 530
    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    iget-object v11, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 535
    .line 536
    if-eqz v10, :cond_19

    .line 537
    .line 538
    iget-wide v12, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z:J

    .line 539
    .line 540
    move v14, v9

    .line 541
    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    if-nez v12, :cond_1b

    .line 551
    .line 552
    iput-wide v9, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z:J

    .line 553
    .line 554
    iget-object v11, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 555
    .line 556
    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->t(J)V

    .line 557
    .line 558
    .line 559
    goto :goto_9

    .line 560
    :cond_19
    move v14, v9

    .line 561
    iget-wide v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->x:J

    .line 562
    .line 563
    shr-long/2addr v9, v14

    .line 564
    long-to-int v9, v9

    .line 565
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 566
    .line 567
    .line 568
    move-result v9

    .line 569
    iget-wide v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 570
    .line 571
    shr-long/2addr v12, v14

    .line 572
    long-to-int v10, v12

    .line 573
    int-to-float v10, v10

    .line 574
    mul-float/2addr v9, v10

    .line 575
    iget-wide v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->x:J

    .line 576
    .line 577
    and-long v12, v12, v16

    .line 578
    .line 579
    long-to-int v10, v12

    .line 580
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 581
    .line 582
    .line 583
    move-result v10

    .line 584
    iget-wide v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 585
    .line 586
    and-long v12, v12, v16

    .line 587
    .line 588
    long-to-int v12, v12

    .line 589
    int-to-float v12, v12

    .line 590
    mul-float/2addr v10, v12

    .line 591
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 592
    .line 593
    .line 594
    move-result v9

    .line 595
    int-to-long v12, v9

    .line 596
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 597
    .line 598
    .line 599
    move-result v9

    .line 600
    int-to-long v9, v9

    .line 601
    shl-long/2addr v12, v14

    .line 602
    and-long v9, v9, v16

    .line 603
    .line 604
    or-long/2addr v9, v12

    .line 605
    iget-wide v12, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z:J

    .line 606
    .line 607
    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 608
    .line 609
    .line 610
    move-result v12

    .line 611
    if-nez v12, :cond_1b

    .line 612
    .line 613
    iput-wide v9, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z:J

    .line 614
    .line 615
    iget-object v11, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 616
    .line 617
    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->t(J)V

    .line 618
    .line 619
    .line 620
    goto :goto_9

    .line 621
    :cond_1a
    const/16 v14, 0x20

    .line 622
    .line 623
    const-wide v16, 0xffffffffL

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    :cond_1b
    :goto_9
    and-int/lit16 v9, v8, 0x4000

    .line 629
    .line 630
    if-eqz v9, :cond_1c

    .line 631
    .line 632
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 633
    .line 634
    iget-boolean v10, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 635
    .line 636
    iget-boolean v11, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 637
    .line 638
    if-eq v11, v10, :cond_1c

    .line 639
    .line 640
    iput-boolean v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 641
    .line 642
    const/4 v10, 0x1

    .line 643
    iput-boolean v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 644
    .line 645
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 646
    .line 647
    .line 648
    :cond_1c
    const/high16 v9, 0x20000

    .line 649
    .line 650
    and-int/2addr v9, v8

    .line 651
    if-eqz v9, :cond_1d

    .line 652
    .line 653
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 654
    .line 655
    iget-object v10, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->E:Landroidx/compose/ui/graphics/RenderEffect;

    .line 656
    .line 657
    iget-object v9, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 658
    .line 659
    invoke-interface {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->e()Landroidx/compose/ui/graphics/RenderEffect;

    .line 660
    .line 661
    .line 662
    move-result-object v11

    .line 663
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    if-nez v11, :cond_1d

    .line 668
    .line 669
    invoke-interface {v9, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->C(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 670
    .line 671
    .line 672
    :cond_1d
    const/high16 v9, 0x40000

    .line 673
    .line 674
    and-int/2addr v9, v8

    .line 675
    if-eqz v9, :cond_1e

    .line 676
    .line 677
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 678
    .line 679
    iget-object v10, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->F:Landroidx/compose/ui/graphics/ColorFilter;

    .line 680
    .line 681
    iget-object v9, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 682
    .line 683
    invoke-interface {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->m()Landroidx/compose/ui/graphics/ColorFilter;

    .line 684
    .line 685
    .line 686
    move-result-object v11

    .line 687
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v11

    .line 691
    if-nez v11, :cond_1e

    .line 692
    .line 693
    invoke-interface {v9, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->q(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 694
    .line 695
    .line 696
    :cond_1e
    const/high16 v9, 0x80000

    .line 697
    .line 698
    and-int/2addr v9, v8

    .line 699
    if-eqz v9, :cond_20

    .line 700
    .line 701
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 702
    .line 703
    iget v10, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->G:I

    .line 704
    .line 705
    iget-object v9, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 706
    .line 707
    invoke-interface {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->O()I

    .line 708
    .line 709
    .line 710
    move-result v11

    .line 711
    if-ne v11, v10, :cond_1f

    .line 712
    .line 713
    goto :goto_a

    .line 714
    :cond_1f
    invoke-interface {v9, v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->j(I)V

    .line 715
    .line 716
    .line 717
    :cond_20
    :goto_a
    const v9, 0x8000

    .line 718
    .line 719
    .line 720
    and-int/2addr v9, v8

    .line 721
    if-eqz v9, :cond_25

    .line 722
    .line 723
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 724
    .line 725
    iget v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->z:I

    .line 726
    .line 727
    if-nez v11, :cond_21

    .line 728
    .line 729
    const/4 v12, 0x0

    .line 730
    goto :goto_b

    .line 731
    :cond_21
    const/4 v12, 0x1

    .line 732
    if-ne v11, v12, :cond_22

    .line 733
    .line 734
    const/4 v12, 0x1

    .line 735
    goto :goto_b

    .line 736
    :cond_22
    const/4 v12, 0x2

    .line 737
    if-ne v11, v12, :cond_24

    .line 738
    .line 739
    :goto_b
    iget-object v9, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 740
    .line 741
    invoke-interface {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->l()I

    .line 742
    .line 743
    .line 744
    move-result v11

    .line 745
    if-ne v11, v12, :cond_23

    .line 746
    .line 747
    goto :goto_c

    .line 748
    :cond_23
    invoke-interface {v9, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->G(I)V

    .line 749
    .line 750
    .line 751
    goto :goto_c

    .line 752
    :cond_24
    const-string v0, "Not supported composition strategy"

    .line 753
    .line 754
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    return-void

    .line 758
    :cond_25
    :goto_c
    and-int/lit16 v9, v8, 0x1f1b

    .line 759
    .line 760
    if-eqz v9, :cond_26

    .line 761
    .line 762
    const/4 v12, 0x1

    .line 763
    iput-boolean v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->z:Z

    .line 764
    .line 765
    iput-boolean v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->A:Z

    .line 766
    .line 767
    :cond_26
    iget-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->y:Landroidx/compose/ui/graphics/Outline;

    .line 768
    .line 769
    iget-object v11, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 770
    .line 771
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v9

    .line 775
    if-nez v9, :cond_2e

    .line 776
    .line 777
    iget-object v9, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->H:Landroidx/compose/ui/graphics/Outline;

    .line 778
    .line 779
    iput-object v9, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->y:Landroidx/compose/ui/graphics/Outline;

    .line 780
    .line 781
    if-nez v9, :cond_27

    .line 782
    .line 783
    move-object/from16 v26, v4

    .line 784
    .line 785
    move-object/from16 v27, v5

    .line 786
    .line 787
    goto/16 :goto_f

    .line 788
    .line 789
    :cond_27
    iget-object v12, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 790
    .line 791
    instance-of v13, v9, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 792
    .line 793
    if-eqz v13, :cond_28

    .line 794
    .line 795
    move-object v13, v9

    .line 796
    check-cast v13, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 797
    .line 798
    iget-object v13, v13, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    .line 799
    .line 800
    move/from16 v20, v14

    .line 801
    .line 802
    iget v14, v13, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 803
    .line 804
    iget v15, v13, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 805
    .line 806
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 807
    .line 808
    .line 809
    move-result v10

    .line 810
    move-object/from16 v21, v12

    .line 811
    .line 812
    int-to-long v11, v10

    .line 813
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 814
    .line 815
    .line 816
    move-result v10

    .line 817
    move-wide/from16 v18, v11

    .line 818
    .line 819
    int-to-long v10, v10

    .line 820
    shl-long v18, v18, v20

    .line 821
    .line 822
    and-long v10, v10, v16

    .line 823
    .line 824
    or-long v10, v18, v10

    .line 825
    .line 826
    iget v12, v13, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 827
    .line 828
    sub-float/2addr v12, v14

    .line 829
    iget v13, v13, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 830
    .line 831
    sub-float/2addr v13, v15

    .line 832
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 833
    .line 834
    .line 835
    move-result v12

    .line 836
    int-to-long v14, v12

    .line 837
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 838
    .line 839
    .line 840
    move-result v12

    .line 841
    int-to-long v12, v12

    .line 842
    shl-long v14, v14, v20

    .line 843
    .line 844
    and-long v12, v12, v16

    .line 845
    .line 846
    or-long v23, v14, v12

    .line 847
    .line 848
    const/16 v25, 0x0

    .line 849
    .line 850
    move-object/from16 v20, v21

    .line 851
    .line 852
    move-wide/from16 v21, v10

    .line 853
    .line 854
    invoke-virtual/range {v20 .. v25}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f(JJF)V

    .line 855
    .line 856
    .line 857
    :goto_d
    move-object/from16 v26, v4

    .line 858
    .line 859
    move-object/from16 v27, v5

    .line 860
    .line 861
    goto/16 :goto_e

    .line 862
    .line 863
    :cond_28
    move-object v10, v12

    .line 864
    move/from16 v20, v14

    .line 865
    .line 866
    instance-of v11, v9, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 867
    .line 868
    const-wide/16 v12, 0x0

    .line 869
    .line 870
    if-eqz v11, :cond_29

    .line 871
    .line 872
    move-object v11, v9

    .line 873
    check-cast v11, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 874
    .line 875
    iget-object v11, v11, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 876
    .line 877
    const/4 v14, 0x0

    .line 878
    iput-object v14, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 879
    .line 880
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    iput-wide v14, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 886
    .line 887
    iput-wide v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 888
    .line 889
    const/4 v15, 0x0

    .line 890
    iput v15, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 891
    .line 892
    const/4 v12, 0x1

    .line 893
    iput-boolean v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 894
    .line 895
    const/4 v12, 0x0

    .line 896
    iput-boolean v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 897
    .line 898
    iput-object v11, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 899
    .line 900
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 901
    .line 902
    .line 903
    goto :goto_d

    .line 904
    :cond_29
    instance-of v11, v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 905
    .line 906
    if-eqz v11, :cond_2d

    .line 907
    .line 908
    move-object v11, v9

    .line 909
    check-cast v11, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 910
    .line 911
    iget-object v14, v11, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    .line 912
    .line 913
    if-eqz v14, :cond_2a

    .line 914
    .line 915
    const/4 v15, 0x0

    .line 916
    iput-object v15, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 917
    .line 918
    move-object/from16 v26, v4

    .line 919
    .line 920
    move-object/from16 v27, v5

    .line 921
    .line 922
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    iput-wide v4, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 928
    .line 929
    iput-wide v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 930
    .line 931
    const/4 v15, 0x0

    .line 932
    iput v15, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 933
    .line 934
    const/4 v12, 0x1

    .line 935
    iput-boolean v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 936
    .line 937
    const/4 v12, 0x0

    .line 938
    iput-boolean v12, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 939
    .line 940
    iput-object v14, v10, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 941
    .line 942
    invoke-virtual {v10}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 943
    .line 944
    .line 945
    goto :goto_e

    .line 946
    :cond_2a
    move-object/from16 v26, v4

    .line 947
    .line 948
    move-object/from16 v27, v5

    .line 949
    .line 950
    const/4 v12, 0x0

    .line 951
    iget-object v4, v11, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 952
    .line 953
    iget v5, v4, Landroidx/compose/ui/geometry/RoundRect;->b:F

    .line 954
    .line 955
    iget v11, v4, Landroidx/compose/ui/geometry/RoundRect;->a:F

    .line 956
    .line 957
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 958
    .line 959
    .line 960
    move-result v13

    .line 961
    int-to-long v13, v13

    .line 962
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 963
    .line 964
    .line 965
    move-result v12

    .line 966
    move-object/from16 v21, v10

    .line 967
    .line 968
    move/from16 v18, v11

    .line 969
    .line 970
    int-to-long v10, v12

    .line 971
    shl-long v12, v13, v20

    .line 972
    .line 973
    and-long v10, v10, v16

    .line 974
    .line 975
    or-long/2addr v10, v12

    .line 976
    iget v12, v4, Landroidx/compose/ui/geometry/RoundRect;->c:F

    .line 977
    .line 978
    sub-float v12, v12, v18

    .line 979
    .line 980
    iget v13, v4, Landroidx/compose/ui/geometry/RoundRect;->d:F

    .line 981
    .line 982
    sub-float/2addr v13, v5

    .line 983
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 984
    .line 985
    .line 986
    move-result v5

    .line 987
    move-wide/from16 v18, v10

    .line 988
    .line 989
    int-to-long v10, v5

    .line 990
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    int-to-long v12, v5

    .line 995
    shl-long v10, v10, v20

    .line 996
    .line 997
    and-long v12, v12, v16

    .line 998
    .line 999
    or-long v23, v10, v12

    .line 1000
    .line 1001
    iget-wide v4, v4, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 1002
    .line 1003
    shr-long v4, v4, v20

    .line 1004
    .line 1005
    long-to-int v4, v4

    .line 1006
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1007
    .line 1008
    .line 1009
    move-result v25

    .line 1010
    move-object/from16 v20, v21

    .line 1011
    .line 1012
    move-wide/from16 v21, v18

    .line 1013
    .line 1014
    invoke-virtual/range {v20 .. v25}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f(JJF)V

    .line 1015
    .line 1016
    .line 1017
    :goto_e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1018
    .line 1019
    const/16 v5, 0x21

    .line 1020
    .line 1021
    if-ge v4, v5, :cond_2c

    .line 1022
    .line 1023
    instance-of v4, v9, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 1024
    .line 1025
    if-nez v4, :cond_2b

    .line 1026
    .line 1027
    instance-of v4, v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 1028
    .line 1029
    if-eqz v4, :cond_2c

    .line 1030
    .line 1031
    check-cast v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 1032
    .line 1033
    iget-object v4, v9, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 1034
    .line 1035
    invoke-static {v4}, Landroidx/compose/ui/geometry/RoundRectKt;->b(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v4

    .line 1039
    if-nez v4, :cond_2c

    .line 1040
    .line 1041
    :cond_2b
    iget-object v4, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Lkotlin/jvm/functions/Function0;

    .line 1042
    .line 1043
    if-eqz v4, :cond_2c

    .line 1044
    .line 1045
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    :cond_2c
    :goto_f
    const/4 v10, 0x1

    .line 1049
    goto :goto_10

    .line 1050
    :cond_2d
    invoke-static {}, Lk8;->e()V

    .line 1051
    .line 1052
    .line 1053
    return-void

    .line 1054
    :cond_2e
    move-object/from16 v26, v4

    .line 1055
    .line 1056
    move-object/from16 v27, v5

    .line 1057
    .line 1058
    const/4 v10, 0x0

    .line 1059
    :goto_10
    iget v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->j:I

    .line 1060
    .line 1061
    iput v4, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->w:I

    .line 1062
    .line 1063
    if-nez v8, :cond_2f

    .line 1064
    .line 1065
    if-eqz v10, :cond_31

    .line 1066
    .line 1067
    :cond_2f
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    if-eqz v1, :cond_30

    .line 1072
    .line 1073
    invoke-interface {v1, v7, v7}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 1074
    .line 1075
    .line 1076
    :cond_30
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->l()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    if-eqz v1, :cond_31

    .line 1081
    .line 1082
    const/4 v15, 0x0

    .line 1083
    invoke-virtual {v7, v15}, Landroidx/compose/ui/platform/AndroidComposeView;->M(F)V

    .line 1084
    .line 1085
    .line 1086
    :cond_31
    iget-boolean v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 1087
    .line 1088
    iget-boolean v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->y:Z

    .line 1089
    .line 1090
    iput-boolean v4, v0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 1091
    .line 1092
    iget v3, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->m:F

    .line 1093
    .line 1094
    iput v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->L:F

    .line 1095
    .line 1096
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->a:F

    .line 1097
    .line 1098
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->a:F

    .line 1099
    .line 1100
    cmpg-float v3, v3, v4

    .line 1101
    .line 1102
    if-nez v3, :cond_32

    .line 1103
    .line 1104
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->b:F

    .line 1105
    .line 1106
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->b:F

    .line 1107
    .line 1108
    cmpg-float v3, v3, v4

    .line 1109
    .line 1110
    if-nez v3, :cond_32

    .line 1111
    .line 1112
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->c:F

    .line 1113
    .line 1114
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->c:F

    .line 1115
    .line 1116
    cmpg-float v3, v3, v4

    .line 1117
    .line 1118
    if-nez v3, :cond_32

    .line 1119
    .line 1120
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->d:F

    .line 1121
    .line 1122
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->d:F

    .line 1123
    .line 1124
    cmpg-float v3, v3, v4

    .line 1125
    .line 1126
    if-nez v3, :cond_32

    .line 1127
    .line 1128
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->e:F

    .line 1129
    .line 1130
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->e:F

    .line 1131
    .line 1132
    cmpg-float v3, v3, v4

    .line 1133
    .line 1134
    if-nez v3, :cond_32

    .line 1135
    .line 1136
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->f:F

    .line 1137
    .line 1138
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->f:F

    .line 1139
    .line 1140
    cmpg-float v3, v3, v4

    .line 1141
    .line 1142
    if-nez v3, :cond_32

    .line 1143
    .line 1144
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->g:F

    .line 1145
    .line 1146
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->g:F

    .line 1147
    .line 1148
    cmpg-float v3, v3, v4

    .line 1149
    .line 1150
    if-nez v3, :cond_32

    .line 1151
    .line 1152
    iget v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->h:F

    .line 1153
    .line 1154
    iget v4, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->h:F

    .line 1155
    .line 1156
    cmpg-float v3, v3, v4

    .line 1157
    .line 1158
    if-nez v3, :cond_32

    .line 1159
    .line 1160
    iget-wide v3, v6, Landroidx/compose/ui/node/LayerPositionalProperties;->i:J

    .line 1161
    .line 1162
    iget-wide v5, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->i:J

    .line 1163
    .line 1164
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->a(JJ)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v2

    .line 1168
    if-eqz v2, :cond_32

    .line 1169
    .line 1170
    const/4 v10, 0x1

    .line 1171
    goto :goto_11

    .line 1172
    :cond_32
    const/4 v10, 0x0

    .line 1173
    :goto_11
    if-eqz p1, :cond_34

    .line 1174
    .line 1175
    if-eqz v10, :cond_33

    .line 1176
    .line 1177
    iget-boolean v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 1178
    .line 1179
    if-ne v1, v2, :cond_33

    .line 1180
    .line 1181
    move-object/from16 v1, v27

    .line 1182
    .line 1183
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 1184
    .line 1185
    if-eqz v1, :cond_34

    .line 1186
    .line 1187
    :cond_33
    move-object/from16 v1, v26

    .line 1188
    .line 1189
    goto :goto_12

    .line 1190
    :cond_34
    move-object/from16 v1, v26

    .line 1191
    .line 1192
    goto :goto_13

    .line 1193
    :goto_12
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 1194
    .line 1195
    if-eqz v2, :cond_35

    .line 1196
    .line 1197
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1198
    .line 1199
    invoke-virtual {v2, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->v(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1200
    .line 1201
    .line 1202
    :cond_35
    :goto_13
    if-nez v10, :cond_39

    .line 1203
    .line 1204
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->R(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 1205
    .line 1206
    .line 1207
    iget v0, v1, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 1208
    .line 1209
    if-lez v0, :cond_39

    .line 1210
    .line 1211
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1216
    .line 1217
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 1218
    .line 1219
    iget-object v2, v2, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 1220
    .line 1221
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    iget v3, v1, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 1225
    .line 1226
    if-lez v3, :cond_36

    .line 1227
    .line 1228
    iget-object v2, v2, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 1229
    .line 1230
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1231
    .line 1232
    .line 1233
    const/4 v12, 0x1

    .line 1234
    iput-boolean v12, v1, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 1235
    .line 1236
    :cond_36
    const/4 v14, 0x0

    .line 1237
    invoke-virtual {v0, v14}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 1238
    .line 1239
    .line 1240
    return-void

    .line 1241
    :cond_37
    const-string v0, "updateLayerParameters requires a non-null layerBlock"

    .line 1242
    .line 1243
    invoke-static {v0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    throw v0

    .line 1248
    :cond_38
    if-nez v2, :cond_3a

    .line 1249
    .line 1250
    :cond_39
    :goto_14
    return-void

    .line 1251
    :cond_3a
    const-string v0, "null layer with a non-null layerBlock"

    .line 1252
    .line 1253
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    return-void
.end method

.method public final F0()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final F1(J)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide v1, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long v3, p1, v1

    .line 9
    .line 10
    xor-long/2addr v1, v3

    .line 11
    const-wide v3, 0x100000001L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    sub-long/2addr v1, v3

    .line 17
    const-wide v3, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_d

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 30
    .line 31
    if-eqz v1, :cond_c

    .line 32
    .line 33
    iget-boolean v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 34
    .line 35
    if-eqz v0, :cond_c

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 38
    .line 39
    const/16 v0, 0x20

    .line 40
    .line 41
    shr-long v4, p1, v0

    .line 42
    .line 43
    long-to-int v4, v4

    .line 44
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-wide v6, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long v8, p1, v6

    .line 54
    .line 55
    long-to-int v4, v8

    .line 56
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v1, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 61
    .line 62
    iget-boolean v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 63
    .line 64
    if-eqz v8, :cond_b

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d()Landroidx/compose/ui/graphics/Outline;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    instance-of v8, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 71
    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 75
    .line 76
    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    .line 77
    .line 78
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 79
    .line 80
    cmpg-float v1, v1, v5

    .line 81
    .line 82
    if-gtz v1, :cond_0

    .line 83
    .line 84
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 85
    .line 86
    cmpg-float v1, v5, v1

    .line 87
    .line 88
    if-gez v1, :cond_0

    .line 89
    .line 90
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 91
    .line 92
    cmpg-float v1, v1, v4

    .line 93
    .line 94
    if-gtz v1, :cond_0

    .line 95
    .line 96
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 97
    .line 98
    cmpg-float v0, v4, v0

    .line 99
    .line 100
    if-gez v0, :cond_0

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_0
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v17, 0x1

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_1
    instance-of v8, v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 111
    .line 112
    if-eqz v8, :cond_9

    .line 113
    .line 114
    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 115
    .line 116
    iget-object v1, v1, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    .line 117
    .line 118
    iget v8, v1, Landroidx/compose/ui/geometry/RoundRect;->c:F

    .line 119
    .line 120
    iget v9, v1, Landroidx/compose/ui/geometry/RoundRect;->b:F

    .line 121
    .line 122
    iget v10, v1, Landroidx/compose/ui/geometry/RoundRect;->d:F

    .line 123
    .line 124
    iget v11, v1, Landroidx/compose/ui/geometry/RoundRect;->a:F

    .line 125
    .line 126
    iget-wide v12, v1, Landroidx/compose/ui/geometry/RoundRect;->f:J

    .line 127
    .line 128
    iget-wide v14, v1, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 129
    .line 130
    const/16 v16, 0x0

    .line 131
    .line 132
    const/16 v17, 0x1

    .line 133
    .line 134
    iget-wide v2, v1, Landroidx/compose/ui/geometry/RoundRect;->g:J

    .line 135
    .line 136
    move-wide/from16 v18, v6

    .line 137
    .line 138
    iget-wide v6, v1, Landroidx/compose/ui/geometry/RoundRect;->e:J

    .line 139
    .line 140
    cmpg-float v20, v5, v11

    .line 141
    .line 142
    if-ltz v20, :cond_8

    .line 143
    .line 144
    cmpl-float v20, v5, v8

    .line 145
    .line 146
    if-gez v20, :cond_8

    .line 147
    .line 148
    cmpg-float v20, v4, v9

    .line 149
    .line 150
    if-ltz v20, :cond_8

    .line 151
    .line 152
    cmpl-float v20, v4, v10

    .line 153
    .line 154
    if-ltz v20, :cond_2

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_2
    move/from16 p0, v0

    .line 159
    .line 160
    move-object/from16 v20, v1

    .line 161
    .line 162
    shr-long v0, v6, p0

    .line 163
    .line 164
    long-to-int v0, v0

    .line 165
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    move/from16 p1, v0

    .line 170
    .line 171
    move/from16 p2, v1

    .line 172
    .line 173
    shr-long v0, v12, p0

    .line 174
    .line 175
    long-to-int v0, v0

    .line 176
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    add-float v1, v1, p2

    .line 181
    .line 182
    sub-float v21, v8, v11

    .line 183
    .line 184
    cmpg-float v1, v1, v21

    .line 185
    .line 186
    if-gtz v1, :cond_7

    .line 187
    .line 188
    move/from16 v21, v0

    .line 189
    .line 190
    shr-long v0, v14, p0

    .line 191
    .line 192
    long-to-int v0, v0

    .line 193
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    move/from16 p2, v0

    .line 198
    .line 199
    move/from16 v22, v1

    .line 200
    .line 201
    shr-long v0, v2, p0

    .line 202
    .line 203
    long-to-int v0, v0

    .line 204
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    add-float v1, v1, v22

    .line 209
    .line 210
    sub-float v22, v8, v11

    .line 211
    .line 212
    cmpg-float v1, v1, v22

    .line 213
    .line 214
    if-gtz v1, :cond_7

    .line 215
    .line 216
    and-long v6, v6, v18

    .line 217
    .line 218
    long-to-int v1, v6

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    and-long v14, v14, v18

    .line 224
    .line 225
    long-to-int v7, v14

    .line 226
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    add-float/2addr v14, v6

    .line 231
    sub-float v6, v10, v9

    .line 232
    .line 233
    cmpg-float v6, v14, v6

    .line 234
    .line 235
    if-gtz v6, :cond_7

    .line 236
    .line 237
    and-long v12, v12, v18

    .line 238
    .line 239
    long-to-int v6, v12

    .line 240
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    and-long v2, v2, v18

    .line 245
    .line 246
    long-to-int v2, v2

    .line 247
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    add-float/2addr v3, v12

    .line 252
    sub-float v12, v10, v9

    .line 253
    .line 254
    cmpg-float v3, v3, v12

    .line 255
    .line 256
    if-gtz v3, :cond_7

    .line 257
    .line 258
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    add-float/2addr v3, v11

    .line 263
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    add-float/2addr v1, v9

    .line 268
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    sub-float v12, v8, v12

    .line 273
    .line 274
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    add-float/2addr v6, v9

    .line 279
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    sub-float/2addr v8, v0

    .line 284
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    sub-float v0, v10, v0

    .line 289
    .line 290
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    sub-float/2addr v10, v2

    .line 295
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    add-float v7, v2, v11

    .line 300
    .line 301
    cmpg-float v2, v5, v3

    .line 302
    .line 303
    if-gez v2, :cond_3

    .line 304
    .line 305
    cmpg-float v2, v4, v1

    .line 306
    .line 307
    if-gez v2, :cond_3

    .line 308
    .line 309
    move-object/from16 v2, v20

    .line 310
    .line 311
    iget-wide v9, v2, Landroidx/compose/ui/geometry/RoundRect;->e:J

    .line 312
    .line 313
    move v8, v1

    .line 314
    move v7, v3

    .line 315
    move v6, v4

    .line 316
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->b(FFFFJ)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    goto/16 :goto_3

    .line 321
    .line 322
    :cond_3
    move v1, v7

    .line 323
    move v7, v8

    .line 324
    move-object/from16 v2, v20

    .line 325
    .line 326
    move v8, v6

    .line 327
    move v6, v4

    .line 328
    cmpg-float v3, v5, v1

    .line 329
    .line 330
    if-gez v3, :cond_4

    .line 331
    .line 332
    cmpl-float v3, v6, v10

    .line 333
    .line 334
    if-lez v3, :cond_4

    .line 335
    .line 336
    move v8, v10

    .line 337
    iget-wide v9, v2, Landroidx/compose/ui/geometry/RoundRect;->h:J

    .line 338
    .line 339
    move v7, v1

    .line 340
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->b(FFFFJ)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    goto :goto_3

    .line 345
    :cond_4
    move v3, v8

    .line 346
    cmpl-float v1, v5, v12

    .line 347
    .line 348
    if-lez v1, :cond_5

    .line 349
    .line 350
    cmpg-float v1, v6, v3

    .line 351
    .line 352
    if-gez v1, :cond_5

    .line 353
    .line 354
    iget-wide v9, v2, Landroidx/compose/ui/geometry/RoundRect;->f:J

    .line 355
    .line 356
    move v8, v3

    .line 357
    move v7, v12

    .line 358
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->b(FFFFJ)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    goto :goto_3

    .line 363
    :cond_5
    cmpl-float v1, v5, v7

    .line 364
    .line 365
    if-lez v1, :cond_6

    .line 366
    .line 367
    cmpl-float v1, v6, v0

    .line 368
    .line 369
    if-lez v1, :cond_6

    .line 370
    .line 371
    iget-wide v9, v2, Landroidx/compose/ui/geometry/RoundRect;->g:J

    .line 372
    .line 373
    move v8, v0

    .line 374
    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->b(FFFFJ)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    goto :goto_3

    .line 379
    :cond_6
    :goto_0
    move/from16 v0, v17

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_7
    move v6, v4

    .line 383
    move-object/from16 v2, v20

    .line 384
    .line 385
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/Path;->d(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v0, v5, v6}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->a(Landroidx/compose/ui/graphics/Path;FF)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    goto :goto_3

    .line 397
    :cond_8
    :goto_1
    move/from16 v0, v16

    .line 398
    .line 399
    goto :goto_3

    .line 400
    :cond_9
    move v6, v4

    .line 401
    const/16 v16, 0x0

    .line 402
    .line 403
    const/16 v17, 0x1

    .line 404
    .line 405
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 406
    .line 407
    if-eqz v0, :cond_a

    .line 408
    .line 409
    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 410
    .line 411
    iget-object v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    .line 412
    .line 413
    invoke-static {v0, v5, v6}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->a(Landroidx/compose/ui/graphics/Path;FF)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    goto :goto_3

    .line 418
    :cond_a
    invoke-static {}, Lk8;->e()V

    .line 419
    .line 420
    .line 421
    return v16

    .line 422
    :cond_b
    :goto_2
    const/16 v16, 0x0

    .line 423
    .line 424
    const/16 v17, 0x1

    .line 425
    .line 426
    goto :goto_0

    .line 427
    :goto_3
    if-eqz v0, :cond_e

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_c
    const/16 v17, 0x1

    .line 431
    .line 432
    :goto_4
    return v17

    .line 433
    :cond_d
    const/16 v16, 0x0

    .line 434
    .line 435
    :cond_e
    return v16
.end method

.method public final G0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->M:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final I(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->z1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->Z0(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->C1(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->B1(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final J0()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final K0()Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->M:Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Asking for measurement result of unmeasured layout modifier"

    .line 7
    .line 8
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final L()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v2, v1

    .line 19
    :goto_0
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v3, "\n|"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " isAttached="

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " modifier="

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->T:Landroidx/compose/ui/Modifier;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " tail="

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 76
    .line 77
    .line 78
    iget-object p0, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 79
    .line 80
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 81
    .line 82
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 83
    .line 84
    return-object p0
.end method

.method public final L0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    return-object p0
.end method

.method public final M0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->P:F

    .line 8
    .line 9
    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->b0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->P:F

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v2, v0, v3}, Landroidx/compose/ui/layout/Placeable;->c0(JFLkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final R(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->G(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    return-wide p0
.end method

.method public final S(J)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-eqz p0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    if-ne p0, v1, :cond_1

    .line 26
    .line 27
    iget-boolean v1, v0, Landroidx/compose/ui/node/LayoutNode;->l:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Landroidx/compose/ui/spatial/RectManager;->b(Landroidx/compose/ui/node/LayoutNode;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide v2, 0x7fffffff7fffffffL

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    return-wide p0

    .line 59
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-boolean v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {p1, p2, v1}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    :cond_3
    :goto_1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 79
    .line 80
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    return-wide p1
.end method

.method public final S0(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 5

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->S0(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 12
    .line 13
    const/16 p1, 0x20

    .line 14
    .line 15
    shr-long v2, v0, p1

    .line 16
    .line 17
    long-to-int v2, v2

    .line 18
    iget v3, p2, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    sub-float/2addr v3, v2

    .line 22
    iput v3, p2, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 23
    .line 24
    iget v3, p2, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 25
    .line 26
    sub-float/2addr v3, v2

    .line 27
    iput v3, p2, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 28
    .line 29
    const-wide v2, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v0, v2

    .line 35
    long-to-int v0, v0

    .line 36
    iget v1, p2, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    sub-float/2addr v1, v0

    .line 40
    iput v1, p2, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 41
    .line 42
    iget v1, p2, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 43
    .line 44
    sub-float/2addr v1, v0

    .line 45
    iput v1, p2, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a()[F

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-boolean v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iput v4, p2, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 65
    .line 66
    iput v4, p2, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 67
    .line 68
    iput v4, p2, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 69
    .line 70
    iput v4, p2, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v1, p2}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 83
    .line 84
    shr-long p0, v0, p1

    .line 85
    .line 86
    long-to-int p0, p0

    .line 87
    int-to-float p0, p0

    .line 88
    and-long/2addr v0, v2

    .line 89
    long-to-int p1, v0

    .line 90
    int-to-float p1, p1

    .line 91
    invoke-virtual {p2, v4, v4, p0, p1}, Landroidx/compose/ui/geometry/MutableRect;->a(FFFF)V

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    return-void
.end method

.method public final T0(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->T0(Landroidx/compose/ui/node/NodeCoordinator;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->a1(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->a1(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    return-wide p0
.end method

.method public final U0(J)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 10
    .line 11
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 12
    .line 13
    sub-float/2addr v1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v1, v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 27
    .line 28
    iget v0, p0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 29
    .line 30
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 31
    .line 32
    sub-float/2addr v0, p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-float v0, p0

    .line 39
    :goto_1
    const/16 p0, 0x20

    .line 40
    .line 41
    shr-long v2, p1, p0

    .line 42
    .line 43
    long-to-int v2, v2

    .line 44
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    sub-float/2addr v2, v1

    .line 49
    const-wide v3, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long/2addr p1, v3

    .line 55
    long-to-int p1, p1

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sub-float/2addr p1, v0

    .line 61
    const/high16 p2, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr v2, p2

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    div-float/2addr p1, p2

    .line 70
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    int-to-long v0, p2

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    int-to-long p1, p1

    .line 84
    shl-long/2addr v0, p0

    .line 85
    and-long p0, p1, v3

    .line 86
    .line 87
    or-long/2addr p0, v0

    .line 88
    return-wide p0
.end method

.method public final V0(JJ)F
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    shr-long v2, p3, v1

    .line 9
    .line 10
    long-to-int v2, v2

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    cmpl-float v0, v0, v2

    .line 16
    .line 17
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    const-wide v3, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    and-long v5, p3, v3

    .line 32
    .line 33
    long-to-int v5, v5

    .line 34
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    cmpl-float v0, v0, v5

    .line 39
    .line 40
    if-ltz v0, :cond_0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->U0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    shr-long v5, p3, v1

    .line 48
    .line 49
    long-to-int v0, v5

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    and-long/2addr p3, v3

    .line 55
    long-to-int p3, p3

    .line 56
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    shr-long v5, p1, v1

    .line 61
    .line 62
    long-to-int p4, v5

    .line 63
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    const/4 v5, 0x0

    .line 68
    cmpg-float v6, p4, v5

    .line 69
    .line 70
    if-gez v6, :cond_1

    .line 71
    .line 72
    neg-float p4, p4

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    int-to-float v6, v6

    .line 79
    sub-float/2addr p4, v6

    .line 80
    :goto_0
    invoke-static {v5, p4}, Ljava/lang/Math;->max(FF)F

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    and-long/2addr p1, v3

    .line 85
    long-to-int p1, p1

    .line 86
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    cmpg-float p2, p1, v5

    .line 91
    .line 92
    if-gez p2, :cond_2

    .line 93
    .line 94
    neg-float p0, p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    int-to-float p0, p0

    .line 101
    sub-float p0, p1, p0

    .line 102
    .line 103
    :goto_1
    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    int-to-long p1, p1

    .line 112
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    int-to-long v6, p0

    .line 117
    shl-long p0, p1, v1

    .line 118
    .line 119
    and-long/2addr v6, v3

    .line 120
    or-long/2addr p0, v6

    .line 121
    cmpl-float p2, v0, v5

    .line 122
    .line 123
    if-gtz p2, :cond_3

    .line 124
    .line 125
    cmpl-float p2, p3, v5

    .line 126
    .line 127
    if-lez p2, :cond_4

    .line 128
    .line 129
    :cond_3
    shr-long v5, p0, v1

    .line 130
    .line 131
    long-to-int p2, v5

    .line 132
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    cmpg-float p4, p4, v0

    .line 137
    .line 138
    if-gtz p4, :cond_4

    .line 139
    .line 140
    and-long/2addr p0, v3

    .line 141
    long-to-int p0, p0

    .line 142
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    cmpg-float p1, p1, p3

    .line 147
    .line 148
    if-gtz p1, :cond_4

    .line 149
    .line 150
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    mul-float/2addr p1, p1

    .line 159
    mul-float/2addr p0, p0

    .line 160
    add-float/2addr p0, p1

    .line 161
    return p0

    .line 162
    :cond_4
    return v2
.end method

.method public final W0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 6
    .line 7
    iget-object p0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->v:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->L()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    cmpl-float v1, v1, v2

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->C:Z

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    shr-long v2, v0, v2

    .line 48
    .line 49
    long-to-int v2, v2

    .line 50
    int-to-float v2, v2

    .line 51
    const-wide v3, 0xffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v0, v3

    .line 57
    long-to-int v0, v0

    .line 58
    int-to-float v0, v0

    .line 59
    invoke-interface {p1, v2, v0}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->X0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 63
    .line 64
    .line 65
    neg-float p0, v2

    .line 66
    neg-float p2, v0

    .line 67
    invoke-interface {p1, p0, p2}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final X0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->f1(I)Landroidx/compose/ui/Modifier$Node;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->t1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v10, v2

    .line 36
    :goto_0
    if-eqz v1, :cond_8

    .line 37
    .line 38
    instance-of v4, v1, Landroidx/compose/ui/node/DrawModifierNode;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move-object v8, v1

    .line 43
    check-cast v8, Landroidx/compose/ui/node/DrawModifierNode;

    .line 44
    .line 45
    move-object v7, p0

    .line 46
    move-object v4, p1

    .line 47
    move-object v9, p2

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->b(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 49
    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_1
    move-object v7, p0

    .line 53
    move-object v4, p1

    .line 54
    move-object v9, p2

    .line 55
    iget p0, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 56
    .line 57
    and-int/2addr p0, v0

    .line 58
    if-eqz p0, :cond_7

    .line 59
    .line 60
    instance-of p0, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 61
    .line 62
    if-eqz p0, :cond_7

    .line 63
    .line 64
    move-object p0, v1

    .line 65
    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    :goto_1
    const/4 p2, 0x1

    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    iget v8, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 74
    .line 75
    and-int/2addr v8, v0

    .line 76
    if-eqz v8, :cond_5

    .line 77
    .line 78
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    if-ne p1, p2, :cond_2

    .line 81
    .line 82
    move-object v1, p0

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    if-nez v10, :cond_3

    .line 85
    .line 86
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    .line 87
    .line 88
    const/16 p2, 0x10

    .line 89
    .line 90
    new-array p2, p2, [Landroidx/compose/ui/Modifier$Node;

    .line 91
    .line 92
    invoke-direct {v10, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object v1, v2

    .line 101
    :cond_4
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    if-ne p1, p2, :cond_7

    .line 108
    .line 109
    :goto_3
    move-object p1, v4

    .line 110
    move-object p0, v7

    .line 111
    move-object p2, v9

    .line 112
    goto :goto_0

    .line 113
    :cond_7
    :goto_4
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    return-void
.end method

.method public abstract Y0()V
.end method

.method public final Z0(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, "visitLocalAncestors called on an unattached node"

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    :goto_0
    if-eqz v1, :cond_7

    .line 31
    .line 32
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 33
    .line 34
    and-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    if-ne v1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    iget v2, v0, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 45
    .line 46
    iget v3, v1, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 47
    .line 48
    if-le v2, v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v2, v1

    .line 59
    :goto_2
    iget v3, v2, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 60
    .line 61
    iget v4, v0, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 62
    .line 63
    if-le v3, v4, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_3
    if-eq v0, v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const-string p0, "layouts are not part of the same hierarchy"

    .line 89
    .line 90
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0

    .line 95
    :cond_6
    if-ne v2, v1, :cond_8

    .line 96
    .line 97
    :cond_7
    return-object p0

    .line 98
    :cond_8
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 99
    .line 100
    if-ne v0, p0, :cond_9

    .line 101
    .line 102
    :goto_4
    return-object p1

    .line 103
    :cond_9
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 104
    .line 105
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 106
    .line 107
    return-object p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 25
    .line 26
    :goto_0
    if-eqz v1, :cond_8

    .line 27
    .line 28
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 29
    .line 30
    and-int/2addr v4, v2

    .line 31
    if-eqz v4, :cond_7

    .line 32
    .line 33
    move-object v4, v1

    .line 34
    move-object v5, v3

    .line 35
    :goto_1
    if-eqz v4, :cond_7

    .line 36
    .line 37
    instance-of v6, v4, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 38
    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    check-cast v4, Landroidx/compose/ui/node/ParentDataModifierNode;

    .line 42
    .line 43
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 44
    .line 45
    iget-object v7, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {v4, v6, v7}, Landroidx/compose/ui/node/ParentDataModifierNode;->Z(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput-object v4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_0
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 55
    .line 56
    and-int/2addr v6, v2

    .line 57
    if-eqz v6, :cond_6

    .line 58
    .line 59
    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 60
    .line 61
    if-eqz v6, :cond_6

    .line 62
    .line 63
    move-object v6, v4

    .line 64
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 65
    .line 66
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    :goto_2
    const/4 v8, 0x1

    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 73
    .line 74
    and-int/2addr v9, v2

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    if-ne v7, v8, :cond_1

    .line 80
    .line 81
    move-object v4, v6

    .line 82
    goto :goto_3

    .line 83
    :cond_1
    if-nez v5, :cond_2

    .line 84
    .line 85
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 86
    .line 87
    const/16 v8, 0x10

    .line 88
    .line 89
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 90
    .line 91
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-eqz v4, :cond_3

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    move-object v4, v3

    .line 100
    :cond_3
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_3
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-ne v7, v8, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    :goto_4
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    goto :goto_1

    .line 114
    :cond_7
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_8
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_9
    return-object v3
.end method

.method public final a1(J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    shr-long v3, p1, v2

    .line 6
    .line 7
    long-to-int v3, v3

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    shr-long v4, v0, v2

    .line 13
    .line 14
    long-to-int v4, v4

    .line 15
    int-to-float v4, v4

    .line 16
    sub-float/2addr v3, v4

    .line 17
    const-wide v4, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p1, v4

    .line 23
    long-to-int p1, p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-long/2addr v0, v4

    .line 29
    long-to-int p2, v0

    .line 30
    int-to-float p2, p2

    .line 31
    sub-float/2addr p1, p2

    .line 32
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-long v0, p2

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long p1, p1

    .line 42
    shl-long/2addr v0, v2

    .line 43
    and-long/2addr p1, v4

    .line 44
    or-long/2addr p1, v0

    .line 45
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->a()[F

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    return-wide p0

    .line 63
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    return-wide p0

    .line 73
    :cond_2
    :goto_0
    return-wide p1
.end method

.method public abstract b0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method

.method public abstract b1()Landroidx/compose/ui/node/LookaheadDelegate;
.end method

.method public final c1()J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->J:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/unit/Density;->D0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public final d(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 17
    .line 18
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0
.end method

.method public abstract d1()Landroidx/compose/ui/Modifier$Node;
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final e1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->T:Landroidx/compose/ui/geometry/Rect;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->f()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f1(I)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_1
    if-eqz p0, :cond_3

    .line 22
    .line 23
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 24
    .line 25
    and-int/2addr v0, p1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 29
    .line 30
    and-int/2addr v0, p1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    if-eq p0, v1, :cond_3

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final g(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final g1(Z)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 6
    .line 7
    if-ne v1, p0, :cond_0

    .line 8
    .line 9
    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    return-object p0
.end method

.method public final h1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object v4, p5

    .line 7
    move v5, p6

    .line 8
    move v6, p7

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->f(Landroidx/compose/ui/Modifier$Node;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1, v0}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->h1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v0, p5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 32
    .line 33
    iget-object v1, p5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 34
    .line 35
    add-int/lit8 v2, v0, 0x1

    .line 36
    .line 37
    iget v3, v1, Landroidx/collection/ObjectList;->b:I

    .line 38
    .line 39
    invoke-virtual {p5, v2, v3}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 40
    .line 41
    .line 42
    iget v2, p5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    iput v2, p5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p5, Landroidx/compose/ui/node/HitTestResult;->k:Landroidx/collection/MutableLongList;

    .line 52
    .line 53
    const/high16 v2, -0x40800000    # -1.0f

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v2, p7, v3}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->a(J)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {p1, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->h1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 72
    .line 73
    .line 74
    iput v0, p5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 75
    .line 76
    return-void
.end method

.method public final i1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object/from16 v4, p5

    .line 7
    .line 8
    move/from16 v5, p6

    .line 9
    .line 10
    move/from16 v6, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->f(Landroidx/compose/ui/Modifier$Node;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p1, v0}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v0, p0

    .line 31
    move-object v2, p2

    .line 32
    move-wide v3, p3

    .line 33
    move-object/from16 v5, p5

    .line 34
    .line 35
    move/from16 v6, p6

    .line 36
    .line 37
    move/from16 v7, p7

    .line 38
    .line 39
    move/from16 v8, p8

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->i1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    move-object/from16 v5, p5

    .line 46
    .line 47
    iget v10, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 48
    .line 49
    iget-object v0, v5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 50
    .line 51
    add-int/lit8 v1, v10, 0x1

    .line 52
    .line 53
    iget v2, v0, Landroidx/collection/ObjectList;->b:I

    .line 54
    .line 55
    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 56
    .line 57
    .line 58
    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v5, Landroidx/compose/ui/node/HitTestResult;->k:Landroidx/collection/MutableLongList;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    move/from16 v7, p7

    .line 71
    .line 72
    move/from16 v8, p8

    .line 73
    .line 74
    invoke-static {v8, v7, v1}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableLongList;->a(J)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {p1, v0}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v9, 0x1

    .line 90
    move-object v0, p0

    .line 91
    move-object v2, p2

    .line 92
    move-wide v3, p3

    .line 93
    move/from16 v6, p6

    .line 94
    .line 95
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 96
    .line 97
    .line 98
    iput v10, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 99
    .line 100
    return-void
.end method

.method public final j([F)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/compose/ui/node/NodeCoordinator;->z1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1, p1}, Landroidx/compose/ui/node/NodeCoordinator;->C1(Landroidx/compose/ui/node/NodeCoordinator;[F)V

    .line 16
    .line 17
    .line 18
    instance-of p0, v0, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->p([F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->u(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide v2, 0x7fffffff7fffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v2, v0

    .line 42
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long p0, v2, v4

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    const/16 p0, 0x20

    .line 52
    .line 53
    shr-long v2, v0, p0

    .line 54
    .line 55
    long-to-int p0, v2

    .line 56
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const-wide v2, 0xffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v0, v2

    .line 66
    long-to-int v0, v0

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p1, p0, v0}, Landroidx/compose/ui/graphics/Matrix;->f([FFF)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final j1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 14

    .line 1
    move-wide/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move/from16 v6, p5

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->f1(I)Landroidx/compose/ui/Modifier$Node;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->F1(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 21
    .line 22
    const v10, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-ne v6, v11, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->c1()J

    .line 31
    .line 32
    .line 33
    move-result-wide v12

    .line 34
    invoke-virtual {p0, v3, v4, v12, v13}, Landroidx/compose/ui/node/NodeCoordinator;->V0(JJ)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    and-int/2addr v2, v10

    .line 43
    if-ge v2, v9, :cond_1

    .line 44
    .line 45
    iget v2, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 46
    .line 47
    iget-object v7, v5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 48
    .line 49
    iget v7, v7, Landroidx/collection/ObjectList;->b:I

    .line 50
    .line 51
    sub-int/2addr v7, v11

    .line 52
    if-ne v2, v7, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v0, v8, v8}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/node/DistanceAndFlags;->a(JJ)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-lez v2, :cond_1

    .line 68
    .line 69
    :goto_0
    const/4 v7, 0x0

    .line 70
    move-object v2, p1

    .line 71
    move v8, v0

    .line 72
    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->i1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :cond_2
    if-nez v1, :cond_3

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    const/16 v0, 0x20

    .line 84
    .line 85
    shr-long v2, p2, v0

    .line 86
    .line 87
    long-to-int v0, v2

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const-wide v2, 0xffffffffL

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    and-long v2, p2, v2

    .line 98
    .line 99
    long-to-int v2, v2

    .line 100
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x0

    .line 105
    cmpl-float v4, v0, v3

    .line 106
    .line 107
    if-ltz v4, :cond_4

    .line 108
    .line 109
    cmpl-float v3, v2, v3

    .line 110
    .line 111
    if-ltz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    int-to-float v3, v3

    .line 118
    cmpg-float v0, v0, v3

    .line 119
    .line 120
    if-gez v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    int-to-float v0, v0

    .line 127
    cmpg-float v0, v2, v0

    .line 128
    .line 129
    if-gez v0, :cond_4

    .line 130
    .line 131
    move-object v0, p0

    .line 132
    move-object v2, p1

    .line 133
    move-wide/from16 v3, p2

    .line 134
    .line 135
    move-object/from16 v5, p4

    .line 136
    .line 137
    move/from16 v6, p5

    .line 138
    .line 139
    move/from16 v7, p6

    .line 140
    .line 141
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->h1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    move-wide/from16 v3, p2

    .line 146
    .line 147
    move-object/from16 v5, p4

    .line 148
    .line 149
    move/from16 v6, p5

    .line 150
    .line 151
    if-ne v6, v11, :cond_5

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->c1()J

    .line 154
    .line 155
    .line 156
    move-result-wide v12

    .line 157
    invoke-virtual {p0, v3, v4, v12, v13}, Landroidx/compose/ui/node/NodeCoordinator;->V0(JJ)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 163
    .line 164
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    and-int/2addr v7, v10

    .line 169
    if-ge v7, v9, :cond_7

    .line 170
    .line 171
    iget v7, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 172
    .line 173
    iget-object v9, v5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 174
    .line 175
    iget v9, v9, Landroidx/collection/ObjectList;->b:I

    .line 176
    .line 177
    sub-int/2addr v9, v11

    .line 178
    if-ne v7, v9, :cond_6

    .line 179
    .line 180
    move/from16 v7, p6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move/from16 v7, p6

    .line 184
    .line 185
    invoke-static {v2, v7, v8}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v9

    .line 189
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 190
    .line 191
    .line 192
    move-result-wide v12

    .line 193
    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/node/DistanceAndFlags;->a(JJ)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-lez v9, :cond_8

    .line 198
    .line 199
    :goto_2
    move v9, v11

    .line 200
    :goto_3
    move-object v0, p0

    .line 201
    move v8, v2

    .line 202
    move-object v2, p1

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    move/from16 v7, p6

    .line 205
    .line 206
    :cond_8
    move v9, v8

    .line 207
    goto :goto_3

    .line 208
    :goto_4
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->a1(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->j1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "LayoutCoordinates "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " is not attached!"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->z1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z0(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->Q:Landroidx/compose/ui/geometry/MutableRect;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Landroidx/compose/ui/geometry/MutableRect;

    .line 58
    .line 59
    invoke-direct {v2}, Landroidx/compose/ui/geometry/MutableRect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->Q:Landroidx/compose/ui/geometry/MutableRect;

    .line 63
    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 66
    .line 67
    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 68
    .line 69
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const/16 v5, 0x20

    .line 74
    .line 75
    shr-long/2addr v3, v5

    .line 76
    long-to-int v3, v3

    .line 77
    int-to-float v3, v3

    .line 78
    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 79
    .line 80
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    const-wide v5, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v3, v5

    .line 90
    long-to-int p1, v3

    .line 91
    int-to-float p1, p1

    .line 92
    iput p1, v2, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 93
    .line 94
    :goto_0
    if-eq v0, v1, :cond_4

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-virtual {v0, v2, p2, p1}, Landroidx/compose/ui/node/NodeCoordinator;->v1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/MutableRect;->b()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0, v1, v2, p2}, Landroidx/compose/ui/node/NodeCoordinator;->S0(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    .line 116
    .line 117
    .line 118
    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    .line 119
    .line 120
    iget p1, v2, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 121
    .line 122
    iget p2, v2, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 123
    .line 124
    iget v0, v2, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 125
    .line 126
    iget v1, v2, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 127
    .line 128
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 129
    .line 130
    .line 131
    return-object p0
.end method

.method public final l1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final m1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->L:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final n1()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    return p0
.end method

.method public final o1()V
    .locals 13

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_c

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-eqz v2, :cond_c

    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v3

    .line 33
    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_2
    if-eqz v1, :cond_b

    .line 62
    .line 63
    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 64
    .line 65
    and-int/2addr v7, v0

    .line 66
    if-eqz v7, :cond_b

    .line 67
    .line 68
    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 69
    .line 70
    and-int/2addr v7, v0

    .line 71
    if-eqz v7, :cond_a

    .line 72
    .line 73
    move-object v7, v1

    .line 74
    move-object v8, v3

    .line 75
    :goto_3
    if-eqz v7, :cond_a

    .line 76
    .line 77
    instance-of v9, v7, Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;

    .line 78
    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    check-cast v7, Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;

    .line 82
    .line 83
    iget-wide v9, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 84
    .line 85
    invoke-interface {v7, v9, v10}, Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;->b(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_3
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 90
    .line 91
    and-int/2addr v9, v0

    .line 92
    if-eqz v9, :cond_9

    .line 93
    .line 94
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 95
    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    move-object v9, v7

    .line 99
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 100
    .line 101
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    :goto_4
    const/4 v11, 0x1

    .line 105
    if-eqz v9, :cond_8

    .line 106
    .line 107
    iget v12, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 108
    .line 109
    and-int/2addr v12, v0

    .line 110
    if-eqz v12, :cond_7

    .line 111
    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 113
    .line 114
    if-ne v10, v11, :cond_4

    .line 115
    .line 116
    move-object v7, v9

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    if-nez v8, :cond_5

    .line 119
    .line 120
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 121
    .line 122
    const/16 v11, 0x10

    .line 123
    .line 124
    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 125
    .line 126
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v7, v3

    .line 135
    :cond_6
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    if-ne v10, v11, :cond_9

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    if-eq v1, v6, :cond_b

    .line 150
    .line 151
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_b
    :goto_7
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_8
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :cond_c
    return-void
.end method

.method public final p1()V
    .locals 10

    .line 1
    const/high16 v0, 0x400000

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_1
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 27
    .line 28
    and-int/2addr v3, v0

    .line 29
    if-eqz v3, :cond_a

    .line 30
    .line 31
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 32
    .line 33
    and-int/2addr v3, v0

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v4, v1

    .line 38
    move-object v5, v3

    .line 39
    :goto_2
    if-eqz v4, :cond_9

    .line 40
    .line 41
    instance-of v6, v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    check-cast v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 46
    .line 47
    invoke-interface {v4, p0}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->C(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_2
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 52
    .line 53
    and-int/2addr v6, v0

    .line 54
    if-eqz v6, :cond_8

    .line 55
    .line 56
    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 57
    .line 58
    if-eqz v6, :cond_8

    .line 59
    .line 60
    move-object v6, v4

    .line 61
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 62
    .line 63
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_3
    const/4 v8, 0x1

    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 70
    .line 71
    and-int/2addr v9, v0

    .line 72
    if-eqz v9, :cond_6

    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    if-ne v7, v8, :cond_3

    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    if-nez v5, :cond_4

    .line 81
    .line 82
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 83
    .line 84
    const/16 v8, 0x10

    .line 85
    .line 86
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 87
    .line 88
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    if-eqz v4, :cond_5

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v4, v3

    .line 97
    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    if-ne v7, v8, :cond_8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_2

    .line 111
    :cond_9
    if-eq v1, v2, :cond_a

    .line 112
    .line 113
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    :goto_6
    return-void
.end method

.method public final q1()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->G:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->a0:Lfc;

    .line 5
    .line 6
    invoke-virtual {v0}, Lfc;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->w1()V

    .line 10
    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->R(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final r1()V
    .locals 9

    .line 1
    const/high16 v0, 0x100000

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_a

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-eqz v2, :cond_a

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    if-eqz p0, :cond_a

    .line 38
    .line 39
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 40
    .line 41
    and-int/2addr v1, v0

    .line 42
    if-eqz v1, :cond_a

    .line 43
    .line 44
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 45
    .line 46
    and-int/2addr v1, v0

    .line 47
    if-eqz v1, :cond_9

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    move-object v3, p0

    .line 51
    move-object v4, v1

    .line 52
    :goto_2
    if-eqz v3, :cond_9

    .line 53
    .line 54
    instance-of v5, v3, Landroidx/compose/ui/node/UnplacedAwareModifierNode;

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    check-cast v3, Landroidx/compose/ui/node/UnplacedAwareModifierNode;

    .line 59
    .line 60
    invoke-interface {v3}, Landroidx/compose/ui/node/UnplacedAwareModifierNode;->L0()V

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_2
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 65
    .line 66
    and-int/2addr v5, v0

    .line 67
    if-eqz v5, :cond_8

    .line 68
    .line 69
    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 70
    .line 71
    if-eqz v5, :cond_8

    .line 72
    .line 73
    move-object v5, v3

    .line 74
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 75
    .line 76
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    :goto_3
    const/4 v7, 0x1

    .line 80
    if-eqz v5, :cond_7

    .line 81
    .line 82
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 83
    .line 84
    and-int/2addr v8, v0

    .line 85
    if-eqz v8, :cond_6

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    if-ne v6, v7, :cond_3

    .line 90
    .line 91
    move-object v3, v5

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    if-nez v4, :cond_4

    .line 94
    .line 95
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 96
    .line 97
    const/16 v7, 0x10

    .line 98
    .line 99
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 100
    .line 101
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v3, v1

    .line 110
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    if-ne v6, v7, :cond_8

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    :goto_5
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    goto :goto_2

    .line 124
    :cond_9
    if-eq p0, v2, :cond_a

    .line 125
    .line 126
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    :goto_6
    return-void
.end method

.method public final s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-wide/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v2, p2

    .line 22
    .line 23
    invoke-interface {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->f(Landroidx/compose/ui/Modifier$Node;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    move-wide/from16 v3, p3

    .line 40
    .line 41
    move-object/from16 v5, p5

    .line 42
    .line 43
    move/from16 v6, p6

    .line 44
    .line 45
    move/from16 v7, p7

    .line 46
    .line 47
    move/from16 v8, p8

    .line 48
    .line 49
    move/from16 v9, p9

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    move-object/from16 v5, p5

    .line 56
    .line 57
    move/from16 v6, p6

    .line 58
    .line 59
    move/from16 v7, p7

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    if-ne v6, v1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v2, 0x4

    .line 66
    if-ne v6, v2, :cond_12

    .line 67
    .line 68
    :goto_0
    const/4 v2, 0x0

    .line 69
    move-object v3, v0

    .line 70
    move-object v4, v2

    .line 71
    :goto_1
    if-eqz v3, :cond_12

    .line 72
    .line 73
    instance-of v8, v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v8, :cond_b

    .line 78
    .line 79
    check-cast v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 80
    .line 81
    invoke-interface {v3}, Landroidx/compose/ui/node/PointerInputModifierNode;->t()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    const/16 v4, 0x20

    .line 86
    .line 87
    shr-long v11, p3, v4

    .line 88
    .line 89
    long-to-int v4, v11

    .line 90
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    move-object/from16 v11, p0

    .line 95
    .line 96
    iget-object v12, v11, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    iget-object v13, v12, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 99
    .line 100
    sget v14, Landroidx/compose/ui/node/TouchBoundsExpansion;->b:I

    .line 101
    .line 102
    const-wide/high16 v14, -0x8000000000000000L

    .line 103
    .line 104
    and-long/2addr v14, v2

    .line 105
    const-wide/16 v16, 0x0

    .line 106
    .line 107
    cmp-long v14, v14, v16

    .line 108
    .line 109
    const/4 v15, 0x2

    .line 110
    if-eqz v14, :cond_4

    .line 111
    .line 112
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 113
    .line 114
    if-ne v13, v1, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {v15, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    :goto_2
    invoke-static {v9, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    :goto_3
    neg-int v1, v1

    .line 127
    int-to-float v1, v1

    .line 128
    cmpl-float v1, v8, v1

    .line 129
    .line 130
    if-ltz v1, :cond_12

    .line 131
    .line 132
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->Z()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget-object v8, v12, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 141
    .line 142
    if-eqz v14, :cond_6

    .line 143
    .line 144
    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 145
    .line 146
    if-ne v8, v12, :cond_5

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-static {v9, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    :goto_4
    invoke-static {v15, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    :goto_5
    add-int/2addr v4, v8

    .line 159
    int-to-float v4, v4

    .line 160
    cmpg-float v1, v1, v4

    .line 161
    .line 162
    if-gez v1, :cond_12

    .line 163
    .line 164
    const-wide v8, 0xffffffffL

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    and-long v8, p3, v8

    .line 170
    .line 171
    long-to-int v1, v8

    .line 172
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    sget v8, Landroidx/compose/ui/node/TouchBoundsExpansion;->b:I

    .line 177
    .line 178
    invoke-static {v10, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    neg-int v8, v8

    .line 183
    int-to-float v8, v8

    .line 184
    cmpl-float v4, v4, v8

    .line 185
    .line 186
    if-ltz v4, :cond_12

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->W()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const/4 v8, 0x3

    .line 197
    invoke-static {v8, v2, v3}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->a(IJ)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    add-int/2addr v2, v4

    .line 202
    int-to-float v2, v2

    .line 203
    cmpg-float v1, v1, v2

    .line 204
    .line 205
    if-gez v1, :cond_12

    .line 206
    .line 207
    iget-object v1, v5, Landroidx/compose/ui/node/HitTestResult;->k:Landroidx/collection/MutableLongList;

    .line 208
    .line 209
    iget-object v2, v5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 210
    .line 211
    iget v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 212
    .line 213
    iget v3, v2, Landroidx/collection/ObjectList;->b:I

    .line 214
    .line 215
    add-int/lit8 v4, v3, -0x1

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    if-ne v12, v4, :cond_7

    .line 219
    .line 220
    add-int/lit8 v4, v12, 0x1

    .line 221
    .line 222
    invoke-virtual {v5, v4, v3}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 223
    .line 224
    .line 225
    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 226
    .line 227
    add-int/2addr v3, v10

    .line 228
    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 229
    .line 230
    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v13, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->a(J)V

    .line 238
    .line 239
    .line 240
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    move-object/from16 v2, p2

    .line 249
    .line 250
    move-wide/from16 v3, p3

    .line 251
    .line 252
    move/from16 v8, p8

    .line 253
    .line 254
    move/from16 v9, p9

    .line 255
    .line 256
    move-object v0, v11

    .line 257
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 258
    .line 259
    .line 260
    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 261
    .line 262
    return-void

    .line 263
    :cond_7
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 264
    .line 265
    .line 266
    move-result-wide v3

    .line 267
    iget v11, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 268
    .line 269
    invoke-static {v3, v4}, Landroidx/compose/ui/node/DistanceAndFlags;->c(J)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_9

    .line 274
    .line 275
    iget v3, v2, Landroidx/collection/ObjectList;->b:I

    .line 276
    .line 277
    add-int/lit8 v12, v3, -0x1

    .line 278
    .line 279
    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 280
    .line 281
    iget v4, v2, Landroidx/collection/ObjectList;->b:I

    .line 282
    .line 283
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 284
    .line 285
    .line 286
    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 287
    .line 288
    add-int/2addr v3, v10

    .line 289
    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 290
    .line 291
    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v13, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 295
    .line 296
    .line 297
    move-result-wide v2

    .line 298
    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->a(J)V

    .line 299
    .line 300
    .line 301
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    move-object/from16 v0, p0

    .line 310
    .line 311
    move-object/from16 v2, p2

    .line 312
    .line 313
    move-wide/from16 v3, p3

    .line 314
    .line 315
    move/from16 v6, p6

    .line 316
    .line 317
    move/from16 v8, p8

    .line 318
    .line 319
    move/from16 v9, p9

    .line 320
    .line 321
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 322
    .line 323
    .line 324
    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 325
    .line 326
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndFlags;->b(J)F

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    cmpg-float v0, v0, v13

    .line 335
    .line 336
    if-gez v0, :cond_8

    .line 337
    .line 338
    add-int/lit8 v0, v11, 0x1

    .line 339
    .line 340
    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 341
    .line 342
    add-int/2addr v1, v10

    .line 343
    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 344
    .line 345
    .line 346
    :cond_8
    iput v11, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 347
    .line 348
    return-void

    .line 349
    :cond_9
    invoke-static {v3, v4}, Landroidx/compose/ui/node/DistanceAndFlags;->b(J)F

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    cmpl-float v3, v3, v13

    .line 354
    .line 355
    if-lez v3, :cond_a

    .line 356
    .line 357
    iget v11, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 358
    .line 359
    add-int/lit8 v3, v11, 0x1

    .line 360
    .line 361
    iget v4, v2, Landroidx/collection/ObjectList;->b:I

    .line 362
    .line 363
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 364
    .line 365
    .line 366
    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 367
    .line 368
    add-int/2addr v3, v10

    .line 369
    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 370
    .line 371
    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-static {v13, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 375
    .line 376
    .line 377
    move-result-wide v2

    .line 378
    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->a(J)V

    .line 379
    .line 380
    .line 381
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    move-object/from16 v0, p0

    .line 390
    .line 391
    move-object/from16 v2, p2

    .line 392
    .line 393
    move-wide/from16 v3, p3

    .line 394
    .line 395
    move/from16 v6, p6

    .line 396
    .line 397
    move/from16 v8, p8

    .line 398
    .line 399
    move/from16 v9, p9

    .line 400
    .line 401
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 402
    .line 403
    .line 404
    iput v11, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 405
    .line 406
    :cond_a
    return-void

    .line 407
    :cond_b
    move v8, v1

    .line 408
    iget v1, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 409
    .line 410
    const/16 v6, 0x10

    .line 411
    .line 412
    and-int/2addr v1, v6

    .line 413
    if-eqz v1, :cond_11

    .line 414
    .line 415
    instance-of v1, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 416
    .line 417
    if-eqz v1, :cond_11

    .line 418
    .line 419
    move-object v1, v3

    .line 420
    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 421
    .line 422
    iget-object v1, v1, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 423
    .line 424
    :goto_6
    if-eqz v1, :cond_10

    .line 425
    .line 426
    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 427
    .line 428
    and-int/2addr v7, v6

    .line 429
    if-eqz v7, :cond_f

    .line 430
    .line 431
    add-int/lit8 v9, v9, 0x1

    .line 432
    .line 433
    if-ne v9, v10, :cond_c

    .line 434
    .line 435
    move-object v3, v1

    .line 436
    goto :goto_7

    .line 437
    :cond_c
    if-nez v4, :cond_d

    .line 438
    .line 439
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 440
    .line 441
    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    .line 442
    .line 443
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :cond_d
    if-eqz v3, :cond_e

    .line 447
    .line 448
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    move-object v3, v2

    .line 452
    :cond_e
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_f
    :goto_7
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 456
    .line 457
    goto :goto_6

    .line 458
    :cond_10
    if-ne v9, v10, :cond_11

    .line 459
    .line 460
    :goto_8
    move/from16 v6, p6

    .line 461
    .line 462
    move/from16 v7, p7

    .line 463
    .line 464
    move v1, v8

    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :cond_11
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    goto :goto_8

    .line 472
    :cond_12
    if-eqz p9, :cond_13

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->i1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_13
    invoke-virtual/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->y1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 479
    .line 480
    .line 481
    return-void
.end method

.method public final t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->j:Landroidx/compose/ui/node/LookaheadDelegate;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->D:Landroidx/compose/ui/node/NodeCoordinator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 12
    .line 13
    .line 14
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    xor-long/2addr p2, v0

    .line 20
    invoke-virtual {p1, p0, p2, p3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    xor-long/2addr p0, v0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->z1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->n1()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->Z0(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    if-eq p1, v0, :cond_3

    .line 38
    .line 39
    iget-object v1, p1, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-boolean v1, v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {p2, p3, v2}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    :cond_2
    :goto_1
    iget-wide v1, p1, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 59
    .line 60
    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0, v0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->T0(Landroidx/compose/ui/node/NodeCoordinator;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p0

    .line 74
    return-wide p0
.end method

.method public abstract t1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method

.method public final u(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->q(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method public final u1(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p5, :cond_3

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p4, "both ways to create layers shouldn\'t be used together"

    .line 11
    .line 12
    invoke-static {p4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 16
    .line 17
    if-eq p4, p5, :cond_1

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Lkotlin/jvm/functions/Function1;Z)V

    .line 22
    .line 23
    .line 24
    iput-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 25
    .line 26
    :cond_1
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 27
    .line 28
    if-nez p4, :cond_5

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->Z:La0;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    new-instance v2, Lfc;

    .line 39
    .line 40
    invoke-direct {v2, p0, v0}, Lfc;-><init>(Landroidx/compose/ui/node/NodeCoordinator;I)V

    .line 41
    .line 42
    .line 43
    new-instance v0, La0;

    .line 44
    .line 45
    const/16 v3, 0x14

    .line 46
    .line 47
    invoke-direct {v0, v3, p0, v2}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->Z:La0;

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    :cond_2
    check-cast p4, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->a0:Lfc;

    .line 56
    .line 57
    invoke-virtual {p4, v2, v0, p5}, Landroidx/compose/ui/platform/AndroidComposeView;->f(Lkotlin/jvm/functions/Function2;Lfc;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/OwnedLayer;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 62
    .line 63
    move-object p5, p4

    .line 64
    check-cast p5, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 65
    .line 66
    invoke-virtual {p5, v2, v3}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p5, p1, p2}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d(J)V

    .line 70
    .line 71
    .line 72
    iput-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 73
    .line 74
    const/4 p4, 0x1

    .line 75
    iput-boolean p4, v1, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 76
    .line 77
    invoke-virtual {v0}, Lfc;->a()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 82
    .line 83
    if-eqz p5, :cond_4

    .line 84
    .line 85
    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Lkotlin/jvm/functions/Function1;Z)V

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0, p4, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Lkotlin/jvm/functions/Function1;Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    iget-wide p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 94
    .line 95
    invoke-static {p4, p5, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->a(JJ)Z

    .line 96
    .line 97
    .line 98
    move-result p4

    .line 99
    if-nez p4, :cond_8

    .line 100
    .line 101
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    const/high16 p5, -0x3f800000    # -4.0f

    .line 106
    .line 107
    check-cast p4, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 108
    .line 109
    invoke-virtual {p4, p5}, Landroidx/compose/ui/platform/AndroidComposeView;->M(F)V

    .line 110
    .line 111
    .line 112
    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 113
    .line 114
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 115
    .line 116
    if-eqz p4, :cond_6

    .line 117
    .line 118
    check-cast p4, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 119
    .line 120
    invoke-virtual {p4, p1, p2}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->d(J)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_2
    invoke-virtual {v1, p0}, Landroidx/compose/ui/node/LayoutNode;->R(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->O0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->v(Landroidx/compose/ui/node/LayoutNode;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->P:F

    .line 147
    .line 148
    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 149
    .line 150
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 151
    .line 152
    if-ne p0, p1, :cond_9

    .line 153
    .line 154
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1, v1}, Landroidx/compose/ui/spatial/RectManager;->h(Landroidx/compose/ui/node/LayoutNode;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x:Z

    .line 166
    .line 167
    if-nez p1, :cond_a

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->A0(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 174
    .line 175
    .line 176
    :cond_a
    return-void
.end method

.method public final v1(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    iget-boolean v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Z

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v4, :cond_8

    .line 16
    .line 17
    if-eqz p3, :cond_6

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->c1()J

    .line 20
    .line 21
    .line 22
    move-result-wide p2

    .line 23
    iget v4, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 24
    .line 25
    iget v6, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 26
    .line 27
    iget v7, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 28
    .line 29
    cmpg-float v7, v7, v5

    .line 30
    .line 31
    if-ltz v7, :cond_5

    .line 32
    .line 33
    iget-wide v7, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 34
    .line 35
    shr-long v9, v7, v1

    .line 36
    .line 37
    long-to-int v9, v9

    .line 38
    int-to-float v9, v9

    .line 39
    cmpl-float v9, v4, v9

    .line 40
    .line 41
    if-gtz v9, :cond_5

    .line 42
    .line 43
    iget v9, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 44
    .line 45
    cmpg-float v9, v9, v5

    .line 46
    .line 47
    if-ltz v9, :cond_5

    .line 48
    .line 49
    and-long/2addr v7, v2

    .line 50
    long-to-int v7, v7

    .line 51
    int-to-float v7, v7

    .line 52
    cmpl-float v7, v6, v7

    .line 53
    .line 54
    if-lez v7, :cond_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_0
    shr-long v7, p2, v1

    .line 58
    .line 59
    long-to-int v7, v7

    .line 60
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    and-long v8, p2, v2

    .line 65
    .line 66
    long-to-int v8, v8

    .line 67
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    iget v9, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 72
    .line 73
    iget v10, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 74
    .line 75
    sub-float/2addr v9, v10

    .line 76
    sub-float v9, v7, v9

    .line 77
    .line 78
    const/high16 v10, 0x40000000    # 2.0f

    .line 79
    .line 80
    div-float/2addr v9, v10

    .line 81
    cmpl-float v11, v9, v5

    .line 82
    .line 83
    if-lez v11, :cond_1

    .line 84
    .line 85
    sub-float/2addr v4, v9

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    neg-float v7, v7

    .line 88
    div-float/2addr v7, v10

    .line 89
    cmpg-float v9, v4, v7

    .line 90
    .line 91
    if-gez v9, :cond_2

    .line 92
    .line 93
    move v4, v7

    .line 94
    :cond_2
    :goto_0
    iget v7, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 95
    .line 96
    iget v9, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 97
    .line 98
    sub-float/2addr v7, v9

    .line 99
    sub-float v7, v8, v7

    .line 100
    .line 101
    div-float/2addr v7, v10

    .line 102
    cmpl-float v9, v7, v5

    .line 103
    .line 104
    if-lez v9, :cond_3

    .line 105
    .line 106
    sub-float/2addr v6, v7

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    neg-float v7, v8

    .line 109
    div-float/2addr v7, v10

    .line 110
    cmpg-float v8, v6, v7

    .line 111
    .line 112
    if-gez v8, :cond_4

    .line 113
    .line 114
    move v6, v7

    .line 115
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    int-to-long v7, v4

    .line 120
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    int-to-long v9, v4

    .line 125
    shl-long v6, v7, v1

    .line 126
    .line 127
    and-long v8, v9, v2

    .line 128
    .line 129
    or-long/2addr v6, v8

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    const-wide/16 v6, 0x0

    .line 132
    .line 133
    :goto_3
    shr-long v8, v6, v1

    .line 134
    .line 135
    long-to-int v4, v8

    .line 136
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    and-long/2addr v6, v2

    .line 141
    long-to-int v6, v6

    .line 142
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget-wide v7, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 147
    .line 148
    shr-long v9, v7, v1

    .line 149
    .line 150
    long-to-int v9, v9

    .line 151
    and-long/2addr v7, v2

    .line 152
    long-to-int v7, v7

    .line 153
    int-to-float v8, v9

    .line 154
    shr-long v9, p2, v1

    .line 155
    .line 156
    long-to-int v9, v9

    .line 157
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    add-float/2addr v10, v8

    .line 162
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    add-float/2addr v9, v4

    .line 167
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    int-to-float v7, v7

    .line 176
    and-long/2addr p2, v2

    .line 177
    long-to-int p2, p2

    .line 178
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    add-float/2addr p3, v7

    .line 183
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    add-float/2addr p2, v6

    .line 188
    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-virtual {p1, v4, v6, v8, p2}, Landroidx/compose/ui/geometry/MutableRect;->a(FFFF)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    if-eqz p2, :cond_7

    .line 201
    .line 202
    iget-wide p2, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 203
    .line 204
    shr-long v6, p2, v1

    .line 205
    .line 206
    long-to-int v4, v6

    .line 207
    int-to-float v4, v4

    .line 208
    and-long/2addr p2, v2

    .line 209
    long-to-int p2, p2

    .line 210
    int-to-float p2, p2

    .line 211
    invoke-virtual {p1, v5, v5, v4, p2}, Landroidx/compose/ui/geometry/MutableRect;->a(FFFF)V

    .line 212
    .line 213
    .line 214
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->b()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_8

    .line 219
    .line 220
    return-void

    .line 221
    :cond_8
    check-cast v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-boolean p3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 228
    .line 229
    if-nez p3, :cond_a

    .line 230
    .line 231
    if-nez p2, :cond_9

    .line 232
    .line 233
    iput v5, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 234
    .line 235
    iput v5, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 236
    .line 237
    iput v5, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 238
    .line 239
    iput v5, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Matrix;->c([FLandroidx/compose/ui/geometry/MutableRect;)V

    .line 243
    .line 244
    .line 245
    :cond_a
    :goto_5
    iget-wide p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 246
    .line 247
    shr-long v0, p2, v1

    .line 248
    .line 249
    long-to-int p0, v0

    .line 250
    iget v0, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 251
    .line 252
    int-to-float p0, p0

    .line 253
    add-float/2addr v0, p0

    .line 254
    iput v0, p1, Landroidx/compose/ui/geometry/MutableRect;->a:F

    .line 255
    .line 256
    iget v0, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 257
    .line 258
    add-float/2addr v0, p0

    .line 259
    iput v0, p1, Landroidx/compose/ui/geometry/MutableRect;->c:F

    .line 260
    .line 261
    and-long/2addr p2, v2

    .line 262
    long-to-int p0, p2

    .line 263
    iget p2, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 264
    .line 265
    int-to-float p0, p0

    .line 266
    add-float/2addr p2, p0

    .line 267
    iput p2, p1, Landroidx/compose/ui/geometry/MutableRect;->b:F

    .line 268
    .line 269
    iget p2, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 270
    .line 271
    add-float/2addr p2, p0

    .line 272
    iput p2, p1, Landroidx/compose/ui/geometry/MutableRect;->d:F

    .line 273
    .line 274
    return-void
.end method

.method public final w1()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->d0:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Lkotlin/jvm/functions/Function1;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final x1(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->M:Landroidx/compose/ui/layout/MeasureResult;

    .line 6
    .line 7
    if-eq v1, v2, :cond_19

    .line 8
    .line 9
    iput-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->M:Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-ne v5, v6, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v5, v2, :cond_10

    .line 35
    .line 36
    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->b()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->a()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 45
    .line 46
    const-wide v7, 0xffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    int-to-long v10, v2

    .line 56
    shl-long/2addr v10, v9

    .line 57
    int-to-long v12, v5

    .line 58
    and-long/2addr v12, v7

    .line 59
    or-long/2addr v10, v12

    .line 60
    check-cast v6, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 61
    .line 62
    invoke-virtual {v6, v10, v11}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->e(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    int-to-long v10, v2

    .line 80
    shl-long v9, v10, v9

    .line 81
    .line 82
    int-to-long v5, v5

    .line 83
    and-long/2addr v5, v7

    .line 84
    or-long/2addr v5, v9

    .line 85
    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/layout/Placeable;->j0(J)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->I:Lkotlin/jvm/functions/Function1;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    const/4 v2, 0x4

    .line 96
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->d1()Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 108
    .line 109
    if-nez v6, :cond_5

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    :goto_2
    if-eqz v5, :cond_e

    .line 118
    .line 119
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 120
    .line 121
    and-int/2addr v7, v2

    .line 122
    if-eqz v7, :cond_e

    .line 123
    .line 124
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 125
    .line 126
    and-int/2addr v7, v2

    .line 127
    if-eqz v7, :cond_d

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    move-object v8, v5

    .line 131
    move-object v9, v7

    .line 132
    :goto_3
    if-eqz v8, :cond_d

    .line 133
    .line 134
    instance-of v10, v8, Landroidx/compose/ui/node/DrawModifierNode;

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    check-cast v8, Landroidx/compose/ui/node/DrawModifierNode;

    .line 139
    .line 140
    invoke-interface {v8}, Landroidx/compose/ui/node/DrawModifierNode;->R()V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_6
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 145
    .line 146
    and-int/2addr v10, v2

    .line 147
    if-eqz v10, :cond_c

    .line 148
    .line 149
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 150
    .line 151
    if-eqz v10, :cond_c

    .line 152
    .line 153
    move-object v10, v8

    .line 154
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 155
    .line 156
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 157
    .line 158
    move v11, v4

    .line 159
    :goto_4
    const/4 v12, 0x1

    .line 160
    if-eqz v10, :cond_b

    .line 161
    .line 162
    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 163
    .line 164
    and-int/2addr v13, v2

    .line 165
    if-eqz v13, :cond_a

    .line 166
    .line 167
    add-int/lit8 v11, v11, 0x1

    .line 168
    .line 169
    if-ne v11, v12, :cond_7

    .line 170
    .line 171
    move-object v8, v10

    .line 172
    goto :goto_5

    .line 173
    :cond_7
    if-nez v9, :cond_8

    .line 174
    .line 175
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 176
    .line 177
    const/16 v12, 0x10

    .line 178
    .line 179
    new-array v12, v12, [Landroidx/compose/ui/Modifier$Node;

    .line 180
    .line 181
    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    if-eqz v8, :cond_9

    .line 185
    .line 186
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v8, v7

    .line 190
    :cond_9
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    :goto_5
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_b
    if-ne v11, v12, :cond_c

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_c
    :goto_6
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    goto :goto_3

    .line 204
    :cond_d
    if-eq v5, v6, :cond_e

    .line 205
    .line 206
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_e
    :goto_7
    iget-object v2, v3, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 210
    .line 211
    if-eqz v2, :cond_f

    .line 212
    .line 213
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->v(Landroidx/compose/ui/node/LayoutNode;)V

    .line 216
    .line 217
    .line 218
    :cond_f
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/LayoutNode;->R(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 219
    .line 220
    .line 221
    :cond_10
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Landroidx/collection/MutableObjectIntMap;

    .line 222
    .line 223
    if-eqz v2, :cond_11

    .line 224
    .line 225
    iget v2, v2, Landroidx/collection/ObjectIntMap;->e:I

    .line 226
    .line 227
    if-eqz v2, :cond_11

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_11
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_19

    .line 239
    .line 240
    :goto_8
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Landroidx/collection/MutableObjectIntMap;

    .line 241
    .line 242
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    if-nez v2, :cond_12

    .line 247
    .line 248
    goto :goto_b

    .line 249
    :cond_12
    iget v6, v2, Landroidx/collection/ObjectIntMap;->e:I

    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eq v6, v7, :cond_13

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_13
    iget-object v6, v2, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 259
    .line 260
    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->c:[I

    .line 261
    .line 262
    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->a:[J

    .line 263
    .line 264
    array-length v8, v2

    .line 265
    add-int/lit8 v8, v8, -0x2

    .line 266
    .line 267
    if-ltz v8, :cond_19

    .line 268
    .line 269
    move v9, v4

    .line 270
    :goto_9
    aget-wide v10, v2, v9

    .line 271
    .line 272
    not-long v12, v10

    .line 273
    const/4 v14, 0x7

    .line 274
    shl-long/2addr v12, v14

    .line 275
    and-long/2addr v12, v10

    .line 276
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    and-long/2addr v12, v14

    .line 282
    cmp-long v12, v12, v14

    .line 283
    .line 284
    if-eqz v12, :cond_18

    .line 285
    .line 286
    sub-int v12, v9, v8

    .line 287
    .line 288
    not-int v12, v12

    .line 289
    ushr-int/lit8 v12, v12, 0x1f

    .line 290
    .line 291
    const/16 v13, 0x8

    .line 292
    .line 293
    rsub-int/lit8 v12, v12, 0x8

    .line 294
    .line 295
    move v14, v4

    .line 296
    :goto_a
    if-ge v14, v12, :cond_17

    .line 297
    .line 298
    const-wide/16 v15, 0xff

    .line 299
    .line 300
    and-long/2addr v15, v10

    .line 301
    const-wide/16 v17, 0x80

    .line 302
    .line 303
    cmp-long v15, v15, v17

    .line 304
    .line 305
    if-gez v15, :cond_16

    .line 306
    .line 307
    shl-int/lit8 v15, v9, 0x3

    .line 308
    .line 309
    add-int/2addr v15, v14

    .line 310
    aget-object v16, v6, v15

    .line 311
    .line 312
    aget v15, v7, v15

    .line 313
    .line 314
    move-object/from16 v4, v16

    .line 315
    .line 316
    check-cast v4, Landroidx/compose/ui/layout/AlignmentLine;

    .line 317
    .line 318
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/lang/Integer;

    .line 323
    .line 324
    if-nez v4, :cond_14

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eq v4, v15, :cond_16

    .line 332
    .line 333
    :goto_b
    iget-object v2, v3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 334
    .line 335
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 336
    .line 337
    iget-object v2, v2, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 338
    .line 339
    invoke-virtual {v2}, Landroidx/compose/ui/node/AlignmentLines;->g()V

    .line 340
    .line 341
    .line 342
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Landroidx/collection/MutableObjectIntMap;

    .line 343
    .line 344
    if-nez v2, :cond_15

    .line 345
    .line 346
    sget-object v2, Landroidx/collection/ObjectIntMapKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 347
    .line 348
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    .line 349
    .line 350
    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 351
    .line 352
    .line 353
    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Landroidx/collection/MutableObjectIntMap;

    .line 354
    .line 355
    :cond_15
    invoke-virtual {v2}, Landroidx/collection/MutableObjectIntMap;->b()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_19

    .line 375
    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Ljava/util/Map$Entry;

    .line 381
    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    check-cast v1, Ljava/lang/Number;

    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-virtual {v2, v1, v3}, Landroidx/collection/MutableObjectIntMap;->g(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_16
    shr-long/2addr v10, v13

    .line 401
    add-int/lit8 v14, v14, 0x1

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    goto :goto_a

    .line 405
    :cond_17
    if-ne v12, v13, :cond_19

    .line 406
    .line 407
    :cond_18
    if-eq v9, v8, :cond_19

    .line 408
    .line 409
    add-int/lit8 v9, v9, 0x1

    .line 410
    .line 411
    const/4 v4, 0x0

    .line 412
    goto/16 :goto_9

    .line 413
    .line 414
    :cond_19
    return-void
.end method

.method public final y1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-wide/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->k1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    move-object/from16 v2, p2

    .line 22
    .line 23
    invoke-interface {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->f(Landroidx/compose/ui/Modifier$Node;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    move-wide/from16 v3, p3

    .line 40
    .line 41
    move-object/from16 v5, p5

    .line 42
    .line 43
    move/from16 v6, p6

    .line 44
    .line 45
    move/from16 v7, p7

    .line 46
    .line 47
    move/from16 v8, p8

    .line 48
    .line 49
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->y1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    move-object/from16 v5, p5

    .line 54
    .line 55
    move/from16 v7, p7

    .line 56
    .line 57
    move/from16 v8, p8

    .line 58
    .line 59
    invoke-interface {v2, v0}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->d(Landroidx/compose/ui/Modifier$Node;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_9

    .line 64
    .line 65
    iget-object v10, v5, Landroidx/compose/ui/node/HitTestResult;->k:Landroidx/collection/MutableLongList;

    .line 66
    .line 67
    iget-object v11, v5, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 68
    .line 69
    iget v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 70
    .line 71
    iget v1, v11, Landroidx/collection/ObjectList;->b:I

    .line 72
    .line 73
    add-int/lit8 v3, v1, -0x1

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    if-ne v12, v3, :cond_6

    .line 77
    .line 78
    add-int/lit8 v13, v12, 0x1

    .line 79
    .line 80
    invoke-virtual {v5, v13, v1}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 81
    .line 82
    .line 83
    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    iput v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 88
    .line 89
    invoke-virtual {v11, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v8, v7, v4}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-virtual {v10, v3, v4}, Landroidx/collection/MutableLongList;->a(J)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v9, 0x0

    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    move-wide/from16 v3, p3

    .line 111
    .line 112
    move/from16 v6, p6

    .line 113
    .line 114
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 115
    .line 116
    .line 117
    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 118
    .line 119
    iget v0, v11, Landroidx/collection/ObjectList;->b:I

    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    if-eq v13, v0, :cond_3

    .line 124
    .line 125
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndFlags;->c(J)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    return-void

    .line 137
    :cond_3
    :goto_0
    iget v0, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 138
    .line 139
    add-int/lit8 v1, v0, 0x1

    .line 140
    .line 141
    invoke-virtual {v11, v1}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    if-ltz v1, :cond_5

    .line 145
    .line 146
    iget v2, v10, Landroidx/collection/LongList;->b:I

    .line 147
    .line 148
    if-ge v1, v2, :cond_5

    .line 149
    .line 150
    iget-object v3, v10, Landroidx/collection/LongList;->a:[J

    .line 151
    .line 152
    aget-wide v4, v3, v1

    .line 153
    .line 154
    add-int/lit8 v4, v2, -0x1

    .line 155
    .line 156
    if-eq v1, v4, :cond_4

    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x2

    .line 159
    .line 160
    invoke-static {v3, v3, v1, v0, v2}, Lkotlin/collections/ArraysKt;->h([J[JIII)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget v0, v10, Landroidx/collection/LongList;->b:I

    .line 164
    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 166
    .line 167
    iput v0, v10, Landroidx/collection/LongList;->b:I

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    const-string v0, "Index must be between 0 and size"

    .line 171
    .line 172
    invoke-static {v0}, Lu2;->o(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 177
    .line 178
    .line 179
    move-result-wide v12

    .line 180
    iget v14, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 181
    .line 182
    iget v1, v11, Landroidx/collection/ObjectList;->b:I

    .line 183
    .line 184
    add-int/lit8 v15, v1, -0x1

    .line 185
    .line 186
    iput v15, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 187
    .line 188
    iget v2, v11, Landroidx/collection/ObjectList;->b:I

    .line 189
    .line 190
    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 191
    .line 192
    .line 193
    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 194
    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    iput v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 198
    .line 199
    invoke-virtual {v11, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v8, v7, v4}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZZ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    invoke-virtual {v10, v1, v2}, Landroidx/collection/MutableLongList;->a(J)V

    .line 207
    .line 208
    .line 209
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const/4 v9, 0x0

    .line 218
    move-object/from16 v0, p0

    .line 219
    .line 220
    move-object/from16 v2, p2

    .line 221
    .line 222
    move-wide/from16 v3, p3

    .line 223
    .line 224
    move/from16 v6, p6

    .line 225
    .line 226
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 227
    .line 228
    .line 229
    iput v15, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 230
    .line 231
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->b()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    iget v2, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 236
    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    iget v3, v11, Landroidx/collection/ObjectList;->b:I

    .line 240
    .line 241
    add-int/lit8 v3, v3, -0x1

    .line 242
    .line 243
    if-ge v2, v3, :cond_8

    .line 244
    .line 245
    invoke-static {v12, v13, v0, v1}, Landroidx/compose/ui/node/DistanceAndFlags;->a(JJ)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-lez v2, :cond_8

    .line 250
    .line 251
    add-int/lit8 v2, v14, 0x1

    .line 252
    .line 253
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DistanceAndFlags;->c(J)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 258
    .line 259
    if-eqz v0, :cond_7

    .line 260
    .line 261
    add-int/lit8 v1, v1, 0x2

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 265
    .line 266
    :goto_1
    invoke-virtual {v5, v2, v1}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_8
    iget v0, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 271
    .line 272
    add-int/lit8 v0, v0, 0x1

    .line 273
    .line 274
    iget v1, v11, Landroidx/collection/ObjectList;->b:I

    .line 275
    .line 276
    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/node/HitTestResult;->c(II)V

    .line 277
    .line 278
    .line 279
    :goto_2
    iput v14, v5, Landroidx/compose/ui/node/HitTestResult;->l:I

    .line 280
    .line 281
    return-void

    .line 282
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;->b()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-static {v0, v1}, Landroidx/compose/ui/node/NodeCoordinatorKt;->a(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const/4 v9, 0x0

    .line 291
    move-object/from16 v0, p0

    .line 292
    .line 293
    move-object/from16 v2, p2

    .line 294
    .line 295
    move-wide/from16 v3, p3

    .line 296
    .line 297
    move/from16 v6, p6

    .line 298
    .line 299
    move/from16 v7, p7

    .line 300
    .line 301
    move/from16 v8, p8

    .line 302
    .line 303
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->s1(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->G:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method
