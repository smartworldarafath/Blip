.class public final synthetic Landroidx/compose/ui/layout/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/layout/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/layout/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/ui/layout/a;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/layout/a;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j:Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->o()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget v4, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w:I

    .line 29
    .line 30
    if-eq v4, v3, :cond_5

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->o:Landroidx/collection/MutableScatterMap;

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/collection/ScatterMap;->a:[J

    .line 37
    .line 38
    array-length v4, v0

    .line 39
    add-int/lit8 v4, v4, -0x2

    .line 40
    .line 41
    const/4 v5, 0x7

    .line 42
    const/4 v6, 0x0

    .line 43
    if-ltz v4, :cond_3

    .line 44
    .line 45
    move v7, v6

    .line 46
    :goto_0
    aget-wide v8, v0, v7

    .line 47
    .line 48
    not-long v10, v8

    .line 49
    shl-long/2addr v10, v5

    .line 50
    and-long/2addr v10, v8

    .line 51
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v10, v12

    .line 57
    cmp-long v10, v10, v12

    .line 58
    .line 59
    if-eqz v10, :cond_2

    .line 60
    .line 61
    sub-int v10, v7, v4

    .line 62
    .line 63
    not-int v10, v10

    .line 64
    ushr-int/lit8 v10, v10, 0x1f

    .line 65
    .line 66
    const/16 v11, 0x8

    .line 67
    .line 68
    rsub-int/lit8 v10, v10, 0x8

    .line 69
    .line 70
    move v12, v6

    .line 71
    :goto_1
    if-ge v12, v10, :cond_1

    .line 72
    .line 73
    const-wide/16 v13, 0xff

    .line 74
    .line 75
    and-long/2addr v13, v8

    .line 76
    const-wide/16 v15, 0x80

    .line 77
    .line 78
    cmp-long v13, v13, v15

    .line 79
    .line 80
    if-gez v13, :cond_0

    .line 81
    .line 82
    shl-int/lit8 v13, v7, 0x3

    .line 83
    .line 84
    add-int/2addr v13, v12

    .line 85
    aget-object v13, v3, v13

    .line 86
    .line 87
    check-cast v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 88
    .line 89
    const/4 v14, 0x1

    .line 90
    iput-boolean v14, v13, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->d:Z

    .line 91
    .line 92
    :cond_0
    shr-long/2addr v8, v11

    .line 93
    add-int/lit8 v12, v12, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    if-ne v10, v11, :cond_3

    .line 97
    .line 98
    :cond_2
    if-eq v7, v4, :cond_3

    .line 99
    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 108
    .line 109
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    invoke-static {v1, v6, v5}, Landroidx/compose/ui/node/LayoutNode;->X(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    invoke-static {v1, v6, v5}, Landroidx/compose/ui/node/LayoutNode;->Z(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_2
    return-object v2

    .line 127
    :pswitch_0
    check-cast v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 128
    .line 129
    iget-object v1, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->g:Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_6

    .line 144
    .line 145
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->c:Landroidx/compose/runtime/ReusableComposition;

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->p()V

    .line 152
    .line 153
    .line 154
    :cond_6
    return-object v2

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
