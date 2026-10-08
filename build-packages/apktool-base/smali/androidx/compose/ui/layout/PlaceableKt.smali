.class public abstract Landroidx/compose/ui/layout/PlaceableKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lwc;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwc;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lwc;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/layout/PlaceableKt;->a:Lwc;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0xf

    .line 11
    .line 12
    invoke-static {v0, v0, v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Landroidx/compose/ui/layout/PlaceableKt;->b:J

    .line 17
    .line 18
    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/OuterPlacementScope;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/OuterPlacementScope;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
