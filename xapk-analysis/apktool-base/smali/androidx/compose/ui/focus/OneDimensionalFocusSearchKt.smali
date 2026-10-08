.class public abstract Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v0, v4, :cond_2

    .line 16
    .line 17
    if-eq v0, v3, :cond_9

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lp2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move p0, v2

    .line 47
    :goto_0
    if-eqz p0, :cond_5

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v5, "ActiveParent must have a focusedChild"

    .line 59
    .line 60
    if-eqz v0, :cond_8

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    if-eq v6, v4, :cond_4

    .line 73
    .line 74
    if-eq v6, v3, :cond_7

    .line 75
    .line 76
    if-eq v6, v1, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lk8;->e()V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_3
    invoke-static {v5}, Lu2;->l(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_4
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    invoke-static {p0, v0, v3, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget-boolean p0, p0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 103
    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lp2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    return v2

    .line 120
    :cond_6
    :goto_1
    return v4

    .line 121
    :cond_7
    invoke-static {p0, v0, v3, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    return p0

    .line 126
    :cond_8
    invoke-static {v5}, Lu2;->l(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v2

    .line 130
    :cond_9
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    return p0
.end method

.method public static final b(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v0, v2, :cond_6

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lp2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    invoke-static {p0, v0, v2, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return v1

    .line 69
    :cond_4
    :goto_0
    return v2

    .line 70
    :cond_5
    const-string p0, "ActiveParent must have a focusedChild"

    .line 71
    .line 72
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_6
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public static final c(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z
    .locals 8

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->f(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v1, Lrc;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p1

    .line 28
    move v5, p2

    .line 29
    move-object v6, p3

    .line 30
    invoke-direct/range {v1 .. v7}, Lrc;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;Ljava/lang/Object;ILp2;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v5, v1}, Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public static final d(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z
    .locals 10

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 11
    .line 12
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "visitChildren called on an unattached node"

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-static {v2, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    iget p0, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz p0, :cond_c

    .line 46
    .line 47
    add-int/lit8 p0, p0, -0x1

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 54
    .line 55
    iget v5, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 56
    .line 57
    and-int/lit16 v5, v5, 0x400

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    invoke-static {v2, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    .line 66
    .line 67
    iget v5, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 68
    .line 69
    and-int/lit16 v5, v5, 0x400

    .line 70
    .line 71
    if-eqz v5, :cond_b

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v6, v5

    .line 75
    :goto_2
    if-eqz p0, :cond_2

    .line 76
    .line 77
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 78
    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget v7, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0x400

    .line 90
    .line 91
    if-eqz v7, :cond_a

    .line 92
    .line 93
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 94
    .line 95
    if-eqz v7, :cond_a

    .line 96
    .line 97
    move-object v7, p0

    .line 98
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 99
    .line 100
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    move v8, v4

    .line 103
    :goto_3
    if-eqz v7, :cond_9

    .line 104
    .line 105
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 106
    .line 107
    and-int/lit16 v9, v9, 0x400

    .line 108
    .line 109
    if-eqz v9, :cond_8

    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    if-ne v8, v3, :cond_5

    .line 114
    .line 115
    move-object p0, v7

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    if-nez v6, :cond_6

    .line 118
    .line 119
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 120
    .line 121
    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    if-eqz p0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object p0, v5

    .line 132
    :cond_7
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_9
    if-ne v8, v3, :cond_a

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_a
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    goto :goto_2

    .line 146
    :cond_b
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_c
    sget-object p0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->j:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/util/Comparator;)V

    .line 152
    .line 153
    .line 154
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 155
    .line 156
    sub-int/2addr p0, v3

    .line 157
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 158
    .line 159
    array-length v1, v0

    .line 160
    if-ge p0, v1, :cond_e

    .line 161
    .line 162
    :goto_6
    if-ltz p0, :cond_e

    .line 163
    .line 164
    aget-object v1, v0, p0

    .line 165
    .line 166
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 167
    .line 168
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTraversalKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_d

    .line 173
    .line 174
    invoke-static {v1, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_d

    .line 179
    .line 180
    return v3

    .line 181
    :cond_d
    add-int/lit8 p0, p0, -0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_e
    return v4
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z
    .locals 10

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 11
    .line 12
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "visitChildren called on an unattached node"

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-static {v2, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    iget p0, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz p0, :cond_c

    .line 46
    .line 47
    add-int/lit8 p0, p0, -0x1

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 54
    .line 55
    iget v5, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 56
    .line 57
    and-int/lit16 v5, v5, 0x400

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    invoke-static {v2, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    .line 66
    .line 67
    iget v5, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 68
    .line 69
    and-int/lit16 v5, v5, 0x400

    .line 70
    .line 71
    if-eqz v5, :cond_b

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v6, v5

    .line 75
    :goto_2
    if-eqz p0, :cond_2

    .line 76
    .line 77
    instance-of v7, p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 78
    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    check-cast p0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_4
    iget v7, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0x400

    .line 90
    .line 91
    if-eqz v7, :cond_a

    .line 92
    .line 93
    instance-of v7, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 94
    .line 95
    if-eqz v7, :cond_a

    .line 96
    .line 97
    move-object v7, p0

    .line 98
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 99
    .line 100
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    move v8, v4

    .line 103
    :goto_3
    if-eqz v7, :cond_9

    .line 104
    .line 105
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 106
    .line 107
    and-int/lit16 v9, v9, 0x400

    .line 108
    .line 109
    if-eqz v9, :cond_8

    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    if-ne v8, v3, :cond_5

    .line 114
    .line 115
    move-object p0, v7

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    if-nez v6, :cond_6

    .line 118
    .line 119
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 120
    .line 121
    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    if-eqz p0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object p0, v5

    .line 132
    :cond_7
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_9
    if-ne v8, v3, :cond_a

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_a
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    goto :goto_2

    .line 146
    :cond_b
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_c
    sget-object p0, Landroidx/compose/ui/focus/FocusableChildrenComparator;->j:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/util/Comparator;)V

    .line 152
    .line 153
    .line 154
    iget-object p0, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 155
    .line 156
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 157
    .line 158
    move v1, v4

    .line 159
    :goto_6
    if-ge v1, v0, :cond_e

    .line 160
    .line 161
    aget-object v2, p0, v1

    .line 162
    .line 163
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 164
    .line 165
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_d

    .line 170
    .line 171
    invoke-static {v2, p1}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_d

    .line 176
    .line 177
    return v3

    .line 178
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_e
    return v4
.end method

.method public static final f(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILp2;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->k:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_23

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    new-array v3, v1, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 15
    .line 16
    invoke-direct {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 20
    .line 21
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, "visitChildren called on an unattached node"

    .line 26
    .line 27
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 31
    .line 32
    new-array v4, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    invoke-direct {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 38
    .line 39
    iget-object v5, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    invoke-static {v3, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    iget v4, v3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x1

    .line 54
    if-eqz v4, :cond_c

    .line 55
    .line 56
    add-int/lit8 v4, v4, -0x1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 63
    .line 64
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 65
    .line 66
    and-int/lit16 v7, v7, 0x400

    .line 67
    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    :goto_1
    if-eqz v4, :cond_2

    .line 75
    .line 76
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 77
    .line 78
    and-int/lit16 v7, v7, 0x400

    .line 79
    .line 80
    if-eqz v7, :cond_b

    .line 81
    .line 82
    move-object v7, v5

    .line 83
    :goto_2
    if-eqz v4, :cond_2

    .line 84
    .line 85
    instance-of v8, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 86
    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_4
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 96
    .line 97
    and-int/lit16 v8, v8, 0x400

    .line 98
    .line 99
    if-eqz v8, :cond_a

    .line 100
    .line 101
    instance-of v8, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 102
    .line 103
    if-eqz v8, :cond_a

    .line 104
    .line 105
    move-object v8, v4

    .line 106
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 107
    .line 108
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 109
    .line 110
    move v9, v2

    .line 111
    :goto_3
    if-eqz v8, :cond_9

    .line 112
    .line 113
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 114
    .line 115
    and-int/lit16 v10, v10, 0x400

    .line 116
    .line 117
    if-eqz v10, :cond_8

    .line 118
    .line 119
    add-int/lit8 v9, v9, 0x1

    .line 120
    .line 121
    if-ne v9, v6, :cond_5

    .line 122
    .line 123
    move-object v4, v8

    .line 124
    goto :goto_4

    .line 125
    :cond_5
    if-nez v7, :cond_6

    .line 126
    .line 127
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 128
    .line 129
    new-array v10, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 130
    .line 131
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    if-eqz v4, :cond_7

    .line 135
    .line 136
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move-object v4, v5

    .line 140
    :cond_7
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_8
    :goto_4
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    if-ne v9, v6, :cond_a

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    :goto_5
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_2

    .line 154
    :cond_b
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_c
    sget-object v3, Landroidx/compose/ui/focus/FocusableChildrenComparator;->j:Landroidx/compose/ui/focus/FocusableChildrenComparator;

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->n(Ljava/util/Comparator;)V

    .line 160
    .line 161
    .line 162
    if-ne p2, v6, :cond_f

    .line 163
    .line 164
    iget v3, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 165
    .line 166
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget v4, v3, Lkotlin/ranges/IntProgression;->j:I

    .line 171
    .line 172
    iget v3, v3, Lkotlin/ranges/IntProgression;->k:I

    .line 173
    .line 174
    if-gt v4, v3, :cond_12

    .line 175
    .line 176
    move v7, v2

    .line 177
    :goto_6
    if-eqz v7, :cond_d

    .line 178
    .line 179
    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 180
    .line 181
    aget-object v8, v8, v4

    .line 182
    .line 183
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 184
    .line 185
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_d

    .line 190
    .line 191
    invoke-static {v8, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-eqz v8, :cond_d

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_d
    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 199
    .line 200
    aget-object v8, v8, v4

    .line 201
    .line 202
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_e

    .line 207
    .line 208
    move v7, v6

    .line 209
    :cond_e
    if-eq v4, v3, :cond_12

    .line 210
    .line 211
    add-int/lit8 v4, v4, 0x1

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_f
    const/4 v3, 0x2

    .line 215
    if-ne p2, v3, :cond_22

    .line 216
    .line 217
    iget v3, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 218
    .line 219
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iget v4, v3, Lkotlin/ranges/IntProgression;->j:I

    .line 224
    .line 225
    iget v3, v3, Lkotlin/ranges/IntProgression;->k:I

    .line 226
    .line 227
    if-gt v4, v3, :cond_12

    .line 228
    .line 229
    move v7, v2

    .line 230
    :goto_7
    if-eqz v7, :cond_10

    .line 231
    .line 232
    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 233
    .line 234
    aget-object v8, v8, v3

    .line 235
    .line 236
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 237
    .line 238
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTraversalKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_10

    .line 243
    .line 244
    invoke-static {v8, p3}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;Lp2;)Z

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-eqz v8, :cond_10

    .line 249
    .line 250
    :goto_8
    return v6

    .line 251
    :cond_10
    iget-object v8, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 252
    .line 253
    aget-object v8, v8, v3

    .line 254
    .line 255
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eqz v8, :cond_11

    .line 260
    .line 261
    move v7, v6

    .line 262
    :cond_11
    if-eq v3, v4, :cond_12

    .line 263
    .line 264
    add-int/lit8 v3, v3, -0x1

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_12
    if-ne p2, v6, :cond_13

    .line 268
    .line 269
    goto/16 :goto_f

    .line 270
    .line 271
    :cond_13
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iget-boolean p1, p1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 276
    .line 277
    if-eqz p1, :cond_21

    .line 278
    .line 279
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 280
    .line 281
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 282
    .line 283
    if-nez p1, :cond_14

    .line 284
    .line 285
    const-string p1, "visitAncestors called on an unattached node"

    .line 286
    .line 287
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_14
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 291
    .line 292
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 293
    .line 294
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    :goto_9
    if-eqz p2, :cond_1f

    .line 299
    .line 300
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 301
    .line 302
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 303
    .line 304
    iget v0, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 305
    .line 306
    and-int/lit16 v0, v0, 0x400

    .line 307
    .line 308
    if-eqz v0, :cond_1d

    .line 309
    .line 310
    :goto_a
    if-eqz p1, :cond_1d

    .line 311
    .line 312
    iget v0, p1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 313
    .line 314
    and-int/lit16 v0, v0, 0x400

    .line 315
    .line 316
    if-eqz v0, :cond_1c

    .line 317
    .line 318
    move-object v0, p1

    .line 319
    move-object v3, v5

    .line 320
    :goto_b
    if-eqz v0, :cond_1c

    .line 321
    .line 322
    instance-of v4, v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 323
    .line 324
    if-eqz v4, :cond_15

    .line 325
    .line 326
    move-object v5, v0

    .line 327
    goto :goto_e

    .line 328
    :cond_15
    iget v4, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 329
    .line 330
    and-int/lit16 v4, v4, 0x400

    .line 331
    .line 332
    if-eqz v4, :cond_1b

    .line 333
    .line 334
    instance-of v4, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 335
    .line 336
    if-eqz v4, :cond_1b

    .line 337
    .line 338
    move-object v4, v0

    .line 339
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 340
    .line 341
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 342
    .line 343
    move v7, v2

    .line 344
    :goto_c
    if-eqz v4, :cond_1a

    .line 345
    .line 346
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 347
    .line 348
    and-int/lit16 v8, v8, 0x400

    .line 349
    .line 350
    if-eqz v8, :cond_19

    .line 351
    .line 352
    add-int/lit8 v7, v7, 0x1

    .line 353
    .line 354
    if-ne v7, v6, :cond_16

    .line 355
    .line 356
    move-object v0, v4

    .line 357
    goto :goto_d

    .line 358
    :cond_16
    if-nez v3, :cond_17

    .line 359
    .line 360
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 361
    .line 362
    new-array v8, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 363
    .line 364
    invoke-direct {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_17
    if-eqz v0, :cond_18

    .line 368
    .line 369
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    move-object v0, v5

    .line 373
    :cond_18
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_19
    :goto_d
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_1a
    if-ne v7, v6, :cond_1b

    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_1b
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    goto :goto_b

    .line 387
    :cond_1c
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_1d
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    if-eqz p2, :cond_1e

    .line 395
    .line 396
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 397
    .line 398
    if-eqz p1, :cond_1e

    .line 399
    .line 400
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :cond_1e
    move-object p1, v5

    .line 404
    goto :goto_9

    .line 405
    :cond_1f
    :goto_e
    if-nez v5, :cond_20

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_20
    invoke-virtual {p3, p0}, Lp2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    check-cast p0, Ljava/lang/Boolean;

    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    return p0

    .line 419
    :cond_21
    :goto_f
    return v2

    .line 420
    :cond_22
    const-string p0, "This function should only be used for 1-D focus search"

    .line 421
    .line 422
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    return v2

    .line 426
    :cond_23
    const-string p0, "This function should only be used within a parent that has focus."

    .line 427
    .line 428
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return v2
.end method
