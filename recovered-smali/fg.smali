.class public final synthetic Lfg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfg;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lfg;->k:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lfg;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lfg;->k:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;

    .line 21
    .line 22
    invoke-direct {v2, p0, p2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroidx/compose/ui/node/LayoutNode;->g0(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    check-cast p2, Landroidx/compose/runtime/CompositionContext;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k:Landroidx/compose/runtime/CompositionContext;

    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 41
    .line 42
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    check-cast p2, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 45
    .line 46
    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 47
    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 51
    .line 52
    invoke-direct {p2, p1, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 56
    .line 57
    :cond_0
    iput-object p2, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 71
    .line 72
    if-eq p1, v0, :cond_1

    .line 73
    .line 74
    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l:Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    const/4 p2, 0x7

    .line 83
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
