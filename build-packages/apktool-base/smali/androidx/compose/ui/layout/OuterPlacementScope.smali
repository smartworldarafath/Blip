.class final Landroidx/compose/ui/layout/OuterPlacementScope;
.super Landroidx/compose/ui/layout/Placeable$PlacementScope;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final k:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final e0()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getDensity()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/OuterPlacementScope;->k:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
