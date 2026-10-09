.class public final Landroidx/compose/ui/node/LayoutNode;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;
.implements Landroidx/compose/ui/layout/Remeasurement;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/semantics/SemanticsInfo;
.implements Landroidx/compose/ui/node/ComposeUiNode;
.implements Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNode$LayoutState;,
        Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;,
        Landroidx/compose/ui/node/LayoutNode$UsageByParent;,
        Landroidx/compose/ui/node/LayoutNode$WhenMappings;
    }
.end annotation


# static fields
.field public static final a0:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

.field public static final b0:Lx9;

.field public static final c0:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

.field public static final d0:Lv1;


# instance fields
.field public A:Z

.field public B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

.field public C:Z

.field public final D:Landroidx/compose/runtime/collection/MutableVector;

.field public E:Z

.field public F:Landroidx/compose/ui/layout/MeasurePolicy;

.field public G:Landroidx/compose/ui/node/IntrinsicsPolicy;

.field public H:Landroidx/compose/ui/unit/Density;

.field public I:Landroidx/compose/ui/unit/LayoutDirection;

.field public J:Landroidx/compose/ui/platform/ViewConfiguration;

.field public K:Landroidx/compose/runtime/CompositionLocalMap;

.field public L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public M:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field public N:Z

.field public final O:Landroidx/compose/ui/node/NodeChain;

.field public final P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field public Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field public R:Landroidx/compose/ui/node/NodeCoordinator;

.field public S:Z

.field public T:Landroidx/compose/ui/Modifier;

.field public U:Landroidx/compose/ui/Modifier;

.field public V:Ln2;

.field public W:Lm2;

.field public X:Z

.field public Y:I

.field public Z:Z

.field public final j:Z

.field public k:I

.field public l:Z

.field public m:J

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Landroidx/compose/ui/node/LayoutNode;

.field public r:I

.field public final s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

.field public t:Landroidx/compose/runtime/collection/MutableVector;

.field public u:Z

.field public v:Landroidx/compose/ui/node/LayoutNode;

.field public w:Landroidx/compose/ui/node/Owner;

.field public x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    .line 2
    .line 3
    const-string v1, "Undefined intrinsics block and it is required"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->a0:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    .line 9
    .line 10
    new-instance v0, Lx9;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->c0:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    .line 25
    .line 26
    new-instance v0, Lv1;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    invoke-direct {v0, v1}, Lv1;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->d0:Lv1;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 109
    :goto_0
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 110
    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/node/LayoutNode;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 7
    .line 8
    const-wide p1, 0x7fffffff7fffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/compose/ui/node/LayoutNode;->m:J

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 19
    .line 20
    const/4 p2, -0x4

    .line 21
    iput p2, p0, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 22
    .line 23
    new-instance p2, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    new-array v2, v1, [Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lr1;

    .line 35
    .line 36
    const/16 v3, 0x19

    .line 37
    .line 38
    invoke-direct {v2, v3, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0, v2}, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;-><init>(Landroidx/compose/runtime/collection/MutableVector;Lr1;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 45
    .line 46
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    .line 47
    .line 48
    new-array v0, v1, [Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    invoke-direct {p2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->D:Landroidx/compose/runtime/collection/MutableVector;

    .line 54
    .line 55
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->E:Z

    .line 56
    .line 57
    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->a0:Landroidx/compose/ui/node/LayoutNode$Companion$ErrorMeasurePolicy$1;

    .line 58
    .line 59
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 60
    .line 61
    sget-object p2, Landroidx/compose/ui/node/LayoutNodeKt;->a:Landroidx/compose/ui/unit/Density;

    .line 62
    .line 63
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 64
    .line 65
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 66
    .line 67
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 68
    .line 69
    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->c0:Landroidx/compose/ui/node/LayoutNode$Companion$DummyViewConfiguration$1;

    .line 70
    .line 71
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->J:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 72
    .line 73
    sget-object p2, Landroidx/compose/runtime/CompositionLocalMap;->a:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object p2, Landroidx/compose/runtime/CompositionLocalMap$Companion;->b:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 79
    .line 80
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/runtime/CompositionLocalMap;

    .line 81
    .line 82
    sget-object p2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 83
    .line 84
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 85
    .line 86
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 87
    .line 88
    new-instance p2, Landroidx/compose/ui/node/NodeChain;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 94
    .line 95
    new-instance p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 96
    .line 97
    invoke-direct {p2, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 101
    .line 102
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 103
    .line 104
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 105
    .line 106
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->T:Landroidx/compose/ui/Modifier;

    .line 107
    .line 108
    return-void
.end method

.method public static X(Landroidx/compose/ui/node/LayoutNode;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    const-string p2, "Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope"

    .line 26
    .line 27
    invoke-static {p2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 31
    .line 32
    if-nez p2, :cond_4

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_4
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 36
    .line 37
    if-nez v3, :cond_b

    .line 38
    .line 39
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 40
    .line 41
    if-nez v3, :cond_b

    .line 42
    .line 43
    check-cast p2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 44
    .line 45
    invoke-virtual {p2, p0, v2, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->w(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_b

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 68
    .line 69
    if-eqz p2, :cond_b

    .line 70
    .line 71
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 72
    .line 73
    if-eq p0, v0, :cond_b

    .line 74
    .line 75
    :goto_2
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 76
    .line 77
    if-ne v0, p0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move-object p2, v0

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_9

    .line 93
    .line 94
    if-ne p0, v2, :cond_8

    .line 95
    .line 96
    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    const-string p0, "Intrinsics isn\'t used by the parent"

    .line 109
    .line 110
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_9
    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 115
    .line 116
    const/4 v0, 0x6

    .line 117
    if-eqz p0, :cond_a

    .line 118
    .line 119
    invoke-static {p2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_a
    invoke-static {p2, p1, v0}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 124
    .line 125
    .line 126
    :cond_b
    :goto_4
    return-void
.end method

.method public static Z(Landroidx/compose/ui/node/LayoutNode;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    move p2, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move p2, v1

    .line 22
    :goto_1
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 23
    .line 24
    if-nez v3, :cond_8

    .line 25
    .line 26
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 27
    .line 28
    if-nez v3, :cond_8

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_3
    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 36
    .line 37
    invoke-virtual {v3, p0, v1, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->w(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    .line 38
    .line 39
    .line 40
    if-eqz p2, :cond_8

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 47
    .line 48
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 57
    .line 58
    if-eqz p2, :cond_8

    .line 59
    .line 60
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 61
    .line 62
    if-eq p0, v0, :cond_8

    .line 63
    .line 64
    :goto_2
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 65
    .line 66
    if-ne v0, p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move-object p2, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    if-ne p0, v2, :cond_6

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    const-string p0, "Intrinsics isn\'t used by the parent"

    .line 90
    .line 91
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_7
    const/4 p0, 0x6

    .line 96
    invoke-static {p2, p1, p0}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 97
    .line 98
    .line 99
    :cond_8
    :goto_4
    return-void
.end method

.method public static a0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$WhenMappings;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_4

    .line 17
    .line 18
    iget-boolean v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 19
    .line 20
    const/4 v3, 0x6

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {p0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :cond_4
    iget-object p0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 55
    .line 56
    const-string v0, "Unexpected state "

    .line 57
    .line 58
    invoke-static {p0, v0}, Lk8;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final j(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Cannot insert "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " because it already has a parent or an owner. This tree: "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " Other tree: "

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final A()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 6
    .line 7
    return p0
.end method

.method public final B()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->O:F

    .line 6
    .line 7
    return p0
.end method

.method public final C()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->E:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->D:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->d0:Lv1;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/util/Comparator;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->E:Z

    .line 26
    .line 27
    :cond_0
    return-object v1
.end method

.method public final D()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->j0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final E(JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->a1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 12
    .line 13
    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->j0:Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;

    .line 14
    .line 15
    move-object v6, p3

    .line 16
    move v7, p4

    .line 17
    move v8, p5

    .line 18
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->j1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final F(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/ui/node/LayoutNode;->j(Landroidx/compose/ui/node/LayoutNode;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->b:Lr1;

    .line 27
    .line 28
    invoke-virtual {p1}, Lr1;->a()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p2, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->d(Landroidx/compose/ui/node/Owner;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 55
    .line 56
    iget p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:I

    .line 57
    .line 58
    if-lez p1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 61
    .line 62
    iget v0, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:I

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d(I)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget p1, p2, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 70
    .line 71
    if-lez p1, :cond_5

    .line 72
    .line 73
    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 74
    .line 75
    add-int/lit8 p1, p1, 0x1

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public final G()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->R:Landroidx/compose/ui/node/NodeCoordinator;

    .line 15
    .line 16
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_3

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v3, v1, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v3, v2

    .line 28
    :goto_1
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->R:Landroidx/compose/ui/node/NodeCoordinator;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->S:Z

    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->R:Landroidx/compose/ui/node/NodeCoordinator;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_5
    const-string p0, "layer was not set. This error is usually caused by operating off of the UI thread. Did you call invalidate() instead of postInvalidate()?"

    .line 53
    .line 54
    invoke-static {p0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    throw p0

    .line 59
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_8

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_8
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 76
    .line 77
    if-eqz p0, :cond_9

    .line 78
    .line 79
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    .line 83
    .line 84
    :cond_9
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 6
    .line 7
    :goto_0
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final J()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :goto_0
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 24
    .line 25
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->C:Z

    .line 26
    .line 27
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 33
    .line 34
    invoke-direct {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Lp0;

    .line 48
    .line 49
    const/16 v4, 0x15

    .line 50
    .line 51
    invoke-direct {v3, v4, p0, v1}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->d:Lla;

    .line 55
    .line 56
    iget-object v2, v2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 57
    .line 58
    invoke-virtual {v2, p0, v4, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->C:Z

    .line 63
    .line 64
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 67
    .line 68
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 69
    .line 70
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 71
    .line 72
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, p0, v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->b(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 81
    .line 82
    .line 83
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->y()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->u:Z

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final M()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->C:Z

    .line 6
    .line 7
    return p0
.end method

.method public final N()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->A:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->l:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final O()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->p:Z

    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->u:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "replace() called on item that was not placed"

    .line 26
    .line 27
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->L:Z

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->A:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 36
    .line 37
    sget-object v3, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->l:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 38
    .line 39
    if-eq v2, v3, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_1
    iget-wide v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->x:J

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->y:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->z:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 48
    .line 49
    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/compose/ui/node/LookaheadPassDelegate;->F0(JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->L:Z

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_3
    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->p:Z

    .line 72
    .line 73
    return-void

    .line 74
    :goto_2
    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->p:Z

    .line 75
    .line 76
    throw v0
.end method

.method public final P(III)V
    .locals 6

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p3, :cond_3

    .line 6
    .line 7
    if-le p1, p2, :cond_1

    .line 8
    .line 9
    add-int v1, p1, v0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v1, p1

    .line 13
    :goto_1
    if-le p1, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p2, v0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    add-int v2, p2, p3

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 23
    .line 24
    iget-object v4, v3, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    iget-object v5, v3, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->b:Lr1;

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v5}, Lr1;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 38
    .line 39
    invoke-virtual {v3, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Lr1;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final Q(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->l:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->h()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    iget v1, p1, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 40
    .line 41
    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 42
    .line 43
    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 56
    .line 57
    iget-object v1, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 58
    .line 59
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_0
    if-ge v2, p1, :cond_3

    .line 63
    .line 64
    aget-object v3, v1, v2

    .line 65
    .line 66
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 67
    .line 68
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 69
    .line 70
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 71
    .line 72
    iput-object v0, v3, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->K()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final R(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 12
    .line 13
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 14
    .line 15
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$LayoutState;->n:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v4

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    move v2, v5

    .line 37
    :goto_2
    iget v3, p0, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 38
    .line 39
    const/4 v6, -0x4

    .line 40
    if-eq v3, v6, :cond_7

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 45
    .line 46
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 47
    .line 48
    if-ne p1, v3, :cond_3

    .line 49
    .line 50
    iput-boolean v5, p0, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 51
    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Landroidx/compose/ui/spatial/RectManager;->h(Landroidx/compose/ui/node/LayoutNode;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    iput-boolean v5, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v3, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 65
    .line 66
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 67
    .line 68
    :goto_3
    if-ge v4, p1, :cond_5

    .line 69
    .line 70
    aget-object v7, v3, v4

    .line 71
    .line 72
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 73
    .line 74
    iput-boolean v5, v7, Landroidx/compose/ui/node/LayoutNode;->o:Z

    .line 75
    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0, v7}, Landroidx/compose/ui/spatial/RectManager;->h(Landroidx/compose/ui/node/LayoutNode;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 85
    .line 86
    if-eq p1, v6, :cond_6

    .line 87
    .line 88
    iput-boolean v5, v0, Landroidx/compose/ui/spatial/RectManager;->f:Z

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    iget-object p1, v0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 95
    .line 96
    iget-object p1, p1, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 97
    .line 98
    add-int/lit8 p0, p0, 0x2

    .line 99
    .line 100
    aget-wide v2, p1, p0

    .line 101
    .line 102
    const/16 v4, 0x3f

    .line 103
    .line 104
    shr-long v4, v2, v4

    .line 105
    .line 106
    const-wide/16 v6, 0x1

    .line 107
    .line 108
    and-long/2addr v4, v6

    .line 109
    const/16 v6, 0x3c

    .line 110
    .line 111
    shl-long/2addr v4, v6

    .line 112
    or-long/2addr v2, v4

    .line 113
    aput-wide v2, p1, p0

    .line 114
    .line 115
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->k()V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_4
    iget-object p0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->J0()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->E:Z

    .line 17
    .line 18
    return-void
.end method

.method public final T()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget-object v2, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v1

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->Q(Landroidx/compose/ui/node/LayoutNode;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->b:Lr1;

    .line 30
    .line 31
    invoke-virtual {p0}, Lr1;->a()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final U(II)V
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "count ("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ") must be greater than 0"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    add-int/2addr p2, p1

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    if-gt p1, p2, :cond_1

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 36
    .line 37
    aget-object v1, v1, p2

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->Q(Landroidx/compose/ui/node/LayoutNode;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v0, v0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->b:Lr1;

    .line 51
    .line 52
    invoke-virtual {v0}, Lr1;->a()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 56
    .line 57
    if-eq p2, p1, :cond_1

    .line 58
    .line 59
    add-int/lit8 p2, p2, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public final V()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 13
    .line 14
    iget-object p0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v0, 0x1

    .line 18
    :try_start_0
    iput-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->p:Z

    .line 19
    .line 20
    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->t:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "replace called on unplaced item"

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->C:Z

    .line 33
    .line 34
    iget-wide v2, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->w:J

    .line 35
    .line 36
    iget v4, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->z:F

    .line 37
    .line 38
    iget-object v5, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->x:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    iget-object v6, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->y:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/MeasurePassDelegate;->E0(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-boolean v0, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->P:Z

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_2
    iput-boolean v7, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->p:Z

    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->c0(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    iput-boolean v7, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->p:Z

    .line 75
    .line 76
    throw p0
.end method

.method public final W(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->x(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final Y(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->x(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 22
    .line 23
    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->q1()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->Q:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    :goto_0
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iget-boolean v2, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->T0()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move-object v1, v0

    .line 36
    :goto_1
    if-eqz v1, :cond_5

    .line 37
    .line 38
    iget-boolean v2, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->V0()V

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 49
    .line 50
    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 51
    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->P0()V

    .line 55
    .line 56
    .line 57
    :cond_6
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 69
    .line 70
    iput-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 71
    .line 72
    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 85
    .line 86
    iget v3, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroidx/collection/MutableIntSet;->f(I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 97
    .line 98
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 99
    .line 100
    invoke-virtual {v2, v0, p0, v1}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 101
    .line 102
    .line 103
    :cond_9
    return-void
.end method

.method public final b0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p0, :cond_1

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 17
    .line 18
    iput-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 19
    .line 20
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->b0()V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final c(Landroidx/compose/ui/Modifier;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    const/16 v7, 0x10

    .line 8
    .line 9
    invoke-virtual {v2, v7}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    iget-object v9, v2, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 14
    .line 15
    const/16 v10, 0x400

    .line 16
    .line 17
    invoke-virtual {v2, v10}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    iput-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->T:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 24
    .line 25
    iget-object v4, v2, Landroidx/compose/ui/node/NodeChain;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    iget-object v5, v2, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget-object v12, v2, Landroidx/compose/ui/node/NodeChain;->b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 30
    .line 31
    if-eq v5, v12, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v5, "padChain called on already padded chain"

    .line 35
    .line 36
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v5, v2, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    iput-object v12, v5, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    iput-object v5, v12, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 44
    .line 45
    move-object v5, v3

    .line 46
    iget-object v3, v2, Landroidx/compose/ui/node/NodeChain;->g:Landroidx/collection/MutableObjectList;

    .line 47
    .line 48
    iget v6, v3, Landroidx/collection/ObjectList;->b:I

    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    move-object v14, v4

    .line 55
    :goto_1
    if-eqz v13, :cond_1

    .line 56
    .line 57
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    move-object/from16 v22, v14

    .line 62
    .line 63
    move-object v14, v13

    .line 64
    move-object/from16 v13, v22

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v13, v14, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 68
    .line 69
    iget-object v14, v13, Landroidx/compose/ui/node/NodeChain;->h:Landroidx/collection/MutableObjectList;

    .line 70
    .line 71
    if-nez v14, :cond_2

    .line 72
    .line 73
    new-instance v14, Landroidx/collection/MutableObjectList;

    .line 74
    .line 75
    invoke-direct {v14}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v14, v13, Landroidx/compose/ui/node/NodeChain;->h:Landroidx/collection/MutableObjectList;

    .line 79
    .line 80
    :cond_2
    iget v15, v14, Landroidx/collection/ObjectList;->b:I

    .line 81
    .line 82
    const/4 v10, 0x1

    .line 83
    sub-int/2addr v15, v10

    .line 84
    if-ltz v15, :cond_3

    .line 85
    .line 86
    invoke-virtual {v14, v15}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v15

    .line 90
    check-cast v15, Landroidx/collection/MutableObjectList;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    new-instance v15, Landroidx/collection/MutableObjectList;

    .line 94
    .line 95
    invoke-direct {v15}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 96
    .line 97
    .line 98
    :goto_2
    iget-object v7, v13, Landroidx/compose/ui/node/NodeChain;->i:Landroidx/collection/MutableObjectList;

    .line 99
    .line 100
    if-nez v7, :cond_4

    .line 101
    .line 102
    new-instance v7, Landroidx/collection/MutableObjectList;

    .line 103
    .line 104
    invoke-direct {v7}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 105
    .line 106
    .line 107
    :cond_4
    move/from16 v16, v10

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    iput-object v10, v13, Landroidx/compose/ui/node/NodeChain;->i:Landroidx/collection/MutableObjectList;

    .line 111
    .line 112
    invoke-virtual {v7, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object v1, v10

    .line 116
    :goto_3
    invoke-virtual {v7}, Landroidx/collection/ObjectList;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v17

    .line 120
    if-eqz v17, :cond_8

    .line 121
    .line 122
    iget v10, v7, Landroidx/collection/ObjectList;->b:I

    .line 123
    .line 124
    add-int/lit8 v10, v10, -0x1

    .line 125
    .line 126
    invoke-virtual {v7, v10}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    move-object/from16 p1, v1

    .line 133
    .line 134
    instance-of v1, v10, Landroidx/compose/ui/CombinedModifier;

    .line 135
    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    check-cast v10, Landroidx/compose/ui/CombinedModifier;

    .line 139
    .line 140
    iget-object v1, v10, Landroidx/compose/ui/CombinedModifier;->c:Landroidx/compose/ui/Modifier;

    .line 141
    .line 142
    invoke-virtual {v7, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v10, Landroidx/compose/ui/CombinedModifier;->b:Landroidx/compose/ui/Modifier;

    .line 146
    .line 147
    invoke-virtual {v7, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    instance-of v1, v10, Landroidx/compose/ui/Modifier$Element;

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    invoke-virtual {v15, v10}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :goto_4
    move-object/from16 v1, p1

    .line 159
    .line 160
    move-object/from16 v18, v2

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_6
    if-nez p1, :cond_7

    .line 164
    .line 165
    new-instance v1, Lma;

    .line 166
    .line 167
    move-object/from16 v18, v2

    .line 168
    .line 169
    const/4 v2, 0x6

    .line 170
    invoke-direct {v1, v2, v15}, Lma;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_7
    move-object/from16 v18, v2

    .line 175
    .line 176
    move-object/from16 v1, p1

    .line 177
    .line 178
    :goto_5
    invoke-interface {v10, v1}, Landroidx/compose/ui/Modifier;->f(Lkotlin/jvm/functions/Function1;)Z

    .line 179
    .line 180
    .line 181
    :goto_6
    move-object/from16 v2, v18

    .line 182
    .line 183
    const/4 v10, 0x0

    .line 184
    goto :goto_3

    .line 185
    :cond_8
    move-object/from16 v18, v2

    .line 186
    .line 187
    iget v1, v15, Landroidx/collection/ObjectList;->b:I

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    if-ne v1, v6, :cond_11

    .line 191
    .line 192
    iget-object v1, v12, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 193
    .line 194
    move/from16 v19, v2

    .line 195
    .line 196
    :goto_7
    if-eqz v1, :cond_d

    .line 197
    .line 198
    if-ge v2, v6, :cond_d

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Landroidx/compose/ui/Modifier$Element;

    .line 205
    .line 206
    invoke-virtual {v15, v2}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v20

    .line 210
    const/16 p1, 0x2

    .line 211
    .line 212
    move-object/from16 v10, v20

    .line 213
    .line 214
    check-cast v10, Landroidx/compose/ui/Modifier$Element;

    .line 215
    .line 216
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v20

    .line 220
    if-eqz v20, :cond_9

    .line 221
    .line 222
    move-object/from16 v20, v3

    .line 223
    .line 224
    move-object/from16 v21, v15

    .line 225
    .line 226
    move/from16 v3, p1

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_9
    move-object/from16 v20, v3

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object/from16 v21, v15

    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    if-ne v3, v15, :cond_a

    .line 242
    .line 243
    move/from16 v3, v16

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_a
    move/from16 v3, v19

    .line 247
    .line 248
    :goto_8
    if-eqz v3, :cond_c

    .line 249
    .line 250
    move/from16 v15, v16

    .line 251
    .line 252
    if-eq v3, v15, :cond_b

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_b
    invoke-static {v5, v10, v1}, Landroidx/compose/ui/node/NodeChain;->h(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 256
    .line 257
    .line 258
    :goto_9
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 259
    .line 260
    add-int/lit8 v2, v2, 0x1

    .line 261
    .line 262
    move-object/from16 v3, v20

    .line 263
    .line 264
    move-object/from16 v15, v21

    .line 265
    .line 266
    const/16 v16, 0x1

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_c
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 270
    .line 271
    :goto_a
    move-object v5, v1

    .line 272
    goto :goto_b

    .line 273
    :cond_d
    move-object/from16 v20, v3

    .line 274
    .line 275
    move-object/from16 v21, v15

    .line 276
    .line 277
    const/16 p1, 0x2

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :goto_b
    if-ge v2, v6, :cond_10

    .line 281
    .line 282
    if-eqz v5, :cond_f

    .line 283
    .line 284
    iget-object v1, v4, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    if-eqz v1, :cond_e

    .line 287
    .line 288
    const/16 v16, 0x1

    .line 289
    .line 290
    :goto_c
    const/4 v15, 0x1

    .line 291
    goto :goto_d

    .line 292
    :cond_e
    move/from16 v16, v19

    .line 293
    .line 294
    goto :goto_c

    .line 295
    :goto_d
    xor-int/lit8 v6, v16, 0x1

    .line 296
    .line 297
    move-object/from16 v1, v18

    .line 298
    .line 299
    move-object/from16 v3, v20

    .line 300
    .line 301
    move-object/from16 v4, v21

    .line 302
    .line 303
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/NodeChain;->f(ILandroidx/collection/MutableObjectList;Landroidx/collection/MutableObjectList;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 304
    .line 305
    .line 306
    move-object v5, v12

    .line 307
    :goto_e
    const/4 v10, 0x1

    .line 308
    goto/16 :goto_16

    .line 309
    .line 310
    :cond_f
    const-string v0, "structuralUpdate requires a non-null tail"

    .line 311
    .line 312
    invoke-static {v0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    throw v0

    .line 317
    :cond_10
    move-object/from16 v2, v18

    .line 318
    .line 319
    move-object/from16 v3, v20

    .line 320
    .line 321
    move-object/from16 v15, v21

    .line 322
    .line 323
    goto :goto_13

    .line 324
    :cond_11
    move/from16 v19, v2

    .line 325
    .line 326
    move-object/from16 v2, v18

    .line 327
    .line 328
    const/16 p1, 0x2

    .line 329
    .line 330
    iget-object v10, v4, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    if-eqz v10, :cond_14

    .line 333
    .line 334
    if-nez v6, :cond_14

    .line 335
    .line 336
    move-object v4, v12

    .line 337
    move/from16 v1, v19

    .line 338
    .line 339
    :goto_f
    iget v5, v15, Landroidx/collection/ObjectList;->b:I

    .line 340
    .line 341
    if-ge v1, v5, :cond_12

    .line 342
    .line 343
    invoke-virtual {v15, v1}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    check-cast v5, Landroidx/compose/ui/Modifier$Element;

    .line 348
    .line 349
    invoke-static {v5, v4}, Landroidx/compose/ui/node/NodeChain;->b(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    add-int/lit8 v1, v1, 0x1

    .line 354
    .line 355
    goto :goto_f

    .line 356
    :cond_12
    iget-object v1, v9, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 357
    .line 358
    :goto_10
    if-eqz v1, :cond_13

    .line 359
    .line 360
    if-eq v1, v12, :cond_13

    .line 361
    .line 362
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 363
    .line 364
    or-int v4, v19, v4

    .line 365
    .line 366
    iput v4, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 367
    .line 368
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 369
    .line 370
    move/from16 v19, v4

    .line 371
    .line 372
    goto :goto_10

    .line 373
    :cond_13
    move-object v1, v2

    .line 374
    move-object v5, v12

    .line 375
    move-object v4, v15

    .line 376
    goto :goto_e

    .line 377
    :cond_14
    if-nez v1, :cond_17

    .line 378
    .line 379
    iget-object v1, v12, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 380
    .line 381
    move/from16 v6, v19

    .line 382
    .line 383
    :goto_11
    if-eqz v1, :cond_15

    .line 384
    .line 385
    iget v10, v3, Landroidx/collection/ObjectList;->b:I

    .line 386
    .line 387
    if-ge v6, v10, :cond_15

    .line 388
    .line 389
    invoke-static {v1}, Landroidx/compose/ui/node/NodeChain;->c(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 394
    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 396
    .line 397
    goto :goto_11

    .line 398
    :cond_15
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    if-eqz v1, :cond_16

    .line 403
    .line 404
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 405
    .line 406
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 407
    .line 408
    goto :goto_12

    .line 409
    :cond_16
    const/4 v1, 0x0

    .line 410
    :goto_12
    iput-object v1, v5, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 411
    .line 412
    iput-object v5, v2, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 413
    .line 414
    :goto_13
    move-object v1, v2

    .line 415
    move-object v5, v12

    .line 416
    move-object v4, v15

    .line 417
    move/from16 v10, v19

    .line 418
    .line 419
    goto :goto_16

    .line 420
    :cond_17
    if-eqz v10, :cond_18

    .line 421
    .line 422
    const/16 v16, 0x1

    .line 423
    .line 424
    :goto_14
    const/4 v10, 0x1

    .line 425
    goto :goto_15

    .line 426
    :cond_18
    move/from16 v16, v19

    .line 427
    .line 428
    goto :goto_14

    .line 429
    :goto_15
    xor-int/lit8 v6, v16, 0x1

    .line 430
    .line 431
    move-object v1, v2

    .line 432
    const/4 v2, 0x0

    .line 433
    move-object v5, v12

    .line 434
    move-object v4, v15

    .line 435
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/NodeChain;->f(ILandroidx/collection/MutableObjectList;Landroidx/collection/MutableObjectList;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 436
    .line 437
    .line 438
    :goto_16
    iput-object v4, v1, Landroidx/compose/ui/node/NodeChain;->g:Landroidx/collection/MutableObjectList;

    .line 439
    .line 440
    invoke-virtual {v3}, Landroidx/collection/MutableObjectList;->k()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v14, v3}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v7}, Landroidx/collection/MutableObjectList;->k()V

    .line 447
    .line 448
    .line 449
    iput-object v7, v13, Landroidx/compose/ui/node/NodeChain;->i:Landroidx/collection/MutableObjectList;

    .line 450
    .line 451
    iget-object v2, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 452
    .line 453
    if-nez v2, :cond_19

    .line 454
    .line 455
    :goto_17
    const/4 v2, 0x0

    .line 456
    goto :goto_18

    .line 457
    :cond_19
    move-object v9, v2

    .line 458
    goto :goto_17

    .line 459
    :goto_18
    iput-object v2, v9, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 460
    .line 461
    iput-object v2, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 462
    .line 463
    const/4 v3, -0x1

    .line 464
    iput v3, v5, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 465
    .line 466
    iput-object v2, v5, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 467
    .line 468
    if-eq v9, v5, :cond_1a

    .line 469
    .line 470
    goto :goto_19

    .line 471
    :cond_1a
    const-string v2, "trimChain did not update the head"

    .line 472
    .line 473
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :goto_19
    iput-object v9, v1, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 477
    .line 478
    if-eqz v10, :cond_1b

    .line 479
    .line 480
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->g()V

    .line 481
    .line 482
    .line 483
    :cond_1b
    const/16 v2, 0x10

    .line 484
    .line 485
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    const/16 v3, 0x400

    .line 490
    .line 491
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 496
    .line 497
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->j()V

    .line 498
    .line 499
    .line 500
    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 501
    .line 502
    if-nez v4, :cond_1c

    .line 503
    .line 504
    const/16 v4, 0x200

    .line 505
    .line 506
    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-eqz v1, :cond_1c

    .line 511
    .line 512
    invoke-virtual {v0, v0}, Landroidx/compose/ui/node/LayoutNode;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 513
    .line 514
    .line 515
    :cond_1c
    if-ne v8, v2, :cond_1d

    .line 516
    .line 517
    if-eq v11, v3, :cond_1e

    .line 518
    .line 519
    :cond_1d
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    if-eqz v4, :cond_1e

    .line 535
    .line 536
    iget v4, v0, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 537
    .line 538
    const/4 v5, -0x4

    .line 539
    if-eq v4, v5, :cond_1e

    .line 540
    .line 541
    iget-object v4, v1, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 542
    .line 543
    invoke-virtual {v1, v0}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    iget-object v1, v4, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 548
    .line 549
    add-int/lit8 v0, v0, 0x2

    .line 550
    .line 551
    aget-wide v4, v1, v0

    .line 552
    .line 553
    const-wide v6, -0x6000000000000001L

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    and-long/2addr v4, v6

    .line 559
    const-wide/high16 v6, 0x2000000000000000L

    .line 560
    .line 561
    int-to-long v8, v3

    .line 562
    mul-long/2addr v8, v6

    .line 563
    or-long v3, v4, v8

    .line 564
    .line 565
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 566
    .line 567
    int-to-long v7, v2

    .line 568
    mul-long/2addr v7, v5

    .line 569
    or-long v2, v3, v7

    .line 570
    .line 571
    aput-wide v2, v1, v0

    .line 572
    .line 573
    :cond_1e
    return-void
.end method

.method public final c0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/runtime/CompositionLocalMap;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalMapKt;->a(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 19
    .line 20
    new-instance v1, Lp0;

    .line 21
    .line 22
    const/16 v2, 0x9

    .line 23
    .line 24
    invoke-direct {v1, v2, v0, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Landroidx/compose/runtime/tooling/ComposeStackTraceKt;->a(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    throw p1
.end method

.method public final d(Landroidx/compose/ui/node/Owner;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Cannot attach "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " as it already is attached.  Tree: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v2

    .line 60
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move-object v4, v2

    .line 74
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "Attaching to a different owner("

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, ") than the parent\'s owner("

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "). This tree: "

    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, " Parent tree: "

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 125
    .line 126
    iput-boolean v4, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->C:Z

    .line 127
    .line 128
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5, p0}, Landroidx/compose/ui/spatial/RectManager;->h(Landroidx/compose/ui/node/LayoutNode;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 136
    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    sget-object v6, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->j:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 140
    .line 141
    iput-object v6, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->A:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 142
    .line 143
    :cond_5
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 144
    .line 145
    iget-object v6, v5, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    iget-object v7, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 150
    .line 151
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    move-object v7, v2

    .line 155
    :goto_4
    iput-object v7, v6, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 156
    .line 157
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    iget v6, v0, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    const/4 v6, -0x1

    .line 165
    :goto_5
    add-int/2addr v6, v4

    .line 166
    iput v6, p0, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 167
    .line 168
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 169
    .line 170
    if-eqz v6, :cond_8

    .line 171
    .line 172
    invoke-virtual {p0, v6}, Landroidx/compose/ui/node/LayoutNode;->c(Landroidx/compose/ui/Modifier;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    move-object v2, p1

    .line 178
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 179
    .line 180
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget v6, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 185
    .line 186
    invoke-virtual {v2, v6, p0}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 190
    .line 191
    if-eqz v2, :cond_9

    .line 192
    .line 193
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 194
    .line 195
    if-nez v2, :cond_a

    .line 196
    .line 197
    :cond_9
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 198
    .line 199
    :cond_a
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 203
    .line 204
    if-nez v2, :cond_b

    .line 205
    .line 206
    const/16 v2, 0x200

    .line 207
    .line 208
    invoke-virtual {v5, v2}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 215
    .line 216
    .line 217
    :cond_b
    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 218
    .line 219
    if-nez v2, :cond_c

    .line 220
    .line 221
    iget-object v2, v5, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 222
    .line 223
    :goto_6
    if-eqz v2, :cond_c

    .line 224
    .line 225
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->O0()V

    .line 226
    .line 227
    .line 228
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_c
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 232
    .line 233
    iget-object v2, v2, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 234
    .line 235
    iget-object v6, v2, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 236
    .line 237
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 238
    .line 239
    :goto_7
    if-ge v1, v2, :cond_d

    .line 240
    .line 241
    aget-object v7, v6, v1

    .line 242
    .line 243
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 244
    .line 245
    invoke-virtual {v7, p1}, Landroidx/compose/ui/node/LayoutNode;->d(Landroidx/compose/ui/node/Owner;)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_d
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 252
    .line 253
    if-nez v1, :cond_e

    .line 254
    .line 255
    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->e()V

    .line 256
    .line 257
    .line 258
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 259
    .line 260
    .line 261
    if-eqz v0, :cond_f

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 264
    .line 265
    .line 266
    :cond_f
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->V:Ln2;

    .line 267
    .line 268
    if-eqz v0, :cond_10

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Ln2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    :cond_10
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->j()V

    .line 274
    .line 275
    .line 276
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 277
    .line 278
    if-nez v0, :cond_11

    .line 279
    .line 280
    const/16 v0, 0x8

    .line 281
    .line 282
    invoke-virtual {v5, v0}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_11

    .line 287
    .line 288
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->J()V

    .line 289
    .line 290
    .line 291
    :cond_11
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_12

    .line 298
    .line 299
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 306
    .line 307
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-ne v0, v4, :cond_12

    .line 314
    .line 315
    iget-object v0, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 316
    .line 317
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntSet;->b(I)Z

    .line 320
    .line 321
    .line 322
    iget-object v0, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 323
    .line 324
    iget-object p1, p1, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 325
    .line 326
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 327
    .line 328
    invoke-virtual {v0, p1, p0, v4}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 329
    .line 330
    .line 331
    :cond_12
    return-void
.end method

.method public final d0(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->H()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    :goto_1
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->g()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    .line 26
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 27
    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final e0(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v1, v0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->e0(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p0, :cond_1

    .line 19
    .line 20
    aget-object v2, v0, v1

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    .line 26
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->k:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->f()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final f0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroidx/compose/ui/node/LookaheadPassDelegate;-><init>(Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 27
    .line 28
    iget-object v0, p1, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 33
    .line 34
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Y0()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    iput-object p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 53
    .line 54
    iput-boolean p1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final g(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    const-string v3, "  "

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "|-"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v2, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 40
    .line 41
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 42
    .line 43
    move v3, v1

    .line 44
    :goto_1
    if-ge v3, p0, :cond_1

    .line 45
    .line 46
    aget-object v4, v2, v3

    .line 47
    .line 48
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    add-int/lit8 v5, p1, 0x1

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_2
    return-object p0
.end method

.method public final g0(Landroidx/compose/ui/layout/MeasurePolicy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->G:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/node/IntrinsicsPolicy;->b:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->g(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Cannot detach node that is already detached!  Tree: "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lf7;->h()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->G()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 50
    .line 51
    .line 52
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 53
    .line 54
    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 55
    .line 56
    iput-object v5, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 57
    .line 58
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iput-object v5, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 63
    .line 64
    :cond_2
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 65
    .line 66
    iget-object v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    iput-boolean v5, v3, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    .line 70
    .line 71
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    .line 72
    .line 73
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    .line 74
    .line 75
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 76
    .line 77
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    .line 78
    .line 79
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    .line 80
    .line 81
    iput-object v1, v3, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 82
    .line 83
    iget-object v3, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 84
    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    iget-object v3, v3, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iput-boolean v5, v3, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    .line 92
    .line 93
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    .line 94
    .line 95
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    .line 96
    .line 97
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    .line 98
    .line 99
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    .line 100
    .line 101
    iput-boolean v2, v3, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    .line 102
    .line 103
    iput-object v1, v3, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/AlignmentLinesOwner;

    .line 104
    .line 105
    :cond_3
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 106
    .line 107
    iget-object v6, v3, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 108
    .line 109
    iget-object v7, v3, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 110
    .line 111
    iget-object v8, v3, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 112
    .line 113
    iget-object v8, v8, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 114
    .line 115
    :goto_0
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-nez v9, :cond_5

    .line 120
    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->w1()V

    .line 124
    .line 125
    .line 126
    iget-object v9, v6, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 127
    .line 128
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_4

    .line 133
    .line 134
    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->r1()V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object v6, v6, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->W:Lm2;

    .line 141
    .line 142
    if-eqz v6, :cond_6

    .line 143
    .line 144
    invoke-virtual {v6, v0}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :cond_6
    move-object v6, v7

    .line 148
    :goto_1
    if-eqz v6, :cond_8

    .line 149
    .line 150
    iget-boolean v8, v6, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 151
    .line 152
    if-eqz v8, :cond_7

    .line 153
    .line 154
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->V0()V

    .line 155
    .line 156
    .line 157
    :cond_7
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    iput-boolean v5, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 161
    .line 162
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 163
    .line 164
    iget-object v6, v6, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 165
    .line 166
    iget-object v8, v6, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 167
    .line 168
    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 169
    .line 170
    move v9, v2

    .line 171
    :goto_2
    if-ge v9, v6, :cond_9

    .line 172
    .line 173
    aget-object v10, v8, v9

    .line 174
    .line 175
    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .line 176
    .line 177
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->h()V

    .line 178
    .line 179
    .line 180
    add-int/lit8 v9, v9, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_9
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->z:Z

    .line 184
    .line 185
    :goto_3
    if-eqz v7, :cond_b

    .line 186
    .line 187
    iget-boolean v6, v7, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 188
    .line 189
    if-eqz v6, :cond_a

    .line 190
    .line 191
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->P0()V

    .line 192
    .line 193
    .line 194
    :cond_a
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_b
    move-object v6, v0

    .line 198
    check-cast v6, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 199
    .line 200
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    iget v8, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Landroidx/collection/MutableIntObjectMap;->g(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    iget-object v7, v6, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 210
    .line 211
    iget-object v8, v7, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 212
    .line 213
    iget-object v9, v8, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a:Landroidx/compose/ui/node/DepthSortedSet;

    .line 214
    .line 215
    invoke-virtual {v9, p0}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 216
    .line 217
    .line 218
    iget-object v9, v8, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->b:Landroidx/compose/ui/node/DepthSortedSet;

    .line 219
    .line 220
    invoke-virtual {v9, p0}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 221
    .line 222
    .line 223
    iget-object v8, v8, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c:Landroidx/compose/ui/node/DepthSortedSet;

    .line 224
    .line 225
    invoke-virtual {v8, p0}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 226
    .line 227
    .line 228
    iget-object v7, v7, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 229
    .line 230
    iget-object v7, v7, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 231
    .line 232
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    iput-boolean v5, v6, Landroidx/compose/ui/platform/AndroidComposeView;->T:Z

    .line 236
    .line 237
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-eqz v5, :cond_c

    .line 242
    .line 243
    iget-object v7, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 244
    .line 245
    iget v8, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 246
    .line 247
    invoke-virtual {v7, v8}, Landroidx/collection/MutableIntSet;->f(I)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_c

    .line 252
    .line 253
    iget-object v7, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 254
    .line 255
    iget-object v5, v5, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 256
    .line 257
    iget v8, p0, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 258
    .line 259
    invoke-virtual {v7, v5, v8, v2}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->b(Landroid/view/View;IZ)V

    .line 260
    .line 261
    .line 262
    :cond_c
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v5, p0}, Landroidx/compose/ui/spatial/RectManager;->i(Landroidx/compose/ui/node/LayoutNode;)V

    .line 267
    .line 268
    .line 269
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->f0(Landroidx/compose/ui/node/LayoutNode;)V

    .line 272
    .line 273
    .line 274
    iput v2, p0, Landroidx/compose/ui/node/LayoutNode;->y:I

    .line 275
    .line 276
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 277
    .line 278
    const v7, 0x7fffffff

    .line 279
    .line 280
    .line 281
    iput v7, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->r:I

    .line 282
    .line 283
    iput v7, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->q:I

    .line 284
    .line 285
    iput-boolean v2, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->C:Z

    .line 286
    .line 287
    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 288
    .line 289
    if-eqz v4, :cond_d

    .line 290
    .line 291
    iput v7, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->r:I

    .line 292
    .line 293
    iput v7, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->q:I

    .line 294
    .line 295
    sget-object v5, Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;->l:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 296
    .line 297
    iput-object v5, v4, Landroidx/compose/ui/node/LookaheadPassDelegate;->A:Landroidx/compose/ui/node/LookaheadPassDelegate$PlacedState;

    .line 298
    .line 299
    :cond_d
    const/16 v4, 0x8

    .line 300
    .line 301
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_e

    .line 306
    .line 307
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 308
    .line 309
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 310
    .line 311
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 312
    .line 313
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, p0, v3}, Landroidx/compose/ui/semantics/SemanticsOwner;->b(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->y()V

    .line 321
    .line 322
    .line 323
    :cond_e
    return-void
.end method

.method public final h0(Landroidx/compose/ui/Modifier;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->T:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "modifier is updated when deactivated"

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->c(Landroidx/compose/ui/Modifier;)V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->J()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void

    .line 43
    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->U:Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    return-void
.end method

.method public final i(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->W0(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->c0(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public final i0(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->J:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->J:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 16
    .line 17
    const/16 v0, 0x10

    .line 18
    .line 19
    and-int/2addr p1, v0

    .line 20
    if-eqz p1, :cond_8

    .line 21
    .line 22
    :goto_0
    if-eqz p0, :cond_8

    .line 23
    .line 24
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 25
    .line 26
    and-int/2addr p1, v0

    .line 27
    if-eqz p1, :cond_7

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p1

    .line 32
    :goto_1
    if-eqz v1, :cond_7

    .line 33
    .line 34
    instance-of v3, v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 39
    .line 40
    invoke-interface {v1}, Landroidx/compose/ui/node/PointerInputModifierNode;->G0()V

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_0
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 45
    .line 46
    and-int/2addr v3, v0

    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 50
    .line 51
    if-eqz v3, :cond_6

    .line 52
    .line 53
    move-object v3, v1

    .line 54
    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 55
    .line 56
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_2
    const/4 v5, 0x1

    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 63
    .line 64
    and-int/2addr v6, v0

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    if-ne v4, v5, :cond_1

    .line 70
    .line 71
    move-object v1, v3

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    if-nez v2, :cond_2

    .line 74
    .line 75
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 76
    .line 77
    new-array v5, v0, [Landroidx/compose/ui/Modifier$Node;

    .line 78
    .line 79
    invoke-direct {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v1, p1

    .line 88
    :cond_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    if-ne v4, v5, :cond_6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    :goto_4
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_1

    .line 102
    :cond_7
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 103
    .line 104
    and-int/2addr p1, v0

    .line 105
    if-eqz p1, :cond_8

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    return-void
.end method

.method public final j0()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->r:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->u:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->u:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    new-array v2, v2, [Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 33
    .line 34
    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 35
    .line 36
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 37
    .line 38
    :goto_0
    if-ge v0, v2, :cond_2

    .line 39
    .line 40
    aget-object v4, v3, v0

    .line 41
    .line 42
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 53
    .line 54
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->c(ILandroidx/compose/runtime/collection/MutableVector;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->J:Z

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    iput-boolean v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->D:Z

    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 17
    .line 18
    iget-boolean v1, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->s:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-wide v0, v0, Landroidx/compose/ui/layout/Placeable;->m:J

    .line 23
    .line 24
    new-instance v2, Landroidx/compose/ui/unit/Constraints;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/Owner;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-wide v1, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 38
    .line 39
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->s(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->C:Landroidx/compose/runtime/collection/MutableVector;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->o:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 11
    .line 12
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->D:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->f()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 33
    .line 34
    iget v2, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    :goto_0
    if-ge v5, v2, :cond_2

    .line 39
    .line 40
    aget-object v6, v3, v5

    .line 41
    .line 42
    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    iget v7, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 45
    .line 46
    if-gt v7, v5, :cond_1

    .line 47
    .line 48
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 49
    .line 50
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 60
    .line 61
    iget-object v6, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v7, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v8, v7, v5

    .line 69
    .line 70
    aput-object v6, v7, v5

    .line 71
    .line 72
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iget v2, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->l(II)V

    .line 86
    .line 87
    .line 88
    iput-boolean v4, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->D:Z

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->f()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasurePassDelegate;->n0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->f()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Landroidx/compose/ui/node/MutableVectorWithMutationTracking;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/MutableVectorWithMutationTracking;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->f()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final p()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 6
    .line 7
    return p0
.end method

.method public final q()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->F:Z

    .line 6
    .line 7
    return p0
.end method

.method public final r()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->E:Z

    .line 6
    .line 7
    return p0
.end method

.method public final s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->u:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 6
    .line 7
    return-object p0
.end method

.method public final t()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->s:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p0

    .line 13
    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 14
    .line 15
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/JvmActuals_jvmKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 14
    .line 15
    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " children: "

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " measurePolicy: "

    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " deactivated: "

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, " isVirtual: "

    .line 54
    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean p0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 59
    .line 60
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, " isPlaced: "

    .line 64
    .line 65
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public final u()Ljava/util/List;
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->g:Landroidx/collection/MutableObjectList;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 15
    .line 16
    iget v2, v0, Landroidx/collection/ObjectList;->b:I

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-eqz v2, :cond_4

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 27
    .line 28
    if-eq v2, v4, :cond_4

    .line 29
    .line 30
    iget-object v5, v2, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    iget-object v7, v5, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 36
    .line 37
    iget-object v8, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 38
    .line 39
    iget-object v8, v8, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 40
    .line 41
    iget-object v9, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    if-ne v9, v4, :cond_1

    .line 44
    .line 45
    iget-object v4, v9, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 46
    .line 47
    if-eq v5, v4, :cond_1

    .line 48
    .line 49
    move-object v6, v8

    .line 50
    :cond_1
    if-nez v7, :cond_2

    .line 51
    .line 52
    move-object v7, v6

    .line 53
    :cond_2
    new-instance v4, Landroidx/compose/ui/layout/ModifierInfo;

    .line 54
    .line 55
    add-int/lit8 v6, v3, 0x1

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    invoke-direct {v4, v3, v5, v7}, Landroidx/compose/ui/layout/ModifierInfo;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/OwnedLayer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 70
    .line 71
    move v3, v6

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-string p0, "getModifierInfo called on node with no coordinator"

    .line 74
    .line 75
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v6

    .line 79
    :cond_4
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->j()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final v()Landroidx/compose/ui/node/IntrinsicsPolicy;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->G:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/node/IntrinsicsPolicy;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->G:Landroidx/compose/ui/node/IntrinsicsPolicy;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final w()Landroidx/compose/ui/node/LayoutNode;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    :goto_0
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0
.end method

.method public final x()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->r:I

    .line 6
    .line 7
    return p0
.end method

.method public final y()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final z()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
