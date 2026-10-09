.class public final synthetic Landroidx/compose/foundation/layout/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/ui/layout/Measurable;

.field public final synthetic l:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Landroidx/compose/foundation/layout/BoxMeasurePolicy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/a;->j:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/layout/a;->k:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/layout/a;->l:Landroidx/compose/ui/layout/MeasureScope;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/foundation/layout/a;->m:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/foundation/layout/a;->n:I

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/layout/a;->o:Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/compose/foundation/layout/a;->l:Landroidx/compose/ui/layout/MeasureScope;

    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/layout/a;->o:Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 11
    .line 12
    iget-object v6, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->a:Landroidx/compose/ui/Alignment;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/layout/a;->j:Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/layout/a;->k:Landroidx/compose/ui/layout/Measurable;

    .line 17
    .line 18
    iget v4, p0, Landroidx/compose/foundation/layout/a;->m:I

    .line 19
    .line 20
    iget v5, p0, Landroidx/compose/foundation/layout/a;->n:I

    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxKt;->b(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
