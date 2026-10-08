.class public abstract Landroidx/compose/ui/focus/FocusTransactionsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/focus/FocusTargetNode;)Z
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
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->l:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    :goto_0
    return v2

    .line 48
    :cond_3
    return v1
.end method

.method public static final b(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 5

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
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_9

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v3, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 41
    .line 42
    if-ne v0, v3, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move-object v1, v0

    .line 46
    :goto_0
    if-nez v1, :cond_8

    .line 47
    .line 48
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 49
    .line 50
    if-nez v0, :cond_7

    .line 51
    .line 52
    iput-boolean v2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 60
    .line 61
    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->k:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-boolean v1, v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->b:Z

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester;

    .line 92
    .line 93
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 96
    .line 97
    return-object p1

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    if-eq v4, p1, :cond_6

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->d:Landroidx/compose/ui/focus/FocusRequester;

    .line 105
    .line 106
    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->c:Landroidx/compose/ui/focus/FocusRequester;

    .line 107
    .line 108
    if-ne p1, v1, :cond_5

    .line 109
    .line 110
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_5
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->l:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_6
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 121
    .line 122
    return-object v3

    .line 123
    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->z:Z

    .line 124
    .line 125
    throw p1

    .line 126
    :cond_7
    return-object v3

    .line 127
    :cond_8
    return-object v1

    .line 128
    :cond_9
    const-string p0, "ActiveParent with no focused child"

    .line 129
    .line 130
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_a
    :goto_2
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 135
    .line 136
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 14
    .line 15
    invoke-direct {v2, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusPropertiesImpl;->j:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-boolean v1, v2, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->b:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester;

    .line 46
    .line 47
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 50
    .line 51
    return-object p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-eq v3, p1, :cond_2

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    :try_start_1
    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->d:Landroidx/compose/ui/focus/FocusRequester;

    .line 59
    .line 60
    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->c:Landroidx/compose/ui/focus/FocusRequester;

    .line 61
    .line 62
    if-ne p1, v1, :cond_1

    .line 63
    .line 64
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    :try_start_2
    sget-object p1, Landroidx/compose/ui/focus/CustomDestinationResult;->l:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_2
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->A:Z

    .line 78
    .line 79
    throw p1

    .line 80
    :cond_3
    :goto_1
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 81
    .line 82
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 10

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
    if-eqz v0, :cond_16

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_14

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_16

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    if-ne v0, v4, :cond_13

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 22
    .line 23
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "visitAncestors called on an unattached node"

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 35
    .line 36
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    if-eqz p0, :cond_b

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 43
    .line 44
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 47
    .line 48
    and-int/lit16 v5, v5, 0x400

    .line 49
    .line 50
    if-eqz v5, :cond_9

    .line 51
    .line 52
    :goto_1
    if-eqz v0, :cond_9

    .line 53
    .line 54
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 55
    .line 56
    and-int/lit16 v5, v5, 0x400

    .line 57
    .line 58
    if-eqz v5, :cond_8

    .line 59
    .line 60
    move-object v5, v0

    .line 61
    move-object v6, v1

    .line 62
    :goto_2
    if-eqz v5, :cond_8

    .line 63
    .line 64
    instance-of v7, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 65
    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_1
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 70
    .line 71
    and-int/lit16 v7, v7, 0x400

    .line 72
    .line 73
    if-eqz v7, :cond_7

    .line 74
    .line 75
    instance-of v7, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 76
    .line 77
    if-eqz v7, :cond_7

    .line 78
    .line 79
    move-object v7, v5

    .line 80
    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 81
    .line 82
    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    :goto_3
    if-eqz v7, :cond_6

    .line 86
    .line 87
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 88
    .line 89
    and-int/lit16 v9, v9, 0x400

    .line 90
    .line 91
    if-eqz v9, :cond_5

    .line 92
    .line 93
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    if-ne v8, v2, :cond_2

    .line 96
    .line 97
    move-object v5, v7

    .line 98
    goto :goto_4

    .line 99
    :cond_2
    if-nez v6, :cond_3

    .line 100
    .line 101
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 102
    .line 103
    const/16 v9, 0x10

    .line 104
    .line 105
    new-array v9, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 106
    .line 107
    invoke-direct {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    move-object v5, v1

    .line 116
    :cond_4
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_4
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    if-ne v8, v2, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-eqz p0, :cond_a

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 140
    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_a
    move-object v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_b
    move-object v5, v1

    .line 149
    :goto_5
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 150
    .line 151
    if-nez v5, :cond_c

    .line 152
    .line 153
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_c
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_12

    .line 165
    .line 166
    if-eq p0, v2, :cond_11

    .line 167
    .line 168
    if-eq p0, v3, :cond_10

    .line 169
    .line 170
    if-ne p0, v4, :cond_f

    .line 171
    .line 172
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 177
    .line 178
    if-ne p0, v0, :cond_d

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_d
    move-object v1, p0

    .line 182
    :goto_6
    if-nez v1, :cond_e

    .line 183
    .line 184
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_e
    return-object v1

    .line 190
    :cond_f
    invoke-static {}, Lk8;->e()V

    .line 191
    .line 192
    .line 193
    return-object v1

    .line 194
    :cond_10
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->k:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_11
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_12
    invoke-static {v5, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :cond_13
    invoke-static {}, Lk8;->e()V

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :cond_14
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    if-eqz p0, :cond_15

    .line 216
    .line 217
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :cond_15
    const-string p0, "ActiveParent with no focused child"

    .line 223
    .line 224
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-object v1

    .line 228
    :cond_16
    sget-object p0, Landroidx/compose/ui/focus/CustomDestinationResult;->j:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 229
    .line 230
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v2, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 25
    .line 26
    .line 27
    return v4

    .line 28
    :cond_0
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-boolean v6, v2, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 31
    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-boolean v6, v0, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v6}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 48
    .line 49
    iget-object v6, v6, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/platform/AndroidComposeView;->D()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    :goto_0
    const/16 v16, 0x0

    .line 58
    .line 59
    goto/16 :goto_17

    .line 60
    .line 61
    :cond_2
    :goto_1
    const-string v6, "visitAncestors called on an unattached node"

    .line 62
    .line 63
    const/16 v7, 0x10

    .line 64
    .line 65
    if-eqz v2, :cond_e

    .line 66
    .line 67
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 68
    .line 69
    new-array v10, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 70
    .line 71
    invoke-direct {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 75
    .line 76
    iget-boolean v10, v10, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 77
    .line 78
    if-nez v10, :cond_3

    .line 79
    .line 80
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v10, v2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 84
    .line 85
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    :goto_2
    if-eqz v11, :cond_f

    .line 92
    .line 93
    iget-object v12, v11, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 94
    .line 95
    iget-object v12, v12, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 96
    .line 97
    iget v12, v12, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 98
    .line 99
    and-int/lit16 v12, v12, 0x400

    .line 100
    .line 101
    if-eqz v12, :cond_c

    .line 102
    .line 103
    :goto_3
    if-eqz v10, :cond_c

    .line 104
    .line 105
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 106
    .line 107
    and-int/lit16 v12, v12, 0x400

    .line 108
    .line 109
    if-eqz v12, :cond_b

    .line 110
    .line 111
    move-object v12, v10

    .line 112
    const/4 v13, 0x0

    .line 113
    :goto_4
    if-eqz v12, :cond_b

    .line 114
    .line 115
    instance-of v14, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 116
    .line 117
    if-eqz v14, :cond_4

    .line 118
    .line 119
    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 120
    .line 121
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_4
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 126
    .line 127
    and-int/lit16 v14, v14, 0x400

    .line 128
    .line 129
    if-eqz v14, :cond_a

    .line 130
    .line 131
    instance-of v14, v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 132
    .line 133
    if-eqz v14, :cond_a

    .line 134
    .line 135
    move-object v14, v12

    .line 136
    check-cast v14, Landroidx/compose/ui/node/DelegatingNode;

    .line 137
    .line 138
    iget-object v14, v14, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    const/4 v15, 0x0

    .line 141
    :goto_5
    if-eqz v14, :cond_9

    .line 142
    .line 143
    iget v8, v14, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 144
    .line 145
    and-int/lit16 v8, v8, 0x400

    .line 146
    .line 147
    if-eqz v8, :cond_8

    .line 148
    .line 149
    add-int/lit8 v15, v15, 0x1

    .line 150
    .line 151
    if-ne v15, v4, :cond_5

    .line 152
    .line 153
    move-object v12, v14

    .line 154
    goto :goto_6

    .line 155
    :cond_5
    if-nez v13, :cond_6

    .line 156
    .line 157
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 158
    .line 159
    new-array v13, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 160
    .line 161
    invoke-direct {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    move-object v13, v8

    .line 165
    :cond_6
    if-eqz v12, :cond_7

    .line 166
    .line 167
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    :cond_7
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_6
    iget-object v14, v14, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    if-ne v15, v4, :cond_a

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    :goto_7
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    goto :goto_4

    .line 185
    :cond_b
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_c
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    if-eqz v11, :cond_d

    .line 193
    .line 194
    iget-object v8, v11, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 195
    .line 196
    if-eqz v8, :cond_d

    .line 197
    .line 198
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 199
    .line 200
    move-object v10, v8

    .line 201
    goto :goto_2

    .line 202
    :cond_d
    const/4 v10, 0x0

    .line 203
    goto :goto_2

    .line 204
    :cond_e
    const/4 v9, 0x0

    .line 205
    :cond_f
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 206
    .line 207
    new-array v10, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 208
    .line 209
    invoke-direct {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    .line 213
    .line 214
    new-array v11, v7, [Landroidx/compose/ui/focus/FocusTargetNode;

    .line 215
    .line 216
    invoke-direct {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v11, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 220
    .line 221
    iget-boolean v11, v11, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 222
    .line 223
    if-nez v11, :cond_10

    .line 224
    .line 225
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_10
    iget-object v6, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 229
    .line 230
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 231
    .line 232
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    move v12, v4

    .line 237
    :goto_8
    if-eqz v11, :cond_1f

    .line 238
    .line 239
    iget-object v13, v11, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 240
    .line 241
    iget-object v13, v13, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 242
    .line 243
    iget v13, v13, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 244
    .line 245
    and-int/lit16 v13, v13, 0x400

    .line 246
    .line 247
    if-eqz v13, :cond_1d

    .line 248
    .line 249
    :goto_9
    if-eqz v6, :cond_1d

    .line 250
    .line 251
    iget v13, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 252
    .line 253
    and-int/lit16 v13, v13, 0x400

    .line 254
    .line 255
    if-eqz v13, :cond_1c

    .line 256
    .line 257
    move-object v13, v6

    .line 258
    const/4 v14, 0x0

    .line 259
    :goto_a
    if-eqz v13, :cond_1c

    .line 260
    .line 261
    instance-of v15, v13, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 262
    .line 263
    if-eqz v15, :cond_14

    .line 264
    .line 265
    move-object v15, v13

    .line 266
    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 267
    .line 268
    if-eqz v9, :cond_11

    .line 269
    .line 270
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v16

    .line 274
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v16

    .line 278
    move-object/from16 v5, v16

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_11
    const/4 v5, 0x0

    .line 282
    :goto_b
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_12

    .line 289
    .line 290
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_c

    .line 294
    :cond_12
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :goto_c
    if-ne v15, v2, :cond_13

    .line 298
    .line 299
    const/4 v12, 0x0

    .line 300
    :cond_13
    const/4 v5, 0x0

    .line 301
    goto :goto_d

    .line 302
    :cond_14
    move v5, v4

    .line 303
    :goto_d
    if-eqz v5, :cond_1a

    .line 304
    .line 305
    iget v5, v13, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 306
    .line 307
    and-int/lit16 v5, v5, 0x400

    .line 308
    .line 309
    if-eqz v5, :cond_1a

    .line 310
    .line 311
    instance-of v5, v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 312
    .line 313
    if-eqz v5, :cond_1a

    .line 314
    .line 315
    move-object v5, v13

    .line 316
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 317
    .line 318
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 319
    .line 320
    const/4 v7, 0x0

    .line 321
    :goto_e
    if-eqz v5, :cond_19

    .line 322
    .line 323
    iget v15, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 324
    .line 325
    and-int/lit16 v15, v15, 0x400

    .line 326
    .line 327
    if-eqz v15, :cond_18

    .line 328
    .line 329
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    if-ne v7, v4, :cond_15

    .line 332
    .line 333
    move-object v13, v5

    .line 334
    goto :goto_10

    .line 335
    :cond_15
    if-nez v14, :cond_16

    .line 336
    .line 337
    new-instance v14, Landroidx/compose/runtime/collection/MutableVector;

    .line 338
    .line 339
    const/16 v15, 0x10

    .line 340
    .line 341
    new-array v4, v15, [Landroidx/compose/ui/Modifier$Node;

    .line 342
    .line 343
    invoke-direct {v14, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    goto :goto_f

    .line 347
    :cond_16
    const/16 v15, 0x10

    .line 348
    .line 349
    :goto_f
    if-eqz v13, :cond_17

    .line 350
    .line 351
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    const/4 v13, 0x0

    .line 355
    :cond_17
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    goto :goto_11

    .line 359
    :cond_18
    :goto_10
    const/16 v15, 0x10

    .line 360
    .line 361
    :goto_11
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 362
    .line 363
    const/4 v4, 0x1

    .line 364
    goto :goto_e

    .line 365
    :cond_19
    const/16 v15, 0x10

    .line 366
    .line 367
    if-ne v7, v4, :cond_1b

    .line 368
    .line 369
    move v7, v15

    .line 370
    goto :goto_a

    .line 371
    :cond_1a
    const/16 v15, 0x10

    .line 372
    .line 373
    :cond_1b
    invoke-static {v14}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    move v7, v15

    .line 378
    const/4 v4, 0x1

    .line 379
    goto :goto_a

    .line 380
    :cond_1c
    move v15, v7

    .line 381
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 382
    .line 383
    move v7, v15

    .line 384
    const/4 v4, 0x1

    .line 385
    goto/16 :goto_9

    .line 386
    .line 387
    :cond_1d
    move v15, v7

    .line 388
    invoke-virtual {v11}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    if-eqz v11, :cond_1e

    .line 393
    .line 394
    iget-object v4, v11, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 395
    .line 396
    if-eqz v4, :cond_1e

    .line 397
    .line 398
    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 399
    .line 400
    move-object v6, v4

    .line 401
    goto :goto_12

    .line 402
    :cond_1e
    const/4 v6, 0x0

    .line 403
    :goto_12
    move v7, v15

    .line 404
    const/4 v4, 0x1

    .line 405
    goto/16 :goto_8

    .line 406
    .line 407
    :cond_1f
    if-eqz v12, :cond_20

    .line 408
    .line 409
    if-eqz v2, :cond_20

    .line 410
    .line 411
    const/4 v4, 0x0

    .line 412
    invoke-static {v2, v4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-nez v5, :cond_20

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_20
    new-instance v4, Lr1;

    .line 421
    .line 422
    const/16 v5, 0x12

    .line 423
    .line 424
    invoke-direct {v4, v5, v0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v4}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-eqz v4, :cond_23

    .line 439
    .line 440
    const/4 v5, 0x1

    .line 441
    if-eq v4, v5, :cond_22

    .line 442
    .line 443
    const/4 v5, 0x2

    .line 444
    if-eq v4, v5, :cond_23

    .line 445
    .line 446
    const/4 v5, 0x3

    .line 447
    if-ne v4, v5, :cond_21

    .line 448
    .line 449
    goto :goto_13

    .line 450
    :cond_21
    invoke-static {}, Lk8;->e()V

    .line 451
    .line 452
    .line 453
    const/16 v16, 0x0

    .line 454
    .line 455
    return v16

    .line 456
    :cond_22
    :goto_13
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    check-cast v4, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 465
    .line 466
    invoke-virtual {v4, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->j(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 467
    .line 468
    .line 469
    :cond_23
    if-eqz v12, :cond_24

    .line 470
    .line 471
    if-eqz v2, :cond_24

    .line 472
    .line 473
    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 474
    .line 475
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 476
    .line 477
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 478
    .line 479
    .line 480
    :cond_24
    if-eqz v9, :cond_26

    .line 481
    .line 482
    iget v4, v9, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 483
    .line 484
    const/16 v17, 0x1

    .line 485
    .line 486
    add-int/lit8 v4, v4, -0x1

    .line 487
    .line 488
    iget-object v5, v9, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 489
    .line 490
    array-length v6, v5

    .line 491
    if-ge v4, v6, :cond_26

    .line 492
    .line 493
    :goto_14
    if-ltz v4, :cond_26

    .line 494
    .line 495
    aget-object v6, v5, v4

    .line 496
    .line 497
    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 498
    .line 499
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    if-eq v7, v0, :cond_25

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :cond_25
    sget-object v7, Landroidx/compose/ui/focus/FocusStateImpl;->k:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 508
    .line 509
    sget-object v8, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 510
    .line 511
    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 512
    .line 513
    .line 514
    add-int/lit8 v4, v4, -0x1

    .line 515
    .line 516
    goto :goto_14

    .line 517
    :cond_26
    iget v4, v10, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 518
    .line 519
    const/16 v17, 0x1

    .line 520
    .line 521
    add-int/lit8 v4, v4, -0x1

    .line 522
    .line 523
    iget-object v5, v10, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 524
    .line 525
    array-length v6, v5

    .line 526
    if-ge v4, v6, :cond_29

    .line 527
    .line 528
    :goto_15
    if-ltz v4, :cond_29

    .line 529
    .line 530
    aget-object v6, v5, v4

    .line 531
    .line 532
    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 533
    .line 534
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    if-eq v7, v0, :cond_27

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :cond_27
    if-ne v6, v2, :cond_28

    .line 543
    .line 544
    sget-object v7, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 545
    .line 546
    goto :goto_16

    .line 547
    :cond_28
    sget-object v7, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 548
    .line 549
    :goto_16
    sget-object v8, Landroidx/compose/ui/focus/FocusStateImpl;->k:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 550
    .line 551
    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 552
    .line 553
    .line 554
    add-int/lit8 v4, v4, -0x1

    .line 555
    .line 556
    goto :goto_15

    .line 557
    :cond_29
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    if-eq v2, v0, :cond_2a

    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :cond_2a
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 566
    .line 567
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    if-eq v1, v0, :cond_2b

    .line 575
    .line 576
    goto/16 :goto_0

    .line 577
    .line 578
    :goto_17
    return v16

    .line 579
    :cond_2b
    const/16 v17, 0x1

    .line 580
    .line 581
    return v17
.end method

.method public static final f(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z
    .locals 3

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
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    return p1

    .line 27
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->c(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    move p1, v1

    .line 39
    :goto_0
    if-eqz p1, :cond_4

    .line 40
    .line 41
    sget-object p1, Landroidx/compose/ui/focus/FocusStateImpl;->k:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_4
    return v2

    .line 50
    :cond_5
    :goto_1
    return v1
.end method
