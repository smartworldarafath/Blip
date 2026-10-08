.class public final Lnet/blip/shared/BrushPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final o:Landroidx/compose/ui/graphics/SolidColor;

.field public final p:J

.field private final painter:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/SolidColor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/shared/BrushPainter;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/shared/BrushPainter;->o:Landroidx/compose/ui/graphics/SolidColor;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->i()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, Lnet/blip/shared/BrushPainter;->p:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/blip/shared/BrushPainter;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 14

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :try_start_0
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/Canvas;->c(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lnet/blip/shared/BrushPainter;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {v2, p1, v3, v4}, Landroidx/compose/ui/graphics/painter/Painter;->h(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/node/LayoutNodeDrawScope;J)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lnet/blip/shared/BrushPainter;->o:Landroidx/compose/ui/graphics/SolidColor;

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    const/16 v13, 0x3e

    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    const-wide/16 v9, 0x0

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    move-object v5, p1

    .line 46
    invoke-static/range {v5 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->O(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
