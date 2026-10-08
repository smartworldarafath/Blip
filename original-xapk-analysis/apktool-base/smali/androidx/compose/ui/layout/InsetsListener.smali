.class public final Landroidx/compose/ui/layout/InsetsListener;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public l:Z

.field public m:I

.field public n:Landroidx/core/view/WindowInsetsCompat;

.field public final o:Landroidx/collection/MutableScatterMap;

.field public final p:Landroidx/compose/runtime/MutableIntState;

.field public final q:Landroidx/collection/MutableObjectList;

.field public final r:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers;->a:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->b:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 18
    .line 19
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 20
    .line 21
    const-string v3, "caption bar"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->c:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 30
    .line 31
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 32
    .line 33
    const-string v3, "display cutout"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->d:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 42
    .line 43
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 44
    .line 45
    const-string v3, "ime"

    .line 46
    .line 47
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->e:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 54
    .line 55
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 56
    .line 57
    const-string v3, "mandatory system gestures"

    .line 58
    .line 59
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->f:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 66
    .line 67
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 68
    .line 69
    const-string v3, "navigation bars"

    .line 70
    .line 71
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->g:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 78
    .line 79
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 80
    .line 81
    const-string v3, "status bars"

    .line 82
    .line 83
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->h:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 90
    .line 91
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 92
    .line 93
    const-string v3, "system gestures"

    .line 94
    .line 95
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->i:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 102
    .line 103
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 104
    .line 105
    const-string v3, "tappable element"

    .line 106
    .line 107
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->j:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 114
    .line 115
    new-instance v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 116
    .line 117
    const-string v3, "waterfall"

    .line 118
    .line 119
    invoke-direct {v2, v3}, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->p:Landroidx/compose/runtime/MutableIntState;

    .line 133
    .line 134
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 135
    .line 136
    const/4 v1, 0x4

    .line 137
    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->q:Landroidx/collection/MutableObjectList;

    .line 141
    .line 142
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 143
    .line 144
    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->r:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->d()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 9
    .line 10
    not-int v1, p1

    .line 11
    and-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 37
    .line 38
    iget-object v0, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->e:Landroidx/compose/runtime/MutableFloatState;

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 50
    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->d:Landroidx/compose/runtime/MutableLongState;

    .line 57
    .line 58
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 59
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 63
    .line 64
    .line 65
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->b:Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v0, -0x1

    .line 80
    .line 81
    iput-wide v0, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->j:J

    .line 82
    .line 83
    iput-wide v0, p1, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->k:J

    .line 84
    .line 85
    iget-object p0, p0, Landroidx/compose/ui/layout/InsetsListener;->p:Landroidx/compose/runtime/MutableIntState;

    .line 86
    .line 87
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    .line 99
    .line 100
    .line 101
    :cond_0
    return-void
.end method

.method public final b(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final c(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->d()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sget-object v4, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    check-cast v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 38
    .line 39
    iget-object v4, v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->b:Landroidx/compose/runtime/MutableState;

    .line 40
    .line 41
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->c()F

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget-object v5, v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 60
    .line 61
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->a()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v5, v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->e:Landroidx/compose/runtime/MutableFloatState;

    .line 71
    .line 72
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->b()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iget-object v2, v3, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->d:Landroidx/compose/runtime/MutableLongState;

    .line 82
    .line 83
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 84
    .line 85
    invoke-virtual {v2, v4, v5}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 86
    .line 87
    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/InsetsListener;->e(Landroidx/core/view/WindowInsetsCompat;)V

    .line 92
    .line 93
    .line 94
    return-object p1
.end method

.method public final d(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->b()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->d()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget v2, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 26
    .line 27
    or-int/2addr v2, v1

    .line 28
    iput v2, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 29
    .line 30
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    check-cast v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, v0, Landroidx/core/graphics/Insets;->a:I

    .line 56
    .line 57
    int-to-long v3, v1

    .line 58
    const/16 v1, 0x30

    .line 59
    .line 60
    shl-long/2addr v3, v1

    .line 61
    iget v1, v0, Landroidx/core/graphics/Insets;->b:I

    .line 62
    .line 63
    int-to-long v5, v1

    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    shl-long/2addr v5, v1

    .line 67
    or-long/2addr v3, v5

    .line 68
    iget v1, v0, Landroidx/core/graphics/Insets;->c:I

    .line 69
    .line 70
    int-to-long v5, v1

    .line 71
    const/16 v1, 0x10

    .line 72
    .line 73
    shl-long/2addr v5, v1

    .line 74
    or-long/2addr v3, v5

    .line 75
    iget v0, v0, Landroidx/core/graphics/Insets;->d:I

    .line 76
    .line 77
    int-to-long v0, v0

    .line 78
    or-long/2addr v0, v3

    .line 79
    iget-wide v3, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 80
    .line 81
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_0

    .line 86
    .line 87
    iput-wide v3, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->j:J

    .line 88
    .line 89
    iput-wide v0, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->k:J

    .line 90
    .line 91
    iget-object v0, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->b:Landroidx/compose/runtime/MutableState;

    .line 92
    .line 93
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 94
    .line 95
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->c()F

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget-object v1, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->a()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v1, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->e:Landroidx/compose/runtime/MutableFloatState;

    .line 116
    .line 117
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->b()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    iget-object p1, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->d:Landroidx/compose/runtime/MutableLongState;

    .line 127
    .line 128
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Landroidx/compose/ui/layout/InsetsListener;->p:Landroidx/compose/runtime/MutableIntState;

    .line 134
    .line 135
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    add-int/lit8 p1, p1, 0x1

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    .line 147
    .line 148
    .line 149
    :cond_0
    return-object p2
.end method

.method public final e(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers_androidKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/collection/IntObjectMap;->b:[I

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/collection/IntObjectMap;->a:[J

    .line 12
    .line 13
    array-length v5, v2

    .line 14
    add-int/lit8 v5, v5, -0x2

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/compose/ui/layout/InsetsListener;->o:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    if-ltz v5, :cond_6

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/16 v17, 0x10

    .line 25
    .line 26
    const/16 v18, 0x20

    .line 27
    .line 28
    :goto_0
    aget-wide v7, v2, v14

    .line 29
    .line 30
    const/16 v19, 0x1

    .line 31
    .line 32
    not-long v12, v7

    .line 33
    const/16 v20, 0x7

    .line 34
    .line 35
    shl-long v12, v12, v20

    .line 36
    .line 37
    and-long/2addr v12, v7

    .line 38
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long v12, v12, v20

    .line 44
    .line 45
    cmp-long v12, v12, v20

    .line 46
    .line 47
    if-eqz v12, :cond_5

    .line 48
    .line 49
    sub-int v12, v14, v5

    .line 50
    .line 51
    not-int v12, v12

    .line 52
    ushr-int/lit8 v12, v12, 0x1f

    .line 53
    .line 54
    const/16 v13, 0x8

    .line 55
    .line 56
    rsub-int/lit8 v12, v12, 0x8

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/16 v20, 0x30

    .line 60
    .line 61
    :goto_1
    if-ge v9, v12, :cond_4

    .line 62
    .line 63
    const-wide/16 v21, 0xff

    .line 64
    .line 65
    and-long v21, v7, v21

    .line 66
    .line 67
    const-wide/16 v23, 0x80

    .line 68
    .line 69
    cmp-long v21, v21, v23

    .line 70
    .line 71
    if-gez v21, :cond_3

    .line 72
    .line 73
    shl-int/lit8 v21, v14, 0x3

    .line 74
    .line 75
    add-int v21, v21, v9

    .line 76
    .line 77
    aget v13, v3, v21

    .line 78
    .line 79
    aget-object v21, v4, v21

    .line 80
    .line 81
    move-object/from16 v10, v21

    .line 82
    .line 83
    check-cast v10, Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 84
    .line 85
    invoke-virtual {v1, v13}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    move-object/from16 v21, v2

    .line 90
    .line 91
    iget v2, v11, Landroidx/core/graphics/Insets;->a:I

    .line 92
    .line 93
    move-object/from16 v25, v3

    .line 94
    .line 95
    int-to-long v2, v2

    .line 96
    shl-long v2, v2, v20

    .line 97
    .line 98
    move-wide/from16 v26, v2

    .line 99
    .line 100
    iget v2, v11, Landroidx/core/graphics/Insets;->b:I

    .line 101
    .line 102
    int-to-long v2, v2

    .line 103
    shl-long v2, v2, v18

    .line 104
    .line 105
    or-long v2, v26, v2

    .line 106
    .line 107
    move-wide/from16 v26, v2

    .line 108
    .line 109
    iget v2, v11, Landroidx/core/graphics/Insets;->c:I

    .line 110
    .line 111
    int-to-long v2, v2

    .line 112
    shl-long v2, v2, v17

    .line 113
    .line 114
    or-long v2, v26, v2

    .line 115
    .line 116
    iget v11, v11, Landroidx/core/graphics/Insets;->d:I

    .line 117
    .line 118
    move-wide/from16 v26, v2

    .line 119
    .line 120
    int-to-long v2, v11

    .line 121
    or-long v2, v26, v2

    .line 122
    .line 123
    invoke-virtual {v6, v10}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    check-cast v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 131
    .line 132
    move-wide/from16 v26, v7

    .line 133
    .line 134
    iget-wide v7, v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 135
    .line 136
    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_0

    .line 141
    .line 142
    iput-wide v2, v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 143
    .line 144
    const-wide/16 v7, 0x0

    .line 145
    .line 146
    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    move/from16 v15, v19

    .line 151
    .line 152
    if-nez v2, :cond_0

    .line 153
    .line 154
    move/from16 v16, v15

    .line 155
    .line 156
    :cond_0
    const/16 v2, 0x8

    .line 157
    .line 158
    if-eq v13, v2, :cond_1

    .line 159
    .line 160
    invoke-virtual {v1, v13}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/Insets;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget v3, v2, Landroidx/core/graphics/Insets;->a:I

    .line 165
    .line 166
    int-to-long v7, v3

    .line 167
    shl-long v7, v7, v20

    .line 168
    .line 169
    iget v3, v2, Landroidx/core/graphics/Insets;->b:I

    .line 170
    .line 171
    move-object v11, v4

    .line 172
    int-to-long v3, v3

    .line 173
    shl-long v3, v3, v18

    .line 174
    .line 175
    or-long/2addr v3, v7

    .line 176
    iget v7, v2, Landroidx/core/graphics/Insets;->c:I

    .line 177
    .line 178
    int-to-long v7, v7

    .line 179
    shl-long v7, v7, v17

    .line 180
    .line 181
    or-long/2addr v3, v7

    .line 182
    iget v2, v2, Landroidx/core/graphics/Insets;->d:I

    .line 183
    .line 184
    int-to-long v7, v2

    .line 185
    or-long v2, v3, v7

    .line 186
    .line 187
    iget-wide v7, v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->i:J

    .line 188
    .line 189
    invoke-static {v7, v8, v2, v3}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_2

    .line 194
    .line 195
    iput-wide v2, v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->i:J

    .line 196
    .line 197
    const-wide/16 v7, 0x0

    .line 198
    .line 199
    invoke-static {v2, v3, v7, v8}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    move/from16 v15, v19

    .line 204
    .line 205
    if-nez v2, :cond_2

    .line 206
    .line 207
    move/from16 v16, v15

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_1
    move-object v11, v4

    .line 211
    :cond_2
    :goto_2
    invoke-virtual {v1, v13}, Landroidx/core/view/WindowInsetsCompat;->q(I)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v3, v10, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->a:Landroidx/compose/runtime/MutableState;

    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 222
    .line 223
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const/16 v2, 0x8

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_3
    move-object/from16 v21, v2

    .line 230
    .line 231
    move-object/from16 v25, v3

    .line 232
    .line 233
    move-object v11, v4

    .line 234
    move-wide/from16 v26, v7

    .line 235
    .line 236
    move v2, v13

    .line 237
    :goto_3
    shr-long v7, v26, v2

    .line 238
    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    .line 241
    move v13, v2

    .line 242
    move-object v4, v11

    .line 243
    move-object/from16 v2, v21

    .line 244
    .line 245
    move-object/from16 v3, v25

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_4
    move-object/from16 v21, v2

    .line 250
    .line 251
    move-object/from16 v25, v3

    .line 252
    .line 253
    move-object v11, v4

    .line 254
    move v2, v13

    .line 255
    if-ne v12, v2, :cond_7

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_5
    move-object/from16 v21, v2

    .line 259
    .line 260
    move-object/from16 v25, v3

    .line 261
    .line 262
    move-object v11, v4

    .line 263
    const/16 v20, 0x30

    .line 264
    .line 265
    :goto_4
    if-eq v14, v5, :cond_7

    .line 266
    .line 267
    add-int/lit8 v14, v14, 0x1

    .line 268
    .line 269
    move-object v4, v11

    .line 270
    move-object/from16 v2, v21

    .line 271
    .line 272
    move-object/from16 v3, v25

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_6
    const/16 v17, 0x10

    .line 277
    .line 278
    const/16 v18, 0x20

    .line 279
    .line 280
    const/16 v19, 0x1

    .line 281
    .line 282
    const/16 v20, 0x30

    .line 283
    .line 284
    const/4 v15, 0x0

    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    :cond_7
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->d()Landroidx/core/view/DisplayCutoutCompat;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-nez v1, :cond_8

    .line 292
    .line 293
    const-wide/16 v7, 0x0

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_8
    invoke-virtual {v1}, Landroidx/core/view/DisplayCutoutCompat;->b()Landroidx/core/graphics/Insets;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget v3, v2, Landroidx/core/graphics/Insets;->a:I

    .line 301
    .line 302
    int-to-long v3, v3

    .line 303
    shl-long v3, v3, v20

    .line 304
    .line 305
    iget v5, v2, Landroidx/core/graphics/Insets;->b:I

    .line 306
    .line 307
    int-to-long v7, v5

    .line 308
    shl-long v7, v7, v18

    .line 309
    .line 310
    or-long/2addr v3, v7

    .line 311
    iget v5, v2, Landroidx/core/graphics/Insets;->c:I

    .line 312
    .line 313
    int-to-long v7, v5

    .line 314
    shl-long v7, v7, v17

    .line 315
    .line 316
    or-long/2addr v3, v7

    .line 317
    iget v2, v2, Landroidx/core/graphics/Insets;->d:I

    .line 318
    .line 319
    int-to-long v7, v2

    .line 320
    or-long/2addr v7, v3

    .line 321
    :goto_5
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers;->a:Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    sget-object v2, Landroidx/compose/ui/layout/WindowInsetsRulers$Companion;->j:Landroidx/compose/ui/layout/WindowInsetsRulers;

    .line 327
    .line 328
    invoke-virtual {v6, v2}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    check-cast v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;

    .line 336
    .line 337
    const-wide/16 v3, 0x0

    .line 338
    .line 339
    invoke-static {v7, v8, v3, v4}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    xor-int/lit8 v5, v5, 0x1

    .line 344
    .line 345
    iget-object v6, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->a:Landroidx/compose/runtime/MutableState;

    .line 346
    .line 347
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 352
    .line 353
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    iget-wide v5, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 357
    .line 358
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-nez v5, :cond_9

    .line 363
    .line 364
    iput-wide v7, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->h:J

    .line 365
    .line 366
    iput-wide v7, v2, Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;->i:J

    .line 367
    .line 368
    invoke-static {v7, v8, v3, v4}, Landroidx/compose/ui/layout/ValueInsets;->a(JJ)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    move/from16 v15, v19

    .line 373
    .line 374
    if-nez v2, :cond_9

    .line 375
    .line 376
    move/from16 v16, v15

    .line 377
    .line 378
    :cond_9
    iget-object v2, v0, Landroidx/compose/ui/layout/InsetsListener;->r:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 379
    .line 380
    iget-object v3, v0, Landroidx/compose/ui/layout/InsetsListener;->q:Landroidx/collection/MutableObjectList;

    .line 381
    .line 382
    if-nez v1, :cond_a

    .line 383
    .line 384
    iget v1, v3, Landroidx/collection/ObjectList;->b:I

    .line 385
    .line 386
    if-lez v1, :cond_f

    .line 387
    .line 388
    invoke-virtual {v3}, Landroidx/collection/MutableObjectList;->k()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 392
    .line 393
    .line 394
    move/from16 v15, v19

    .line 395
    .line 396
    goto/16 :goto_9

    .line 397
    .line 398
    :cond_a
    iget-object v1, v1, Landroidx/core/view/DisplayCutoutCompat;->a:Landroid/view/DisplayCutout;

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    iget v5, v3, Landroidx/collection/ObjectList;->b:I

    .line 409
    .line 410
    if-ge v4, v5, :cond_b

    .line 411
    .line 412
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    iget v5, v3, Landroidx/collection/ObjectList;->b:I

    .line 417
    .line 418
    invoke-virtual {v3, v4, v5}, Landroidx/collection/MutableObjectList;->n(II)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    invoke-virtual {v2, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->d(II)V

    .line 430
    .line 431
    .line 432
    move/from16 v15, v19

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    iget v5, v3, Landroidx/collection/ObjectList;->b:I

    .line 440
    .line 441
    sub-int/2addr v4, v5

    .line 442
    const/4 v5, 0x0

    .line 443
    :goto_6
    if-ge v5, v4, :cond_c

    .line 444
    .line 445
    iget v6, v3, Landroidx/collection/ObjectList;->b:I

    .line 446
    .line 447
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    invoke-virtual {v3, v6}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    iget v6, v3, Landroidx/collection/ObjectList;->b:I

    .line 459
    .line 460
    const-string v7, "display cutout rect "

    .line 461
    .line 462
    invoke-static {v6, v7}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    new-instance v7, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 467
    .line 468
    invoke-direct {v7, v6}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    add-int/lit8 v5, v5, 0x1

    .line 475
    .line 476
    move/from16 v15, v19

    .line 477
    .line 478
    goto :goto_6

    .line 479
    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    const/4 v13, 0x0

    .line 484
    :goto_8
    if-ge v13, v2, :cond_e

    .line 485
    .line 486
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    check-cast v4, Landroid/graphics/Rect;

    .line 491
    .line 492
    invoke-virtual {v3, v13}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v5

    .line 496
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 497
    .line 498
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    if-nez v6, :cond_d

    .line 507
    .line 508
    invoke-interface {v5, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    move/from16 v15, v19

    .line 512
    .line 513
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_e
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    if-nez v1, :cond_f

    .line 521
    .line 522
    move/from16 v16, v19

    .line 523
    .line 524
    :cond_f
    :goto_9
    iget-object v0, v0, Landroidx/compose/ui/layout/InsetsListener;->p:Landroidx/compose/runtime/MutableIntState;

    .line 525
    .line 526
    if-nez v16, :cond_10

    .line 527
    .line 528
    move-object v1, v0

    .line 529
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 530
    .line 531
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_11

    .line 536
    .line 537
    :cond_10
    if-eqz v15, :cond_11

    .line 538
    .line 539
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 540
    .line 541
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 548
    .line 549
    .line 550
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V

    .line 551
    .line 552
    .line 553
    :cond_11
    return-void
.end method

.method public final i(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :cond_0
    iget p1, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroidx/compose/ui/layout/InsetsListener;->e(Landroidx/core/view/WindowInsetsCompat;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object p1, v0

    .line 17
    :goto_1
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->q(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/view/View;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroid/view/View;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object p1, p0

    .line 18
    :goto_1
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->q(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/compose/ui/layout/InsetsListener;->m:I

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/compose/ui/layout/InsetsListener;->l:Z

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/InsetsListener;->e(Landroidx/core/view/WindowInsetsCompat;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/ui/layout/InsetsListener;->n:Landroidx/core/view/WindowInsetsCompat;

    .line 19
    .line 20
    :cond_0
    return-void
.end method
