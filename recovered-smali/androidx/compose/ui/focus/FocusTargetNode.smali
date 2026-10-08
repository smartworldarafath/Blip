.class public final Landroidx/compose/ui/focus/FocusTargetNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/focus/FocusTargetModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/UnplacedAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;
    }
.end annotation


# instance fields
.field public A:Z

.field public final B:I

.field public C:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

.field public final x:Z

.field public final y:Lkotlin/jvm/functions/Function2;

.field public z:Z


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function2;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->y:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput p1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->B:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final L0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Q0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final R0()V
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
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    iget-boolean v2, v2, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 40
    .line 41
    if-ne v2, v1, :cond_4

    .line 42
    .line 43
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->D()Z

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->a()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 65
    .line 66
    const/16 v2, 0x8

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v0, v2, v1, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c(IZZ)Z

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->D()Z

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->a()V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->C:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->a()V

    .line 93
    .line 94
    .line 95
    :cond_5
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Landroidx/compose/ui/focus/FocusTargetNode;->C:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 97
    .line 98
    return-void
.end method

.method public final S0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->d1()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v0, v1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c(IZZ)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final Y0(I)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->d(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    if-eq p1, p0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    if-ne p1, p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    :cond_1
    return p0

    .line 26
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusTargetNode;->y:Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v2, p1, p2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 29
    .line 30
    iget-boolean v2, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "visitAncestors called on an unattached node"

    .line 35
    .line 36
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    if-eqz p0, :cond_e

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 48
    .line 49
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 52
    .line 53
    and-int/lit16 v3, v3, 0x1400

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v3, :cond_c

    .line 57
    .line 58
    :goto_1
    if-eqz v2, :cond_c

    .line 59
    .line 60
    iget v3, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 61
    .line 62
    and-int/lit16 v5, v3, 0x1400

    .line 63
    .line 64
    if-eqz v5, :cond_b

    .line 65
    .line 66
    if-eq v2, p1, :cond_2

    .line 67
    .line 68
    and-int/lit16 v5, v3, 0x400

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_2
    and-int/lit16 v3, v3, 0x1000

    .line 75
    .line 76
    if-eqz v3, :cond_b

    .line 77
    .line 78
    move-object v3, v2

    .line 79
    move-object v5, v4

    .line 80
    :goto_2
    if-eqz v3, :cond_b

    .line 81
    .line 82
    instance-of v6, v3, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 83
    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    check-cast v3, Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-eq v1, v6, :cond_3

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_3
    invoke-interface {v3, p2}, Landroidx/compose/ui/focus/FocusEventModifierNode;->j0(Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_4
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 100
    .line 101
    and-int/lit16 v6, v6, 0x1000

    .line 102
    .line 103
    if-eqz v6, :cond_a

    .line 104
    .line 105
    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 106
    .line 107
    if-eqz v6, :cond_a

    .line 108
    .line 109
    move-object v6, v3

    .line 110
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 111
    .line 112
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    :goto_3
    const/4 v8, 0x1

    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 119
    .line 120
    and-int/lit16 v9, v9, 0x1000

    .line 121
    .line 122
    if-eqz v9, :cond_8

    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    .line 126
    if-ne v7, v8, :cond_5

    .line 127
    .line 128
    move-object v3, v6

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    if-nez v5, :cond_6

    .line 131
    .line 132
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 133
    .line 134
    const/16 v8, 0x10

    .line 135
    .line 136
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 137
    .line 138
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    if-eqz v3, :cond_7

    .line 142
    .line 143
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    move-object v3, v4

    .line 147
    :cond_7
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_9
    if-ne v7, v8, :cond_a

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_a
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    goto :goto_2

    .line 161
    :cond_b
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    if-eqz p0, :cond_d

    .line 169
    .line 170
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 171
    .line 172
    if-eqz v2, :cond_d

    .line 173
    .line 174
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_d
    move-object v2, v4

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_e
    :goto_6
    return-void
.end method

.method public final a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;
    .locals 11

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/ui/focus/FocusRequester;->b:Landroidx/compose/ui/focus/FocusRequester;

    .line 10
    .line 11
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->b:Landroidx/compose/ui/focus/FocusRequester;

    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->c:Landroidx/compose/ui/focus/FocusRequester;

    .line 14
    .line 15
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->d:Landroidx/compose/ui/focus/FocusRequester;

    .line 16
    .line 17
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->e:Landroidx/compose/ui/focus/FocusRequester;

    .line 18
    .line 19
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->f:Landroidx/compose/ui/focus/FocusRequester;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->g:Landroidx/compose/ui/focus/FocusRequester;

    .line 22
    .line 23
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->h:Landroidx/compose/ui/focus/FocusRequester;

    .line 24
    .line 25
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->i:Landroidx/compose/ui/focus/FocusRequester;

    .line 26
    .line 27
    new-instance v2, La7;

    .line 28
    .line 29
    const/16 v3, 0xc

    .line 30
    .line 31
    invoke-direct {v2, v3}, La7;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->j:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    new-instance v2, La7;

    .line 37
    .line 38
    invoke-direct {v2, v3}, La7;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->k:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    sget-object v2, Landroidx/compose/ui/focus/FocusProperties$Companion;->a:Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    iput-object v2, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->l:Landroidx/compose/ui/geometry/Rect;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iget v3, p0, Landroidx/compose/ui/focus/FocusTargetNode;->B:I

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-ne v3, v1, :cond_0

    .line 52
    .line 53
    move v3, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    if-nez v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->m:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 58
    .line 59
    invoke-static {p0, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/compose/ui/input/InputModeManager;

    .line 64
    .line 65
    check-cast v3, Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 66
    .line 67
    iget-object v3, v3, Landroidx/compose/ui/input/InputModeManagerImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/compose/ui/input/InputMode;

    .line 76
    .line 77
    iget v3, v3, Landroidx/compose/ui/input/InputMode;->a:I

    .line 78
    .line 79
    if-ne v3, v1, :cond_1

    .line 80
    .line 81
    move v3, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move v3, v4

    .line 84
    :goto_0
    xor-int/2addr v3, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v5, 0x2

    .line 87
    if-ne v3, v5, :cond_10

    .line 88
    .line 89
    move v3, v4

    .line 90
    :goto_1
    iput-boolean v3, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 91
    .line 92
    iget-object v3, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 93
    .line 94
    iget-boolean v5, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    const-string v5, "visitAncestors called on an unattached node"

    .line 99
    .line 100
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v5, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 104
    .line 105
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_2
    if-eqz p0, :cond_f

    .line 110
    .line 111
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 112
    .line 113
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 116
    .line 117
    and-int/lit16 v6, v6, 0xc00

    .line 118
    .line 119
    if-eqz v6, :cond_d

    .line 120
    .line 121
    :goto_3
    if-eqz v5, :cond_d

    .line 122
    .line 123
    iget v6, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 124
    .line 125
    and-int/lit16 v7, v6, 0xc00

    .line 126
    .line 127
    if-eqz v7, :cond_c

    .line 128
    .line 129
    if-eq v5, v3, :cond_4

    .line 130
    .line 131
    and-int/lit16 v7, v6, 0x400

    .line 132
    .line 133
    if-eqz v7, :cond_4

    .line 134
    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_4
    and-int/lit16 v6, v6, 0x800

    .line 138
    .line 139
    if-eqz v6, :cond_c

    .line 140
    .line 141
    move-object v7, v2

    .line 142
    move-object v6, v5

    .line 143
    :goto_4
    if-eqz v6, :cond_c

    .line 144
    .line 145
    instance-of v8, v6, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 146
    .line 147
    if-eqz v8, :cond_5

    .line 148
    .line 149
    check-cast v6, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 150
    .line 151
    invoke-interface {v6, v0}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->F(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 152
    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_5
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 156
    .line 157
    and-int/lit16 v8, v8, 0x800

    .line 158
    .line 159
    if-eqz v8, :cond_b

    .line 160
    .line 161
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 162
    .line 163
    if-eqz v8, :cond_b

    .line 164
    .line 165
    move-object v8, v6

    .line 166
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 167
    .line 168
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 169
    .line 170
    move v9, v4

    .line 171
    :goto_5
    if-eqz v8, :cond_a

    .line 172
    .line 173
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 174
    .line 175
    and-int/lit16 v10, v10, 0x800

    .line 176
    .line 177
    if-eqz v10, :cond_9

    .line 178
    .line 179
    add-int/lit8 v9, v9, 0x1

    .line 180
    .line 181
    if-ne v9, v1, :cond_6

    .line 182
    .line 183
    move-object v6, v8

    .line 184
    goto :goto_6

    .line 185
    :cond_6
    if-nez v7, :cond_7

    .line 186
    .line 187
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 188
    .line 189
    const/16 v10, 0x10

    .line 190
    .line 191
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 192
    .line 193
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    if-eqz v6, :cond_8

    .line 197
    .line 198
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    move-object v6, v2

    .line 202
    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    :goto_6
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_a
    if-ne v9, v1, :cond_b

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_b
    :goto_7
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    goto :goto_4

    .line 216
    :cond_c
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    if-eqz p0, :cond_e

    .line 224
    .line 225
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 226
    .line 227
    if-eqz v5, :cond_e

    .line 228
    .line 229
    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_e
    move-object v5, v2

    .line 233
    goto :goto_2

    .line 234
    :cond_f
    :goto_8
    return-object v0

    .line 235
    :cond_10
    const-string p0, "Unknown Focusability"

    .line 236
    .line 237
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-object v2
.end method

.method public final b1(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->l:Landroidx/compose/ui/geometry/Rect;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/focus/FocusProperties$Companion;->a:Landroidx/compose/ui/geometry/Rect;

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/geometry/Rect;->i(J)Landroidx/compose/ui/geometry/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-wide p0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 46
    .line 47
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public final c1()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 6

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
    const-string v0, "visitAncestors called on an unattached node"

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_d

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 26
    .line 27
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 28
    .line 29
    const v3, 0x800020

    .line 30
    .line 31
    .line 32
    and-int/2addr v2, v3

    .line 33
    if-eqz v2, :cond_b

    .line 34
    .line 35
    :goto_1
    if-eqz v0, :cond_b

    .line 36
    .line 37
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 38
    .line 39
    and-int v4, v2, v3

    .line 40
    .line 41
    if-eqz v4, :cond_a

    .line 42
    .line 43
    const/high16 v4, 0x800000

    .line 44
    .line 45
    and-int/2addr v4, v2

    .line 46
    if-eqz v4, :cond_5

    .line 47
    .line 48
    instance-of p0, v0, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    instance-of p0, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 58
    .line 59
    iget-object p0, v0, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    :goto_2
    if-eqz p0, :cond_4

    .line 63
    .line 64
    instance-of v2, p0, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    move-object v0, p0

    .line 69
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move-object v0, v1

    .line 73
    :cond_4
    :goto_3
    check-cast v0, Landroidx/compose/ui/layout/BeyondBoundsLayoutProviderModifierNode;

    .line 74
    .line 75
    if-eqz v0, :cond_d

    .line 76
    .line 77
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsProviderModifierNode;

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_5
    and-int/lit8 v2, v2, 0x20

    .line 81
    .line 82
    if-eqz v2, :cond_a

    .line 83
    .line 84
    instance-of v2, v0, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 85
    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    move-object v4, v0

    .line 89
    goto :goto_5

    .line 90
    :cond_6
    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 91
    .line 92
    if-eqz v2, :cond_8

    .line 93
    .line 94
    move-object v2, v0

    .line 95
    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 96
    .line 97
    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 98
    .line 99
    move-object v4, v1

    .line 100
    :goto_4
    if-eqz v2, :cond_9

    .line 101
    .line 102
    instance-of v5, v2, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 103
    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    move-object v4, v2

    .line 107
    :cond_7
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_8
    move-object v4, v1

    .line 111
    :cond_9
    :goto_5
    check-cast v4, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    .line 112
    .line 113
    if-eqz v4, :cond_a

    .line 114
    .line 115
    invoke-interface {v4}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->a0()Landroidx/compose/ui/modifier/ModifierLocalMap;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    sget-object v5, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 120
    .line 121
    invoke-virtual {v2, v5}, Landroidx/compose/ui/modifier/ModifierLocalMap;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_a

    .line 126
    .line 127
    invoke-interface {v4}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->a0()Landroidx/compose/ui/modifier/ModifierLocalMap;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/modifier/ModifierLocalMap;->b()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Landroidx/compose/ui/layout/BeyondBoundsLayout;

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_a
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_c

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_c
    move-object v0, v1

    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_d
    return-object v1
.end method

.method public final d1()Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    if-ne p0, v0, :cond_2

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 33
    .line 34
    if-eqz v1, :cond_e

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 37
    .line 38
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, "visitAncestors called on an unattached node"

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_e

    .line 56
    .line 57
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 58
    .line 59
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 62
    .line 63
    and-int/lit16 v2, v2, 0x400

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v2, :cond_c

    .line 67
    .line 68
    :goto_1
    if-eqz v1, :cond_c

    .line 69
    .line 70
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 71
    .line 72
    and-int/lit16 v2, v2, 0x400

    .line 73
    .line 74
    if-eqz v2, :cond_b

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    move-object v4, v3

    .line 78
    :goto_2
    if-eqz v2, :cond_b

    .line 79
    .line 80
    instance-of v5, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 81
    .line 82
    if-eqz v5, :cond_4

    .line 83
    .line 84
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 85
    .line 86
    if-ne p0, v2, :cond_a

    .line 87
    .line 88
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->k:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_4
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 92
    .line 93
    and-int/lit16 v5, v5, 0x400

    .line 94
    .line 95
    if-eqz v5, :cond_a

    .line 96
    .line 97
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 98
    .line 99
    if-eqz v5, :cond_a

    .line 100
    .line 101
    move-object v5, v2

    .line 102
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 103
    .line 104
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    :goto_3
    const/4 v7, 0x1

    .line 108
    if-eqz v5, :cond_9

    .line 109
    .line 110
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 111
    .line 112
    and-int/lit16 v8, v8, 0x400

    .line 113
    .line 114
    if-eqz v8, :cond_8

    .line 115
    .line 116
    add-int/lit8 v6, v6, 0x1

    .line 117
    .line 118
    if-ne v6, v7, :cond_5

    .line 119
    .line 120
    move-object v2, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    if-nez v4, :cond_6

    .line 123
    .line 124
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 125
    .line 126
    const/16 v7, 0x10

    .line 127
    .line 128
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    if-eqz v2, :cond_7

    .line 134
    .line 135
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    move-object v2, v3

    .line 139
    :cond_7
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_9
    if-ne v6, v7, :cond_a

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    goto :goto_2

    .line 153
    :cond_b
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-eqz v0, :cond_d

    .line 161
    .line 162
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 163
    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_d
    move-object v1, v3

    .line 170
    goto :goto_0

    .line 171
    :cond_e
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 172
    .line 173
    return-object p0
.end method

.method public final e1()V
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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    if-ne v0, p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lp0;

    .line 31
    .line 32
    const/16 v3, 0xf

    .line 33
    .line 34
    invoke-direct {v2, v3, v0, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    check-cast v0, Landroidx/compose/ui/focus/FocusProperties;

    .line 45
    .line 46
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->c(IZZ)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void

    .line 68
    :cond_3
    const-string p0, "focusProperties"

    .line 69
    .line 70
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method public final f1(I)Z
    .locals 2

    .line 1
    const-string v0, "FocusTransactions:requestFocus"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusTargetNode;->Y0(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    :try_start_1
    new-instance v0, Lr0;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {v0, p1, v1}, Lr0;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->e(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->e1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
