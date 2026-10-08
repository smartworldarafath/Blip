.class final Landroidx/compose/animation/EnterExitTransitionKt$trackActiveMutableState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/SharedMutableTransformState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedMutableTransformState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$trackActiveMutableState$1$1;->k:Landroidx/compose/animation/SharedMutableTransformState;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$trackActiveMutableState$1$1;->k:Landroidx/compose/animation/SharedMutableTransformState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->b:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedMutableTransformState;->c(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/animation/SharedMutableTransformState;->c:Landroidx/compose/animation/TransformScopeImpl;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/compose/animation/TransformScopeImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v2, Landroidx/compose/animation/TransformScopeImpl;->c:Landroidx/compose/runtime/MutableState;

    .line 26
    .line 27
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v2, Landroidx/compose/animation/TransformScopeImpl;->e:Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v2, Landroidx/compose/animation/TransformScopeImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 40
    .line 41
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-wide v1, Landroidx/compose/ui/graphics/Color;->g:J

    .line 47
    .line 48
    iput-wide v1, p0, Landroidx/compose/animation/SharedMutableTransformState;->e:J

    .line 49
    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    .line 52
    iput v1, p0, Landroidx/compose/animation/SharedMutableTransformState;->f:F

    .line 53
    .line 54
    iput v1, p0, Landroidx/compose/animation/SharedMutableTransformState;->g:F

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/compose/animation/SharedMutableTransformState;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->d:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->o([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 64
    .line 65
    .line 66
    iput v0, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->e:I

    .line 67
    .line 68
    :cond_0
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 69
    .line 70
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->h:J

    .line 71
    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .line 74
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->i:J

    .line 75
    .line 76
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0
.end method
