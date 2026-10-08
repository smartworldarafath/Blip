.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/node/LayoutNode;

.field public final b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

.field public c:Z

.field public d:Z

.field public final e:Landroidx/compose/ui/node/OnPositionedDispatcher;

.field public final f:Landroidx/compose/runtime/collection/MutableVector;

.field public final g:J

.field public final h:Landroidx/compose/runtime/collection/MutableVector;

.field public i:Landroidx/compose/ui/unit/Constraints;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 12
    .line 13
    new-instance p1, Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 19
    .line 20
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 21
    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    new-array v1, v0, [Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    .line 31
    const-wide/16 v1, 0x1

    .line 32
    .line 33
    iput-wide v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->g:J

    .line 34
    .line 35
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 36
    .line 37
    new-array v0, v0, [Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 43
    .line 44
    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->k(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_d

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-eqz p2, :cond_4

    .line 28
    .line 29
    iget-boolean p2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    iget-boolean p2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 40
    .line 41
    if-eqz p2, :cond_c

    .line 42
    .line 43
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_c

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->O()V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-static {p1, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    move p2, v3

    .line 71
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_b

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    if-eq p1, v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_b

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v1, :cond_b

    .line 91
    .line 92
    iget-object v4, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 93
    .line 94
    iget-boolean v4, v4, Landroidx/compose/ui/node/MeasurePassDelegate;->D:Z

    .line 95
    .line 96
    if-eqz v4, :cond_b

    .line 97
    .line 98
    :cond_6
    if-ne p1, v0, :cond_a

    .line 99
    .line 100
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 101
    .line 102
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 103
    .line 104
    if-ne v0, v4, :cond_7

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f()V

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 116
    .line 117
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 118
    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y:Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 122
    .line 123
    if-nez v0, :cond_9

    .line 124
    .line 125
    :cond_8
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_9
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 134
    .line 135
    invoke-static {v0, v2, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()V

    .line 140
    .line 141
    .line 142
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget v2, p1, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 148
    .line 149
    if-lez v2, :cond_b

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iput-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 157
    .line 158
    :cond_b
    move v3, p2

    .line 159
    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e()V

    .line 160
    .line 161
    .line 162
    :cond_d
    :goto_4
    return v3
.end method

.method public static c(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-wide v3, p1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/node/LookaheadPassDelegate;->G0(J)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v1, p1, Landroidx/compose/ui/node/LookaheadPassDelegate;->w:Landroidx/compose/ui/unit/Constraints;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-wide v0, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/node/LookaheadPassDelegate;->G0(J)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 62
    .line 63
    .line 64
    return p1

    .line 65
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->t()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 70
    .line 71
    if-ne v1, v4, :cond_5

    .line 72
    .line 73
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 74
    .line 75
    .line 76
    return p1

    .line 77
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->t()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->k:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 82
    .line 83
    if-ne p0, v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LayoutNode;->W(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    return p1
.end method

.method public static d(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 16
    .line 17
    iget-wide v2, p1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/node/MeasurePassDelegate;->G0(J)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 27
    .line 28
    iget-boolean v1, p1, Landroidx/compose/ui/node/MeasurePassDelegate;->s:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-wide v1, p1, Landroidx/compose/ui/layout/Placeable;->m:J

    .line 33
    .line 34
    new-instance p1, Landroidx/compose/ui/unit/Constraints;

    .line 35
    .line 36
    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-eqz p1, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->L:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 44
    .line 45
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 46
    .line 47
    if-ne v1, v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e()V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 53
    .line 54
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 55
    .line 56
    iget-wide v2, p1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/node/MeasurePassDelegate;->G0(J)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move p1, v0

    .line 67
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 80
    .line 81
    if-ne v2, v3, :cond_5

    .line 82
    .line 83
    const/4 p0, 0x3

    .line 84
    invoke-static {v1, v0, p0}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 85
    .line 86
    .line 87
    return p1

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->k:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 93
    .line 94
    if-ne p0, v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->Y(Z)V

    .line 97
    .line 98
    .line 99
    :cond_6
    return p1
.end method

.method public static i(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->t()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ne p0, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static j(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->l:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->j:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 40
    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public static k(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 11
    .line 12
    iget-boolean v1, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->D:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->j(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-ne p0, v2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 21
    .line 22
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 23
    .line 24
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const-string p0, "Compose:onPositionedCallbacks"

    .line 29
    .line 30
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/OnPositionedDispatcher;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    .line 15
    .line 16
    iget-object v4, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-boolean v4, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->b:Z

    .line 25
    .line 26
    iget-object v5, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 27
    .line 28
    iget-boolean v3, v3, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;->c:Z

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-static {v5, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v5, v3, v6}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final f(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_2

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-boolean v3, v2, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->O()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f(Landroidx/compose/ui/node/LayoutNode;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final g(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "forceMeasureTheSubtree should be executed during the measureAndLayout pass"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 13
    .line 14
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "node not yet measured"

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_8

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 24
    .line 25
    if-eq v5, v6, :cond_1

    .line 26
    .line 27
    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 28
    .line 29
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 30
    .line 31
    iget-object v5, v5, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    if-eqz p2, :cond_7

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->t()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    sget-object v6, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 47
    .line 48
    if-eq v5, v6, :cond_1

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 51
    .line 52
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q:Landroidx/compose/ui/node/LookaheadPassDelegate;

    .line 53
    .line 54
    if-eqz v5, :cond_7

    .line 55
    .line 56
    iget-object v5, v5, Landroidx/compose/ui/node/LookaheadPassDelegate;->B:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    .line 57
    .line 58
    if-eqz v5, :cond_7

    .line 59
    .line 60
    invoke-virtual {v5}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ne v5, v4, :cond_7

    .line 65
    .line 66
    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegateKt;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget-object v6, v3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    if-nez p2, :cond_3

    .line 75
    .line 76
    iget-boolean v5, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 77
    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    iget-object v5, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->g(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 96
    .line 97
    iget-boolean v4, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    :goto_3
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0, v3, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 107
    .line 108
    .line 109
    :cond_5
    if-eqz p2, :cond_6

    .line 110
    .line 111
    iget-boolean v4, v6, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    :goto_4
    if-nez v4, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0, v3, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 121
    .line 122
    .line 123
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    if-eqz p2, :cond_9

    .line 127
    .line 128
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 129
    .line 130
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    :goto_5
    if-eqz v0, :cond_a

    .line 138
    .line 139
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 140
    .line 141
    .line 142
    :cond_a
    return-void
.end method

.method public final l(Lkotlin/jvm/functions/Function0;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string v3, "performMeasureAndLayout called with unattached root"

    .line 14
    .line 15
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "performMeasureAndLayout called with unplaced root"

    .line 25
    .line 26
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v3, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const-string v3, "performMeasureAndLayout called during measure layout"

    .line 34
    .line 35
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v3, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x1

    .line 42
    if-eqz v3, :cond_e

    .line 43
    .line 44
    iput-boolean v5, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 45
    .line 46
    iput-boolean v5, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c()Z

    .line 49
    .line 50
    .line 51
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v6, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a:Landroidx/compose/ui/node/DepthSortedSet;

    .line 53
    .line 54
    if-eqz v3, :cond_c

    .line 55
    .line 56
    move v3, v4

    .line 57
    :cond_3
    :goto_0
    :try_start_1
    iget-object v7, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c:Landroidx/compose/ui/node/DepthSortedSet;

    .line 58
    .line 59
    iget-object v8, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->b:Landroidx/compose/ui/node/DepthSortedSet;

    .line 60
    .line 61
    iget-object v9, v6, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_5

    .line 68
    .line 69
    iget-object v7, v6, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 78
    .line 79
    .line 80
    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 81
    .line 82
    if-eqz v8, :cond_4

    .line 83
    .line 84
    move v8, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move v8, v4

    .line 87
    :goto_1
    move v9, v4

    .line 88
    goto :goto_3

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_5
    iget-object v9, v8, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-nez v9, :cond_7

    .line 99
    .line 100
    iget-object v7, v8, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 107
    .line 108
    invoke-virtual {v8, v7}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 109
    .line 110
    .line 111
    iget-object v8, v7, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 112
    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    move v8, v5

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    move v8, v4

    .line 118
    :goto_2
    move v9, v5

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    iget-object v8, v7, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_b

    .line 127
    .line 128
    iget-object v8, v7, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Landroidx/compose/ui/node/LayoutNode;

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 137
    .line 138
    .line 139
    move v9, v5

    .line 140
    move-object v7, v8

    .line 141
    move v8, v4

    .line 142
    :goto_3
    if-eqz v9, :cond_8

    .line 143
    .line 144
    invoke-static {v1, v7, v8}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    goto :goto_4

    .line 149
    :cond_8
    invoke-virtual {v1, v7, v8}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->o(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    iget-object v9, v7, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 154
    .line 155
    iget-boolean v9, v9, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 156
    .line 157
    if-eqz v9, :cond_9

    .line 158
    .line 159
    sget-object v9, Landroidx/compose/ui/node/Invalidation;->k:Landroidx/compose/ui/node/Invalidation;

    .line 160
    .line 161
    invoke-virtual {v0, v7, v9}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 162
    .line 163
    .line 164
    :cond_9
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-eqz v9, :cond_a

    .line 169
    .line 170
    sget-object v9, Landroidx/compose/ui/node/Invalidation;->m:Landroidx/compose/ui/node/Invalidation;

    .line 171
    .line 172
    invoke-virtual {v0, v7, v9}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 173
    .line 174
    .line 175
    :cond_a
    :goto_4
    if-ne v7, v2, :cond_3

    .line 176
    .line 177
    if-eqz v8, :cond_3

    .line 178
    .line 179
    move v3, v5

    .line 180
    goto :goto_0

    .line 181
    :cond_b
    if-eqz p1, :cond_d

    .line 182
    .line 183
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    move v3, v4

    .line 188
    :cond_d
    :goto_5
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 189
    .line 190
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :goto_6
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :catchall_1
    move-exception v0

    .line 195
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 196
    .line 197
    iput-boolean v4, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 198
    .line 199
    throw v0

    .line 200
    :cond_e
    move v3, v4

    .line 201
    :goto_7
    iget-object v0, v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 202
    .line 203
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 204
    .line 205
    iget v2, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 206
    .line 207
    move v6, v4

    .line 208
    :goto_8
    if-ge v6, v2, :cond_1a

    .line 209
    .line 210
    aget-object v7, v1, v6

    .line 211
    .line 212
    check-cast v7, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 213
    .line 214
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 215
    .line 216
    iget-object v7, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 217
    .line 218
    iget-object v8, v7, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 219
    .line 220
    const/high16 v9, 0x400000

    .line 221
    .line 222
    invoke-static {v9}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_f

    .line 227
    .line 228
    iget-object v11, v8, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_f
    iget-object v11, v8, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 232
    .line 233
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 234
    .line 235
    if-nez v11, :cond_10

    .line 236
    .line 237
    goto/16 :goto_10

    .line 238
    .line 239
    :cond_10
    :goto_9
    sget-object v12, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 240
    .line 241
    invoke-virtual {v8, v10}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    :goto_a
    if-eqz v8, :cond_19

    .line 246
    .line 247
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 248
    .line 249
    and-int/2addr v10, v9

    .line 250
    if-eqz v10, :cond_19

    .line 251
    .line 252
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 253
    .line 254
    and-int/2addr v10, v9

    .line 255
    if-eqz v10, :cond_18

    .line 256
    .line 257
    const/4 v10, 0x0

    .line 258
    move-object v12, v8

    .line 259
    move-object v13, v10

    .line 260
    :goto_b
    if-eqz v12, :cond_18

    .line 261
    .line 262
    instance-of v14, v12, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 263
    .line 264
    if-eqz v14, :cond_11

    .line 265
    .line 266
    check-cast v12, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 267
    .line 268
    iget-object v14, v7, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 269
    .line 270
    invoke-interface {v12, v14}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->C(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 271
    .line 272
    .line 273
    goto :goto_f

    .line 274
    :cond_11
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 275
    .line 276
    and-int/2addr v14, v9

    .line 277
    if-eqz v14, :cond_17

    .line 278
    .line 279
    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 280
    .line 281
    if-eqz v14, :cond_17

    .line 282
    .line 283
    move-object v14, v12

    .line 284
    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    .line 285
    .line 286
    iget-object v14, v14, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 287
    .line 288
    move v15, v4

    .line 289
    :goto_c
    if-eqz v14, :cond_16

    .line 290
    .line 291
    iget v4, v14, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 292
    .line 293
    and-int/2addr v4, v9

    .line 294
    if-eqz v4, :cond_15

    .line 295
    .line 296
    add-int/lit8 v15, v15, 0x1

    .line 297
    .line 298
    if-ne v15, v5, :cond_12

    .line 299
    .line 300
    move-object v12, v14

    .line 301
    goto :goto_d

    .line 302
    :cond_12
    if-nez v13, :cond_13

    .line 303
    .line 304
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    .line 305
    .line 306
    const/16 v4, 0x10

    .line 307
    .line 308
    new-array v4, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 309
    .line 310
    invoke-direct {v13, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_13
    if-eqz v12, :cond_14

    .line 314
    .line 315
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    move-object v12, v10

    .line 319
    :cond_14
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_15
    :goto_d
    iget-object v14, v14, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    goto :goto_c

    .line 326
    :cond_16
    if-ne v15, v5, :cond_17

    .line 327
    .line 328
    :goto_e
    const/4 v4, 0x0

    .line 329
    goto :goto_b

    .line 330
    :cond_17
    :goto_f
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    goto :goto_e

    .line 335
    :cond_18
    if-eq v8, v11, :cond_19

    .line 336
    .line 337
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 338
    .line 339
    const/4 v4, 0x0

    .line 340
    goto :goto_a

    .line 341
    :cond_19
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    goto/16 :goto_8

    .line 345
    .line 346
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 347
    .line 348
    .line 349
    return v3
.end method

.method public final m(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string v1, "measureAndLayout called on root"

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    const-string v1, "performMeasureAndLayout called with unattached root"

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const-string v0, "performMeasureAndLayout called with unplaced root"

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const-string v0, "performMeasureAndLayout called during measure layout"

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_8

    .line 52
    .line 53
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 54
    .line 55
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 56
    .line 57
    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 58
    .line 59
    iget-object v3, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a:Landroidx/compose/ui/node/DepthSortedSet;

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->b:Landroidx/compose/ui/node/DepthSortedSet;

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c:Landroidx/compose/ui/node/DepthSortedSet;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->b(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 72
    .line 73
    .line 74
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    .line 75
    .line 76
    invoke-direct {v0, p2, p3}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 86
    .line 87
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->O()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f(Landroidx/compose/ui/node/LayoutNode;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    .line 113
    .line 114
    invoke-direct {v0, p2, p3}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_7

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget p3, p1, Landroidx/compose/ui/node/LayoutNode;->Y:I

    .line 141
    .line 142
    if-lez p3, :cond_7

    .line 143
    .line 144
    iget-object p2, p2, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->X:Z

    .line 150
    .line 151
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 155
    .line 156
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 162
    .line 163
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 164
    .line 165
    throw p1

    .line 166
    :cond_8
    :goto_3
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 167
    .line 168
    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 169
    .line 170
    iget p2, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 171
    .line 172
    move p3, v2

    .line 173
    :goto_4
    if-ge p3, p2, :cond_14

    .line 174
    .line 175
    aget-object v0, p1, p3

    .line 176
    .line 177
    check-cast v0, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 178
    .line 179
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 180
    .line 181
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 184
    .line 185
    const/high16 v4, 0x400000

    .line 186
    .line 187
    invoke-static {v4}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_9

    .line 192
    .line 193
    iget-object v6, v3, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    iget-object v6, v3, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 197
    .line 198
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 199
    .line 200
    if-nez v6, :cond_a

    .line 201
    .line 202
    goto/16 :goto_b

    .line 203
    .line 204
    :cond_a
    :goto_5
    sget-object v7, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 205
    .line 206
    invoke-virtual {v3, v5}, Landroidx/compose/ui/node/NodeCoordinator;->g1(Z)Landroidx/compose/ui/Modifier$Node;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    :goto_6
    if-eqz v3, :cond_13

    .line 211
    .line 212
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 213
    .line 214
    and-int/2addr v5, v4

    .line 215
    if-eqz v5, :cond_13

    .line 216
    .line 217
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 218
    .line 219
    and-int/2addr v5, v4

    .line 220
    if-eqz v5, :cond_12

    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    move-object v7, v3

    .line 224
    move-object v8, v5

    .line 225
    :goto_7
    if-eqz v7, :cond_12

    .line 226
    .line 227
    instance-of v9, v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 228
    .line 229
    if-eqz v9, :cond_b

    .line 230
    .line 231
    check-cast v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    .line 232
    .line 233
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 234
    .line 235
    invoke-interface {v7, v9}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->C(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 236
    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_b
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 240
    .line 241
    and-int/2addr v9, v4

    .line 242
    if-eqz v9, :cond_11

    .line 243
    .line 244
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 245
    .line 246
    if-eqz v9, :cond_11

    .line 247
    .line 248
    move-object v9, v7

    .line 249
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 250
    .line 251
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 252
    .line 253
    move v10, v2

    .line 254
    :goto_8
    if-eqz v9, :cond_10

    .line 255
    .line 256
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 257
    .line 258
    and-int/2addr v11, v4

    .line 259
    if-eqz v11, :cond_f

    .line 260
    .line 261
    add-int/lit8 v10, v10, 0x1

    .line 262
    .line 263
    if-ne v10, v1, :cond_c

    .line 264
    .line 265
    move-object v7, v9

    .line 266
    goto :goto_9

    .line 267
    :cond_c
    if-nez v8, :cond_d

    .line 268
    .line 269
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 270
    .line 271
    const/16 v11, 0x10

    .line 272
    .line 273
    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 274
    .line 275
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_d
    if-eqz v7, :cond_e

    .line 279
    .line 280
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    move-object v7, v5

    .line 284
    :cond_e
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_f
    :goto_9
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_10
    if-ne v10, v1, :cond_11

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_11
    :goto_a
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    goto :goto_7

    .line 298
    :cond_12
    if-eq v3, v6, :cond_13

    .line 299
    .line 300
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_13
    :goto_b
    add-int/lit8 p3, p3, 0x1

    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_14
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 308
    .line 309
    .line 310
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "performMeasureAndLayout called with unattached root"

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "performMeasureAndLayout called with unplaced root"

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v2, "performMeasureAndLayout called during measure layout"

    .line 38
    .line 39
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput-boolean v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 51
    .line 52
    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c:Landroidx/compose/ui/node/DepthSortedSet;

    .line 53
    .line 54
    iget-object v4, v4, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    iget-object v0, v0, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a:Landroidx/compose/ui/node/DepthSortedSet;

    .line 63
    .line 64
    iget-object v0, v0, Landroidx/compose/ui/node/DepthSortedSet;->a:Landroidx/compose/ui/node/SortedSet;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v0, v3

    .line 75
    :goto_0
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->q(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->p(Landroidx/compose/ui/node/LayoutNode;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->q(Landroidx/compose/ui/node/LayoutNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 94
    .line 95
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 96
    .line 97
    return-void

    .line 98
    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 101
    .line 102
    iput-boolean v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 103
    .line 104
    throw v0

    .line 105
    :cond_6
    return-void
.end method

.method public final o(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->k(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 27
    .line 28
    iget-boolean p2, p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_2
    return v1
.end method

.method public final p(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_3

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 25
    .line 26
    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 27
    .line 28
    iget-object v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->H:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/ui/node/AlignmentLines;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :cond_0
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegateKt;->a(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->q(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->p(Landroidx/compose/ui/node/LayoutNode;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method public final q(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-static {p1, p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_6

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_5

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v0, v3, :cond_5

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-ne v0, v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 34
    .line 35
    iget-object p2, p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 36
    .line 37
    iput-boolean v2, p2, Landroidx/compose/ui/node/MeasurePassDelegate;->E:Z

    .line 38
    .line 39
    iget-boolean p2, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->j(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_6

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v2, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 70
    .line 71
    sget-object v0, Landroidx/compose/ui/node/Invalidation;->l:Landroidx/compose/ui/node/Invalidation;

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-boolean p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 77
    .line 78
    if-nez p0, :cond_6

    .line 79
    .line 80
    return v2

    .line 81
    :cond_4
    invoke-static {}, Lk8;->e()V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :cond_5
    new-instance v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    .line 86
    .line 87
    invoke-direct {v0, p1, v1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_1
    return v1
.end method

.method public final s(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v0, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->b(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "updateRootConstraints called while measuring"

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i:Landroidx/compose/ui/unit/Constraints;

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    iput-boolean v1, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 48
    .line 49
    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 50
    .line 51
    iput-boolean v1, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->E:Z

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    sget-object p2, Landroidx/compose/ui/node/Invalidation;->j:Landroidx/compose/ui/node/Invalidation;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget-object p2, Landroidx/compose/ui/node/Invalidation;->l:Landroidx/compose/ui/node/Invalidation;

    .line 59
    .line 60
    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_2
    return-void
.end method
