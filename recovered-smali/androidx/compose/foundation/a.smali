.class public final synthetic Landroidx/compose/foundation/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/BackgroundNode;

.field public final synthetic k:Landroidx/compose/ui/node/LayoutNodeDrawScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/a;->j:Landroidx/compose/foundation/BackgroundNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/a;->k:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/a;->j:Landroidx/compose/foundation/BackgroundNode;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->A:Landroidx/compose/ui/graphics/Shape;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/a;->k:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 8
    .line 9
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->a(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, v0, Landroidx/compose/foundation/BackgroundNode;->F:Landroidx/compose/ui/graphics/Outline;

    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method
