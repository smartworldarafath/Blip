.class public final synthetic La5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:[Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic o:[I


# direct methods
.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La5;->j:[Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput-object p2, p0, La5;->k:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 7
    .line 8
    iput p3, p0, La5;->l:I

    .line 9
    .line 10
    iput p4, p0, La5;->m:I

    .line 11
    .line 12
    iput-object p5, p0, La5;->n:Landroidx/compose/ui/layout/MeasureScope;

    .line 13
    .line 14
    iput-object p6, p0, La5;->o:[I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    iget-object v0, p0, La5;->j:[Landroidx/compose/ui/layout/Placeable;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_3

    .line 9
    .line 10
    aget-object v8, v0, v2

    .line 11
    .line 12
    add-int/lit8 v10, v3, 0x1

    .line 13
    .line 14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v8}, Landroidx/compose/ui/layout/Measured;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    instance-of v5, v4, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    check-cast v4, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move-object v4, v6

    .line 30
    :goto_1
    iget-object v5, p0, La5;->n:Landroidx/compose/ui/layout/MeasureScope;

    .line 31
    .line 32
    invoke-interface {v5}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v6, v4, Landroidx/compose/foundation/layout/RowColumnParentData;->c:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 39
    .line 40
    :cond_1
    move-object v4, v6

    .line 41
    iget v5, p0, La5;->l:I

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget v6, v8, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 46
    .line 47
    iget v9, p0, La5;->m:I

    .line 48
    .line 49
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->a(IILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v4, p0, La5;->k:Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 57
    .line 58
    iget v6, v8, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 59
    .line 60
    invoke-virtual {v4, v6, v5, v7}, Landroidx/compose/ui/BiasAlignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    :goto_2
    iget-object v5, p0, La5;->o:[I

    .line 65
    .line 66
    aget v3, v5, v3

    .line 67
    .line 68
    invoke-static {p1, v8, v4, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    move v3, v10

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method
