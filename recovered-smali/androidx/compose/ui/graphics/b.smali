.class public final synthetic Landroidx/compose/ui/graphics/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/b;->j:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/graphics/b;->k:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/ui/graphics/b;->k:Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 5
    .line 6
    iget-object v4, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->R:Landroidx/compose/ui/graphics/a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    iget-object v1, p0, Landroidx/compose/ui/graphics/b;->j:Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method
