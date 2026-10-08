.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/DraggableGestureConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;,
        Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;
    }
.end annotation


# instance fields
.field public final j:Landroidx/compose/foundation/gestures/DragGestureNode;

.field public k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

.field public l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

.field public m:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

.field public n:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

.field public o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

.field public p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

.field public q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

.field public final r:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

.field public final s:Landroidx/compose/foundation/gestures/OffsetSmoother;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/DragGestureNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b:Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->r:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 19
    .line 20
    new-instance p1, Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/collection/MutableLongList;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/collection/MutableLongList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p1, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->s:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 33
    .line 34
    return-void
.end method

.method public static c(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V
    .locals 4

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    :cond_0
    iget-object p6, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->m:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 21
    .line 22
    const-wide v2, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 28
    .line 29
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->m:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 32
    .line 33
    :cond_1
    iput-object p1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 34
    .line 35
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->b:J

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 38
    .line 39
    iget-object p2, p6, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->q:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iput-object p2, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a:Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    iput-wide p4, p1, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 54
    .line 55
    :goto_0
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->c:Z

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 8
    .line 9
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->c:Z

    .line 10
    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :goto_0
    const-string p0, "waiting"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    instance-of p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    const-string p0, "recognized"

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    const-string p0, "idle"

    .line 34
    .line 35
    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 14
    .line 15
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    .line 16
    .line 17
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->c:Z

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->k:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 20
    .line 21
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->l:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 22
    .line 23
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->a:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 24
    .line 25
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->b:Z

    .line 26
    .line 27
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->c:Z

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 30
    .line 31
    return-void
.end method

.method public final b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLandroidx/compose/foundation/gestures/TouchSlopDetector;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->n:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->b:J

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->n:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->a:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 23
    .line 24
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->b:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->o:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState;

    .line 31
    .line 32
    return-void
.end method

.method public final b0()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    return-object p0
.end method

.method public final d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final e(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    iget-wide v4, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 10
    .line 11
    iget-object v7, v6, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 12
    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v8, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 19
    .line 20
    const/16 v9, 0x20

    .line 21
    .line 22
    const-wide v10, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-ne v7, v8, :cond_0

    .line 28
    .line 29
    and-long v7, v2, v10

    .line 30
    .line 31
    :goto_0
    long-to-int v7, v7

    .line 32
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    shr-long v7, v2, v9

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/high16 v8, 0x40000000    # 2.0f

    .line 45
    .line 46
    cmpl-float v7, v7, v8

    .line 47
    .line 48
    if-lez v7, :cond_10

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v8, v6, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 55
    .line 56
    iget-object v12, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->r:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 57
    .line 58
    iget-object v13, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b:Landroidx/collection/MutableObjectList;

    .line 59
    .line 60
    shr-long v14, v4, v9

    .line 61
    .line 62
    long-to-int v14, v14

    .line 63
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    and-long/2addr v4, v10

    .line 68
    long-to-int v4, v4

    .line 69
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v15, 0x0

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    iput v15, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 81
    .line 82
    invoke-virtual {v13}, Landroidx/collection/MutableObjectList;->k()V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    move/from16 v16, v9

    .line 90
    .line 91
    const/4 v9, 0x3

    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    if-nez v5, :cond_6

    .line 95
    .line 96
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    iget v4, v13, Landroidx/collection/ObjectList;->b:I

    .line 103
    .line 104
    if-ne v4, v9, :cond_2

    .line 105
    .line 106
    iget v4, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 107
    .line 108
    add-int/lit8 v5, v4, 0x1

    .line 109
    .line 110
    iput v5, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 111
    .line 112
    invoke-virtual {v13, v4, v1}, Landroidx/collection/MutableObjectList;->p(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {v13, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget v4, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 120
    .line 121
    if-ne v4, v9, :cond_3

    .line 122
    .line 123
    iput v15, v12, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 124
    .line 125
    :cond_3
    iget-object v4, v13, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 126
    .line 127
    iget v5, v13, Landroidx/collection/ObjectList;->b:I

    .line 128
    .line 129
    move v12, v15

    .line 130
    move/from16 v14, v17

    .line 131
    .line 132
    :goto_3
    if-ge v12, v5, :cond_4

    .line 133
    .line 134
    aget-object v18, v4, v12

    .line 135
    .line 136
    move-wide/from16 v19, v10

    .line 137
    .line 138
    move-object/from16 v10, v18

    .line 139
    .line 140
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 141
    .line 142
    iget-wide v10, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 143
    .line 144
    shr-long v10, v10, v16

    .line 145
    .line 146
    long-to-int v10, v10

    .line 147
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    add-float/2addr v14, v10

    .line 152
    add-int/lit8 v12, v12, 0x1

    .line 153
    .line 154
    move-wide/from16 v10, v19

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move-wide/from16 v19, v10

    .line 158
    .line 159
    iget v4, v13, Landroidx/collection/ObjectList;->b:I

    .line 160
    .line 161
    int-to-float v5, v4

    .line 162
    div-float/2addr v14, v5

    .line 163
    iget-object v5, v13, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 164
    .line 165
    move v10, v15

    .line 166
    move/from16 v11, v17

    .line 167
    .line 168
    :goto_4
    if-ge v10, v4, :cond_5

    .line 169
    .line 170
    aget-object v12, v5, v10

    .line 171
    .line 172
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 173
    .line 174
    move/from16 v21, v10

    .line 175
    .line 176
    iget-wide v9, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 177
    .line 178
    and-long v9, v9, v19

    .line 179
    .line 180
    long-to-int v9, v9

    .line 181
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    add-float/2addr v11, v9

    .line 186
    add-int/lit8 v10, v21, 0x1

    .line 187
    .line 188
    const/4 v9, 0x3

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    iget v4, v13, Landroidx/collection/ObjectList;->b:I

    .line 191
    .line 192
    int-to-float v4, v4

    .line 193
    div-float v4, v11, v4

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_6
    move-wide/from16 v19, v10

    .line 197
    .line 198
    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    int-to-long v9, v5

    .line 203
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    int-to-long v4, v4

    .line 208
    shl-long v9, v9, v16

    .line 209
    .line 210
    and-long v4, v4, v19

    .line 211
    .line 212
    or-long/2addr v4, v9

    .line 213
    const/4 v9, 0x1

    .line 214
    if-nez v8, :cond_7

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_7
    move-object/from16 v10, p2

    .line 218
    .line 219
    iget v10, v10, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    .line 220
    .line 221
    if-ne v10, v9, :cond_8

    .line 222
    .line 223
    shr-long v4, v4, v16

    .line 224
    .line 225
    long-to-int v4, v4

    .line 226
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    goto :goto_6

    .line 231
    :cond_8
    const/4 v11, 0x2

    .line 232
    if-ne v10, v11, :cond_a

    .line 233
    .line 234
    and-long v4, v4, v19

    .line 235
    .line 236
    long-to-int v4, v4

    .line 237
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    :goto_6
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 242
    .line 243
    if-ne v8, v5, :cond_9

    .line 244
    .line 245
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    int-to-long v4, v4

    .line 250
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    int-to-long v10, v8

    .line 255
    shl-long v4, v4, v16

    .line 256
    .line 257
    and-long v10, v10, v19

    .line 258
    .line 259
    or-long/2addr v4, v10

    .line 260
    goto :goto_7

    .line 261
    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    int-to-long v10, v5

    .line 266
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    int-to-long v4, v4

    .line 271
    shl-long v10, v10, v16

    .line 272
    .line 273
    and-long v4, v4, v19

    .line 274
    .line 275
    or-long/2addr v4, v10

    .line 276
    :cond_a
    :goto_7
    iget-wide v10, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 277
    .line 278
    iget-object v1, v7, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 279
    .line 280
    invoke-virtual {v1, v10, v11, v4, v5}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 281
    .line 282
    .line 283
    new-instance v1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 284
    .line 285
    iget-object v0, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->s:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 286
    .line 287
    iget-object v4, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    .line 288
    .line 289
    iget v5, v4, Landroidx/collection/LongList;->b:I

    .line 290
    .line 291
    const/4 v7, 0x3

    .line 292
    if-ne v5, v7, :cond_c

    .line 293
    .line 294
    iget v7, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 295
    .line 296
    add-int/lit8 v8, v7, 0x1

    .line 297
    .line 298
    iput v8, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 299
    .line 300
    if-ltz v7, :cond_b

    .line 301
    .line 302
    if-ge v7, v5, :cond_b

    .line 303
    .line 304
    iget-object v5, v4, Landroidx/collection/LongList;->a:[J

    .line 305
    .line 306
    aget-wide v10, v5, v7

    .line 307
    .line 308
    aput-wide v2, v5, v7

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_b
    const-string v0, "Index must be between 0 and size"

    .line 312
    .line 313
    invoke-static {v0}, Lu2;->o(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_c
    invoke-virtual {v4, v2, v3}, Landroidx/collection/MutableLongList;->a(J)V

    .line 318
    .line 319
    .line 320
    :goto_8
    iget v2, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 321
    .line 322
    const/4 v7, 0x3

    .line 323
    if-ne v2, v7, :cond_d

    .line 324
    .line 325
    iput v15, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 326
    .line 327
    :cond_d
    iget-object v0, v4, Landroidx/collection/LongList;->a:[J

    .line 328
    .line 329
    iget v2, v4, Landroidx/collection/LongList;->b:I

    .line 330
    .line 331
    move v3, v15

    .line 332
    move/from16 v5, v17

    .line 333
    .line 334
    :goto_9
    if-ge v3, v2, :cond_e

    .line 335
    .line 336
    aget-wide v7, v0, v3

    .line 337
    .line 338
    shr-long v7, v7, v16

    .line 339
    .line 340
    long-to-int v7, v7

    .line 341
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    add-float/2addr v5, v7

    .line 346
    add-int/lit8 v3, v3, 0x1

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_e
    iget v0, v4, Landroidx/collection/LongList;->b:I

    .line 350
    .line 351
    int-to-float v2, v0

    .line 352
    div-float/2addr v5, v2

    .line 353
    iget-object v2, v4, Landroidx/collection/LongList;->a:[J

    .line 354
    .line 355
    :goto_a
    if-ge v15, v0, :cond_f

    .line 356
    .line 357
    aget-wide v7, v2, v15

    .line 358
    .line 359
    and-long v7, v7, v19

    .line 360
    .line 361
    long-to-int v3, v7

    .line 362
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    add-float v17, v3, v17

    .line 367
    .line 368
    add-int/lit8 v15, v15, 0x1

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_f
    iget v0, v4, Landroidx/collection/LongList;->b:I

    .line 372
    .line 373
    int-to-float v0, v0

    .line 374
    div-float v17, v17, v0

    .line 375
    .line 376
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    int-to-long v2, v0

    .line 381
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    int-to-long v4, v0

    .line 386
    shl-long v2, v2, v16

    .line 387
    .line 388
    and-long v4, v4, v19

    .line 389
    .line 390
    or-long/2addr v2, v4

    .line 391
    invoke-direct {v1, v2, v3, v9}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v1}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 395
    .line 396
    .line 397
    :cond_10
    return-void
.end method

.method public final f(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 12
    .line 13
    invoke-direct {v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v3, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->p:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->d()Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->j:Landroidx/compose/foundation/gestures/DragGestureNode;

    .line 23
    .line 24
    iget-object v5, v4, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 25
    .line 26
    iget-object v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->r:Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;

    .line 27
    .line 28
    iget-object v7, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->b:Landroidx/collection/MutableObjectList;

    .line 29
    .line 30
    iget-wide v8, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 31
    .line 32
    const/16 v10, 0x20

    .line 33
    .line 34
    shr-long/2addr v8, v10

    .line 35
    long-to-int v8, v8

    .line 36
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    iget-wide v11, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 41
    .line 42
    const-wide v13, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v11, v13

    .line 48
    long-to-int v9, v11

    .line 49
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    const/4 v12, 0x0

    .line 58
    if-eqz v11, :cond_1

    .line 59
    .line 60
    iput v12, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 61
    .line 62
    invoke-virtual {v7}, Landroidx/collection/MutableObjectList;->k()V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    const/4 v15, 0x0

    .line 70
    if-nez v11, :cond_6

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-nez v11, :cond_6

    .line 77
    .line 78
    iget v8, v7, Landroidx/collection/ObjectList;->b:I

    .line 79
    .line 80
    const/4 v9, 0x3

    .line 81
    if-ne v8, v9, :cond_2

    .line 82
    .line 83
    iget v8, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 84
    .line 85
    add-int/lit8 v11, v8, 0x1

    .line 86
    .line 87
    iput v11, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 88
    .line 89
    invoke-virtual {v7, v8, v1}, Landroidx/collection/MutableObjectList;->p(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v7, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget v8, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 97
    .line 98
    if-ne v8, v9, :cond_3

    .line 99
    .line 100
    iput v12, v6, Landroidx/compose/foundation/gestures/IndirectPointerInputEventSmoother;->a:I

    .line 101
    .line 102
    :cond_3
    iget-object v6, v7, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 103
    .line 104
    iget v8, v7, Landroidx/collection/ObjectList;->b:I

    .line 105
    .line 106
    move v9, v12

    .line 107
    move v11, v15

    .line 108
    :goto_1
    if-ge v9, v8, :cond_4

    .line 109
    .line 110
    aget-object v16, v6, v9

    .line 111
    .line 112
    move/from16 v17, v10

    .line 113
    .line 114
    move-object/from16 v10, v16

    .line 115
    .line 116
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 117
    .line 118
    move-wide/from16 v18, v13

    .line 119
    .line 120
    iget-wide v13, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 121
    .line 122
    shr-long v13, v13, v17

    .line 123
    .line 124
    long-to-int v10, v13

    .line 125
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    add-float/2addr v11, v10

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 131
    .line 132
    move/from16 v10, v17

    .line 133
    .line 134
    move-wide/from16 v13, v18

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    move/from16 v17, v10

    .line 138
    .line 139
    move-wide/from16 v18, v13

    .line 140
    .line 141
    iget v6, v7, Landroidx/collection/ObjectList;->b:I

    .line 142
    .line 143
    int-to-float v8, v6

    .line 144
    div-float v8, v11, v8

    .line 145
    .line 146
    iget-object v9, v7, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 147
    .line 148
    move v10, v12

    .line 149
    move v11, v15

    .line 150
    :goto_2
    if-ge v10, v6, :cond_5

    .line 151
    .line 152
    aget-object v13, v9, v10

    .line 153
    .line 154
    check-cast v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 155
    .line 156
    iget-wide v13, v13, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 157
    .line 158
    and-long v13, v13, v18

    .line 159
    .line 160
    long-to-int v13, v13

    .line 161
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    add-float/2addr v11, v13

    .line 166
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    iget v6, v7, Landroidx/collection/ObjectList;->b:I

    .line 170
    .line 171
    int-to-float v6, v6

    .line 172
    div-float v9, v11, v6

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    move/from16 v17, v10

    .line 176
    .line 177
    move-wide/from16 v18, v13

    .line 178
    .line 179
    :goto_3
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    int-to-long v6, v6

    .line 184
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    int-to-long v8, v8

    .line 189
    shl-long v6, v6, v17

    .line 190
    .line 191
    and-long v8, v8, v18

    .line 192
    .line 193
    or-long/2addr v6, v8

    .line 194
    const/4 v8, 0x1

    .line 195
    if-nez v5, :cond_7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    iget v9, v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;->a:I

    .line 199
    .line 200
    if-ne v9, v8, :cond_8

    .line 201
    .line 202
    shr-long v6, v6, v17

    .line 203
    .line 204
    long-to-int v6, v6

    .line 205
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    const/4 v10, 0x2

    .line 211
    if-ne v9, v10, :cond_a

    .line 212
    .line 213
    and-long v6, v6, v18

    .line 214
    .line 215
    long-to-int v6, v6

    .line 216
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    :goto_4
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 221
    .line 222
    if-ne v5, v7, :cond_9

    .line 223
    .line 224
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    int-to-long v5, v5

    .line 229
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    int-to-long v9, v7

    .line 234
    shl-long v5, v5, v17

    .line 235
    .line 236
    and-long v9, v9, v18

    .line 237
    .line 238
    or-long v6, v5, v9

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_9
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    int-to-long v9, v5

    .line 246
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    int-to-long v5, v5

    .line 251
    shl-long v9, v9, v17

    .line 252
    .line 253
    and-long v5, v5, v18

    .line 254
    .line 255
    or-long v6, v9, v5

    .line 256
    .line 257
    :cond_a
    :goto_5
    iget-wide v9, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->b:J

    .line 258
    .line 259
    iget-object v1, v3, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;

    .line 260
    .line 261
    invoke-virtual {v1, v9, v10, v6, v7}, Landroidx/compose/ui/input/pointer/util/Lsq2VelocityTracker;->a(JJ)V

    .line 262
    .line 263
    .line 264
    iget-object v1, v4, Landroidx/compose/foundation/gestures/DragGestureNode;->z:Landroidx/compose/foundation/gestures/Orientation;

    .line 265
    .line 266
    move-object/from16 v3, p2

    .line 267
    .line 268
    invoke-static {v3, v1, v2}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->d(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    move-wide/from16 v5, p4

    .line 273
    .line 274
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 275
    .line 276
    .line 277
    move-result-wide v1

    .line 278
    iget-object v3, v4, Landroidx/compose/foundation/gestures/DragGestureNode;->A:Lkotlin/jvm/functions/Function1;

    .line 279
    .line 280
    new-instance v5, Landroidx/compose/ui/input/pointer/PointerType;

    .line 281
    .line 282
    invoke-direct {v5, v8}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Ljava/lang/Boolean;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_b

    .line 296
    .line 297
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 298
    .line 299
    invoke-direct {v3, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/gestures/DragGestureNode;->j1(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    iget-object v0, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->s:Landroidx/compose/foundation/gestures/OffsetSmoother;

    .line 306
    .line 307
    iput v12, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->a:I

    .line 308
    .line 309
    iget-object v0, v0, Landroidx/compose/foundation/gestures/OffsetSmoother;->b:Landroidx/collection/MutableLongList;

    .line 310
    .line 311
    iput v12, v0, Landroidx/collection/LongList;->b:I

    .line 312
    .line 313
    return-void
.end method
