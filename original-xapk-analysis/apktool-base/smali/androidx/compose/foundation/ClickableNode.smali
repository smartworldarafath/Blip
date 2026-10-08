.class public Landroidx/compose/foundation/ClickableNode;
.super Landroidx/compose/foundation/AbstractClickableNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public T:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;


# virtual methods
.method public final K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 5
    .line 6
    const-string v1, "recognized"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne p2, v0, :cond_6

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_9

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 34
    .line 35
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 36
    .line 37
    if-eqz p2, :cond_9

    .line 38
    .line 39
    const-string p2, "waiting"

    .line 40
    .line 41
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->i1(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    move v0, v2

    .line 54
    :goto_0
    if-ge v0, p2, :cond_4

    .line 55
    .line 56
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 61
    .line 62
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/AbstractClickableNode;->e1(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    move v3, v2

    .line 77
    :goto_1
    if-ge v3, p2, :cond_9

    .line 78
    .line 79
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_2

    .line 90
    .line 91
    invoke-static {v4, p3, p4, v0, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 115
    .line 116
    .line 117
    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-wide p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2, v2}, Landroidx/compose/foundation/AbstractClickableNode;->g1(JZ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 134
    .line 135
    .line 136
    :cond_5
    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 141
    .line 142
    if-ne p2, p3, :cond_9

    .line 143
    .line 144
    iget-object p2, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 145
    .line 146
    if-eqz p2, :cond_8

    .line 147
    .line 148
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    move p3, v2

    .line 155
    :goto_3
    if-ge p3, p2, :cond_8

    .line 156
    .line 157
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p4

    .line 161
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 162
    .line 163
    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    iget-object v0, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 170
    .line 171
    if-eq p4, v0, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    :goto_4
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_9

    .line 187
    .line 188
    const-string p1, "idle"

    .line 189
    .line 190
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 191
    .line 192
    :cond_9
    return-void
.end method

.method public final L()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->M:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->M:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final l1(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->j1()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->I:Landroidx/compose/ui/node/DelegatableNode;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/GestureNode;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->I:Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 25
    .line 26
    const-string v1, "recognized"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne p2, v0, :cond_9

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    move v0, v3

    .line 41
    :goto_0
    if-ge v0, p2, :cond_c

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetectorKt;->b(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 60
    .line 61
    iput-boolean v2, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 64
    .line 65
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 66
    .line 67
    if-eqz p2, :cond_c

    .line 68
    .line 69
    const-string p2, "waiting"

    .line 70
    .line 71
    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->h1(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    move v0, v3

    .line 85
    :goto_1
    if-ge v0, p2, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 92
    .line 93
    iget-boolean v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 94
    .line 95
    if-nez v5, :cond_3

    .line 96
    .line 97
    iget-boolean v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->h:Z

    .line 98
    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->d:Z

    .line 102
    .line 103
    if-nez v4, :cond_3

    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    sget-object p2, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 109
    .line 110
    invoke-static {p0, p2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 115
    .line 116
    invoke-interface {p2}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    move v1, v3

    .line 125
    :goto_2
    if-ge v1, v0, :cond_c

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 132
    .line 133
    iget-wide v5, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 134
    .line 135
    iget-object v7, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-wide v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 141
    .line 142
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    cmpl-float v5, v5, p2

    .line 155
    .line 156
    if-lez v5, :cond_4

    .line 157
    .line 158
    move v5, v2

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    move v5, v3

    .line 161
    :goto_3
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 162
    .line 163
    if-nez v4, :cond_6

    .line 164
    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    :goto_4
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 180
    .line 181
    iput-boolean v2, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 182
    .line 183
    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 188
    .line 189
    iget-object p1, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-wide p1, p1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->c:J

    .line 195
    .line 196
    invoke-virtual {p0, p1, p2, v2}, Landroidx/compose/foundation/AbstractClickableNode;->g1(JZ)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 200
    .line 201
    .line 202
    :cond_8
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 204
    .line 205
    return-void

    .line 206
    :cond_9
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 207
    .line 208
    if-ne p2, v0, :cond_c

    .line 209
    .line 210
    iget-object p2, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 211
    .line 212
    if-eqz p2, :cond_b

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    :goto_5
    if-ge v3, p2, :cond_b

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 225
    .line 226
    iget-boolean v4, v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 227
    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    iget-object v4, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 231
    .line 232
    if-eq v0, v4, :cond_a

    .line 233
    .line 234
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/ClickableNode;->p1(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    :goto_6
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_c

    .line 248
    .line 249
    const-string p1, "idle"

    .line 250
    .line 251
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 252
    .line 253
    :cond_c
    return-void
.end method

.method public final m1(Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p1(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/compose/foundation/ClickableNode;->U:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/ClickableNode;->T:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->f1(Z)V

    .line 10
    .line 11
    .line 12
    const-string p1, "idle"

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->J:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method
