.class public final synthetic Lga;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic l:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field public final synthetic m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic n:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic q:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic r:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic s:Lkotlin/jvm/functions/Function1;

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lga;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lga;->k:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 7
    .line 8
    iput-object p3, p0, Lga;->l:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lga;->m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lga;->n:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 13
    .line 14
    iput-boolean p6, p0, Lga;->o:Z

    .line 15
    .line 16
    iput-object p7, p0, Lga;->p:Landroidx/compose/foundation/OverscrollEffect;

    .line 17
    .line 18
    iput-object p8, p0, Lga;->q:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 19
    .line 20
    iput-object p9, p0, Lga;->r:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 21
    .line 22
    iput-object p10, p0, Lga;->s:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    iput p11, p0, Lga;->t:I

    .line 25
    .line 26
    iput p12, p0, Lga;->u:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lga;->t:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget p1, p0, Lga;->u:I

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v0, p0, Lga;->j:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-object v1, p0, Lga;->k:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 26
    .line 27
    iget-object v2, p0, Lga;->l:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    .line 28
    .line 29
    iget-object v3, p0, Lga;->m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 30
    .line 31
    iget-object v4, p0, Lga;->n:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 32
    .line 33
    iget-boolean v5, p0, Lga;->o:Z

    .line 34
    .line 35
    iget-object v6, p0, Lga;->p:Landroidx/compose/foundation/OverscrollEffect;

    .line 36
    .line 37
    iget-object v7, p0, Lga;->q:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 38
    .line 39
    iget-object v8, p0, Lga;->r:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 40
    .line 41
    iget-object v9, p0, Lga;->s:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method
