.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

.field public b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final synthetic c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 6
    .line 7
    return-object p0
.end method

.method public final b()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    return-object p0
.end method

.method public final c()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    return-object p0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public final e(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 6
    .line 7
    return-void
.end method

.method public final f(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    return-void
.end method

.method public final g(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 6
    .line 7
    return-void
.end method
