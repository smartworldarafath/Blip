.class public final Landroidx/compose/animation/SharedMutableTransformState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/runtime/MutableState;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/animation/TransformScopeImpl;

.field public final d:J

.field public e:J

.field public f:F

.field public g:F

.field public h:J

.field public i:J

.field public j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Landroidx/compose/animation/SharedMutableTransformState;->a:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->b:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/animation/TransformScopeImpl;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/compose/animation/TransformScopeImpl;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->c:Landroidx/compose/animation/TransformScopeImpl;

    .line 24
    .line 25
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->d:J

    .line 30
    .line 31
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->e:J

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->f:F

    .line 38
    .line 39
    iput v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->g:F

    .line 40
    .line 41
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 42
    .line 43
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->h:J

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->i:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->b:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->a:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->a:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object p0, p0, Landroidx/compose/animation/SharedMutableTransformState;->b:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
