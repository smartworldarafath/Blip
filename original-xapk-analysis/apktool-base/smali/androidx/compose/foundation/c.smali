.class public final synthetic Landroidx/compose/foundation/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/node/DelegatingNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/node/DelegatingNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/c;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/c;->k:Landroidx/compose/ui/node/DelegatingNode;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/foundation/c;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/c;->k:Landroidx/compose/ui/node/DelegatingNode;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/compose/foundation/ScrollableAreaNode;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/foundation/OverscrollKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/foundation/OverscrollFactory;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->J:Landroidx/compose/foundation/OverscrollFactory;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;

    .line 23
    .line 24
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->b:Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    iget-wide v4, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->c:J

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;->d:Landroidx/compose/foundation/layout/PaddingValues;

    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->K:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/CombinedClickableNode;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
