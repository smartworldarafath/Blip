.class public abstract Landroidx/compose/ui/node/TraversableNodeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    move-object v0, p0

    .line 16
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    if-eqz p0, :cond_f

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 33
    .line 34
    const/high16 v2, 0x40000

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_d

    .line 39
    .line 40
    :goto_1
    if-eqz v0, :cond_d

    .line 41
    .line 42
    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 43
    .line 44
    and-int/2addr v1, v2

    .line 45
    if-eqz v1, :cond_c

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    move-object v4, v3

    .line 49
    :goto_2
    if-eqz v1, :cond_c

    .line 50
    .line 51
    instance-of v5, v1, Landroidx/compose/ui/node/TraversableNode;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x1

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    move-object v5, v1

    .line 58
    check-cast v5, Landroidx/compose/ui/node/TraversableNode;

    .line 59
    .line 60
    invoke-interface {v5}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    goto :goto_3

    .line 81
    :cond_1
    move v5, v7

    .line 82
    :goto_3
    if-nez v5, :cond_2

    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_2
    move v5, v6

    .line 87
    goto :goto_4

    .line 88
    :cond_3
    move v5, v7

    .line 89
    :goto_4
    if-eqz v5, :cond_b

    .line 90
    .line 91
    iget v5, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 92
    .line 93
    and-int/2addr v5, v2

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    move v5, v7

    .line 97
    goto :goto_5

    .line 98
    :cond_4
    move v5, v6

    .line 99
    :goto_5
    if-eqz v5, :cond_b

    .line 100
    .line 101
    instance-of v5, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 102
    .line 103
    if-eqz v5, :cond_b

    .line 104
    .line 105
    move-object v5, v1

    .line 106
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 107
    .line 108
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 109
    .line 110
    move v8, v6

    .line 111
    :goto_6
    if-eqz v5, :cond_a

    .line 112
    .line 113
    iget v9, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 114
    .line 115
    and-int/2addr v9, v2

    .line 116
    if-eqz v9, :cond_5

    .line 117
    .line 118
    move v9, v7

    .line 119
    goto :goto_7

    .line 120
    :cond_5
    move v9, v6

    .line 121
    :goto_7
    if-eqz v9, :cond_9

    .line 122
    .line 123
    add-int/lit8 v8, v8, 0x1

    .line 124
    .line 125
    if-ne v8, v7, :cond_6

    .line 126
    .line 127
    move-object v1, v5

    .line 128
    goto :goto_8

    .line 129
    :cond_6
    if-nez v4, :cond_7

    .line 130
    .line 131
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 132
    .line 133
    const/16 v9, 0x10

    .line 134
    .line 135
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 136
    .line 137
    invoke-direct {v4, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object v1, v3

    .line 146
    :cond_8
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_9
    :goto_8
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_a
    if-ne v8, v7, :cond_b

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    goto :goto_2

    .line 160
    :cond_c
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    if-eqz p0, :cond_e

    .line 168
    .line 169
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 170
    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_e
    move-object v0, v3

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_f
    :goto_9
    return-void
.end method

.method public static final b(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    if-eqz v1, :cond_f

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 30
    .line 31
    const/high16 v3, 0x40000

    .line 32
    .line 33
    and-int/2addr v2, v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_d

    .line 36
    .line 37
    :goto_1
    if-eqz v0, :cond_d

    .line 38
    .line 39
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 40
    .line 41
    and-int/2addr v2, v3

    .line 42
    if-eqz v2, :cond_c

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    move-object v5, v4

    .line 46
    :goto_2
    if-eqz v2, :cond_c

    .line 47
    .line 48
    instance-of v6, v2, Landroidx/compose/ui/node/TraversableNode;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    move-object v6, v2

    .line 55
    check-cast v6, Landroidx/compose/ui/node/TraversableNode;

    .line 56
    .line 57
    invoke-interface {p0}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    invoke-interface {v6}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    if-ne v9, v10, :cond_1

    .line 80
    .line 81
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    move v6, v8

    .line 93
    :goto_3
    if-nez v6, :cond_2

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_2
    move v6, v7

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    move v6, v8

    .line 100
    :goto_4
    if-eqz v6, :cond_b

    .line 101
    .line 102
    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 103
    .line 104
    and-int/2addr v6, v3

    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    move v6, v8

    .line 108
    goto :goto_5

    .line 109
    :cond_4
    move v6, v7

    .line 110
    :goto_5
    if-eqz v6, :cond_b

    .line 111
    .line 112
    instance-of v6, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 113
    .line 114
    if-eqz v6, :cond_b

    .line 115
    .line 116
    move-object v6, v2

    .line 117
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 118
    .line 119
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    move v9, v7

    .line 122
    :goto_6
    if-eqz v6, :cond_a

    .line 123
    .line 124
    iget v10, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 125
    .line 126
    and-int/2addr v10, v3

    .line 127
    if-eqz v10, :cond_5

    .line 128
    .line 129
    move v10, v8

    .line 130
    goto :goto_7

    .line 131
    :cond_5
    move v10, v7

    .line 132
    :goto_7
    if-eqz v10, :cond_9

    .line 133
    .line 134
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    if-ne v9, v8, :cond_6

    .line 137
    .line 138
    move-object v2, v6

    .line 139
    goto :goto_8

    .line 140
    :cond_6
    if-nez v5, :cond_7

    .line 141
    .line 142
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 143
    .line 144
    const/16 v10, 0x10

    .line 145
    .line 146
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 147
    .line 148
    invoke-direct {v5, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    if-eqz v2, :cond_8

    .line 152
    .line 153
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    move-object v2, v4

    .line 157
    :cond_8
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_8
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_a
    if-ne v9, v8, :cond_b

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_b
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_2

    .line 171
    :cond_c
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 182
    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_e
    move-object v0, v4

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_f
    :goto_9
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier$Node;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "visitSubtreeIf called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 17
    .line 18
    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    iget p0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 35
    .line 36
    if-eqz p0, :cond_e

    .line 37
    .line 38
    add-int/lit8 p0, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    iget v2, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 47
    .line 48
    const/high16 v3, 0x40000

    .line 49
    .line 50
    and-int/2addr v2, v3

    .line 51
    if-eqz v2, :cond_d

    .line 52
    .line 53
    move-object v2, p0

    .line 54
    :goto_1
    if-eqz v2, :cond_d

    .line 55
    .line 56
    iget-boolean v4, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 57
    .line 58
    if-eqz v4, :cond_d

    .line 59
    .line 60
    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 61
    .line 62
    and-int/2addr v4, v3

    .line 63
    if-eqz v4, :cond_c

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    move-object v5, v2

    .line 67
    move-object v6, v4

    .line 68
    :goto_2
    if-eqz v5, :cond_c

    .line 69
    .line 70
    instance-of v7, v5, Landroidx/compose/ui/node/TraversableNode;

    .line 71
    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    check-cast v5, Landroidx/compose/ui/node/TraversableNode;

    .line 75
    .line 76
    invoke-interface {v5}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    invoke-interface {p2, v5}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    sget-object v5, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 94
    .line 95
    :goto_3
    sget-object v7, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->l:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 96
    .line 97
    if-ne v5, v7, :cond_4

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_4
    sget-object v7, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->k:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 101
    .line 102
    if-eq v5, v7, :cond_2

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_5
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 106
    .line 107
    and-int/2addr v7, v3

    .line 108
    if-eqz v7, :cond_b

    .line 109
    .line 110
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 111
    .line 112
    if-eqz v7, :cond_b

    .line 113
    .line 114
    move-object v7, v5

    .line 115
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 116
    .line 117
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    :goto_4
    const/4 v9, 0x1

    .line 121
    if-eqz v7, :cond_a

    .line 122
    .line 123
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 124
    .line 125
    and-int/2addr v10, v3

    .line 126
    if-eqz v10, :cond_9

    .line 127
    .line 128
    add-int/lit8 v8, v8, 0x1

    .line 129
    .line 130
    if-ne v8, v9, :cond_6

    .line 131
    .line 132
    move-object v5, v7

    .line 133
    goto :goto_5

    .line 134
    :cond_6
    if-nez v6, :cond_7

    .line 135
    .line 136
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 137
    .line 138
    new-array v9, v1, [Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    if-eqz v5, :cond_8

    .line 144
    .line 145
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move-object v5, v4

    .line 149
    :cond_8
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    :goto_5
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    if-ne v8, v9, :cond_b

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_b
    :goto_6
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    goto :goto_2

    .line 163
    :cond_c
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_d
    invoke-static {v0, p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_e
    :goto_7
    return-void
.end method

.method public static final d(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "visitSubtreeIf called on an unattached node"

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    const/16 v2, 0x10

    .line 18
    .line 19
    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 25
    .line 26
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    iget v0, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 38
    .line 39
    if-eqz v0, :cond_e

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 48
    .line 49
    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 50
    .line 51
    const/high16 v4, 0x40000

    .line 52
    .line 53
    and-int/2addr v3, v4

    .line 54
    if-eqz v3, :cond_d

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    :goto_1
    if-eqz v3, :cond_d

    .line 58
    .line 59
    iget-boolean v5, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 60
    .line 61
    if-eqz v5, :cond_d

    .line 62
    .line 63
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 64
    .line 65
    and-int/2addr v5, v4

    .line 66
    if-eqz v5, :cond_c

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v6, v3

    .line 70
    move-object v7, v5

    .line 71
    :goto_2
    if-eqz v6, :cond_c

    .line 72
    .line 73
    instance-of v8, v6, Landroidx/compose/ui/node/TraversableNode;

    .line 74
    .line 75
    if-eqz v8, :cond_5

    .line 76
    .line 77
    check-cast v6, Landroidx/compose/ui/node/TraversableNode;

    .line 78
    .line 79
    invoke-interface {p0}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-interface {v6}, Landroidx/compose/ui/node/TraversableNode;->p()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_3

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-ne v8, v9, :cond_3

    .line 102
    .line 103
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    sget-object v6, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 111
    .line 112
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->l:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 113
    .line 114
    if-ne v6, v8, :cond_4

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_4
    sget-object v8, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->k:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 118
    .line 119
    if-eq v6, v8, :cond_2

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_5
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 123
    .line 124
    and-int/2addr v8, v4

    .line 125
    if-eqz v8, :cond_b

    .line 126
    .line 127
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 128
    .line 129
    if-eqz v8, :cond_b

    .line 130
    .line 131
    move-object v8, v6

    .line 132
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 133
    .line 134
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    :goto_4
    const/4 v10, 0x1

    .line 138
    if-eqz v8, :cond_a

    .line 139
    .line 140
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 141
    .line 142
    and-int/2addr v11, v4

    .line 143
    if-eqz v11, :cond_9

    .line 144
    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 146
    .line 147
    if-ne v9, v10, :cond_6

    .line 148
    .line 149
    move-object v6, v8

    .line 150
    goto :goto_5

    .line 151
    :cond_6
    if-nez v7, :cond_7

    .line 152
    .line 153
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 154
    .line 155
    new-array v10, v2, [Landroidx/compose/ui/Modifier$Node;

    .line 156
    .line 157
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    if-eqz v6, :cond_8

    .line 161
    .line 162
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object v6, v5

    .line 166
    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_5
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_a
    if-ne v9, v10, :cond_b

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    goto :goto_2

    .line 180
    :cond_c
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_d
    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_e
    :goto_7
    return-void
.end method
