.class public final Lnet/blip/shared/LayerPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final o:[Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public varargs constructor <init>([Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/LayerPainter;->o:[Landroidx/compose/ui/graphics/painter/Painter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i()J
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/blip/shared/LayerPainter;->o:[Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    return-wide v0
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lnet/blip/shared/LayerPainter;->o:[Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    iget-object v3, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 10
    .line 11
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v2, p1, v3, v4}, Landroidx/compose/ui/graphics/painter/Painter;->h(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/node/LayoutNodeDrawScope;J)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
