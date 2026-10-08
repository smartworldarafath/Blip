.class public final synthetic Lda;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic n:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic o:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic p:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic s:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lda;->j:Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 5
    .line 6
    iput-object p2, p0, Lda;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lda;->l:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 9
    .line 10
    iput-object p4, p0, Lda;->m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lda;->n:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 13
    .line 14
    iput-object p6, p0, Lda;->o:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 15
    .line 16
    iput-object p7, p0, Lda;->p:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 17
    .line 18
    iput-boolean p8, p0, Lda;->q:Z

    .line 19
    .line 20
    iput-object p9, p0, Lda;->r:Landroidx/compose/foundation/OverscrollEffect;

    .line 21
    .line 22
    iput-object p10, p0, Lda;->s:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    const p1, 0x1b0001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    iget-object v0, p0, Lda;->j:Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;

    .line 17
    .line 18
    iget-object v1, p0, Lda;->k:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget-object v2, p0, Lda;->l:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 21
    .line 22
    iget-object v3, p0, Lda;->m:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 23
    .line 24
    iget-object v4, p0, Lda;->n:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 25
    .line 26
    iget-object v5, p0, Lda;->o:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 27
    .line 28
    iget-object v6, p0, Lda;->p:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 29
    .line 30
    iget-boolean v7, p0, Lda;->q:Z

    .line 31
    .line 32
    iget-object v8, p0, Lda;->r:Landroidx/compose/foundation/OverscrollEffect;

    .line 33
    .line 34
    iget-object v9, p0, Lda;->s:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->a(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method
