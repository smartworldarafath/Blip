.class final Landroidx/compose/animation/ZIndexModifierNode$measure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:Landroidx/compose/animation/ZIndexModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/ZIndexModifierNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/ZIndexModifierNode$measure$1;->k:Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/ZIndexModifierNode$measure$1;->l:Landroidx/compose/animation/ZIndexModifierNode;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/compose/animation/ZIndexModifierNode$measure$1;->l:Landroidx/compose/animation/ZIndexModifierNode;

    .line 5
    .line 6
    iget v1, v1, Landroidx/compose/animation/ZIndexModifierNode;->x:F

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/animation/ZIndexModifierNode$measure$1;->k:Landroidx/compose/ui/layout/Placeable;

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method
