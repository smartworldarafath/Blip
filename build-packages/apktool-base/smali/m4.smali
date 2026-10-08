.class public final synthetic Lm4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:I

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(FFIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lm4;->j:F

    .line 5
    .line 6
    iput p2, p0, Lm4;->k:F

    .line 7
    .line 8
    iput p3, p0, Lm4;->l:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lm4;->m:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lm4;->j:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    iget-object v1, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->C:Landroidx/compose/ui/unit/Density;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lm4;->k:F

    .line 21
    .line 22
    mul-float/2addr v1, v2

    .line 23
    const/4 v2, 0x0

    .line 24
    cmpl-float v3, v0, v2

    .line 25
    .line 26
    if-lez v3, :cond_0

    .line 27
    .line 28
    cmpl-float v2, v1, v2

    .line 29
    .line 30
    if-lez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Landroidx/compose/ui/graphics/BlurEffect;

    .line 33
    .line 34
    iget v3, p0, Lm4;->l:I

    .line 35
    .line 36
    invoke-direct {v2, v0, v1, v3}, Landroidx/compose/ui/graphics/BlurEffect;-><init>(FFI)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->e(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->l(Landroidx/compose/ui/graphics/Shape;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lm4;->m:Z

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->d(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method
