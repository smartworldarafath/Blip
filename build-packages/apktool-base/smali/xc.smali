.class public final synthetic Lxc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic m:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic n:F

.field public final synthetic o:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic p:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic q:Z

.field public final synthetic r:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic s:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic t:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic u:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;FLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxc;->j:Landroidx/compose/foundation/pager/PagerState;

    .line 5
    .line 6
    iput-object p2, p0, Lxc;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Lxc;->l:Landroidx/compose/foundation/layout/PaddingValues;

    .line 9
    .line 10
    iput-object p4, p0, Lxc;->m:Landroidx/compose/foundation/pager/PageSize;

    .line 11
    .line 12
    iput p5, p0, Lxc;->n:F

    .line 13
    .line 14
    iput-object p6, p0, Lxc;->o:Landroidx/compose/ui/Alignment$Vertical;

    .line 15
    .line 16
    iput-object p7, p0, Lxc;->p:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    .line 17
    .line 18
    iput-boolean p8, p0, Lxc;->q:Z

    .line 19
    .line 20
    iput-object p9, p0, Lxc;->r:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 21
    .line 22
    iput-object p10, p0, Lxc;->s:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 23
    .line 24
    iput-object p11, p0, Lxc;->t:Landroidx/compose/foundation/OverscrollEffect;

    .line 25
    .line 26
    iput-object p12, p0, Lxc;->u:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x30031

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-object v0, p0, Lxc;->j:Landroidx/compose/foundation/pager/PagerState;

    .line 19
    .line 20
    iget-object v1, p0, Lxc;->k:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    iget-object v2, p0, Lxc;->l:Landroidx/compose/foundation/layout/PaddingValues;

    .line 23
    .line 24
    iget-object v3, p0, Lxc;->m:Landroidx/compose/foundation/pager/PageSize;

    .line 25
    .line 26
    iget v4, p0, Lxc;->n:F

    .line 27
    .line 28
    iget-object v5, p0, Lxc;->o:Landroidx/compose/ui/Alignment$Vertical;

    .line 29
    .line 30
    iget-object v6, p0, Lxc;->p:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    .line 31
    .line 32
    iget-boolean v7, p0, Lxc;->q:Z

    .line 33
    .line 34
    iget-object v8, p0, Lxc;->r:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 35
    .line 36
    iget-object v9, p0, Lxc;->s:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 37
    .line 38
    iget-object v10, p0, Lxc;->t:Landroidx/compose/foundation/OverscrollEffect;

    .line 39
    .line 40
    iget-object v11, p0, Lxc;->u:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 41
    .line 42
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;FLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method
