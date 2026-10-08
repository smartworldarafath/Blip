.class public abstract Landroidx/compose/ui/relocation/BringIntoViewModifierNodeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
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
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "visitAncestors called on an unattached node"

    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_c

    .line 36
    .line 37
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 42
    .line 43
    const/high16 v4, 0x80000

    .line 44
    .line 45
    and-int/2addr v3, v4

    .line 46
    if-eqz v3, :cond_a

    .line 47
    .line 48
    :goto_1
    if-eqz v0, :cond_a

    .line 49
    .line 50
    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 51
    .line 52
    and-int/2addr v3, v4

    .line 53
    if-eqz v3, :cond_9

    .line 54
    .line 55
    move-object v3, v0

    .line 56
    move-object v5, v2

    .line 57
    :goto_2
    if-eqz v3, :cond_9

    .line 58
    .line 59
    instance-of v6, v3, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    move-object v2, v3

    .line 64
    goto :goto_5

    .line 65
    :cond_2
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 66
    .line 67
    and-int/2addr v6, v4

    .line 68
    if-eqz v6, :cond_8

    .line 69
    .line 70
    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 71
    .line 72
    if-eqz v6, :cond_8

    .line 73
    .line 74
    move-object v6, v3

    .line 75
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 76
    .line 77
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    :goto_3
    const/4 v8, 0x1

    .line 81
    if-eqz v6, :cond_7

    .line 82
    .line 83
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 84
    .line 85
    and-int/2addr v9, v4

    .line 86
    if-eqz v9, :cond_6

    .line 87
    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    if-ne v7, v8, :cond_3

    .line 91
    .line 92
    move-object v3, v6

    .line 93
    goto :goto_4

    .line 94
    :cond_3
    if-nez v5, :cond_4

    .line 95
    .line 96
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 97
    .line 98
    const/16 v8, 0x10

    .line 99
    .line 100
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 101
    .line 102
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object v3, v2

    .line 111
    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    if-ne v7, v8, :cond_8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_2

    .line 125
    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 135
    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_b
    move-object v0, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_c
    :goto_5
    check-cast v2, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 144
    .line 145
    if-nez v2, :cond_d

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_d
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    new-instance v0, Lp0;

    .line 153
    .line 154
    const/4 v1, 0x6

    .line 155
    invoke-direct {v0, v1, p1, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v2, p0, v0, p2}, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;->l(Landroidx/compose/ui/node/NodeCoordinator;Lp0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 163
    .line 164
    if-ne p0, p1, :cond_e

    .line 165
    .line 166
    return-object p0

    .line 167
    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p0
.end method
