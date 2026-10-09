.class public final Landroidx/compose/ui/node/BackwardsCompatNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/ParentDataModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroidx/compose/ui/focus/FocusRequesterModifierNode;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# instance fields
.field public x:Landroidx/compose/ui/Modifier$Element;

.field public y:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

.field public z:Ljava/util/HashSet;


# virtual methods
.method public final C(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final C0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 11
    .line 12
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->b:Z

    .line 18
    .line 19
    iput-boolean v2, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->c:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 32
    .line 33
    iget-object v2, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 34
    .line 35
    iget-boolean v3, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iput-boolean v4, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 41
    .line 42
    :cond_0
    iget-boolean v3, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iput-boolean v4, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 47
    .line 48
    :cond_1
    iget-object v0, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 49
    .line 50
    iget-object v1, v0, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v3, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/collection/ScatterMap;->a:[J

    .line 55
    .line 56
    array-length v4, v0

    .line 57
    add-int/lit8 v4, v4, -0x2

    .line 58
    .line 59
    if-ltz v4, :cond_8

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    :goto_0
    aget-wide v7, v0, v6

    .line 63
    .line 64
    not-long v9, v7

    .line 65
    const/4 v11, 0x7

    .line 66
    shl-long/2addr v9, v11

    .line 67
    and-long/2addr v9, v7

    .line 68
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v9, v11

    .line 74
    cmp-long v9, v9, v11

    .line 75
    .line 76
    if-eqz v9, :cond_7

    .line 77
    .line 78
    sub-int v9, v6, v4

    .line 79
    .line 80
    not-int v9, v9

    .line 81
    ushr-int/lit8 v9, v9, 0x1f

    .line 82
    .line 83
    const/16 v10, 0x8

    .line 84
    .line 85
    rsub-int/lit8 v9, v9, 0x8

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    :goto_1
    if-ge v11, v9, :cond_6

    .line 89
    .line 90
    const-wide/16 v12, 0xff

    .line 91
    .line 92
    and-long/2addr v12, v7

    .line 93
    const-wide/16 v14, 0x80

    .line 94
    .line 95
    cmp-long v12, v12, v14

    .line 96
    .line 97
    if-gez v12, :cond_5

    .line 98
    .line 99
    shl-int/lit8 v12, v6, 0x3

    .line 100
    .line 101
    add-int/2addr v12, v11

    .line 102
    aget-object v13, v1, v12

    .line 103
    .line 104
    aget-object v12, v3, v12

    .line 105
    .line 106
    check-cast v13, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 107
    .line 108
    invoke-virtual {v2, v13}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-nez v14, :cond_2

    .line 113
    .line 114
    invoke-virtual {v2, v13, v12}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    instance-of v14, v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 119
    .line 120
    if-eqz v14, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2, v13}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 130
    .line 131
    new-instance v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 132
    .line 133
    iget-object v5, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 134
    .line 135
    if-nez v5, :cond_3

    .line 136
    .line 137
    move-object v5, v12

    .line 138
    check-cast v5, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 139
    .line 140
    iget-object v5, v5, Landroidx/compose/ui/semantics/AccessibilityAction;->a:Ljava/lang/String;

    .line 141
    .line 142
    :cond_3
    iget-object v14, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 143
    .line 144
    if-nez v14, :cond_4

    .line 145
    .line 146
    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 147
    .line 148
    iget-object v14, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 149
    .line 150
    :cond_4
    invoke-direct {v15, v5, v14}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v13, v15}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    shr-long/2addr v7, v10

    .line 157
    add-int/lit8 v11, v11, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    if-ne v9, v10, :cond_8

    .line 161
    .line 162
    :cond_7
    if-eq v6, v4, :cond_8

    .line 163
    .line 164
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    return-void
.end method

.method public final F(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    const-string p1, "applyFocusProperties called on wrong node"

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->c(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final K0(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/ClassCastException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final L()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->b()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Q0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->Y0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final R()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final R0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->Z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final S()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final Y0(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "initializeModifier called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x20

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->y:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 26
    .line 27
    sget-object v3, Landroidx/compose/animation/DeferredEnterExitTransitionKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    iput-object v1, v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 38
    .line 39
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/collection/MutableObjectList;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 52
    .line 53
    invoke-direct {v2}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/collection/MutableObjectList;

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v2, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 62
    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 66
    .line 67
    invoke-direct {v2}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->a()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 85
    .line 86
    iput-object v2, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->y:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 87
    .line 88
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 93
    .line 94
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, v1, Landroidx/compose/ui/node/TailModifierNode;->x:Z

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/collection/MutableObjectList;

    .line 112
    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 116
    .line 117
    invoke-direct {v2}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->b:Landroidx/collection/MutableObjectList;

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v2, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 126
    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    new-instance v2, Landroidx/collection/MutableObjectList;

    .line 130
    .line 131
    invoke-direct {v2}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->c:Landroidx/collection/MutableObjectList;

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v2, v3}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->a()V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_0
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 143
    .line 144
    and-int/lit8 v1, v1, 0x4

    .line 145
    .line 146
    const/4 v2, 0x2

    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    if-nez p1, :cond_7

    .line 150
    .line 151
    invoke-static {p0, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 159
    .line 160
    and-int/2addr v1, v2

    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 168
    .line 169
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-boolean v1, v1, Landroidx/compose/ui/node/TailModifierNode;->x:Z

    .line 175
    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-object v3, v1

    .line 184
    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 185
    .line 186
    invoke-virtual {v3, p0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->H1(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 190
    .line 191
    if-eqz v1, :cond_8

    .line 192
    .line 193
    check-cast v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 194
    .line 195
    invoke-virtual {v1}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 196
    .line 197
    .line 198
    :cond_8
    if-nez p1, :cond_9

    .line 199
    .line 200
    invoke-static {p0, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->l1()V

    .line 205
    .line 206
    .line 207
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->I()V

    .line 212
    .line 213
    .line 214
    :cond_9
    instance-of p1, v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 215
    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    move-object p1, v0

    .line 219
    check-cast p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 220
    .line 221
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/RemeasurementModifier;->m(Landroidx/compose/ui/node/LayoutNode;)V

    .line 226
    .line 227
    .line 228
    :cond_a
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 229
    .line 230
    and-int/lit8 v1, p1, 0x10

    .line 231
    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    instance-of v1, v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 235
    .line 236
    if-eqz v1, :cond_b

    .line 237
    .line 238
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 239
    .line 240
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 241
    .line 242
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->e:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 243
    .line 244
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 245
    .line 246
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->a:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 247
    .line 248
    :cond_b
    and-int/lit8 p1, p1, 0x8

    .line 249
    .line 250
    if-eqz p1, :cond_c

    .line 251
    .line 252
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->y()V

    .line 259
    .line 260
    .line 261
    :cond_c
    return-void
.end method

.method public final Z(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/ParentDataModifier;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/layout/ParentDataModifier;->n()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final Z0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "unInitializeModifier called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x20

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    instance-of v0, v0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/collection/MutableObjectList;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 35
    .line 36
    invoke-direct {v1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->d:Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/collection/MutableObjectList;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 53
    .line 54
    invoke-direct {v1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Landroidx/compose/ui/modifier/ModifierLocalManager;->e:Landroidx/collection/MutableObjectList;

    .line 58
    .line 59
    :cond_2
    sget-object v2, Landroidx/compose/animation/DeferredEnterExitTransitionKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/modifier/ModifierLocalManager;->a()V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 68
    .line 69
    and-int/lit8 v0, v0, 0x8

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->y()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public final a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final a0()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->y:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->a:Landroidx/compose/ui/modifier/EmptyMap;

    .line 7
    .line 8
    return-object p0
.end method

.method public final a1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->z:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lr1;

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-direct {v1, v2, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 25
    .line 26
    sget-object v2, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->a:Lh;

    .line 27
    .line 28
    invoke-virtual {v0, p0, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->d(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutModifier;->e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    instance-of v0, v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->L()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/unit/Density;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->I:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    return-object p0
.end method

.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/draw/DrawModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/ui/draw/DrawModifier;->h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i()J
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final j0(Landroidx/compose/ui/focus/FocusStateImpl;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    const-string p1, "onFocusEvent called on wrong node"

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final z()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    return p0
.end method
