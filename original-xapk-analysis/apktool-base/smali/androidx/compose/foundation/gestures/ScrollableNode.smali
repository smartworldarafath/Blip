.class public final Landroidx/compose/foundation/gestures/ScrollableNode;
.super Landroidx/compose/foundation/gestures/AbstractScrollableNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;


# instance fields
.field public final Z:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field public final a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final b0:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

.field public final c0:Landroidx/compose/ui/focus/FocusTargetModifierNode;

.field public final d0:Landroidx/compose/foundation/gestures/ContentInViewNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZZ)V
    .locals 10

    .line 1
    move/from16 v9, p7

    .line 2
    .line 3
    move-object/from16 v0, p6

    .line 4
    .line 5
    invoke-direct {p0, v9, v0, p4}, Landroidx/compose/foundation/gestures/AbstractScrollableNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 9
    .line 10
    sget-object v2, Landroidx/compose/foundation/gestures/ScrollableKt;->c:Landroidx/compose/foundation/gestures/ScrollableKt$UnityDensity$1;

    .line 11
    .line 12
    new-instance v3, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->b(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->Z:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    move-object v3, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, p3

    .line 31
    :goto_0
    iget-object v6, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 32
    .line 33
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 34
    .line 35
    new-instance v8, Lwe;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v8, p0, v2}, Lwe;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    .line 39
    .line 40
    .line 41
    move-object v7, p0

    .line 42
    move-object v2, p1

    .line 43
    move-object v4, p4

    .line 44
    move-object v1, p5

    .line 45
    move/from16 v5, p8

    .line 46
    .line 47
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/ScrollableNode;Lwe;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 51
    .line 52
    new-instance v6, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    .line 53
    .line 54
    invoke-direct {v6, v0, v9}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Z)V

    .line 55
    .line 56
    .line 57
    iput-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->b0:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    .line 58
    .line 59
    new-instance v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    const/4 v3, 0x2

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v1, v3, v4, v2}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->c0:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 72
    .line 73
    move-object v2, v0

    .line 74
    new-instance v0, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 75
    .line 76
    new-instance v5, Lwe;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-direct {v5, p0, v1}, Lwe;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    .line 80
    .line 81
    .line 82
    move-object v4, p2

    .line 83
    move-object v1, p4

    .line 84
    move/from16 v3, p8

    .line 85
    .line 86
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lwe;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->d0:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 93
    .line 94
    iget-object v1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 95
    .line 96
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 97
    .line 98
    invoke-direct {v2, v6, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 102
    .line 103
    .line 104
    new-instance v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 105
    .line 106
    invoke-direct {v1}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->x:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 112
    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final I(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->D:J

    .line 11
    .line 12
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->C:J

    .line 27
    .line 28
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    if-ne v0, v2, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 50
    .line 51
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    move v1, v3

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    const-wide v4, 0xffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->d0:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z0()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    and-long/2addr v6, v4

    .line 74
    long-to-int v1, v6

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->C:J

    .line 84
    .line 85
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    int-to-float p1, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    int-to-float p1, v1

    .line 94
    neg-float p1, p1

    .line 95
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-long v6, p1

    .line 105
    shl-long/2addr v0, v2

    .line 106
    and-long/2addr v4, v6

    .line 107
    or-long/2addr v0, v4

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->Z0()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    shr-long/2addr v6, v2

    .line 114
    long-to-int v1, v6

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->C:J

    .line 124
    .line 125
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    int-to-float p1, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    int-to-float p1, v1

    .line 134
    neg-float p1, p1

    .line 135
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    int-to-long v6, p1

    .line 140
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    int-to-long v0, p1

    .line 145
    shl-long/2addr v6, v2

    .line 146
    and-long/2addr v0, v4

    .line 147
    or-long/2addr v0, v6

    .line 148
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance v2, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    invoke-direct {v2, p0, v0, v1, v4}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x3

    .line 159
    invoke-static {p1, v4, v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 160
    .line 161
    .line 162
    return v3

    .line 163
    :cond_5
    return v1
.end method

.method public final f1(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/foundation/MutatePriority;->k:Landroidx/compose/foundation/MutatePriority;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 7
    .line 8
    invoke-direct {v1, p0, v2, p1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public final l1(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->c()Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p0, v2}, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final t1(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZZ)V
    .locals 6

    .line 1
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->B:Z

    .line 2
    .line 3
    if-eq v1, p7, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->b0:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    .line 6
    .line 7
    iput-boolean p7, v1, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->k:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->T:Landroidx/compose/foundation/gestures/a;

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->U:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->Z:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->a0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 22
    .line 23
    iget-object v3, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 24
    .line 25
    invoke-static {v3, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    iput-object p5, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 33
    .line 34
    move p5, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p5, 0x0

    .line 37
    :goto_0
    iput-object p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->b:Landroidx/compose/foundation/OverscrollEffect;

    .line 38
    .line 39
    iget-object p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 40
    .line 41
    if-eq p1, p4, :cond_3

    .line 42
    .line 43
    iput-object p4, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 44
    .line 45
    move p5, v4

    .line 46
    :cond_3
    iget-boolean p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->e:Z

    .line 47
    .line 48
    if-eq p1, p8, :cond_4

    .line 49
    .line 50
    iput-boolean p8, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->e:Z

    .line 51
    .line 52
    move v5, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    move v5, p5

    .line 55
    :goto_1
    iput-object p3, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->c:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/compose/foundation/gestures/AbstractScrollableNode;->S:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 58
    .line 59
    iput-object p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->f:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->d0:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 62
    .line 63
    iput-object p4, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->x:Landroidx/compose/foundation/gestures/Orientation;

    .line 64
    .line 65
    iput-boolean p8, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->z:Z

    .line 66
    .line 67
    iput-object p2, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->A:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 68
    .line 69
    iget-object p1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 70
    .line 71
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 72
    .line 73
    if-ne p1, p2, :cond_5

    .line 74
    .line 75
    :goto_2
    move-object v4, p2

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_3
    sget-object v1, Landroidx/compose/foundation/gestures/AbstractScrollableNodeKt;->a:Lh;

    .line 81
    .line 82
    move-object v0, p0

    .line 83
    move-object v3, p6

    .line 84
    move v2, p7

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureNode;->s1(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
