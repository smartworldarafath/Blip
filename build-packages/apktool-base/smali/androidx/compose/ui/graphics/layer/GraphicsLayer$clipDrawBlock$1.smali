.class final Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/ui/graphics/layer/GraphicsLayer;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->k:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;->k:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->l0()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object v4, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 33
    .line 34
    iget-object v4, v4, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4, v0}, Landroidx/compose/ui/graphics/Canvas;->j(Landroidx/compose/ui/graphics/Path;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2, v3}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {v1, v2, v3}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method
