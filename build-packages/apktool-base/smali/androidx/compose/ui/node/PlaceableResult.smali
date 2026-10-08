.class final Landroidx/compose/ui/node/PlaceableResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# instance fields
.field public j:Landroidx/compose/ui/layout/MeasureResult;

.field public final k:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

.field public final l:Landroidx/compose/ui/layout/Ruler;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Ruler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/PlaceableResult;->j:Landroidx/compose/ui/layout/MeasureResult;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/node/PlaceableResult;->k:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/node/PlaceableResult;->l:Landroidx/compose/ui/layout/Ruler;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final z()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/PlaceableResult;->k:Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->F0()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->o()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
