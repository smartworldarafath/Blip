.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;
.super Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->c:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 2
    .line 3
    iget-object v0, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->k:F

    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->l:F

    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->c:Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iput v1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 39
    .line 40
    iget-object p1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->r:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    .line 43
    .line 44
    invoke-direct {v0, p3, p4}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroidx/compose/ui/layout/MeasureResult;

    .line 52
    .line 53
    iget p1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n:I

    .line 54
    .line 55
    new-instance p3, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;

    .line 56
    .line 57
    invoke-direct {p3, p0, p2, p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;)V

    .line 58
    .line 59
    .line 60
    return-object p3

    .line 61
    :cond_0
    iput v1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:I

    .line 62
    .line 63
    new-instance p1, Landroidx/compose/ui/unit/Constraints;

    .line 64
    .line 65
    invoke-direct {p1, p3, p4}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Landroidx/compose/ui/layout/MeasureResult;

    .line 73
    .line 74
    iget p1, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m:I

    .line 75
    .line 76
    new-instance p3, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2;

    .line 77
    .line 78
    invoke-direct {p3, p0, p2, p1, p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;)V

    .line 79
    .line 80
    .line 81
    return-object p3
.end method
