.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->m(Z)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iget-object p3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->e(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 28
    .line 29
    new-instance p3, Landroidx/compose/ui/geometry/Offset;

    .line 30
    .line 31
    invoke-direct {p3, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 p1, 0x0

    .line 42
    .line 43
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 44
    .line 45
    sget-object p1, Landroidx/compose/foundation/text/Handle;->j:Landroidx/compose/foundation/text/Handle;

    .line 46
    .line 47
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n:J

    .line 22
    .line 23
    iget-wide v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->p:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    new-instance p2, Landroidx/compose/ui/geometry/Offset;

    .line 30
    .line 31
    invoke-direct {p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r:Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-wide v0, v0, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->b(JZ)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-wide v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 70
    .line 71
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/text/TextRange;->b(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->q:Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    const/16 v1, 0x9

    .line 104
    .line 105
    check-cast v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->a(I)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->c:Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v1, v1, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 117
    .line 118
    invoke-static {v1, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->e(Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    new-instance v0, Landroidx/compose/ui/text/TextRange;

    .line 126
    .line 127
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->v:Landroidx/compose/ui/text/TextRange;

    .line 131
    .line 132
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCancel()V
    .locals 0

    .line 1
    return-void
.end method
